Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9640A36A8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 14:20:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sSMLZMzqh2GLNDyaC2toA3HoGmN8xzRD91rAeWet+Ro=; b=I+BfpvVGthST7z
	44UUchWsqMhy1aOUo55+9Wj+yDkpZH8Nj9Bb5Xu4JfMJdh0OpNEds/CYlQ4cC1gihG3TwmfFWYlv6
	zaNrn5T6HIjBd823CxzYBAuMsM++8NkR5b0wfLg20ayUN6TJmU9vV1SMMgARgvgqC3XFN5JGFmwRq
	Z/EqiWYg1Df29nAvxiPEr4y634izdAO3kxaKi8+nfS1EFteLc2PvvG+BhPqjHzE+8xQojTRopGOBg
	yTV0kKtUKD9MA5eOntnf5TOH5R8QfA7nnAWhyw8j/dw54cGWNbPMeAz6aPovUDxpUztJRqmIC9zY7
	Dqr/a9R079SCwo1jU1TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3fsz-00012u-5A; Fri, 30 Aug 2019 12:20:13 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3frc-00088v-0m
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 12:18:49 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7UCIg5o118366;
 Fri, 30 Aug 2019 07:18:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567167522;
 bh=CaSpC6veZguPG4+z+PAkEp85ogZkXYKmwl1YDntIISA=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=QmoFg1RzZQ3AtNoa33y3GFo9dM6pA9wY9/y+tglJUP7G9PE4quFZJYLA/J2GGktOO
 RQXojWRyoaaxNQDz4j1B8d1/sJtp5S7ECWA3XB7/CtU0Ntmfv2joUFRGc4Gw5Iv/B0
 mfhd135/KtVoW7av1a1WcuHOumPQe4s41c6whb0I=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7UCIgMt031625
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 30 Aug 2019 07:18:42 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 30
 Aug 2019 07:18:42 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 30 Aug 2019 07:18:42 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7UCIP6N083824;
 Fri, 30 Aug 2019 07:18:40 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <ssantosh@kernel.org>, <linux-omap@vger.kernel.org>, <tony@atomide.com>,
 <s-anna@ti.com>, <p.zabel@pengutronix.de>
Subject: [PATCHv3 07/10] soc: ti: omap-prm: add data for am33xx
Date: Fri, 30 Aug 2019 15:18:13 +0300
Message-ID: <20190830121816.30034-8-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830121816.30034-1-t-kristo@ti.com>
References: <20190830121816.30034-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_051848_162348_8FB085B1 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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

Add PRM instance data for AM33xx SoC. Includes some basic register
definitions and reset data for now.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 drivers/soc/ti/omap_prm.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/soc/ti/omap_prm.c b/drivers/soc/ti/omap_prm.c
index d413e65c9b9b..bc0933315484 100644
--- a/drivers/soc/ti/omap_prm.c
+++ b/drivers/soc/ti/omap_prm.c
@@ -61,6 +61,11 @@ struct omap_reset_data {
 
 #define OMAP_PRM_HAS_RESETS	(OMAP_PRM_HAS_RSTCTRL | OMAP_PRM_HAS_RSTST)
 
+static const struct omap_rst_map rst_map_0[] = {
+	{ .rst = 0, .st = 0 },
+	{ .rst = -1 },
+};
+
 static const struct omap_rst_map rst_map_01[] = {
 	{ .rst = 0, .st = 0 },
 	{ .rst = 1, .st = 1 },
@@ -82,8 +87,27 @@ static const struct omap_prm_data omap4_prm_data[] = {
 	{ },
 };
 
+static const struct omap_rst_map am3_per_rst_map[] = {
+	{ .rst = 1 },
+	{ .rst = -1 },
+};
+
+static const struct omap_rst_map am3_wkup_rst_map[] = {
+	{ .rst = 3, .st = 5 },
+	{ .rst = -1 },
+};
+
+static const struct omap_prm_data am3_prm_data[] = {
+	{ .name = "per", .base = 0x44e00c00, .rstctrl = 0x0, .rstmap = am3_per_rst_map, .flags = OMAP_PRM_HAS_RSTCTRL, .clkdm_name = "pruss_ocp" },
+	{ .name = "wkup", .base = 0x44e00d00, .rstctrl = 0x0, .rstst = 0xc, .rstmap = am3_wkup_rst_map, .flags = OMAP_PRM_HAS_RSTCTRL | OMAP_PRM_HAS_NO_CLKDM },
+	{ .name = "device", .base = 0x44e00f00, .rstctrl = 0x0, .rstst = 0x8, .rstmap = rst_map_01, .flags = OMAP_PRM_HAS_RSTCTRL | OMAP_PRM_HAS_NO_CLKDM },
+	{ .name = "gfx", .base = 0x44e01100, .rstctrl = 0x4, .rstst = 0x14, .rstmap = rst_map_0, .clkdm_name = "gfx_l3" },
+	{ },
+};
+
 static const struct of_device_id omap_prm_id_table[] = {
 	{ .compatible = "ti,omap4-prm-inst", .data = omap4_prm_data },
+	{ .compatible = "ti,am3-prm-inst", .data = am3_prm_data },
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
