Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AEF431B59
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 12:46:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZLOSuHnNicQtyTbpPoQ2l4M6nF/c8+sR3DnQv+yOsdA=; b=VZE8NmP1Yevzoh
	MREw9lnibN64ac8y+i5VdybqI3V5NdlJJV9bYbqxDUkbY4EgniYGLen7KpqA+xLJBvWoHAVEZDsUw
	17XM02xcg/AH5bbgsNJUhuy9XkJE+R3FkFdhIFUwR2axoQ+j+w0V/gLJ0FBwNkq/V5aPg+qp5F4Mu
	7r1jkgPFRn82PopHS0oK/DOGu9S256C2gDDV0MkwcwCJxr8o6J9E9snJ4yIdbXjvV6TvjYpfN2KOY
	VZ7T5yN8TmKuWeap9Jyi1ZHcYsZQNgis3pDMGyK9Np2nbhyqxzuRvzeLyhII6HQyLzK+vUMFuXf3Z
	QBsA8AmbIjNM+a+7TXEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX1Wz-0006Hw-KZ; Sat, 01 Jun 2019 10:46:33 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX1Wc-0005vs-3f
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Jun 2019 10:46:23 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x51Ak6vH028766;
 Sat, 1 Jun 2019 05:46:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559385966;
 bh=xOoaKx9o5FlnhqYsn2s7qWsDLieqnTarTfTPiAJFeVM=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=RErV/cQr5f0Z7wNtc7Z6xPwsuu7J3KCp/gvV0JKUBGBoZFwssWSnZ/NeNaDgJ5FH2
 CBc/5/X24z+K+T4tIsr1nBjW30rJeHhEkRYCoutx1NPhPbc3pcpd2wUV0c5eNXzdzF
 4FsJmy8Hdyn+Pc5b1+sE1+7ALMAq45Qz5U521Vl4=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x51Ak6uY023049
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sat, 1 Jun 2019 05:46:06 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Sat, 1 Jun
 2019 05:46:06 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Sat, 1 Jun 2019 05:46:06 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x51Ak4rr128211;
 Sat, 1 Jun 2019 05:46:05 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: "David S. Miller" <davem@davemloft.net>, Santosh Shilimkar
 <ssantosh@kernel.org>, Richard Cochran <richardcochran@gmail.com>, Rob
 Herring <robh+dt@kernel.org>
Subject: [PATCH net-next 03/10] net: ethernet: ti: netcp_ethss: add support
 for child cpts node
Date: Sat, 1 Jun 2019 13:45:27 +0300
Message-ID: <20190601104534.25790-4-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190601104534.25790-1-grygorii.strashko@ti.com>
References: <20190601104534.25790-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_034610_980723_5F0409C9 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Grygorii Strashko <grygorii.strashko@ti.com>,
 Wingman Kwok <w-kwok2@ti.com>, netdev@vger.kernel.org,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 Murali Karicheri <m-karicheri2@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allow to place CPTS properties in the child "cpts" DT node. For backward
compatibility - roll-back and read CPTS DT properties from parent node if
"cpts" node is not present.

Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
---
 drivers/net/ethernet/ti/netcp_ethss.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/ti/netcp_ethss.c b/drivers/net/ethernet/ti/netcp_ethss.c
index ec179700c184..2c1fac33136c 100644
--- a/drivers/net/ethernet/ti/netcp_ethss.c
+++ b/drivers/net/ethernet/ti/netcp_ethss.c
@@ -3554,7 +3554,7 @@ static int set_gbenu_ethss_priv(struct gbe_priv *gbe_dev,
 static int gbe_probe(struct netcp_device *netcp_device, struct device *dev,
 		     struct device_node *node, void **inst_priv)
 {
-	struct device_node *interfaces, *interface;
+	struct device_node *interfaces, *interface, *cpts_node;
 	struct device_node *secondary_ports;
 	struct cpsw_ale_params ale_params;
 	struct gbe_priv *gbe_dev;
@@ -3713,7 +3713,12 @@ static int gbe_probe(struct netcp_device *netcp_device, struct device *dev,
 		dev_dbg(gbe_dev->dev, "Created a gbe ale engine\n");
 	}
 
-	gbe_dev->cpts = cpts_create(gbe_dev->dev, gbe_dev->cpts_reg, node);
+	cpts_node = of_get_child_by_name(node, "cpts");
+	if (!cpts_node)
+		cpts_node = of_node_get(node);
+
+	gbe_dev->cpts = cpts_create(gbe_dev->dev, gbe_dev->cpts_reg, cpts_node);
+	of_node_put(cpts_node);
 	if (IS_ENABLED(CONFIG_TI_CPTS) && IS_ERR(gbe_dev->cpts)) {
 		ret = PTR_ERR(gbe_dev->cpts);
 		goto free_sec_ports;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
