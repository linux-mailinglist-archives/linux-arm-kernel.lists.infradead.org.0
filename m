Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB240106BF2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 11:49:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B0S2i+zQSA08lKD/eb0nJBRehlR5m3eFlqz292mPyxU=; b=gIBxGnz2yZ4lUQ
	svx31LaHdHBnYBZiSL3rtMHBkzSvCYM+nJUTQCvHY8wuZsgDDsUDn56gL+Dp+lEEs0QGV0ww3s22A
	oeZF+OFWZEy/ox0p4I2hrcX175L7NQhGCfYLwfXHmm/jJXxpD6PABlmz5mCzPOKgULlDb44cyAmgm
	In5Lsk/OhbLEdy2SuYaVWcgmudwnO8twMjYJRGXNgBrtdpAhKh1O07JQKpnQgCStnv9/Dxudtojmi
	fX30V0+B2ER3XIlAUmXyOKbLpY55BLZOayCWBwn+69D+PBM/7bxOAh7Vp+UrXNdEiD0WbIbSqnPMi
	xdn6SKAMHI+wuOgS0PSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6Uj-0001y5-Fk; Fri, 22 Nov 2019 10:48:57 +0000
Received: from mail-eopbgr10061.outbound.protection.outlook.com ([40.107.1.61]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6U4-0001cm-HO
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 10:48:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GOU5BJk8yPY+dTOu90Sipiq2VJ1oh0YIRk31QDkIbpzLEK7j+ol8+E7MRxezhcby3NO+2fSl5Z71D9ZZp6igz09qzqhJCvYVKs1ZJVCL4gpseHp8J53HZLp1neJqg/iCKqzOAiZQRsZ+T+HkrEboQeeP0YVOCWZ7asq1Xr6wl3r/VUvLblJPFM4bT4bHIUlLR6PJVsE2mRBwbqk6rdkHY1+9LSzXhsY9H58gs0lyAXFtbxHU8jHKaRmqPzF1PjlOU9b2di+KjSxsPn0xRwF2KeUHssrWQ0RGoSTntaicXaRvVjqB4Y4nQN4sydKxYZA7QA1PaUagDpO5uxQHCN1qqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hpB7/h8s8+NB1zXHlwW1O5r1FDB+BYRcST9UVjrcAD4=;
 b=WqcLkN0hF+CsGfHlEq4I8Ueag4mkPFkg8rLLTzWAxsXqEv7z6iMEy271IpllqevCXkRuKkuRDggB1Ecv7E69aiYphFI4GHRoW7aXMAb5CXm8jqtfRQQzPjb+xIPjXzpzfp1f/TlTctsPIzcqCuGstbJcyyMBr9vE/WsAYukT+zrQQ5cfjT2FSz5YNnNP1uiJW6us33ZbeOS2ZmeJUEBsxzna4RE8jGYN+GQ8PztzQuPTdRR3eDc6EGoVXjGF/4dsV/NhXVV+mfxJaieXXu5eRD0ZVcPy/tXy4iJ6zco/lIzj4qsHqUZ9ueTnNGwVvsCDjrajXMmcnocFVTSn9SMwSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hpB7/h8s8+NB1zXHlwW1O5r1FDB+BYRcST9UVjrcAD4=;
 b=kH5aH8Ugn17NzwpBA9iGkiCbNpOars+hkY8MEW2zbxchEXIYskkOrabaKncIMleROk4JGGX5gg3hFobIU0znH/Z0iVl5VgQ+7G4I/BIXXk6f/IamrZmw9VkV/GRAe6BTiH8j8AupyrQ9BDSe5zoqUVAFeYbsy0PRGliiTtwv7XU=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB5074.eurprd04.prod.outlook.com (20.177.42.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.19; Fri, 22 Nov 2019 10:48:11 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde%7]) with mapi id 15.20.2474.019; Fri, 22 Nov 2019
 10:48:11 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>, Jacky Bai <ping.bai@nxp.com>
Subject: [PATCH v2 01/11] clk: imx: Add correct failure handling for clk based
 helpers
