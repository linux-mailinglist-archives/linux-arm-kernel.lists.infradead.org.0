Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2BF124AC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 00:44:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=85hIctRFqagTGWNyiQGZbvnhP8af/8Ei/i3HcM0c0Nk=; b=n9UEZZi4VEjoXm
	OlQQShmhy3Q0pHY9CL5cW8xebBBciuqdnNyAvQrIs9F4XrxEOl+7u1+LnaqZQzWRYcMGpHhi5gW/u
	abh0mEdNbp+/QDuhKwzZY5076DqWE/QR0UTQTfGTqB4TKvsCw5T84E43ES+wrPVdq0J64HR1hHFxH
	qsSy9NXzQeC367cCGx2g0/4qn5FMgoftyDVb8akFmKJdtVliVqv73NlJQukE5x/JT5KJpBZL+y10y
	Pd1G/8p4ZpQY0fgP0o3b1j37SLzuyMqW+ndhUcVaC6xR5aDBG9lyCmrsWCkhLMlV2Y/nrJTUiFXyx
	dqfivd1fFTV/NaoVBxrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMKRF-00010R-LS; Thu, 02 May 2019 22:44:25 +0000
Received: from mail-ve1eur02on062a.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::62a]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMKR7-0000zo-I2
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 22:44:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GD44n0LNV7d+Q3win+lRE+QGq21+saaKfyFxzy1FYPM=;
 b=RhTzOtUUIUQlJk3lay/EtDZXQoHPqUo2tHAaW7IfejXngufyXVQBZPfZwjND1I51srprEYP4veUoazv28QoVBK4Irq0XIGRCNiWbJD+49i0OrYGiQ9r1J6fjhPDb/jhP+G2lNQyor/l4Lzx8/WPo6Vc8JPKirSYbvbwAqXi7W4I=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB5315.eurprd04.prod.outlook.com (20.176.215.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.15; Thu, 2 May 2019 22:44:13 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1856.008; Thu, 2 May 2019
 22:44:13 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Viresh Kumar <viresh.kumar@linaro.org>, Lucas Stach
 <l.stach@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v2 0/3] cpufreq: Add imx-cpufreq-dt driver
Thread-Topic: [PATCH v2 0/3] cpufreq: Add imx-cpufreq-dt driver
Thread-Index: AQHVATiQtlzuIooEwkqEvC93VXXdZg==
Date: Thu, 2 May 2019 22:44:12 +0000
Message-ID: <cover.1556836868.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: LO2P265CA0184.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a::28) To AM0PR04MB6434.eurprd04.prod.outlook.com
 (2603:10a6:208:16c::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6a1d4126-e3b1-4954-e2c5-08d6cf4fb2b0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5315; 
x-ms-traffictypediagnostic: AM0PR04MB5315:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB5315D51E5C3A8C690B685C61EE340@AM0PR04MB5315.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(366004)(376002)(136003)(346002)(189003)(199004)(86362001)(6116002)(66446008)(66476007)(66946007)(6436002)(66556008)(71190400001)(73956011)(71200400001)(64756008)(52116002)(53936002)(14444005)(3846002)(36756003)(6306002)(256004)(5660300002)(2906002)(8676002)(26005)(44832011)(186003)(478600001)(4326008)(6506007)(305945005)(386003)(8936002)(316002)(476003)(6486002)(54906003)(6512007)(50226002)(99286004)(68736007)(81156014)(81166006)(486006)(110136005)(102836004)(14454004)(66066001)(966005)(25786009)(7736002)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5315;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: xIgPmS0vTTMKzV2G8UnXGu/NAZu23Vy9VeahLU9SezRVqjRflt+h7jGzvlaBLkqdTKFADk2P7ED8WOAGwi8qukSKsuQAlEwexX2ACA5WTP++A0j86o0miVAFwFA31yqrmdBBpOi+ZeZgUKv9FbkI/86OXpOEupPxyuzzEwgnPHAjdEU+Au0z64YWZas2kIPxqzQdXNNxAlaySLZ7c8DVU9ryDgADOQuB4iRJxQsy4S3I8iQUWmMN3BH4rEh3zQH3hWNi/rDQPk/rbLoYErkLYe01Wbw9Tk1pQdkhjLICG+czR+XzVyaEIZsvZeW7rYx47dVARNBEHZ/pTCBaVrMIvs4ykT4sJLXM36Q1oVX9PYFRVCWNdcXRcSJxE+nhCsHlYycb13fsgr2jkTE4prUDYabtZsqm6n9bSi4zuSPgrGo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a1d4126-e3b1-4954-e2c5-08d6cf4fb2b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 22:44:12.9904 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5315
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_154417_698066_4E5CFA43 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:62a listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Right now in upstream imx8m cpufreq support just lists a common subset
of OPPs because the higher ones should only be attempted after checking
speed grading in fuses.

Add a small driver which checks speed grading from nvmem cells before
registering cpufreq-dt.

---

By default kconfig builds it as a module even though it's very small.
Couldn't find a way for MODULE_DEVICE_TABLE to match on root node compat
string and there was no other appropriate node so register the
imx-cpufreq-dt platfrom device directly from imx8 soc driver instead. I
checked module is probed by default and rmmod/modprobe again works.

It seems that cpufreq-dt insists on adding the opp and regulator itself
so can't actually call dev_pm_opp_of_add_table and then
dev_pm_opp_disable so implementation was switched to opp-supported-hw.
Maybe I'm confused by API quirks?

The market segment logic was dropped because I couldn't find any good
references in datasheets for why lower or intermediary OPPs should be
disabled on certain market segments. Using opp-supported-hw means that
adding this in the future would require changing flags inside DT instead
of code, that seems undesirable for DT compat reasons.

This could also be extended to mach-imx7d speed grading.

I never noticed anything wrong with going above the fused speed grading
however it's technically unsafe so the cpufreq parts should go in before
DT changes.

Other changes since v1:
 * Turn into a proper module
 * Support imx8mq
Link to v1 (RFC): https://patchwork.kernel.org/patch/10916769/

Leonard Crestez (3):
  cpufreq: Add imx-cpufreq-dt driver
  arm64: dts: imx8mm: Add cpu speed grading and all OPPs
  arm64: dts: imx8mq: Add cpu speed grading and all OPPs

 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 23 +++++-
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 23 +++++-
 drivers/cpufreq/Kconfig.arm               | 10 +++
 drivers/cpufreq/Makefile                  |  1 +
 drivers/cpufreq/cpufreq-dt-platdev.c      |  3 +
 drivers/cpufreq/imx-cpufreq-dt.c          | 99 +++++++++++++++++++++++
 drivers/soc/imx/soc-imx8.c                |  3 +
 7 files changed, 160 insertions(+), 2 deletions(-)
 create mode 100644 drivers/cpufreq/imx-cpufreq-dt.c

-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
