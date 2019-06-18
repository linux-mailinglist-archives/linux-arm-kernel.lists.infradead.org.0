Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F1F4A48F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 16:55:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aPQ90FpzfZZCeKiZpnZFU4xhauQGYRqrQeK8uW+eE9E=; b=Fx37/tTl+VMGEn
	zw1LImcC+rAPw6h4v28HAmIKKTza5tZLn3n2Oj2lBajVmmqyymJJ3Y5HnVhB1Y0YHoYemy22BSPBb
	B+ZSuOXosKF9JxK9sUJVUYKaMPHhM5eG4LAI7EicNL2/bL52DH2PdfQaKC09PdlZsO5eWcfbHexHY
	AeyCZM2h3qQj14xTNks3Gf6rkNi93c8/qdXcoQHwxalABU+gnQHpr54DhF/rDL3nabqqOZmSAfuFS
	zweu7bVaFnHNkb1jmClNjDOdpKZVB9IDoV9RlW5wQ7rZepxpy6xipyPFU40gf7s/X4qmNOMKR693G
	45lHf046bvi4eMfhWg6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdFWS-00077w-MB; Tue, 18 Jun 2019 14:55:44 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdFWG-00076c-Dt
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 14:55:34 +0000
X-Originating-IP: 90.88.23.150
Received: from mc-bl-xps13.lan
 (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr [90.88.23.150])
 (Authenticated sender: maxime.chevallier@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 17D6D4000B;
 Tue, 18 Jun 2019 14:55:25 +0000 (UTC)
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: davem@davemloft.net
Subject: [PATCH net-next 1/4] net: mvpp2: cls: Use a dedicated lu_type for the
 RSS lookup
Date: Tue, 18 Jun 2019 16:55:16 +0200
Message-Id: <20190618145519.27705-2-maxime.chevallier@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190618145519.27705-1-maxime.chevallier@bootlin.com>
References: <20190618145519.27705-1-maxime.chevallier@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_075532_624015_03603F8C 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Antoine Tenart <antoine.tenart@bootlin.com>, netdev@vger.kernel.org,
 gregory.clement@bootlin.com, linux-kernel@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>, nadavh@marvell.com,
 thomas.petazzoni@bootlin.com, miquel.raynal@bootlin.com, stefanc@marvell.com,
 mw@semihalf.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When performing a TCAM lookup in the C2 engine, it's possible that
multiple entries match the packet. To make sure the correct entry match
when performing a lookup, the Flow Table can set a lookup type, which
will be used in the TCAM lookup, thus preventing such false-positives.

We need to make sure the RSS match doesn't interfere with other
classification lookups, hence we use a dedicated lookup_type for it.

Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
---
 drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c | 4 ++--
 drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.h | 5 +++++
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
index e47c00c5f829..8af13316ecb1 100644
--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
@@ -596,7 +596,7 @@ static void mvpp2_cls_flow_init(struct mvpp2 *priv,
 
 	mvpp2_cls_flow_eng_set(&fe, MVPP22_CLS_ENGINE_C2);
 	mvpp2_cls_flow_port_id_sel(&fe, true);
-	mvpp2_cls_flow_lu_type_set(&fe, MVPP22_FLOW_ETHERNET);
+	mvpp2_cls_flow_lu_type_set(&fe, MVPP22_CLS_LU_TYPE_ALL);
 
 	/* Add all ports */
 	for (i = 0; i < MVPP2_MAX_PORTS; i++)
@@ -861,7 +861,7 @@ static void mvpp2_port_c2_cls_init(struct mvpp2_port *port)
 
 	/* Match on Lookup Type */
 	c2.tcam[4] |= MVPP22_CLS_C2_TCAM_EN(MVPP22_CLS_C2_LU_TYPE(MVPP2_CLS_LU_TYPE_MASK));
-	c2.tcam[4] |= MVPP22_CLS_C2_LU_TYPE(MVPP22_FLOW_ETHERNET);
+	c2.tcam[4] |= MVPP22_CLS_C2_LU_TYPE(MVPP22_CLS_LU_TYPE_ALL);
 
 	/* Update RSS status after matching this entry */
 	c2.act = MVPP22_CLS_C2_ACT_RSS_EN(MVPP22_C2_UPD_LOCK);
diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.h b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.h
index 26cc1176e758..957f80b31743 100644
--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.h
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.h
@@ -180,6 +180,11 @@ enum mvpp2_prs_flow {
 /* LU Type defined for all engines, and specified in the flow table */
 #define MVPP2_CLS_LU_TYPE_MASK			0x3f
 
+enum mvpp2_cls_lu_type {
+	/* rule->loc is used as a lu-type for the entries 0 - 62. */
+	MVPP22_CLS_LU_TYPE_ALL = 63,
+};
+
 #define MVPP2_N_FLOWS		(MVPP2_FL_LAST - MVPP2_FL_START)
 
 struct mvpp2_cls_flow {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
