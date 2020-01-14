Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F11139FD9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 04:18:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jvLlkGVI5zxF+Q+r7/3Kf4hRC9WjsrIahV4jZtC4Ztc=; b=TTzDo7TO+E48wV
	0q6vysQerf/iRaFGBhbpUMl4yyRKDY5cPft+/Jfvz8+YFDiSByj9P9b+GR6rDS8FS4WNyi7HuA2jJ
	qJb6LY58fp+v+D39rpe8YYJAx8oYjTv5D+QR65xViWYPOnGunZp1q5vbAcjuaxoVTFeozbE1Ja+ZE
	wtENPQ2hllLAWyL8t/+6NlmM6qCjQI07XZCsXiDVg0uF+h4jSJiJpBKeLCyVo2RrTaqmvIY1EGcOS
	/YbMnCKR4NGUfTycnig/OLF2Da1aHhwvkebzbvIODmeKVPjXarvVkKCOGeZV4BEynrAmdfCrOMhpW
	Cjxy+uUHmJObjOat+bwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irCiO-0006Nk-8c; Tue, 14 Jan 2020 03:18:00 +0000
Received: from mail-eopbgr80049.outbound.protection.outlook.com ([40.107.8.49]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irCiE-0006Mx-6z
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 03:17:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cZ0Kf3U85qyH9Z+ARUlUB9/c0/Fpnjg9KR8tVlqvBm1N1LBIc9J5LD4fefnedQLJP0TJ8GhzquOgOgCT05BHghDKvy7m4vgqz7r+XwmuyukWgKSCpeDE56dhcnWK/SsDz2WUZbBAgCC8JFZdf3+1M5LLDVoz4Fu0QZTBakbFvq/KQXrNOxAqTiqdFNpYuBWAw8Qsu5WyIqCC4FnHEC5CZPC/hmmp86J2i+LAc3wuYeiy6FSDPLIF6dViZJjOW6jF175mJVHl8w7Pdw0oLkmCDYKwn2JY8Hi3Erop2XIod6hd0HAREpWsBWLcxOw3IzufTdrJmDVqeow97GvlLv9/pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k1OuPjjSFmgg/gVpt0lcP9WEYEwfByMtLtjuWnyzMnc=;
 b=X5OdZf2AokXowKxtRPigO+Se5/kRg7X5sLM6Yl2yBhGJT2N3JuwDpVplN011mweJyY8B1wlNpnE+Z6spIcqxEV/uuMt+d/VSdz3AAMXmUEFlKRnkuY0AqzAEKKFT9JEkibSsbpvSx8jB/+Nn/xngtBEbFK+gfoyIB3+vU3tIejLdMlmk6jc6QlN2fZQ+PkKgIaLCHyl1hrlgSCPpUl8x1qDrl8k1mzrM1w0pduc4xx+jvk5GV+7gp4apuXVUsGkJoKCbuflFaveQAnowO008JBZW4xFu900M+pFhk/obyMvBTfA5dHrJye7cNUf+ZwW/norVRYnjnEAZQJxL4VDelA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k1OuPjjSFmgg/gVpt0lcP9WEYEwfByMtLtjuWnyzMnc=;
 b=TxSU3FK3odq8mOGMXHR2+qPezhnt8iucK6cxmqLHovyGwRoSOUndMt261uGhV8uXTjd2EgXhuA5nib2F+roOxZ1q8MJp/icTJ+hbCuzUJMuoaRedOvPFWbS0kF/7ctmKiyC60M3ty72cL22dweQWgysTUzFEO/xdJ/GIAPl7YWU=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6755.eurprd04.prod.outlook.com (20.179.252.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.11; Tue, 14 Jan 2020 03:17:44 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.015; Tue, 14 Jan 2020
 03:17:44 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR0302CA0002.apcprd03.prod.outlook.com (2603:1096:202::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2644.6 via Frontend Transport; Tue, 14 Jan 2020 03:17:39 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH 0/4] clk: imx: imx8m: fix a53 cpu clock
Thread-Topic: [PATCH 0/4] clk: imx: imx8m: fix a53 cpu clock
Thread-Index: AQHVyokvjgMYqA4lbUarp6lsou3EEg==
Date: Tue, 14 Jan 2020 03:17:44 +0000
Message-ID: <1578971599-4277-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0302CA0002.apcprd03.prod.outlook.com
 (2603:1096:202::12) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d4121cec-bb92-4832-68ac-08d798a05224
x-ms-traffictypediagnostic: AM0PR04MB6755:|AM0PR04MB6755:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB67555DCDFF36A1FD44578B9C88340@AM0PR04MB6755.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 028256169F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(396003)(376002)(366004)(346002)(199004)(189003)(6506007)(478600001)(4326008)(2906002)(66556008)(66476007)(16526019)(64756008)(66446008)(186003)(66946007)(81156014)(81166006)(6512007)(26005)(6666004)(5660300002)(52116002)(8676002)(6486002)(71200400001)(2616005)(956004)(8936002)(86362001)(36756003)(69590400006)(316002)(110136005)(54906003)(44832011)(6636002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6755;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XKx3f/q2RuUcVNITfP+wZBLk5Onbu3QuTuuB7YKqzOZv0kMLmHL/ajKLtFfCDDzmufxm2W4uGyBo5hqyduuTSXe1z0WXMf5HI8I3tNRNzb3D0zfyYGS6w3j7n05J3qPpVfSMV06MyHMnDTsJsIWDEPTKlHyZtDNJyLitA/GnRrC+ou5ctjiMSsXFbnmnSeZQaAoj7FoLgKOw12dp7FZZWBxGCG3FzAzqDJpOsiWZhBn0RxBlxO328bLrAVAcsqsNjW3/tkVh5emXBvxZ/jOSNp8QNaz5jnhUTMA37AY4KLqqZmpu/S6S+rth3VNC+lcUMmlCusryglPNdllnUAugTTCuinbkpWgQts/PvrL5yYjSUYADbiALMz5rWaapOZVPcfKA646W+CT9SKRAvz7mbJFikWTgLs8dk8+p4wKaXDeVMWHV4eojKa7UaDD7zL+YN6GvPeuTXZAC5XK62A5HikokKPZ27Cn95wM4kM8DQOI+l2ZsY2ikIoGom69HLY4If/5+kdR88fnThJgsk9zXzQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4121cec-bb92-4832-68ac-08d798a05224
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2020 03:17:44.3677 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CawHqrjfsfRc0EyUsDureTsoPhGLjukTu44NV8IgqcFzZ8lgRd8gZNRTQWRb9hbbBIuVYqK+niuZzrkFGe6Huw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6755
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_191750_256411_A5308A4E 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.49 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.49 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

The A53 CCM clk root only accepts input up to 1GHz, CCM A53 root
signoff timing is 1Ghz, however the A53 core which sources from CCM
root could run above 1GHz which voilates the CCM.

There is a CORE_SEL slice before A53 core, we need configure the
CORE_SEL slice source from ARM PLL, not A53 CCM clk root.

The A53 CCM clk root should only be used when need to change ARM PLL
frequency.

The i.MX7D A7 CCM should also be fixed, I'll write a patch later.

Peng Fan (4):
  clk: imx: imx8mq: fix a53 cpu clock
  clk: imx: imx8mm: fix a53 cpu clock
  clk: imx: imx8mn: fix a53 cpu clock
  clk: imx: imx8mp: fix a53 cpu clock

 drivers/clk/imx/clk-imx8mm.c             | 16 ++++++++++++----
 drivers/clk/imx/clk-imx8mn.c             | 16 ++++++++++++----
 drivers/clk/imx/clk-imx8mp.c             | 16 ++++++++++++----
 drivers/clk/imx/clk-imx8mq.c             | 16 ++++++++++++----
 include/dt-bindings/clock/imx8mm-clock.h |  4 +++-
 include/dt-bindings/clock/imx8mn-clock.h |  4 +++-
 include/dt-bindings/clock/imx8mp-clock.h |  3 ++-
 include/dt-bindings/clock/imx8mq-clock.h |  4 +++-
 8 files changed, 59 insertions(+), 20 deletions(-)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
