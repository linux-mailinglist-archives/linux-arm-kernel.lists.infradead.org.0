Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB67E3B524
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 14:39:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=oLnL6ktyoY1ST1S7+qkaEYJBl25AtTTCQm0qjm0lUGA=; b=urh1sQcuvs9Y7C
	Wc8wb8R7upGzJKTDHzIRBvVtqkROLocwLazBmNqaINGPpftjstCCc+TgT7NEo4uu3Z47+uZZiwJUr
	ECZ579iW+aXb/JqsU6jTV526oH/8SDvc8c7mwiE+rCpVgkA6vqpW95otYzxG48ry/AitKHFmqrpz7
	Virp7pdjs/afQ4d1IafmCCxt7vXBXcWmtZL4Zm2Xb2musBzX7dds8qM7Zxi24XrIFk/C17bzu5lDf
	PECWdrPEmF/31zrvkol3HNPIYME+5doJ2Y5nY8bcyzUnHAamWYGVd0TYM3TaOp8Z35HXwVj9u5Q3i
	HZ60/kgxSbe2z4FIP2ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haJZv-0003LF-83; Mon, 10 Jun 2019 12:39:11 +0000
Received: from mail-eopbgr130041.outbound.protection.outlook.com
 ([40.107.13.41] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haJZj-0003Kj-R9
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 12:39:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x6YDDS76FnnAX7tfmPb+XcBAG8KMw0kWalvWiEA+O1c=;
 b=dYu6AevxYuQDE6VwHdxTyBS/EPh5wTD9SVZJ9AU/2Dx0bL/T8fyOnAgX8xHwjoqYS96T/vkELL0T4tajyPwM39IHzkwXuDmhNfxOFjfTtiC1GCU2VZ2zCecK/waG1kn/n8duVRWiFRfClIhh4U5FEyHCLcJ/jT07/ZYTLwxj1gw=
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com (20.177.50.140) by
 VI1PR04MB3965.eurprd04.prod.outlook.com (10.171.182.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Mon, 10 Jun 2019 12:38:53 +0000
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1]) by VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1%7]) with mapi id 15.20.1965.017; Mon, 10 Jun 2019
 12:38:53 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Abel Vesa <abelvesa@gmail.com>, Marc Zyngier <marc.zyngier@arm.com>, Lucas
 Stach <l.stach@pengutronix.de>
Subject: Re: [RFC 1/2] irqchip: irq-imx-gpcv2: Add workaround for i.MX8MQ
 ERR11171
Thread-Topic: [RFC 1/2] irqchip: irq-imx-gpcv2: Add workaround for i.MX8MQ
 ERR11171
Thread-Index: AQHVH4ZBRgLS0j7LSki7yl4lFQVwCA==
Date: Mon, 10 Jun 2019 12:38:52 +0000
Message-ID: <VI1PR04MB5055FD984F9BBA733B4D3503EE130@VI1PR04MB5055.eurprd04.prod.outlook.com>
References: <20190610121346.15779-1-abel.vesa@nxp.com>
 <20190610121346.15779-2-abel.vesa@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [192.88.166.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3f54b2d9-b204-4338-e5a7-08d6eda098e1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB3965; 
x-ms-traffictypediagnostic: VI1PR04MB3965:
x-microsoft-antispam-prvs: <VI1PR04MB3965228D534AD46F8F67EAE4EE130@VI1PR04MB3965.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0064B3273C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(346002)(396003)(39860400002)(136003)(189003)(199004)(55016002)(6436002)(4326008)(14454004)(14444005)(256004)(7416002)(305945005)(316002)(6246003)(9686003)(33656002)(26005)(186003)(25786009)(229853002)(68736007)(53936002)(66066001)(52536014)(76176011)(6116002)(66446008)(64756008)(5660300002)(3846002)(7696005)(7736002)(102836004)(53546011)(6506007)(110136005)(54906003)(99286004)(66556008)(66476007)(478600001)(66946007)(476003)(81166006)(81156014)(8676002)(486006)(74316002)(73956011)(86362001)(8936002)(2906002)(446003)(71200400001)(71190400001)(91956017)(76116006)(44832011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3965;
 H:VI1PR04MB5055.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: B64whN2MxXL4leNqNExf1XZgqekDJO8u1lPlu9g0iC12FOpqQ53+NgcbZBj9pawzIog/VNYMoOxJ5EWJEL17F6IsqqK3Uq7B9bLbE1X0rSff6pvmqqgAy9B3io/jdKQ93oXS7UtOR0NVuzt0RX+H6IuLKUtzrqVFdp6SGY0N0FDoApl7i0VZUR9ue6jm2ILmhvr6SkuQUQmbYkfIUm9fgYlFKwFGl2i4VGTvCtnEI7rEo0MA52q0BhToaNZNl6u+XgC0ZghlyuVezWUTL2zAf0HpcwMCfsHEW0L945Tiu7czEuYXwLvXVEaYcyW1pnXms3SHYGi901AfFg2eYzsrBVZujxtxTq8lU7VikJySEaBhhMi0x5BUfhJAsiqGqOolqycSPnrR+fuPzZX0VOUNBZGwTjNsGVsmwIBXNgPcokM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f54b2d9-b204-4338-e5a7-08d6eda098e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2019 12:38:53.1317 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leonard.crestez@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3965
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_053859_942833_21937706 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.41 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 Carlo Caione <ccaione@baylibre.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>, Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/10/2019 3:15 PM, Abel Vesa wrote:
> i.MX8MQ is missing the wake_request signals from GIC to GPCv2. This indirectly
> breaks cpuidle support due to inability to wake target cores on IPIs.
> 
> Now, in order to fix this, we can trigger IRQ 32 (hwirq 0) to all the cores by
> setting 12th bit in IOMUX_GPR1 register. In order to control the target cores
> only, that is, not waking up all the cores every time, we can unmask/mask the
> IRQ 32 in the first GPC IMR register.
> 
> Since EL3 is the one that deals with powering down/up the cores, and since the
> cores wake up in EL3, EL3 should be the one to control the IMRs in this case.
> This implies we need to get into EL3 on every IPI to do the unmasking, leaving
> the masking to be done on the power-up sequence by the core itself.

Manipulating same IMR registers in TF-A and Linux is racy so all IMR 
manipulation (set_wake etc) needs to be done through SIP calls with 
locking inside TF-A.

It would make sense to have an entirely separate SIP-based 
irq-imx8mq-gpc.c driver based on what is used in NXP tree.

> +	iomux_gpr = syscon_regmap_lookup_by_compatible("fsl,imx6q-iomuxc-gpr");
> +	if (!IS_ERR(iomux_gpr))
> +		regmap_update_bits(iomux_gpr, IOMUXC_GPR1, IMX6Q_GPR1_GINT,
> +					IMX6Q_GPR1_GINT);

Doesn't this initialization belong in TF-A? On boot enable the irq and 
keep it masked until somebody calls "wake".

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