Thread-Topic: [PATCH v2 01/11] clk: imx: Add correct failure handling for clk
 based helpers
Thread-Index: AQHVoSJV3+BGHUQPMkG8d0LKK8nz2A==
Date: Fri, 22 Nov 2019 10:48:10 +0000
Message-ID: <1574419679-3813-2-git-send-email-abel.vesa@nxp.com>
References: <1574419679-3813-1-git-send-email-abel.vesa@nxp.com>
In-Reply-To: <1574419679-3813-1-git-send-email-abel.vesa@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR0402CA0020.eurprd04.prod.outlook.com
 (2603:10a6:208:15::33) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.7.4
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 630c59f2-36db-42ac-3649-08d76f3977ab
x-ms-traffictypediagnostic: AM0PR04MB5074:|AM0PR04MB5074:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5074BA9DEB47A28DC1868096F6490@AM0PR04MB5074.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 02296943FF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(346002)(376002)(396003)(136003)(189003)(199004)(478600001)(14444005)(256004)(6506007)(54906003)(7736002)(305945005)(316002)(71200400001)(5660300002)(110136005)(102836004)(186003)(86362001)(66066001)(71190400001)(2906002)(4326008)(76176011)(99286004)(36756003)(26005)(52116002)(386003)(8936002)(3846002)(2616005)(446003)(44832011)(11346002)(66556008)(66476007)(66446008)(64756008)(6486002)(66946007)(6436002)(81166006)(8676002)(81156014)(6636002)(6512007)(25786009)(14454004)(50226002)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5074;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iV4gbwLuQW9Vq7UdzckzTsAHAhPxbNSSDRCDIb+AVKDhhn9aSN+xVB+PNUv2QFY6c0GYuwCXxEMNf3RwrOclK6IhfgYU1UMYn4MUBp8n6o61mfA3wDffaZkCalF5Q6LjvTOWb2Xc3uBX7X9eTNkEUoETOCiPVjuJ3CrVmRcsnMviWNW0VzyGtg9kyeifemuf3w7DFM5mDbGijTFpB3pRE/Ru093+RSbtfLecSgfv/G1Rw5+/0++/RTgvPxLJu6GMLkDm0wxenAqoMdfgCfaEWXdr8klUNhlkigjuCfuCKWuje0DKBtayXwZqR8b92+yg8zC2OU9ma/mbzKXvJ3pCZiQImuJjR8STUsur1s02aMhHnFs9dJRh3hwwJ8ZfvMkdVbg1bGIxsikaoPmEYc6jnqyAlaOZAARNvBPikElLHLGWr1vxAuM++H5sxpD7o9HY
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 630c59f2-36db-42ac-3649-08d76f3977ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2019 10:48:10.9281 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PajE31Amud/CMtt87ufpFQrVMVnXnaOObcOXi/W37kOoKIau5sxHR23VNtOqpua9paDEr0a0kLqaqOL3iYHSew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_024816_576647_B501D9D2 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Peng Fan <peng.fan@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If the clk_hw based API returns an error, trying to return the clk from
hw will end up in a NULL pointer dereference. So adding the to_clk
checker and using it inside every clk based macro helper we handle that
case correctly.

This to_clk is also temporary and will go away along with the clk based
macro helpers once there is no user that need them anymore.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 drivers/clk/imx/clk.h | 37 ++++++++++++++++++++++---------------
 1 file changed, 22 insertions(+), 15 deletions(-)

diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index bc5bb6a..30ddbc1 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -54,48 +54,48 @@ extern struct imx_pll14xx_clk imx_1416x_pll;
 extern struct imx_pll14xx_clk imx_1443x_pll;
 
 #define imx_clk_cpu(name, parent_name, div, mux, pll, step) \
-	imx_clk_hw_cpu(name, parent_name, div, mux, pll, step)->clk
+	to_clk(imx_clk_hw_cpu(name, parent_name, div, mux, pll, step))
 
 #define clk_register_gate2(dev, name, parent_name, flags, reg, bit_idx, \
 				cgr_val, clk_gate_flags, lock, share_count) \
