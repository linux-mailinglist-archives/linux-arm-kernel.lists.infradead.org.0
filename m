Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBEF4A8387
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 15:17:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=i3Q6UkwIdUuBWT8Ohn+Lhr7XFXd2zdbrYB2FRswlaJw=; b=cKKPsex9DYMm9tZX8YmoZCBfXl
	QltNEDdQPs89VmzpBsAr5YH0ltMAMbqqjjLwAHLurbajG4S6Sl8ykEBsPCw5iWg+Mu4Mmg/2WUIDb
	I29HFoj6hSoJ+lEwdN8mk+va8IIsqWCQ8ehJL6mA7x5gPMRKVGtOotdo3yaWln6ZBrV1b4rD97BaS
	MbPJimy+e9JQs7Mqm+GrpPFCAZGKtpG7ndX1Z0YEAaI5JcSvqUKiVtbyPFD5+uEPir/29M7CDmobI
	1oT/fjhFPjY/gpyRQEdBl7PQMhp9E9oljH/1B39lJonx5O2EJPHFz9Z7Egbbp18KUy1owKgYKLaX6
	tdmCb4nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5VAQ-0001Bq-Ch; Wed, 04 Sep 2019 13:17:46 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5V9v-0000vo-Bv
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 13:17:16 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 78FBFC5741;
 Wed,  4 Sep 2019 13:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567603034; bh=S9lXifIRV5LjZ5ja6p24Sciaey7X+yvmq/cydA1irIk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=B24vgdZMddAJY218MQIcQzAR/P2l3oTLDM/JYncVvQeGRx8EPq87es8aH8Kb8CsEW
 hQa/tImd/AIuqy0ELp6WsgAwHJg7N5RWF6b3uNUUyWHyqBm5ISEHjD+cGe7Mty7eI1
 P3UQtWcX7L80ofEog4iRsPDoocSVqWyoKwG7F7+mzf/CmHbnUkSy46qsKN/y6QX8A4
 yq2z/d2yB11iGpb4ynpteonTLZ/8oryma2Gelw+3ByyR50Y+fMZRUcRAcVLET/M5nD
 zgxipCT9m9qrcr15K5oo/wHnvS9WgLlLo1FGzx16HdrDHqVq42/yTTdlJcZyhIYig1
 UdYTGi4IVVh+Q==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 1EED3A005F;
 Wed,  4 Sep 2019 13:17:12 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH v2 net-next 01/13] net: stmmac: selftests: Return proper error
 code to userspace
Date: Wed,  4 Sep 2019 15:16:53 +0200
Message-Id: <b1d7700ab68947678e1c479904537718555171ab.1567602867.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1567602867.git.joabreu@synopsys.com>
References: <cover.1567602867.git.joabreu@synopsys.com>
In-Reply-To: <cover.1567602867.git.joabreu@synopsys.com>
References: <cover.1567602867.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_061715_420262_57F739E2 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

We can do better than just return 1 to userspace. Lets return a proper
Linux error code.

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
---
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
index ecc8602c6799..d3234338a0ca 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
@@ -318,7 +318,7 @@ static int __stmmac_test_loopback(struct stmmac_priv *priv,
 		attr->timeout = STMMAC_LB_TIMEOUT;
 
 	wait_for_completion_timeout(&tpriv->comp, attr->timeout);
-	ret = !tpriv->ok;
+	ret = tpriv->ok ? 0 : -ETIMEDOUT;
 
 cleanup:
 	if (!attr->dont_wait)
@@ -480,7 +480,7 @@ static int stmmac_test_hfilt(struct stmmac_priv *priv)
 
 	/* Shall NOT receive packet */
 	ret = __stmmac_test_loopback(priv, &attr);
-	ret = !ret;
+	ret = ret ? 0 : -EINVAL;
 
 cleanup:
 	dev_mc_del(priv->dev, gd_addr);
@@ -512,7 +512,7 @@ static int stmmac_test_pfilt(struct stmmac_priv *priv)
 
 	/* Shall NOT receive packet */
 	ret = __stmmac_test_loopback(priv, &attr);
-	ret = !ret;
+	ret = ret ? 0 : -EINVAL;
 
 cleanup:
 	dev_uc_del(priv->dev, gd_addr);
@@ -562,7 +562,7 @@ static int stmmac_test_mcfilt(struct stmmac_priv *priv)
 
 	/* Shall NOT receive packet */
 	ret = __stmmac_test_loopback(priv, &attr);
-	ret = !ret;
+	ret = ret ? 0 : -EINVAL;
 
 cleanup:
 	dev_uc_del(priv->dev, uc_addr);
@@ -600,7 +600,7 @@ static int stmmac_test_ucfilt(struct stmmac_priv *priv)
 
 	/* Shall NOT receive packet */
 	ret = __stmmac_test_loopback(priv, &attr);
-	ret = !ret;
+	ret = ret ? 0 : -EINVAL;
 
 cleanup:
 	dev_mc_del(priv->dev, mc_addr);
@@ -699,7 +699,7 @@ static int stmmac_test_flowctrl(struct stmmac_priv *priv)
 	}
 
 	wait_for_completion_timeout(&tpriv->comp, STMMAC_LB_TIMEOUT);
-	ret = !tpriv->ok;
+	ret = tpriv->ok ? 0 : -ETIMEDOUT;
 
 cleanup:
 	dev_mc_del(priv->dev, paddr);
@@ -833,11 +833,11 @@ static int stmmac_test_vlanfilt(struct stmmac_priv *priv)
 			goto vlan_del;
 
 		wait_for_completion_timeout(&tpriv->comp, STMMAC_LB_TIMEOUT);
-		ret = !tpriv->ok;
+		ret = tpriv->ok ? 0 : -ETIMEDOUT;
 		if (ret && !i) {
 			goto vlan_del;
 		} else if (!ret && i) {
-			ret = -1;
+			ret = -EINVAL;
 			goto vlan_del;
 		} else {
 			ret = 0;
@@ -909,11 +909,11 @@ static int stmmac_test_dvlanfilt(struct stmmac_priv *priv)
 			goto vlan_del;
 
 		wait_for_completion_timeout(&tpriv->comp, STMMAC_LB_TIMEOUT);
-		ret = !tpriv->ok;
+		ret = tpriv->ok ? 0 : -ETIMEDOUT;
 		if (ret && !i) {
 			goto vlan_del;
 		} else if (!ret && i) {
-			ret = -1;
+			ret = -EINVAL;
 			goto vlan_del;
 		} else {
 			ret = 0;
@@ -998,7 +998,7 @@ static int stmmac_test_rxp(struct stmmac_priv *priv)
 	attr.src = addr;
 
 	ret = __stmmac_test_loopback(priv, &attr);
-	ret = !ret; /* Shall NOT receive packet */
+	ret = ret ? 0 : -EINVAL; /* Shall NOT receive packet */
 
 	cls_u32.command = TC_CLSU32_DELETE_KNODE;
 	stmmac_tc_setup_cls_u32(priv, priv, &cls_u32);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
