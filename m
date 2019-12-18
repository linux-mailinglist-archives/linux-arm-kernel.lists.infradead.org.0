Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB0E124455
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 11:20:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=AvEmK8WHDDM/kjQxg7RRd+pY+5bpK7Gds0kA1dqLaw8=; b=czX
	tkTZXz6bW0QrQss6kqSMgA4sVRfwPr66lJdxuHo/Bold9fOavSbpmBtta86Y3Qe6Pl+WOrdDDbvsS
	GhzDGhVmy9mIW0qAWhWLXj0nOLxBb+1WEjvHGGU4rWEhi67J1rR4CCDkC292mNusYFQEj80iFIBVm
	sEM3yLiOacU8RWA9p7e4YYojgPc/W+OUMHWpFMZPeU0ZW7QeymqhJIUmex5sSinLu3+XFYVXVziMZ
	GZGuGANzADgEuclbwN7VCHq0/xdXe5Myw/rNcmNrKOlbLgtdfllPOPd/RqZhPlRdelTuugWj+z90G
	BXX1oWPmeu1iGm9zaHbOhnADpx4Ktbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihWRd-00080m-CR; Wed, 18 Dec 2019 10:20:41 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihWOw-0004n7-Rp
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 10:18:02 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 1E8F9C0104;
 Wed, 18 Dec 2019 10:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576664273; bh=tK4WjKNsmZWt7T7XYmc4LxY6m+JF69CegqR/VxH5Bbw=;
 h=From:To:Cc:Subject:Date:From;
 b=NX5DsbG30dPMEQ56qJbLJPbYSWe28OoZWa4zXLs4H0pnl43FEo9hcuA9U678kZ96/
 Ra7rCM2hEcabN1L6RDc74ev04GxvM7j0LUZ55LmSu5JmkhCbuC9W0I7vmRQgnhciMo
 udr4igkFfeJS1c+T+h6Q8Tte+9AGKj2Z//rn2Ti5xceRmKRe+II3tglADR5jE2b/oA
 SdDL1XL0LZb3gFUAcHQMWkI9x0KQ3insIFHXmYmfZ4Flb5+uOlOAAM7l3p/WAtW2fJ
 fJbqVplkBTnQE4Y6NwUF5xaJDIq2ooggjeR6IPHY2FrbR3fmkUOW7zCP2EFvQ6n7l7
 mCuH0fB45MHNQ==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 40DA8A0066;
 Wed, 18 Dec 2019 10:17:50 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net v3 0/9] net: stmmac: Fixes for -net
Date: Wed, 18 Dec 2019 11:17:34 +0100
Message-Id: <cover.1576664155.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_021755_059673_E88AFF46 
X-CRM114-Status: UNSURE (   8.66  )
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
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes for stmmac.

1) Fixes the filtering selftests (again) for cases when the number of multicast
filters are not enough.

2) Fixes SPH feature for MTU > default.

3) Fixes the behavior of accepting invalid MTU values.

4) Fixes FCS stripping for multi-descriptor packets.

5) Fixes the change of RX buffer size in XGMAC.

6) Fixes RX buffer size alignment.

7) Fixes the 16KB buffer alignment.

8) Fixes the enabling of 16KB buffer size feature.

9) Always arm the TX coalesce timer so that missed interrupts do not cause
a TX queue timeout.

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

Jose Abreu (9):
  net: stmmac: selftests: Needs to check the number of Multicast regs
  net: stmmac: Determine earlier the size of RX buffer
  net: stmmac: Do not accept invalid MTU values
  net: stmmac: Only the last buffer has the FCS field
  net: stmmac: xgmac: Clear previous RX buffer size
  net: stmmac: RX buffer size must be 16 byte aligned
  net: stmmac: 16KB buffer must be 16 byte aligned
  net: stmmac: Enable 16KB buffer size
  net: stmmac: Always arm TX Timer at end of transmission start

 drivers/net/ethernet/stmicro/stmmac/common.h       |  5 +-
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h     |  2 +
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c |  3 +-
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  | 53 +++++++++++++---------
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c |  4 ++
 5 files changed, 42 insertions(+), 25 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
