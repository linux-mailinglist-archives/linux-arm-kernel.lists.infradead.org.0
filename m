Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22EB7B1B22
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 11:51:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3lFn9fbK8UdRbXJpv4Y71n1GN+6rW4u8cN9nHZm5aBg=; b=iij
	OyPNk+GEeQ2422Vdv18R0md469xMSfphHPYw9pbeyMTKQMDxGVrVjmOG2SG0gD6UAVBy0kH2/xO56
	IzRMg1RUi+NBJZLC/fzoyMPlYMfkfyvKxYhl8n6naB/41jdJe/A6951Udhlqeb3eztYk4ovfs/kgI
	cj2VrpkJAYRJ21wBx8IqiHZfaopGI785nZSEtz1Y/UXCOpY06JroL02aoiFUM19TckBZdwXjA2EJ0
	UsQoC1uf1m5Sz/62EQzedykioRryC1+Ul0uUcyV868XjK0ocstJLdDbnU9/7b9BbJ705HpitWaqXp
	A9i3ObYe0NH8U6uX8soqRwcj+ugrnqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8iEC-0002CM-I8; Fri, 13 Sep 2019 09:50:56 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8iE1-0002Ab-16
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 09:50:46 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id E309AC585C;
 Fri, 13 Sep 2019 09:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1568368243; bh=VNT0CfKOWFVh9wUN9OsP/Ath/shvOWvuL7ZRZxtlnJs=;
 h=From:To:Cc:Subject:Date:From;
 b=Un9DyyRCSzZ+BtJTyFzXfYHYaMhQnX66hyzPJ7tJyO3pd2xg9j1D/PHFXEhvO5f5W
 B5XPmrkD7JgkRHonCx64A4E1kCItZjdmDai34ozetB9McFOfv/UOHJCRe5wxiCJ1fz
 PpKeWuXqH+z60IL+LxzK8zsh1VvfxPhWFJZZ5D5Iui9abpAXS5zgiXnusKjyiF4Sjg
 84Fp5+BGF900G5y+WhZPOLS7OkHRfZWZgerfgu+4P/d1Cd/KhrLRIos4rjmgb0Rqtk
 8WbcA9LfVEII3XRdjhhZZk3wy5rBsx/OqBoLVdwR+68KZTHBV25dUfBKd1f8P+tKRg
 1V5VWw+vXVoMQ==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id C1E27A0057;
 Fri, 13 Sep 2019 09:50:40 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net] net: stmmac: Hold rtnl lock in suspend/resume callbacks
Date: Fri, 13 Sep 2019 11:50:32 +0200
Message-Id: <66b6c1395e4bbc836e80083b89b2189ce7382d7b.1568360548.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_025045_079260_E0BB1E16 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Christophe ROULLIER <christophe.roullier@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We need to hold rnl lock in suspend and resume callbacks because phylink
requires it. Otherwise we will get a WARN() in suspend and resume.

Also, move phylink start and stop callbacks to inside device's internal
lock so that we prevent concurrent HW accesses.

Fixes: 74371272f97f ("net: stmmac: Convert to phylink and remove phylib logic")
Reported-by: Christophe ROULLIER <christophe.roullier@st.com>
Tested-by: Christophe ROULLIER <christophe.roullier@st.com>
Signed-off-by: Jose Abreu <joabreu@synopsys.com>

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
Cc: Christophe ROULLIER <christophe.roullier@st.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index fd54c7c87485..b19ab09cb18f 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -4451,10 +4451,12 @@ int stmmac_suspend(struct device *dev)
 	if (!ndev || !netif_running(ndev))
 		return 0;
 
-	phylink_stop(priv->phylink);
-
 	mutex_lock(&priv->lock);
 
+	rtnl_lock();
+	phylink_stop(priv->phylink);
+	rtnl_unlock();
+
 	netif_device_detach(ndev);
 	stmmac_stop_all_queues(priv);
 
@@ -4558,9 +4560,11 @@ int stmmac_resume(struct device *dev)
 
 	stmmac_start_all_queues(priv);
 
-	mutex_unlock(&priv->lock);
-
+	rtnl_lock();
 	phylink_start(priv->phylink);
+	rtnl_unlock();
+
+	mutex_unlock(&priv->lock);
 
 	return 0;
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