-	clk_hw_register_gate2(dev, name, parent_name, flags, reg, bit_idx, \
-				cgr_val, clk_gate_flags, lock, share_count)->clk
+	to_clk(clk_hw_register_gate2(dev, name, parent_name, flags, reg, bit_idx, \
+				cgr_val, clk_gate_flags, lock, share_count))
 
 #define imx_clk_pllv3(type, name, parent_name, base, div_mask) \
-	imx_clk_hw_pllv3(type, name, parent_name, base, div_mask)->clk
+	to_clk(imx_clk_hw_pllv3(type, name, parent_name, base, div_mask))
 
 #define imx_clk_pfd(name, parent_name, reg, idx) \
-	imx_clk_hw_pfd(name, parent_name, reg, idx)->clk
+	to_clk(imx_clk_hw_pfd(name, parent_name, reg, idx))
 
 #define imx_clk_gate_exclusive(name, parent, reg, shift, exclusive_mask) \
-	imx_clk_hw_gate_exclusive(name, parent, reg, shift, exclusive_mask)->clk
+	to_clk(imx_clk_hw_gate_exclusive(name, parent, reg, shift, exclusive_mask))
 
 #define imx_clk_fixed_factor(name, parent, mult, div) \
-	imx_clk_hw_fixed_factor(name, parent, mult, div)->clk
+	to_clk(imx_clk_hw_fixed_factor(name, parent, mult, div))
 
 #define imx_clk_divider2(name, parent, reg, shift, width) \
-	imx_clk_hw_divider2(name, parent, reg, shift, width)->clk
+	to_clk(imx_clk_hw_divider2(name, parent, reg, shift, width))
 
 #define imx_clk_gate_dis(name, parent, reg, shift) \
-	imx_clk_hw_gate_dis(name, parent, reg, shift)->clk
+	to_clk(imx_clk_hw_gate_dis(name, parent, reg, shift))
 
 #define imx_clk_gate2(name, parent, reg, shift) \
-	imx_clk_hw_gate2(name, parent, reg, shift)->clk
+	to_clk(imx_clk_hw_gate2(name, parent, reg, shift))
 
 #define imx_clk_gate2_flags(name, parent, reg, shift, flags) \
-	imx_clk_hw_gate2_flags(name, parent, reg, shift, flags)->clk
+	to_clk(imx_clk_hw_gate2_flags(name, parent, reg, shift, flags))
 
 #define imx_clk_gate2_shared2(name, parent, reg, shift, share_count) \
-	imx_clk_hw_gate2_shared2(name, parent, reg, shift, share_count)->clk
+	to_clk(imx_clk_hw_gate2_shared2(name, parent, reg, shift, share_count))
 
 #define imx_clk_gate3(name, parent, reg, shift) \
-	imx_clk_hw_gate3(name, parent, reg, shift)->clk
+	to_clk(imx_clk_hw_gate3(name, parent, reg, shift))
 
 #define imx_clk_gate4(name, parent, reg, shift) \
-	imx_clk_hw_gate4(name, parent, reg, shift)->clk
+	to_clk(imx_clk_hw_gate4(name, parent, reg, shift))
 
 #define imx_clk_mux(name, reg, shift, width, parents, num_parents) \
-	imx_clk_hw_mux(name, reg, shift, width, parents, num_parents)->clk
+	to_clk(imx_clk_hw_mux(name, reg, shift, width, parents, num_parents))
 
 struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
 		 void __iomem *base, const struct imx_pll14xx_clk *pll_clk);
@@ -198,6 +198,13 @@ struct clk_hw *imx_clk_hw_fixup_mux(const char *name, void __iomem *reg,
 			      u8 shift, u8 width, const char * const *parents,
 			      int num_parents, void (*fixup)(u32 *val));
 
+static inline struct clk *to_clk(struct clk_hw *hw)
+{
+	if (IS_ERR_OR_NULL(hw))
+		return ERR_CAST(hw);
+	return hw->clk;
+}
+
 static inline struct clk *imx_clk_fixed(const char *name, int rate)
 {
 	return clk_register_fixed_rate(NULL, name, NULL, 0, rate);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
