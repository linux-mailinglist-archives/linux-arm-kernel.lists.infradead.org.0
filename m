Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F6C84654
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 09:52:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tGOLsfrN5BwvRwP/cZV3g90kW82zupzceQBJyvrz+Dc=; b=UJLZSjjofsTd7T
	+Xu4367fZP03eeHtmiI/q60fC/jbyyFd1xhRtBCOY/DY2fL+f4cMpNgID61Ql6Z2cdPzwoF4xKWcA
	6fE7dibpvr5YKpdUObZOgdhZ4x247Sp+9QqKlHPOAGFOk22jDjzRD75jszqFftg9d7P4OqhbVmar7
	p122tS392OGTMuH/NNK+6PWRqhkuB0BN6yOLFP/nLvs5DT6AYJjA76oBG4pUW59CVx00on/tDD4s2
	8w6v7owSyJgmegPaQJ5QqMIq7Hzfnso/RHU/U79OWiKO6rRVikUKouymx0TB4OC73sBtz8MfU/C6g
	VFfiwFHfoFUY3fUte5Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvGjt-0006Wh-SS; Wed, 07 Aug 2019 07:52:06 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvGhX-0003fR-Nk
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 07:49:41 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x777naQK124160;
 Wed, 7 Aug 2019 02:49:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565164177;
 bh=bwa7pELuDkqr+8qGFfDbMpJD8DewjyhXL2s0BYZTCho=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=rk3SKYhGPGSu3EPcvmaMA4kAI4/KMAaGe80c8TF0K3jFZTU0XZ1xbMQ0tREx/AfUQ
 rG4nhEdL40YYg6PP+xqsCyxU5fge6liv91Uczo71CpdOOfg+5LuvXHB6fVMZ9DY/3o
 xSNbBOtvmg0wDGG6wWH5Q1P2QH98edijXDboeReM=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x777naLk076681
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 7 Aug 2019 02:49:36 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 7 Aug
 2019 02:49:36 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 7 Aug 2019 02:49:36 -0500
Received: from gomoku.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x777nNHj118711;
 Wed, 7 Aug 2019 02:49:35 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <ssantosh@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-omap@vger.kernel.org>, <robh+dt@kernel.org>
Subject: [PATCH 7/8] soc: ti: omap-prm: add dra7 PRM data
Date: Wed, 7 Aug 2019 10:48:58 +0300
Message-ID: <1565164139-21886-8-git-send-email-t-kristo@ti.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1565164139-21886-1-git-send-email-t-kristo@ti.com>
References: <1565164139-21886-1-git-send-email-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_004940_047338_A565481B 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: tony@atomide.com, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add PRM data for dra7 family of SoCs.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 drivers/soc/ti/omap_prm.c | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/soc/ti/omap_prm.c b/drivers/soc/ti/omap_prm.c
index fadfc7f..05b7749 100644
--- a/drivers/soc/ti/omap_prm.c
+++ b/drivers/soc/ti/omap_prm.c
@@ -73,6 +73,31 @@ struct omap_prm_data omap4_prm_data[] = {
 	{ },
 };
 
+static struct omap_prm_data dra7_prm_data[] = {
+	{ .name = "mpu", .base = 0x4ae06300, .pwstst = 0x4 },
+	{ .name = "dsp1", .base = 0x4ae06400, .pwstst = 0x4, .rstctl = 0x10, .rstst = 0x14 },
+	{ .name = "ipu", .base = 0x4ae06500, .pwstst = 0x4, .rstctl = 0x10, .rstst = 0x14, .clkdm_name = "ipu1" },
+	{ .name = "coreaon", .base = 0x4ae06628, .pwstst = 0x4 },
+	{ .name = "core", .base = 0x4ae06700, .pwstst = 0x4, .rstctl = 0x210, .rstst = 0x214, .clkdm_name = "ipu2" },
+	{ .name = "iva", .base = 0x4ae06f00, .pwstst = 0x4 },
+	{ .name = "cam", .base = 0x4ae07000, .pwstst = 0x4 },
+	{ .name = "dss", .base = 0x4ae07100, .pwstst = 0x4 },
+	{ .name = "gpu", .base = 0x4ae07200, .pwstst = 0x4 },
+	{ .name = "l3init", .base = 0x4ae07300, .pwstst = 0x4, .rstctl = 0x10, .rstst = 0x14 },
+	{ .name = "l4per", .base = 0x4ae07400, .pwstst = 0x4 },
+	{ .name = "custefuse", .base = 0x4ae07600, .pwstst = 0x4 },
+	{ .name = "wkupaon", .base = 0x4ae07724, .pwstst = 0x4 },
+	{ .name = "emu", .base = 0x4ae07900, .pwstst = 0x4 },
+	{ .name = "dsp2", .base = 0x4ae07b00, .pwstst = 0x4, .rstctl = 0x10, .rstst = 0x14 },
+	{ .name = "eve1", .base = 0x4ae07b40, .pwstst = 0x4 },
+	{ .name = "eve2", .base = 0x4ae07b80, .pwstst = 0x4 },
+	{ .name = "eve3", .base = 0x4ae07bc0, .pwstst = 0x4 },
+	{ .name = "eve4", .base = 0x4ae07c00, .pwstst = 0x4 },
+	{ .name = "rtc", .base = 0x4ae07c60, .pwstst = 0x4 },
+	{ .name = "vpe", .base = 0x4ae07c80, .pwstst = 0x4 },
+	{ },
+};
+
 struct omap_rst_map am3_wkup_rst_map[] = {
 	{ .rst = 3, .st = 5 },
 	{ .rst = -1 },
@@ -91,6 +116,7 @@ struct omap_prm_data am3_prm_data[] = {
 
 static const struct of_device_id omap_prm_id_table[] = {
 	{ .compatible = "ti,omap4-prm-inst", .data = omap4_prm_data },
+	{ .compatible = "ti,dra7-prm-inst", .data = dra7_prm_data },
 	{ .compatible = "ti,am3-prm-inst", .data = am3_prm_data },
 	{ },
 };
-- 
1.9.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
