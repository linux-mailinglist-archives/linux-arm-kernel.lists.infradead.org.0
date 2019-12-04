Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4C71122A0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 06:52:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ujixc93Tjb/ultu+7y2Hq30Nq3xeUMQnlbmH8ADNuSQ=; b=hShVQrKReD2Lau
	t8EGZrt8ucyoQ6nCFeJAb9TK3fgltnIdqmIe8N8aKizHWl7cPT+aQcgK1SEDxkQguSqYLWYRGkCSE
	GE5Tsi2A06gQwzuzxXNLM7M06SQgABsdUAIgEV2jGf5O5GgoFCMj7oOLkuQsWq7c3qRAX7PdFM34F
	zEKU7uk7l4vlxspG2I6wQDA9PVbtiHgRbRZ6fAEYaxrr6oGfmvMzSGiX2ww8/pHL3RgJEHLkJ/0Sh
	FQB1C9Yn1+b61vrlbygZFvgbfOFWVRl6Y0Ipo68rDooHjknIu3syegJE8Tadybn0ncpMos0Uz5NiF
	j371wtl7elbzJm6ywARQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icNaL-000138-42; Wed, 04 Dec 2019 05:52:25 +0000
Received: from mail-eopbgr00057.outbound.protection.outlook.com ([40.107.0.57]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icNaD-000128-4z
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 05:52:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xwn8fVDeq+d2s24Cg9k+SVFGmVtmUpbIpRTw+BYSdKbNQPoWUn4NWcNNKagTzQRCwFOPM+v/mGUt4Ootya9nHvHXItBB8Q/lL1tZWX5mDnNWx3Udhy3B19iuryQ9r2UUxJbSQi62h1Dz2gukz1TE7bTeeD+Yh/7Gjy+dSlkrTw6kEwqtGv8hrXVRh+jk1g9jRtgrWUuujy1hzoYlpkBb3mp61XA9dGpe++dcglWeMMNT3JhFzUP4tvbcsAaaNQa+OStE4Ahje3G5tRU6HCjjG+WOuMDF2kjjSv4qVobkxI7x2d7RYrU8kahB4wpGGRCexO5SOX6WwNfZVd9qe+68MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X7dOX9JXdAfoP8l5v6I7X1v6wtEOMOjBxJ2rnqehMxw=;
 b=oQ0WCAwZLRnxOaMqLK0K/WFnu+Iwf7zuGiuQU3/Y3dRfNmSo8wbBGzXJ48gVZB35D7DQ+U6TQKMJS6Sgqtdu2vmUIz6L8u7xnWjZUxWen0y0wCBSdBeIU4rcoyzlw1+9p5sYQttWRkrLKcZ4zD5NQCFG235oORDkttkm8sBxbMbVAHz9fYoVP3D8/HtSNxaIeOtf1yfiM2usRwydrVAQY5fAluZWCbRHQukM8Ft64ESBAAd06IInc7Gtr+z1RuxVPM+uYFQkOd2q27zOwMH1N0aa8yzBJyMO0ENlFErvjP10UtSnti5yK3Mg5xXZndx6EOojxtL5N7iFp8rkZe0TUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X7dOX9JXdAfoP8l5v6I7X1v6wtEOMOjBxJ2rnqehMxw=;
 b=ZfKN2DXVletI6l+hzjzzNG/FKsZLkegu/U/lVsYoa2K1YM1WJXJBETXQfFadG77Eeob0ZRMemCm3zScCVmqbMgv38Ib6zO52K7vcXahUccscOAwX5sxm3xvX2mi8noeC4nk16Le0as8y1FxlqBxcfgVDVsKCtGde6TnixjVLz+E=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB3985.eurprd04.prod.outlook.com (52.134.124.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.13; Wed, 4 Dec 2019 05:52:09 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2495.014; Wed, 4 Dec 2019
 05:52:09 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>
Subject: [PATCH] nvmem: imx: scu: correct the fuse word index
Thread-Topic: [PATCH] nvmem: imx: scu: correct the fuse word index
Thread-Index: AQHVqmb3nxYwp0MksEa8htHeEretqA==
Date: Wed, 4 Dec 2019 05:52:09 +0000
Message-ID: <1575438591-12409-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR01CA0054.apcprd01.prod.exchangelabs.com
 (2603:1096:203:a6::18) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1a0215b9-bea7-482e-d1a6-08d7787e1a17
x-ms-traffictypediagnostic: AM0PR04MB3985:|AM0PR04MB3985:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB39854BDDF22C067B6172DB09885D0@AM0PR04MB3985.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0241D5F98C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(366004)(39860400002)(346002)(376002)(199004)(189003)(6512007)(2501003)(6506007)(2906002)(478600001)(7736002)(305945005)(386003)(8936002)(44832011)(8676002)(36756003)(81156014)(81166006)(2616005)(25786009)(54906003)(4326008)(110136005)(50226002)(66946007)(64756008)(66476007)(66556008)(66446008)(14444005)(256004)(6436002)(316002)(71190400001)(71200400001)(5660300002)(26005)(6116002)(186003)(102836004)(3846002)(52116002)(6486002)(86362001)(14454004)(99286004)(2201001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB3985;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: k+4FUK9uYSjK4X3HoYY0zS5z/orNRGk5VwiqnhmHOdxprWZC1pNZRDll78KxqzcVOEQE/Wah/X4ObQpEowD158aDWEh5bOECFSsi6QRAppTvxgBsevAk5ISfW31p6nUDSD7VuLXv4RMc5TLPlqqEeYVnJ3Zly8rDcKeBzmWy6Du6Kr7OxOahG8Y/MPry7dWScRJABdMmDN2c5ElyVbTH5dPzWE7iV6j4E+1h3GtF6i+8X19LC/tPwkkh4DA+iwI+taGLlCliwha9pFe+XKbY44OomohPk5kj41KBXHRwxrv7q1/csGxcb98gyi8ig8Fa50l3QsDRYugncrHl32b6FNttEWKi1ldSl5Qb0+kkdOnWNeeJgak6KLYVPy7LGW5joVyWgQNL9CCXHiRGPguH46W9QW3eOO78wCgpqHnJjtUaEgQnaHOarcxBjIOF0dgm
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a0215b9-bea7-482e-d1a6-08d7787e1a17
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2019 05:52:09.7374 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4LmOsc+Sm7Dn0TVICtYK1Ffm9jKC2MLcWssY1+HwGcGfz4novtkCdgcVVQoV3oD8luEMCCBx73RSLqcs/I/Odw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB3985
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_215217_258268_419A8028 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.57 listed in list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Andy Duan <fugang.duan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

i.MX8 fuse word row index represented as one 4-bytes word.
Exp:
- MAC0 address layout in fuse:
offset 708: MAC[3] MAC[2] MAC[1] MAC[0]
offset 709: XX     xx     MAC[5] MAC[4]

The original code takes row index * 4 as the offset, this
not exactly match i.MX8 fuse map documentation.

So update code the reflect the truth.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/nvmem/imx-ocotp-scu.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/nvmem/imx-ocotp-scu.c b/drivers/nvmem/imx-ocotp-scu.c
index 455675dd8efe..399e1eb8b4c1 100644
--- a/drivers/nvmem/imx-ocotp-scu.c
+++ b/drivers/nvmem/imx-ocotp-scu.c
@@ -138,8 +138,8 @@ static int imx_scu_ocotp_read(void *context, unsigned int offset,
 	void *p;
 	int i, ret;
 
-	index = offset >> 2;
-	num_bytes = round_up((offset % 4) + bytes, 4);
+	index = offset;
+	num_bytes = round_up(bytes, 4);
 	count = num_bytes >> 2;
 
 	if (count > (priv->data->nregs - index))
@@ -168,7 +168,7 @@ static int imx_scu_ocotp_read(void *context, unsigned int offset,
 		buf++;
 	}
 
-	memcpy(val, (u8 *)p + offset % 4, bytes);
+	memcpy(val, (u8 *)p, bytes);
 
 	mutex_unlock(&scu_ocotp_mutex);
 
@@ -188,10 +188,10 @@ static int imx_scu_ocotp_write(void *context, unsigned int offset,
 	int ret;
 
 	/* allow only writing one complete OTP word at a time */
-	if ((bytes != 4) || (offset % 4))
+	if (bytes != 4)
 		return -EINVAL;
 
-	index = offset >> 2;
+	index = offset;
 
 	if (in_hole(context, index))
 		return -EINVAL;
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
