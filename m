Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E72314B0D0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 09:23:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VTT3SMA8XciJEfGamc1HfzAsEt5lttB76SRI3s64pQI=; b=Tm/lkojuPQQl7g
	gf13/NnMe/maMbq1JFd3bKos+lZG1wD73Z3fqGTP/ndvRBEUltUzZHsxrm73xBbmcmiDt2ETiiyaR
	VlOC98Z4tYZfgk5672AMPRYHcdCEuANqrTBIc72GPHcQQ3CrBodD6wIc9XzfL3raAVrXa3tfGw9A6
	Jd80jbzNRStuok33wMdfbrns0RimQFK/EAD9b8wbiJUCG6RkUX+c9FcvFI24o3OVUVSIj3ptfW/6v
	X8g+1up460QOypRU5/j6vZ7vHZN1QpzpoCYcHJs5nw2JOMEQbORcK8MeC6bvPyxgHnaQ+jyqDUyLH
	pCCslMHh3FhR4wjp3HpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwM8N-0002qs-PM; Tue, 28 Jan 2020 08:22:07 +0000
Received: from mail-eopbgr30043.outbound.protection.outlook.com ([40.107.3.43]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwM8E-0002pk-W7
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 08:22:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RcTZS67YXKo02xzIVwD4oMEVSFzG2Xggn7x8gKybgw/bIVC+l81B2yfLZRBeLjYpRVjv2QwLVO1cIDEqLmEAmkOeh4qHI7yLgdbBjsCVU1YXfcqm8QPKVNtdTzq9A8cMW7H2fsVuuAA3qO/lRLWjdjQkRTKxJTLBjR690rRA6Wb9sCX+ezBzosP6LrPSlK9ONrD3ieGlPLiPNycs4W/u5XBYN9c4DCjfIR2dJukSLnkVp58KnHiPTzCvnO0Zg/xdKLphnVofH3VeWB/JWseuSgG+H0CuV2UxqJfMT9bZRKOJOy9kCv9HmwtP1fqCJy1/GO8hhavYLCjXoatU4+52Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3mcnEvcfcRTM/xbDBnLnflFfaGT4x5i+8ek1kujgnJA=;
 b=nc8e8CNg4e6RoWMSv4ukUDwtT/a82gYWNbf/uaX3naDLr9hjWsSZaFWL+1P9YinPn9dWy73HxXkNFw7ZJJ+6ZdGi/f3sbqmZ/1GR+jKkWwRRW6WYrFw2guEnO76baiysTHvD/DGKyHN3t7Su/B1VnqzzQFEXpL5mlctHzfsB8XSCCnqTB7TRycqO08v3Zs5ObDecpTOiWam8/ckJvFgZy33G5Bxw0xSPZ53BzOX8jdKoaoiR6W2EmRs2EUmh6TdCYbg+K+nDNEFRf8xvBHjBoHWn1MTL2kGaiUWWkxV06mfK/+TwTeIECmSpRE2BlaNHL9eOq7uIxB2sevvfgZZz0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3mcnEvcfcRTM/xbDBnLnflFfaGT4x5i+8ek1kujgnJA=;
 b=T4qoyRrOpuV+4o9tQnYh/7085Si8W2nn9BuJf/iB5dAvO9UwYPj42+Li3in/VtZHdlyjSTCZe95faqWOlP3aYjAA/rKmaD8TjtzuLQ9a6xfck5QY+P3PQGXtlvAXk3/idkYGmGW3jgpMIveYGseGRX1iMjgS119YhmFz+IbC6oY=
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com (52.134.16.147) by
 VI1PR0402MB3423.eurprd04.prod.outlook.com (52.134.4.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.24; Tue, 28 Jan 2020 08:06:31 +0000
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::8881:e155:f058:c0d1]) by VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::8881:e155:f058:c0d1%4]) with mapi id 15.20.2665.026; Tue, 28 Jan 2020
 08:06:31 +0000
