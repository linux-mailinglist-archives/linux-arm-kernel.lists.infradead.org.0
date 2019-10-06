Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09885CD1A7
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 13:17:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=D1UZLQFSeFD88yrDV71Zijg4wU6mhkVA/9L1BNm0KNg=; b=BUH
	WCiD9Yq2qNlF5lwtS4PRBwEm1Mojf6ZOcayxrFFSupphDsTeUDi/NMEF2k8ZpgXD+mUZV21ufZ8OR
	XLraDX/LxWvMWVTX1No0XY9vFukPP3TIrgUKVxDVtL+4YdRN+ouQQFe8T8rrjU5pA2m+hgBNbJE+U
	VYEBwUK4txEZnbepX+IU/FM40kRVzimu7ZALelcbb5xB1G8YPmVGxbecAp69CF4JkMHepwgcv1w60
	10/Xm+4YXV/L1+hkRJCywN6ZYXLnBIdkbYqzGHAYLGw/YbpZwkxFIYjzrkC0q4wyI8xHe4gQT2qCM
	DPcwbhz8gjz63VXPwX2SmHEtVO3Irqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH4Xi-0007xR-Lg; Sun, 06 Oct 2019 11:17:38 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH4XZ-0007wM-0F
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 11:17:30 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 82F25C0374;
 Sun,  6 Oct 2019 11:17:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1570360648; bh=tnWdGo9LoSdCZ4UfDy75YwxsYXeRpsko+ph8h48XVjw=;
 h=From:To:Cc:Subject:Date:From;
 b=FQMSCljtVSk3DUGXIYL5Y/rZoAhum7g7BKll/VBVchW6bd4uyIiPqizHt5Tz/H0Ox
 gkpXLUo9yOl4ZJlVsKbO+O0+n8C/XtkvBvzSE8HtymuTGVAp1C1FuaTmtDq+wi5cHG
 vDrovkxteOrYGKCOsRVEl0ruoRp7k4Zy+Uhqk3qerYbcOsu0ibRLniLQd128jBzi4Q
 ZIhze5AsgYQDM34Omxb6g8KKyFBRKzOI8xIZX1fRLPAQtTeQVrRYVILsKAN04NNwui
 fqdWgJGVi6CJBbDeTdmPI5gEa44mT/VPKiim9ybgfazEZmTkg13y+a87ypFVWTdqoO
 oiKNxSpv2IMAA==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id DF023A005D;
 Sun,  6 Oct 2019 11:17:19 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 0/3] net: stmmac: Improvements for -next
Date: Sun,  6 Oct 2019 13:17:11 +0200
Message-Id: <cover.1570360411.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_041729_062935_82B227DC 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Improvements for -next. More info in commit logs.

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
  net: stmmac: Fallback to VLAN Perfect filtering if HASH is not
    available
  net: stmmac: selftests: Add tests for VLAN Perfect Filtering
  net: stmmac: Implement L3/L4 Filters in GMAC4+

 drivers/net/ethernet/stmicro/stmmac/dwmac4.h       |  21 ++++
 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c  | 118 ++++++++++++++++++++-
 drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c   |   1 +
 .../net/ethernet/stmicro/stmmac/dwxgmac2_core.c    |  17 ++-
 drivers/net/ethernet/stmicro/stmmac/hwif.h         |   2 +-
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  |  18 ++--
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c | 114 +++++++++++++-------
 7 files changed, 245 insertions(+), 46 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
