Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 781A383280
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 15:17:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=AwXL3TGYjobP8H8/zXT9iwTI7Gxm7uuIKVeI6Vz/Dic=; b=Tbl
	fIugQuJtuxsGYoHejsqV4W3CkXolBUePios13GNxrkeC1ul+cxe331Nw7B9/GpesHIjRvkcqb8pDl
	lqGxPr2eFy66NwN4Jb92nwLelqVPL+0Uq1wuX+izbc/gmbnb6RGBUmOTf8mmQHnJc32H0fveDeq0v
	Gwrg3LwQuyDVGwhQMkBWC+Boo7PirP9sklaqTr3y26yyz7Ej8Y05WV64mE2z+XzaKaYXoMGAqU5G8
	R6hVugyJJGHVZN4ssklEhrmgSBwX5NXyL8M6eBrCOy6kSFt76OVTSJrmEA7bGvM+0b+NaWScUcgr2
	J+FpgPVsgcehLyO1bfkVd0UUz1V8rtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huzKf-0007f3-4o; Tue, 06 Aug 2019 13:16:53 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huzKE-0007TG-Qx
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 13:16:28 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 0CC85C21B9;
 Tue,  6 Aug 2019 13:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1565097385; bh=Ab5jp3GsMXQWmVrZFrMXWKrOoJ32+iutiBB3NdSCy7U=;
 h=From:To:Cc:Subject:Date:From;
 b=PV/WBimuik8cDyALtkSnshvQukdpJgHBFPGuylY9CPMMZYPNIPKYj/PrY6y3KdbIn
 7+zJqksQXOsuQCb7qd30AAFIjyPTOK8A2wFol/Qb0prJBfKAeSfuaJ6agtDlyP7Qaf
 4H4k4GCqDRJf+Bw56ms3NoSOZ5TG/s8zTSwFxrEy9GBfeKJxXFk8z5U0nNa5SR+S7d
 jy8Rq/Ceum+0OgckWOgGJySMNMQ6CV1YcgE7gMdcS92NuHsg+JGzB3Jsejny0LyDYc
 /q8Zg4poIBGoFrKAzfLZxEP/nj87pFzhQ0wkzQLTIiJQVaBIjm9GTunXvv17P0l6d6
 b875KXfyAsAFQ==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id DE4CBA0057;
 Tue,  6 Aug 2019 13:16:22 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net 0/3] net: stmmac: Fixes for -net
Date: Tue,  6 Aug 2019 15:16:15 +0200
Message-Id: <cover.1565097294.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_061626_886502_71529D18 
X-CRM114-Status: UNSURE (   7.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Couple of fixes for -net. More info in commit log.

---
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---

Jose Abreu (3):
  net: stmmac: xgmac: Fix XGMAC selftests
  net: stmmac: Fix issues when number of Queues >= 4
  net: stmmac: tc: Do not return a fragment entry

 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c  |  4 +
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h     |  7 +-
 .../net/ethernet/stmicro/stmmac/dwxgmac2_core.c    | 87 +++++++++++++++++++---
 drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c    |  2 +-
 4 files changed, 88 insertions(+), 12 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