Received: from fsr-ub1864-103.ro-buh02.nxp.com (89.37.124.34) by
 AM4PR0701CA0015.eurprd07.prod.outlook.com (2603:10a6:200:42::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2665.13 via Frontend
 Transport; Tue, 28 Jan 2020 08:06:30 +0000
From: "Daniel Baluta (OSS)" <daniel.baluta@oss.nxp.com>
To: "broonie@kernel.org" <broonie@kernel.org>, "alsa-devel@alsa-project.org"
 <alsa-devel@alsa-project.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: [PATCH 1/4] ASoC: SOF: Rename i.MX8 platform to i.MX8X
Thread-Topic: [PATCH 1/4] ASoC: SOF: Rename i.MX8 platform to i.MX8X
Thread-Index: AQHV1bHZin203cfhfk6wRFW9b+E5DA==
Date: Tue, 28 Jan 2020 08:06:31 +0000
Message-ID: <20200128080518.29970-2-daniel.baluta@oss.nxp.com>
References: <20200128080518.29970-1-daniel.baluta@oss.nxp.com>
In-Reply-To: <20200128080518.29970-1-daniel.baluta@oss.nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM4PR0701CA0015.eurprd07.prod.outlook.com
 (2603:10a6:200:42::25) To VI1PR0402MB3839.eurprd04.prod.outlook.com
 (2603:10a6:803:21::19)
x-mailer: git-send-email 2.17.1
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@oss.nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 11bb4cc2-bea7-41d1-8f95-08d7a3c8fbde
x-ms-traffictypediagnostic: VI1PR0402MB3423:|VI1PR0402MB3423:
x-ms-exchange-sharedmailbox-routingagent-processed: True
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB34232D36B522B2399C566A50B80A0@VI1PR0402MB3423.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 029651C7A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(366004)(39860400002)(396003)(346002)(199004)(189003)(5660300002)(6486002)(66556008)(66476007)(66446008)(64756008)(52116002)(66946007)(110136005)(316002)(54906003)(16526019)(8676002)(8936002)(81166006)(81156014)(186003)(956004)(2616005)(71200400001)(1076003)(26005)(2906002)(478600001)(6506007)(6512007)(86362001)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3423;
 H:VI1PR0402MB3839.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1IxkTZCYsYY/2AjEGKWPHBdXuqfMGu4spjjJJyj3loiTyGO/glpwtz/5k65AeewTuKX2fb+voS1rUQ042wOmZerfZmwV74c7Rf46UC6N5/9Mlg3JqiAuTqWDQT8aloyURzJViXm/lJoSrMLnJk8TGPZ5Y/P9Y3JIV+qNenkcvrDSKggdp5bphzJGGB7t3ELqVdmcx2CsqtagDvw3C1j7o0KNZiLTcNSgEsfD6J3ElDSKDs+KB0im1dHEszBlg5F4Xd4xZQO12+Y0/hWqBJO/333eQwk28HsoBPkUNrS8+5oY7m+8LQJxOhQL9h4aWdZL1aH5GKk6bRm64YIZd6OloyvSci+sEcj22B7H+iQDGIYO/MpCDXjY4Cub/dZyW5IKKx0qChlJwAUB8MUlqWOjn4/TXxP3NCAp66nIpZwaQ+LnZrtLxFjFRTiJVRTDt+lR
x-ms-exchange-antispam-messagedata: CNVbdr1x4Ir+mUmysKJQXujdjaL4xgfA3xr7CYKEciWtiUzapteywOO9fzXnZ80vvYBThx+t055eCExK5EheOarxp9Z/ArG/6p12bMCmbEVQP+Q45smeZJDmE/wCT3YK5X675faO4c5GLcpTq88EGQ==
MIME-Version: 1.0
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11bb4cc2-bea7-41d1-8f95-08d7a3c8fbde
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2020 08:06:31.3436 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GwoSsgcraQnHIROF4eBfpY8M3LIwsKTRgI7fbyA0OFgMbAvVtoA5NY6p66XpmyLvfcrGyf/OcfnaSnDOwAPtJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3423
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_002159_033210_55BE1793 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.43 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "pierre-louis.bossart@linux.intel.com" <pierre-louis.bossart@linux.intel.com>,
 Paul Olaru <paul.olaru@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Paul Olaru <paul.olaru@nxp.com>

i.MX8 and i.MX8X platforms are very similar and were treated the same.
Anyhow, we need to account for the differences somehow.

Current supported platform is i.MX8QXP which is from i.MX8X family.
Rename i.MX8 platform to i.MX8X to prepare for future i.MX8 platforms.

Signed-off-by: Paul Olaru <paul.olaru@nxp.com>
Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
---
 sound/soc/sof/imx/imx8.c   | 10 +++++-----
 sound/soc/sof/sof-of-dev.c |  4 ++--
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/sound/soc/sof/imx/imx8.c b/sound/soc/sof/imx/imx8.c
index aef6ca167b9c..94481adc2240 100644
--- a/sound/soc/sof/imx/imx8.c
+++ b/sound/soc/sof/imx/imx8.c
@@ -138,7 +138,7 @@ static int imx8_send_msg(struct snd_sof_dev *sdev, struct snd_sof_ipc_msg *msg)
 /*
  * DSP control.
  */
-static int imx8_run(struct snd_sof_dev *sdev)
+static int imx8x_run(struct snd_sof_dev *sdev)
 {
 	struct imx8_priv *dsp_priv = (struct imx8_priv *)sdev->private;
 	int ret;
@@ -361,13 +361,13 @@ static struct snd_soc_dai_driver imx8_dai[] = {
 },
 };
 
-/* i.MX8  ops */
-struct snd_sof_dsp_ops sof_imx8_ops = {
+/* i.MX8X ops */
+struct snd_sof_dsp_ops sof_imx8x_ops = {
 	/* probe and remove */
 	.probe		= imx8_probe,
 	.remove		= imx8_remove,
 	/* DSP core boot */
-	.run		= imx8_run,
+	.run		= imx8x_run,
 
 	/* Block IO */
 	.block_read	= sof_block_read,
@@ -399,6 +399,6 @@ struct snd_sof_dsp_ops sof_imx8_ops = {
 			SNDRV_PCM_INFO_PAUSE |
 			SNDRV_PCM_INFO_NO_PERIOD_WAKEUP
 };
-EXPORT_SYMBOL(sof_imx8_ops);
+EXPORT_SYMBOL(sof_imx8x_ops);
 
 MODULE_LICENSE("Dual BSD/GPL");
diff --git a/sound/soc/sof/sof-of-dev.c b/sound/soc/sof/sof-of-dev.c
index 39ea8af6213f..2da1bd859d98 100644
--- a/sound/soc/sof/sof-of-dev.c
+++ b/sound/soc/sof/sof-of-dev.c
@@ -19,9 +19,9 @@ extern struct snd_sof_dsp_ops sof_imx8_ops;
 static struct sof_dev_desc sof_of_imx8qxp_desc = {
 	.default_fw_path = "imx/sof",
 	.default_tplg_path = "imx/sof-tplg",
-	.default_fw_filename = "sof-imx8.ri",
+	.default_fw_filename = "sof-imx8x.ri",
 	.nocodec_tplg_filename = "sof-imx8-nocodec.tplg",
-	.ops = &sof_imx8_ops,
+	.ops = &sof_imx8x_ops,
 };
 #endif
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
