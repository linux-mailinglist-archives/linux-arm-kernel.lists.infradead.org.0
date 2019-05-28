Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 184272C7B1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 15:21:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xezg4Xb6rBfi72N3qikm4ECTex7xwZSJBeXRbYMBbEM=; b=Z7Z7AJ69t0WWx8
	QNxri7ZvKuqACA+JzJ7+GNv/xboqhNw+1nVzt6bvznHvyNqoijHh8o/gexLZr3YZSGRR2yyRp+kaS
	qZLHbZQjCwc2kAwiGh9ALJkLeubYOD+Qyhqvoa2qnilyAVY261BaWXvhTjD360KZGLe6wCSTXmX8q
	QIEr0OUmV6Q9aVnrNvJihe393ZrT2C6EOJhfF+o0Kpa8TjBB/Ec+h1x7A0oyIKLTVBpKivl/fz0hr
	TnSQX/jS85GLIlRa67K0n8eOyfty8TAqKF4izzcrnUHB6wtrcr1XPYtRuEAtg+APx4cQweXAx9vTA
	c6Z/4nDRd3YIufctXUsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVc37-0002Qa-F5; Tue, 28 May 2019 13:21:53 +0000
Received: from mail-eopbgr10047.outbound.protection.outlook.com ([40.107.1.47]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVc2R-0001jG-Uf
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 13:21:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Co7Jm2h4oL68ga5ZwIr9sUECtpmKpFb+qaK5QULStRw=;
 b=MOn6Oyeaw6MR1Za+LSHwzSDwpFUuOStsg5+y3kpa61LDp+OBN5aliU2HsWOe+Qo52gVu3X1NqZzgQ8QQWNqVwvtIpUX98+ZVfEh3FyK5f4Tq+SAi8Nv46XatuRVYx0XebqX2RmMJ4FjUE2oPNLrtqH6e9HfpJlA+e+Aszzj+G+U=
Received: from AM6PR04MB5207.eurprd04.prod.outlook.com (20.177.35.159) by
 AM6PR04MB4261.eurprd04.prod.outlook.com (52.135.168.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.15; Tue, 28 May 2019 13:21:04 +0000
Received: from AM6PR04MB5207.eurprd04.prod.outlook.com
 ([fe80::fd2a:e078:f9d7:cb6b]) by AM6PR04MB5207.eurprd04.prod.outlook.com
 ([fe80::fd2a:e078:f9d7:cb6b%7]) with mapi id 15.20.1922.021; Tue, 28 May 2019
 13:21:04 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "timur@kernel.org" <timur@kernel.org>,
 "nicoleotsuka@gmail.com" <nicoleotsuka@gmail.com>, "broonie@kernel.org"
 <broonie@kernel.org>
Subject: [PATCH 3/3] ASoC: fsl_sai: Read SAI clock source 0 from DT
Thread-Topic: [PATCH 3/3] ASoC: fsl_sai: Read SAI clock source 0 from DT
Thread-Index: AQHVFVgzSnk/md+rr0q1nXIifh2ZzQ==
Date: Tue, 28 May 2019 13:21:03 +0000
Message-ID: <20190528132034.3908-4-daniel.baluta@nxp.com>
References: <20190528132034.3908-1-daniel.baluta@nxp.com>
In-Reply-To: <20190528132034.3908-1-daniel.baluta@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR09CA0114.eurprd09.prod.outlook.com
 (2603:10a6:803:78::37) To AM6PR04MB5207.eurprd04.prod.outlook.com
 (2603:10a6:20b:e::31)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 72fb9d2d-dcb8-4d18-2b25-08d6e36f5559
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB4261; 
x-ms-traffictypediagnostic: AM6PR04MB4261:
x-microsoft-antispam-prvs: <AM6PR04MB42611991ABD041D482C3C68FF91E0@AM6PR04MB4261.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:655;
x-forefront-prvs: 00514A2FE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(39860400002)(396003)(346002)(376002)(199004)(189003)(66066001)(71190400001)(305945005)(71200400001)(8676002)(81156014)(102836004)(2906002)(386003)(2501003)(6116002)(3846002)(7416002)(478600001)(53936002)(68736007)(50226002)(5660300002)(81166006)(7736002)(1076003)(14454004)(8936002)(86362001)(256004)(186003)(26005)(6512007)(486006)(446003)(11346002)(476003)(2616005)(54906003)(110136005)(44832011)(73956011)(64756008)(66946007)(66556008)(66476007)(66446008)(316002)(52116002)(25786009)(36756003)(6506007)(99286004)(6486002)(76176011)(6436002)(4326008)(2201001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4261;
 H:AM6PR04MB5207.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: tBKbRRAi9fhHlxY6ppIw+FwtYMaf1kkjCOZ1ql6LG5QDN98H1jixhGXkhn6rrvyeruroxjK9QW6gLdZiPJ7yusgbM1csqNvmzNXw7IRfKmtuq7eXv5n0yTO7Gv7Q4dEEtJ+G0zBlNnqU2Zaca51Kg5AqBURzNaqnDVK8wnaaKn//ZrZaOCuwmCf0TIGlZYSDkUL4opM3qimk0orLkHvi4fheXtn1+/a9vthgTuKUwVe8GKUDdox9hTr4oLSeAEAffBUrz4g4WEgVEmNSGi6j0eJ26776ai0dAk2jcrLHmii2RWLPxzPo22CEl8SyGnHw6Lm7A4jUz0uqtYNm4bo8c1ao1ulPmPKM8AimVyyZEEbGAu+MW9Bbmy3Bu7g09D7ohPJzf7S41EverZB+EiE1dL7GwmL87Nd8Std/F/RCn6E=
Content-ID: <C2E969A3D2B45545A97375DBC035038B@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72fb9d2d-dcb8-4d18-2b25-08d6e36f5559
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2019 13:21:03.5234 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: daniel.baluta@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4261
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_062112_305877_4FCA8D5A 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.47 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "Xiubo.Lee@gmail.com" <Xiubo.Lee@gmail.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "tiwai@suse.com" <tiwai@suse.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "S.j.
 Wang" <shengjiu.wang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SAI provide multiple master clock source options selectable
via bit MSEL of TCR2/RCR2.

All possible master clock sources are stored in sai->mclk_clk
array. Current implementation assumes that MCLK0 source is always
busclk, but this is wrong!

For example, on i.MX8QM we have:

00b - Bus Clock selected.
01b - Master Clock (MCLK) 1 option selected.
10b - Master Clock (MCLK) 2 option selected.
11b - Master Clock (MCLK) 3 option selected.

while on i.MX6SX we have:

00b - Master Clock (MCLK) 1 option selected.
01b - Master Clock (MCLK) 1 option selected.
10b - Master Clock (MCLK) 2 option selected.
11b - Master Clock (MCLK) 3 option selected.

So, this patch will read mclk0 source clock from device tree.

Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
---
 sound/soc/fsl/fsl_sai.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/sound/soc/fsl/fsl_sai.c b/sound/soc/fsl/fsl_sai.c
index db9e0872f73d..b563004fb89f 100644
--- a/sound/soc/fsl/fsl_sai.c
+++ b/sound/soc/fsl/fsl_sai.c
@@ -826,8 +826,7 @@ static int fsl_sai_probe(struct platform_device *pdev)
 		sai->bus_clk = NULL;
 	}
 
-	sai->mclk_clk[0] = sai->bus_clk;
-	for (i = 1; i < FSL_SAI_MCLK_MAX; i++) {
+	for (i = 0; i < FSL_SAI_MCLK_MAX; i++) {
 		sprintf(tmp, "mclk%d", i);
 		sai->mclk_clk[i] = devm_clk_get(&pdev->dev, tmp);
 		if (IS_ERR(sai->mclk_clk[i])) {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
