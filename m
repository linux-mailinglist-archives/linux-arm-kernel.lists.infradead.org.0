Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D99CEA36A6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 14:19:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BWPRrN2wB4GlyaDQY3dKd6W3bHHiDXIDqYU2tEcrSnU=; b=lUoonVZC0cZrvD
	3NgR5cwu6wQWP9rn84FtkZF6Dwdi0sFbhm17oxjsvAXgA0RvzoTniYLse4vqBJ5Ni+2NASSrJBID3
	okHw7f0YJT5pyGSxifMAqGAYU8+vSA8zF9o/bKMafAri3hU7ezu1cezhpA2aLeI2wQfk5aOE2f0es
	h/Xokr6GU1iNOvpBBDqt4a7AleZnyH+4D6209xXp+V7QmWX4KQ8M2Cg2vjCyttXgiUzEyI7WHYPZk
	+wmjQvqdSWOx5Pf3lrN0EhWAI+jHDg3iM6mu5benK2KnXrkCGiyNIBA2a0CvbiFX14XNO6y1ZqpNZ
	1x6M4yqYsbaLQw/mqDsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3fsh-0000oQ-91; Fri, 30 Aug 2019 12:19:55 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3frW-00086A-T1
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 12:18:44 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7UCIeDK119961;
 Fri, 30 Aug 2019 07:18:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567167520;
 bh=C/SSLF6gUJB4HpZa8ZPhirOUkBhUUOqeJuvqdZTQaow=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=rdk48wkWAn9ZBiTw3YN+gMT7gokPYP3HC7g/tGBnknPKzgyyPFlgbz5i8fv5X0MAU
 FUHyfsTXaw2zsjNXZjMhvLVRQMognaU2qbXZnQvCzCphWAglvZDr02B6W90gbZIoZg
 kLN/Q7CXdR2OiRUYC+d+cf1KEp1F3xWqLeUHu78c=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7UCIeOq128504
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 30 Aug 2019 07:18:40 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 30
 Aug 2019 07:18:39 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 30 Aug 2019 07:18:39 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7UCIP6M083824;
 Fri, 30 Aug 2019 07:18:38 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <ssantosh@kernel.org>, <linux-omap@vger.kernel.org>, <tony@atomide.com>,
 <s-anna@ti.com>, <p.zabel@pengutronix.de>
Subject: [PATCHv3 06/10] soc: ti: omap-prm: add omap4 PRM data
Date: Fri, 30 Aug 2019 15:18:12 +0300
Message-ID: <20190830121816.30034-7-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830121816.30034-1-t-kristo@ti.com>
References: <20190830121816.30034-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_051843_024953_7BAB112B 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add PRM data for omap4 family of SoCs. Initially this is just used to
provide reset support.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 drivers/soc/ti/omap_prm.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/soc/ti/omap_prm.c b/drivers/soc/ti/omap_prm.c
index 7c8fdc5e6c50..d413e65c9b9b 100644
--- a/drivers/soc/ti/omap_prm.c
+++ b/drivers/soc/ti/omap_prm.c
@@ -61,7 +61,29 @@ struct omap_reset_data {
 
 #define OMAP_PRM_HAS_RESETS	(OMAP_PRM_HAS_RSTCTRL | OMAP_PRM_HAS_RSTST)
 
+static const struct omap_rst_map rst_map_01[] = {
+	{ .rst = 0, .st = 0 },
+	{ .rst = 1, .st = 1 },
+	{ .rst = -1 },
+};
+
+static const struct omap_rst_map rst_map_012[] = {
+	{ .rst = 0, .st = 0 },
+	{ .rst = 1, .st = 1 },
+	{ .rst = 2, .st = 2 },
+	{ .rst = -1 },
+};
+
+static const struct omap_prm_data omap4_prm_data[] = {
+	{ .name = "tesla", .base = 0x4a306400, .rstctrl = 0x10, .rstst = 0x14, .rstmap = rst_map_01 },
+	{ .name = "core", .base = 0x4a306700, .rstctrl = 0x210, .rstst = 0x214, .clkdm_name = "ducati", .rstmap = rst_map_012 },
+	{ .name = "ivahd", .base = 0x4a306f00, .rstctrl = 0x10, .rstst = 0x14, .rstmap = rst_map_012 },
+	{ .name = "device", .base = 0x4a307b00, .rstctrl = 0x0, .rstst = 0x4, .rstmap = rst_map_01, .flags = OMAP_PRM_HAS_RSTCTRL | OMAP_PRM_HAS_NO_CLKDM },
+	{ },
+};
+
 static const struct of_device_id omap_prm_id_table[] = {
+	{ .compatible = "ti,omap4-prm-inst", .data = omap4_prm_data },
 	{ },
 };
 
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
