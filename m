Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B680114B0A8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 09:06:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B+pP8e2wYC1Ln1rELo83DfY8tUNewjOJ9heBVWey8bI=; b=gcmxvE0eI7St2/
	/6UyJJS12qybbA8UFh/oBb711SzmCVnsxrrxZ/H7vFJX/6vi1Ri812vD3PGO0S1PtRM3dY6tJ0GGx
	aARDMTgTtCm6dohF+4lnvFMAlb8AhfV5lPK3fgNo4H+t2iEWjWDfMGYn+0PSz12uVt2ZSkEA2NFU0
	nsdxGztnWappnmF/aBlACbqA6q7MfQCTjMNmyw4px36Mn9QLJp1vIX+qYVj6wLhPGMghO0yGldUHY
	w3IjY7diLBBF4DESM1Nd/+pHB6RX8k9yRIL72Mog3JdhLZcF1LtGUuEoVXxCzNw7qhFmfHkI9Ktkk
	gUU+h12VWEPaYx6HC1dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwLtZ-0003Hf-2a; Tue, 28 Jan 2020 08:06:49 +0000
Received: from mail-ve1eur01on062f.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::62f]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwLtN-0003Fr-IH
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 08:06:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iU3NVbi6vX+h5oT5XY8df15BR2eNk9dG6jBeX/Xuyaxq0R35c0xIvV5OABkpgZyi/tKcwsrblHrdAXrSLULTg1DteQ4Xj7BxfTsY1dlEqk1X+Vi9GPCLRZS5ysFjRm4/jih30ro78MsLBEhWqbp80h8HjgFEVQloBBL12EFInAEGHw5JSdoYgs6FE45HJiYvQuezbrnmtjMrsnviplc0K0yfjmeK9Sa3l2R7YgfwRDJPXjH5pSHpuPpwyNbSCQ/oRb4Zc346alAFQ2nQrh9Eqc4/HZTweBGu/d71ar1INjCeKSIpil3Zt7ZNF2s0xuA9QLhStzNmzWfU/l9HHlLHmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ippRL3gKhAvxUK9cSq3OolHLCZ0QPiDMfMPQLTG0GoY=;
 b=I5JU3LoLS96QNzWknUojnuPKO+QVFDrFlpFjg08XsmagbseiPlSWBgqLKZTF2Ke8OHFXthCNkGKbEt1P2nneeqxJnRckdTCP65zjBYdXiCYsE8pfM+RwKtLI/CBFQb3d95bapqC9qCWq5/N8/FWrUNnapzClimEzgm1Cq7FmSy/bEXmcMiKpqJ2Ts1WegI+y+O8FKvPkDSp3ywtUa7zGuy7yiZXM+Jj2fs8dZuZ7hIQB4BNAuQD/BI3MGOo5txI6t4GyPw6tfD2Igr6TOS7dei5lASMubtXLNs+9MfONob3JGoFTBHWC0cMSHJvxDyCYVzVHJ6u6ioFSurDJV3BcEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ippRL3gKhAvxUK9cSq3OolHLCZ0QPiDMfMPQLTG0GoY=;
 b=LbHHADT6HIwBFfyyHnhCw+3GdMI99rMuiX7n01wvTlb8XwSJZ+a9fAmky76hMnrTNmN458TVvXiZVs3fjIP8hgaDwO91IBKakevXbY1Xp0Ydbrf3e/nM0TzeEElFKozzUcjqeTTA6JXRMT4pi2k9G+SscGJjbQkjamnPBgL5Hb4=
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com (52.134.16.147) by
 VI1PR0402MB3646.eurprd04.prod.outlook.com (52.134.13.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.23; Tue, 28 Jan 2020 08:06:34 +0000
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::8881:e155:f058:c0d1]) by VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::8881:e155:f058:c0d1%4]) with mapi id 15.20.2665.026; Tue, 28 Jan 2020
 08:06:34 +0000
