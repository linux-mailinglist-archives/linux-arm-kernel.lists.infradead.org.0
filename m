Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C94F12447D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 11:25:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=02M9aLcuFYj7Muf2AN7B9+0z5O+X67QGpAITBzLLVAM=; b=Uek
	sC9a5Q3xpxDdaxxaZTy1gBRpDyTTD53wUEWT661WsBzNkU9Jus1hsw3J10RFJJkGSTffEHDYCdpqG
	iSgSI1oV8wuBRHNvHcT4I0KUukayU4kzdFhJPJVe40x+RaOkz3WoMrjizddVqSO8OCISB6IfJqy/C
	cE2rjpLYXpB2iPQuxgmDMlB8N296PGVod7+MiwD8fUTADKOQFrtvj+Eo6IVbXHr/Fomv2Q8mdEAo3
	dtUYFXLvDbN1sier8WDod9s39eXSLPA+rcnaRRqsfcEt4cLwHSOO/ZEIdSmLz5aCZqrktdv1GRpGK
	LZQO39C4WOz1DlzER5UzEd/fBhYEt8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihWWK-0003rR-VV; Wed, 18 Dec 2019 10:25:32 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihWVf-0002Q4-Uu
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 10:24:53 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 49A79C0D6B;
 Wed, 18 Dec 2019 10:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576664691; bh=veMgZV+L88MP2+NDYHlOUNPQ+DcuCryOxZrBeX5GTZQ=;
 h=From:To:Cc:Subject:Date:From;
 b=cCeosH2hAAuqc21s5yQbK6PoC7n2tHYD6gR2iv6ld7RpEyxKC9oKW9/o+y0qCswn1
 pml1I0Qaf278BcCs0G9VwujMiJ/tlEeKlixJuCG+X+9ksRIR0lQxLgbMLyWOkHh9CS
 VkyESB+65Cg/+zo636HV6ENBSvKpxn+sQdVHNDuBta/d7uth19BHRnimJgIUJKfnVM
 LCGuBXsUgbmBOM+OyRU8YdPPKAzwWP70atrsBivDFsyDGm5Mq6nmF0/ArrODaYTSyt
 Llp1Q4cXsfY6ELfsWnv4ba9HiE9smHaMDNlW2FxLURDcgReo7WohUk2L0L3L/SHnsd
 fna3QKvjIeLJQ==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 183D8A0066;
 Wed, 18 Dec 2019 10:24:49 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v3 0/3] net: stmmac: Improvements for -next
Date: Wed, 18 Dec 2019 11:24:42 +0100
Message-Id: <cover.1576664538.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_022452_029965_19309435 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Misc improvements for stmmac.

1) Adds more information regarding HW Caps in the DebugFS file.

2) Allows interrupts to be independently enabled or disabled so that we don't
have to schedule both TX and RX NAPIs.

3) Stops using a magic number in coalesce timer re-arm.

---
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Chen-Yu Tsai <wens@csie.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-kernel@vger.kernel.org
---

Jose Abreu (3):
  net: stmmac: Print more information in DebugFS DMA Capabilities file
  net: stmmac: Let TX and RX interrupts be independently
    enabled/disabled
  net: stmmac: Always use TX coalesce timer value when rescheduling

 drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c  | 24 +++++-
 drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.h   | 11 ++-
 drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c   | 47 ++++++++++--
 drivers/net/ethernet/stmicro/stmmac/dwmac_dma.h    |  6 +-
 drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c    | 22 +++++-
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h     |  2 +
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c | 24 +++++-
 drivers/net/ethernet/stmicro/stmmac/hwif.h         |  6 +-
 drivers/net/ethernet/stmicro/stmmac/stmmac.h       |  1 +
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  | 88 ++++++++++++++++------
 10 files changed, 180 insertions(+), 51 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
