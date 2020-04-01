Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C1B19B4AC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 19:29:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=b22fwbpvLRgrHRqtbiheQVQtm0N3TJT97msHcZb8sFI=; b=D76
	eIgohLU6zRvjgTjeSgbcLaqCu5En5niDP2mRLsOnm8fKerHxKRGyrC+tgTencGI6mXyRTF7xZia38
	8OlK53GbP35dGXveYJuoAalhpV3W8DfpuW6gRvIH5SyCsGeriFeigbPs4Eo8khUAsLYx/0sWvVr7D
	oOj9mse7lNWm6RpFcifYstu8YapO6uwxUNUVhwxj+45Zfhy5MCx3a9BQ6mj2x37OoLbSaKjeeyo+i
	LgDMWOjOOHr2TAtrpgxADMYM71CWNXct2hbjhFGQD5YCVkh1ERlgLnrQZrabiEQqYLyHsgttadLxp
	iZGKGJBW5nv/BR0gPc/wNtcKZVj9+bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJhB3-0001aD-Lj; Wed, 01 Apr 2020 17:29:21 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJhAw-0001Zd-HW
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 17:29:15 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 25C1AC0F86;
 Wed,  1 Apr 2020 17:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1585762152; bh=+pqAfs8F1mKnWz24eqJJvntFD5qLhFA4j1I4ISeo3no=;
 h=From:To:Cc:Subject:Date:From;
 b=WP2Q/T7QDZZHQRwz/FuDbCuQSfJEVV8GGGvk0kh7md2q8+/9d9SpEacYx437dA/sk
 /w3+9b3Vne+JK5pfCNqTRkw0VSvuh56AHo2i1RKmzbVq6UPHQJSCot/wKVOHzrvWoI
 JlXk+BNWwtcakKTYGSVtCICQO/XFV3FlU/4jM/YaPGhzwdcaW0Yh2RhhEbXvq6mhU2
 nqHNLytTbefWDmEYanhjkf3jbsnYgXAJsZBLW6Ikaqosxyqd/FGJgsb9k/EMP+TNUh
 18po7usSHHm681N8Nc/W3szl6L7vq2SHcybioRKX01xD98Kb8xTHTcwiPvNoa/Qt3l
 5FKNA25Wtl2qw==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id E0543A005B;
 Wed,  1 Apr 2020 17:29:08 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next] net: stmmac: Fix VLAN filtering when HW does not
 support it
Date: Wed,  1 Apr 2020 19:29:03 +0200
Message-Id: <42e493820f707c5a5d3375676ef6b6a96988f846.1585762111.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_102914_614948_46196B9C 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

If we don't have any filters available we can't rely upon the return
code of stmmac_add_hw_vlan_rx_fltr() / stmmac_del_hw_vlan_rx_fltr(). Add
a check for this.

Fixes: ed64639bc1e0 ("net: stmmac: Add support for VLAN Rx filtering")
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
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index b77d2faa580f..bd35a3df871d 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -4570,9 +4570,13 @@ static int stmmac_vlan_rx_add_vid(struct net_device *ndev, __be16 proto, u16 vid
 		return ret;
 	}
 
-	ret = stmmac_add_hw_vlan_rx_fltr(priv, ndev, priv->hw, proto, vid);
+	if (priv->hw->num_vlan) {
+		ret = stmmac_add_hw_vlan_rx_fltr(priv, ndev, priv->hw, proto, vid);
+		if (ret)
+			return ret;
+	}
 
-	return ret;
+	return 0;
 }
 
 static int stmmac_vlan_rx_kill_vid(struct net_device *ndev, __be16 proto, u16 vid)
@@ -4585,9 +4589,12 @@ static int stmmac_vlan_rx_kill_vid(struct net_device *ndev, __be16 proto, u16 vi
 		is_double = true;
 
 	clear_bit(vid, priv->active_vlans);
-	ret = stmmac_del_hw_vlan_rx_fltr(priv, ndev, priv->hw, proto, vid);
-	if (ret)
-		return ret;
+
+	if (priv->hw->num_vlan) {
+		ret = stmmac_del_hw_vlan_rx_fltr(priv, ndev, priv->hw, proto, vid);
+		if (ret)
+			return ret;
+	}
 
 	return stmmac_vlan_update(priv, is_double);
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