Received: from fsr-ub1864-103.ro-buh02.nxp.com (89.37.124.34) by
 AM4PR0701CA0015.eurprd07.prod.outlook.com (2603:10a6:200:42::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2665.13 via Frontend
 Transport; Tue, 28 Jan 2020 08:06:32 +0000
From: "Daniel Baluta (OSS)" <daniel.baluta@oss.nxp.com>
To: "broonie@kernel.org" <broonie@kernel.org>, "alsa-devel@alsa-project.org"
 <alsa-devel@alsa-project.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: [PATCH 3/4] ASoC: SOF: Add i.MX8QM device descriptor
Thread-Topic: [PATCH 3/4] ASoC: SOF: Add i.MX8QM device descriptor
Thread-Index: AQHV1bHa4q1UohZ6fEmmFQ/wI2RSEw==
Date: Tue, 28 Jan 2020 08:06:33 +0000
Message-ID: <20200128080518.29970-4-daniel.baluta@oss.nxp.com>
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
x-ms-office365-filtering-correlation-id: a9bde7d1-b52b-4be3-564b-08d7a3c8fd5d
x-ms-traffictypediagnostic: VI1PR0402MB3646:|VI1PR0402MB3646:
x-ms-exchange-sharedmailbox-routingagent-processed: True
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB3646E97F9904DE0836DADE27B80A0@VI1PR0402MB3646.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:293;
x-forefront-prvs: 029651C7A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(346002)(39860400002)(396003)(366004)(189003)(199004)(86362001)(6506007)(6512007)(54906003)(110136005)(2906002)(316002)(478600001)(81156014)(6486002)(956004)(66946007)(71200400001)(66476007)(2616005)(64756008)(66446008)(1076003)(8936002)(16526019)(81166006)(5660300002)(186003)(4326008)(66556008)(26005)(8676002)(52116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3646;
 H:VI1PR0402MB3839.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gJIe7R9h7b19n4fU22dR84ZFAZ/hetb2bx4QspcGYyvZZWh9TGXYy7X0kd6iZzVtOLRonaKAMDBCzzOvrzG+6qhtX1BI39SM2Ku7oMno/uzdwZdHgIVtDJegD0wPbA4byuPaS9rb/mt4SCNMkhNB5c8+77AOf2XaZK4MRSVXNvB8GUa2XWV/BOo4CFFV72/Mp21dxewZqCKz3wuivHt7bdd3/6Xqf8JJq4v9Lmiyk5s7hnrjYjKnGJe/yHGzoLajnW0ZPEld6Hbw10Ft427ORJIR7Qlhx9RJPAJWUNzQ17U65z02vr+uwwk8IdLb+S/KS/hGfX9zfD3/NRa2FYRt0pvF8ZGh47GjzmuVDk25su/MFXXFDuLJ2hO9rpAMuJsfeHwAoUhJl3D5Atn0C/eT7gowGnPwTyLc1QMP+RcmPt5qmqvgNty6litH+tZR9mj+
x-ms-exchange-antispam-messagedata: LOHGVyXoebp8Y8a0PLkrYQktcvVK3dayri5Acj5P0hwjQbB80pFcu4fOuZtLHg5Gpgu/g1ijQYUdr94EWU+1yJscuOkASK5y99wiwmVtmSMk/F/LX28dKvlbo22pQX7DotQ6O2nuQ4k0PcQOqoFDQg==
MIME-Version: 1.0
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9bde7d1-b52b-4be3-564b-08d7a3c8fd5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2020 08:06:33.8562 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cPfj0NJfDpJ0lF+kRXMV9wX3/vSNty+X/g5E0oTkwH4+Q3cDhslQ0FTaH7FRVkwvxsWKojGvGrtbGBBB30izYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3646
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_000637_602577_3D0CDED9 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:62f listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 1.4 FORGED_SPF_HELO        No description available.
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

Add SOF device and DT descriptors for i.MX8QM platform.

Signed-off-by: Paul Olaru <paul.olaru@nxp.com>
Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
---
 sound/soc/sof/sof-of-dev.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/sound/soc/sof/sof-of-dev.c b/sound/soc/sof/sof-of-dev.c
index 2da1bd859d98..16e49f2ee629 100644
--- a/sound/soc/sof/sof-of-dev.c
+++ b/sound/soc/sof/sof-of-dev.c
@@ -13,6 +13,7 @@
 #include "ops.h"
 
 extern struct snd_sof_dsp_ops sof_imx8_ops;
+extern struct snd_sof_dsp_ops sof_imx8x_ops;
 
 /* platform specific devices */
 #if IS_ENABLED(CONFIG_SND_SOC_SOF_IMX8)
@@ -23,6 +24,14 @@ static struct sof_dev_desc sof_of_imx8qxp_desc = {
 	.nocodec_tplg_filename = "sof-imx8-nocodec.tplg",
 	.ops = &sof_imx8x_ops,
 };
+
+static struct sof_dev_desc sof_of_imx8qm_desc = {
+	.default_fw_path = "imx/sof",
+	.default_tplg_path = "imx/sof-tplg",
+	.default_fw_filename = "sof-imx8.ri",
+	.nocodec_tplg_filename = "sof-imx8-nocodec.tplg",
+	.ops = &sof_imx8_ops,
+};
 #endif
 
 static const struct dev_pm_ops sof_of_pm = {
@@ -103,6 +112,7 @@ static int sof_of_remove(struct platform_device *pdev)
 static const struct of_device_id sof_of_ids[] = {
 #if IS_ENABLED(CONFIG_SND_SOC_SOF_IMX8)
 	{ .compatible = "fsl,imx8qxp-dsp", .data = &sof_of_imx8qxp_desc},
+	{ .compatible = "fsl,imx8qm-dsp", .data = &sof_of_imx8qm_desc},
 #endif
 	{ }
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
