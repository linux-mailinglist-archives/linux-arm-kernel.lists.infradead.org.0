Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3672FBAEB0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 09:49:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=l7LyzOiTyPHn5Hy3uV6nCNMslXsILHcdfLPigF7hdiM=; b=TQS
	nWxp6sdgpN8Z3YT0ilSPh3dUUtQUgbVQmkYfSH1aTGNDUhvJOjcoBLtG5N/yJqteFWGvSUnHtXppJ
	z0Ds3D3pbQL17QDOxsTFOBpsboLXs+HfMCGoNLQgBusST5+xJEF3IvojqN431FzGsqeaH3w3H0IWi
	1LrJt52Gh/FcSUnI1IXdv1LFq+gz6x0S3cgndj6Z85D6YK1oLSnTuIpCpzNp7cc7QbjtlITPJYy7u
	hXPb3sY3DyNslllTHMmrh57XteCHW8AXjZ97VrUwV+HIYQ8RwO6C4AZh5cuodM2POAwsDYuBjUNRd
	uIbyWfFild2710K97lQ2idrsekrYomw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCJ69-0005Ly-8E; Mon, 23 Sep 2019 07:49:29 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCJ5u-0005Ld-FS
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 07:49:15 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 2BD0EC0393;
 Mon, 23 Sep 2019 07:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1569224954; bh=vRW8n17JID3cq//x3ZOP6/PLKPY+2IzDjG/7sDZ9vCI=;
 h=From:To:Cc:Subject:Date:From;
 b=YUrCwRvBRNLXxe2r2lBfAIkYQcljCiOLVFSgBNjtrB1G74Icn7pVZV/Lm5SHztjYc
 LTTt2hILdXaE1yARTwR6uWNejB8CmHK/4RxSLCbOdDztRP1OTDFbQjCyL1S8NeBlrL
 lwAWai+o2PRCiuwmyvkvPIqzDhB2nWWAEesF7Og2jbcbOa/rFgAhnEH3GxyHGFCoBB
 Qed4pVOk2V7JVmyZ2jT62bV+1zWTm6I7UNlpf51stCw/YUWaAr1V2qdk9T4qTbbPqa
 Kh20VhG6FCOe3HRKEFuUw0VO3ve1bCxi8u6SZx+U/2Liqi5vrx+t7QA9hxcmU2CY+c
 laEcuoLx5WJGQ==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id DB888A0057;
 Mon, 23 Sep 2019 07:49:09 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net v2] net: stmmac: selftests: Flow Control test can also run
 with ASYM Pause
Date: Mon, 23 Sep 2019 09:49:08 +0200
Message-Id: <efc49b6ea500115ff1442ddebe9dc7d956eb19e9.1569224900.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_004914_522332_4027B945 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The Flow Control selftest is also available with ASYM Pause. Lets add
this check to the test and fix eventual false positive failures.

Fixes: 091810dbded9 ("net: stmmac: Introduce selftests support")
Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

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
 drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
index 9c8d210b2d6a..5f66f6161629 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
@@ -670,7 +670,7 @@ static int stmmac_test_flowctrl(struct stmmac_priv *priv)
 	unsigned int pkt_count;
 	int i, ret = 0;
 
-	if (!phydev || !phydev->pause)
+	if (!phydev || (!phydev->pause && !phydev->asym_pause))
 		return -EOPNOTSUPP;
 
 	tpriv = kzalloc(sizeof(*tpriv), GFP_KERNEL);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
