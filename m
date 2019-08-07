Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 515188464C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 09:51:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zy/9hu/wO+oHHbbWgw3P6G1HRpyx562UThx0CNQ+pec=; b=q+hTO8Ray5ENrn
	CDb5taHuBf/pQhxrLIP8lJG/PQch+qhHFhPZibniTwgTabiO4vcATsL3L62S/gV8kxDUu7xOWD7vF
	X3cpGthiTpM6O0ZDSE5bMHj5SetAwo2LhgKrR3SkbiWsc2TetDzKtRSwGk4E9+o60MZNhw0DCIoky
	93SGKr80L0qLreN8XoOpfeuSmPlsd8AZNuCXI6wL4BRG8G5FbETz7RjYU+mrPVNmaH2yq2hQ2T7qH
	GPGNldaQZyiI4+n5MH3tcJMS2XXHPNZb1Re1UEq72YgLotJUONUH5lu5h+7Tgs4gT9OP9Kze5wSkx
	yG5sxtyg1K4YlzKBm6Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvGj7-0005xp-Nq; Wed, 07 Aug 2019 07:51:17 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvGhU-0003cn-Vn
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 07:49:38 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x777nYsn026506;
 Wed, 7 Aug 2019 02:49:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565164174;
 bh=CqHLqeTvLwqY9yjJT7RoxOx9D6Uv+3KwF7okndJxyzM=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=nlM39HucyCjI3kq5RvBT+Tcjdgeso1P1eyTCjh7sZuYgj5wloqH63Qv2M+vxGImD7
 qDmP3UHsiqkdSnzTeOuSyR6FbI2UKfXevk6nr3YJf7HEnxF+lp+rBUDRQBtjkDNu0R
 XdAUZjmHq+bVSBFK8dPXcWsjwq5G7yoTWVEs8EWc=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x777nYMs078588
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 7 Aug 2019 02:49:34 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 7 Aug
 2019 02:49:33 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 7 Aug 2019 02:49:33 -0500
Received: from gomoku.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x777nNHh118711;
 Wed, 7 Aug 2019 02:49:32 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <ssantosh@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-omap@vger.kernel.org>, <robh+dt@kernel.org>
Subject: [PATCH 5/8] soc: ti: omap-prm: add omap4 PRM data
Date: Wed, 7 Aug 2019 10:48:56 +0300
Message-ID: <1565164139-21886-6-git-send-email-t-kristo@ti.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1565164139-21886-1-git-send-email-t-kristo@ti.com>
References: <1565164139-21886-1-git-send-email-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_004937_216448_A5841054 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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

Add PRM data for omap4 family of SoCs.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 drivers/soc/ti/omap_prm.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/soc/ti/omap_prm.c b/drivers/soc/ti/omap_prm.c
index 870515e3..9b8d5945 100644
--- a/drivers/soc/ti/omap_prm.c
+++ b/drivers/soc/ti/omap_prm.c
@@ -54,7 +54,27 @@ struct omap_reset_data {
 
 #define OMAP_PRM_NO_RSTST	BIT(0)
 
+struct omap_prm_data omap4_prm_data[] = {
+	{ .name = "mpu", .base = 0x4a306300, .pwstst = 0x4 },
+	{ .name = "tesla", .base = 0x4a306400, .pwstst = 0x4, .rstctl = 0x10, .rstst = 0x14 },
+	{ .name = "abe", .base = 0x4a306500, .pwstst = 0x4 },
+	{ .name = "always_on_core", .base = 0x4a306600, .pwstst = 0x4 },
+	{ .name = "core", .base = 0x4a306700, .pwstst = 0x4, .rstctl = 0x210, .rstst = 0x214 },
+	{ .name = "ivahd", .base = 0x4a306f00, .pwstst = 0x4, .rstctl = 0x10, .rstst = 0x14 },
+	{ .name = "cam", .base = 0x4a307000, .pwstst = 0x4 },
+	{ .name = "dss", .base = 0x4a307100, .pwstst = 0x4 },
+	{ .name = "gfx", .base = 0x4a307200, .pwstst = 0x4 },
+	{ .name = "l3init", .base = 0x4a307300, .pwstst = 0x4 },
+	{ .name = "l4per", .base = 0x4a307400, .pwstst = 0x4 },
+	{ .name = "cefuse", .base = 0x4a307600, .pwstst = 0x4 },
+	{ .name = "wkup", .base = 0x4a307700, .pwstst = 0x4 },
+	{ .name = "emu", .base = 0x4a307900, .pwstst = 0x4 },
+	{ .name = "device", .base = 0x4a307b00, .rstctl = 0x0, .rstst = 0x4 },
+	{ },
+};
+
 static const struct of_device_id omap_prm_id_table[] = {
+	{ .compatible = "ti,omap4-prm-inst", .data = omap4_prm_data },
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
