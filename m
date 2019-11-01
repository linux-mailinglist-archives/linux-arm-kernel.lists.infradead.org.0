Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 796B2EC130
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 11:16:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F6JMCeqr0Wp/MKWoLDwFf3fyl4BKa1ojy/7csU7zoRM=; b=nWqhCRqOOnfHRP
	dmkSGFsVI118zmS5cTD3kxd/ydQSj8sko2VQ4etx7yQRQ86x7oFHnMedLlExmJGHD5jc6mCsDJnEw
	5Ursp43EPl6CuZmOeZAwezjwJJsWInTihTDh2HagCsmMm653CyasFcPSSVrF1CxygLdAk0J+Yktxk
	DxsePTjoroK1w+53M/l8G7vbd9tngSd/VNIPTA6ofpcCRFxF36k7MQkR4NIkWlPpu0Fil+ggr9g2m
	5eq0brIEsStz4/QK2i/gUk2AnonaVudUt9KyB9MIRVRM0ikk6Mn6Kuee9XjG85k/4Gt71BTFlmg9g
	s60BiFK3uCi06qyJyddQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQTyq-0005R9-K0; Fri, 01 Nov 2019 10:16:32 +0000
Received: from mail-eopbgr00045.outbound.protection.outlook.com ([40.107.0.45]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQTyk-0005QQ-Ea
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 10:16:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FxrgGCcMQ3NubkTGH+5MrqYMaiL+i9wwoAurbTE8ehJOJBOFyU+zh0HMpWwtNWCPxE+9xznE1Ew3xqn6IsygmWZ9pHxsQPpWt8nJQaX4cEIDZhkbbVSnG58LB873cygMKhCV1eDcqVCs3WNchhV5MfRMrBnn2EDbjGugNMWktDiw2K3kYYCpYSvlXPOdnuBI5RvBLCF0hFlBZ/i0OrhhaeWv/eldtB3P/tqidRATlHphmdRVmT6xtOhbVl3x8gj53c8oClyVlnyJymR7zuI/2wMHZ6Zndg/+Hl3KBxzDEJdndkINXYIAVbIiMumAoLZmE6HttdFTT/obM88dApDbEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GEjNv2BDjI1G7k63M4Yk3OLuJc/sRKSE2ecyOSgvLrs=;
 b=e/LVTWXw9mbC6DejKeciNTuKJL4UMZc9qJBe36FLSMwTjKSCdyOgtwsw9Prx7bVcCPJL9TLK4i0pVvULN1KH9E5ZsNxardeDQKov+/cCzU6JxISXOoFYDEx9DbRIQRDn2U36Ph9G3vPldzApRWBwfi5iheNjbed0qqH+QoLdkAq1kP6BN77Zr9LAskCF0o8XhtSlFxR5IE5VFn2hgJ81xvqNEVYx2/8d5DDlOO6fWNiec2nRKM3D3LVNxEIGpBFKZRIueDlp5PGDztMpG4Z9I1EaQRbRzj+SXC5wcLenC3OgRYEjjn9ck5Ngq4hjaUHqeMKMqcEde+82HtavRqdznw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GEjNv2BDjI1G7k63M4Yk3OLuJc/sRKSE2ecyOSgvLrs=;
 b=T36Tr2PFpJsYkpVkU+8P5gj2VQOTOAE7LlsDIL68Fu5KJEyyqH3S6nIVda2KPWKc7U1C9mtnRmCDMMkJD3gjZjdqSWfoamRCyTkQP8fSv9+fqQPw+CRYzl9bEVkkvmu8Kg4TXUKRIvIF88mphEduSvOYuC4PxOtrlEcKkOfncjg=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5188.eurprd04.prod.outlook.com (20.177.42.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.30; Fri, 1 Nov 2019 10:16:19 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2387.028; Fri, 1 Nov 2019
 10:16:19 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH] clk: imx: clk-composite-8m: add lock to gate/mux
Thread-Topic: [PATCH] clk: imx: clk-composite-8m: add lock to gate/mux
Thread-Index: AQHVkJ1nitbWRrQWUkuauMi+K6eGNQ==
Date: Fri, 1 Nov 2019 10:16:19 +0000
Message-ID: <1572603166-24594-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR02CA0209.apcprd02.prod.outlook.com
 (2603:1096:201:20::21) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d7c51b07-d29a-4498-29f7-08d75eb489a0
x-ms-traffictypediagnostic: AM0PR04MB5188:|AM0PR04MB5188:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5188D29497A9CD1C23A72C1F88620@AM0PR04MB5188.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 020877E0CB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(136003)(366004)(39860400002)(376002)(199004)(189003)(486006)(316002)(66946007)(110136005)(66476007)(66556008)(386003)(6506007)(99286004)(14444005)(256004)(52116002)(86362001)(66066001)(64756008)(66446008)(2201001)(50226002)(2906002)(54906003)(3846002)(4326008)(6116002)(6512007)(36756003)(8936002)(25786009)(5660300002)(2501003)(305945005)(81166006)(71190400001)(71200400001)(8676002)(81156014)(7736002)(44832011)(26005)(14454004)(476003)(2616005)(102836004)(186003)(6636002)(478600001)(6436002)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5188;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dRwXf712rwIjCkCaIQL+wqyvGDSRW7jJP3cu1xR8BWCPFwrhSovRCTtyvM8R+jQtNicbGdO2oltd4O2fclzhhMPCIPHc5pYGHC2ZP7bA+L81CbsIQMAz9dyI7jksVEApJS2OcY7pi3D/FY5Op6SkwIcVAoDsAas77L+1P2MIlm2lTJeZfJamXeaiyVI6iDJ74AN0ryKgM0km38onvjV/iIJfdhugzV3q4EhUboTInQGHSbnOxlUSY4bZ8BbqY80ZO7NTV957lwXIBBR+n6Zoyte5KJScNVSzRU6zKv16BbUgKnEtmPRwRTche9WO/mSTIMPqgGH9/rPz7FGUQAf/YLChnppkdVvQiPPNB5bZE8bmp+NLWsy2EONjupujDr2iUHwAfJyngFQF5X1qzrITgZygyyO1AhxRCEZZDMW4WIu9E5KYA3Dezrv0Oh2ADAnC
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7c51b07-d29a-4498-29f7-08d75eb489a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2019 10:16:19.7670 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gGkErQ3LI8HX/PRzUbsiPr0hzYRyAxCR//GrM7Vyog7GqEbD851oGsiF7gVWzMbcAMJ64iHpQCVkB6O1nQ+IZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5188
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_031626_609378_A128EC1B 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.45 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Peng Fan <peng.fan@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

There is a lock to diviver in the composite driver, but that's not
enought. lock to gate/mux are also needed to provide exclusive access
to the register.

Fixes: d3ff9728134e ("clk: imx: Add imx composite clock")
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-composite-8m.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/clk/imx/clk-composite-8m.c b/drivers/clk/imx/clk-composite-8m.c
index e0f25983e80f..20f7c91c03d2 100644
--- a/drivers/clk/imx/clk-composite-8m.c
+++ b/drivers/clk/imx/clk-composite-8m.c
@@ -142,6 +142,7 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
 	mux->reg = reg;
 	mux->shift = PCG_PCS_SHIFT;
 	mux->mask = PCG_PCS_MASK;
+	mux->lock = &imx_ccm_lock;
 
 	div = kzalloc(sizeof(*div), GFP_KERNEL);
 	if (!div)
@@ -161,6 +162,7 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
 	gate_hw = &gate->hw;
 	gate->reg = reg;
 	gate->bit_idx = PCG_CGC_SHIFT;
+	gate->lock = &imx_ccm_lock;
 
 	hw = clk_hw_register_composite(NULL, name, parent_names, num_parents,
 			mux_hw, &clk_mux_ops, div_hw,
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
