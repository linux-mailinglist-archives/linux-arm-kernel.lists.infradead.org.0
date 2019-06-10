Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CCC03B5FD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 15:29:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M2OrgneznIDliUnsqpapLEzhsvpJwW40FUvuEEZ+4YA=; b=JnDLVcF6E0z41w
	Dmz0+E1jNghDcXXDrm1ksQRwXOEjEokGyHt1b1A0Gztmtdq2IT5G+ycT9ruBQXJfCNiAXGP9d1Sv7
	sBcmS7FApoMdzYA2d9P5ANlvSYeSGPoVNq91fVLUicd1OgXzLWFqEnKHXvSwhpDTYjUPxNQ/7bfIN
	MDv6SLh9GuxbB210Wp0eNxxe0DKIOnyTFbXpw2NYUjiCynLTqg2yO1fz1+4xPRZq0y/AvSwyVWDxq
	/hwN1J+zTnaS2G498VSvdjum9bFf7AsLP6Wwho2pVfNsRszwKQYNHjhAdFqsHwB8PQpoq57mBxWDJ
	AdtoeHl4hMxo7U0TpyGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haKMZ-0005Ew-Uw; Mon, 10 Jun 2019 13:29:28 +0000
Received: from mail-eopbgr140055.outbound.protection.outlook.com
 ([40.107.14.55] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haKMP-0005EV-5V
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 13:29:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H+Akrz1tMgkYolKEEh09/juzcvhS178MvU4WLcvf8Jg=;
 b=P95vLWNA6ej+h5Fz3A9rwkJiKH3jMnUApjOwqaJZX267arUXfNa0ylnBKGJII3KY+NY3O8A7bURLMx40kVRugjO4M1csJ6YPg0fWLRQHyr5HXT2hoB1JDIUjfEz8NKCHwrBRmCK6vwT0qR8XED4nHtCQH55JNfBW+IuSXf8LcUI=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB6706.eurprd04.prod.outlook.com (20.179.255.223) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Mon, 10 Jun 2019 13:29:11 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::5c91:9215:bcd9:49cc]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::5c91:9215:bcd9:49cc%5]) with mapi id 15.20.1943.023; Mon, 10 Jun 2019
 13:29:11 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [RFC 0/2] Add workaround for core wake-up on IPI for i.MX8MQ
Thread-Topic: [RFC 0/2] Add workaround for core wake-up on IPI for i.MX8MQ
Thread-Index: AQHVH4Y/3naZJOmQTkOgrNdQmlNuA6aU3y6AgAACvgA=
Date: Mon, 10 Jun 2019 13:29:11 +0000
Message-ID: <20190610132910.srd4j2gtidjeppdx@fsr-ub1664-175>
References: <20190610121346.15779-1-abel.vesa@nxp.com>
 <20190610131921.GB14647@lakrids.cambridge.arm.com>
In-Reply-To: <20190610131921.GB14647@lakrids.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e24b38f2-4e22-480a-bd5c-08d6eda79fed
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6706; 
x-ms-traffictypediagnostic: AM0PR04MB6706:
x-ms-exchange-purlcount: 4
x-microsoft-antispam-prvs: <AM0PR04MB6706B4AE67D1001BBAD9D6A6F6130@AM0PR04MB6706.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0064B3273C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(39860400002)(376002)(396003)(346002)(366004)(136003)(189003)(199004)(43544003)(73956011)(86362001)(6506007)(76116006)(64756008)(561944003)(66946007)(66446008)(91956017)(8676002)(81156014)(81166006)(1076003)(6306002)(6436002)(5660300002)(9686003)(6486002)(6512007)(66476007)(66556008)(186003)(33716001)(54906003)(53546011)(53936002)(76176011)(8936002)(102836004)(66066001)(6116002)(3846002)(45080400002)(229853002)(14454004)(6246003)(26005)(966005)(7736002)(305945005)(316002)(11346002)(7416002)(446003)(71190400001)(71200400001)(25786009)(14444005)(256004)(44832011)(486006)(68736007)(476003)(2906002)(99286004)(4326008)(6916009)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6706;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jp/b3PGYlNVRq6EPAZO40iqlYv2hPwmsvNE2RXAflLz1TwEmjlww+H7wWye7PTEowitQenA2oi9eUYK8QKYMTJycr5EtyDbZOmNRV3PiZkfEf9UyON+49tzuU5HepINIzh2Bl8oOhHRetzetejHvkxwBJaCM51MQcYUcuSECeKKHt7wlE4o2Hg7+N+zOq6anx1AKkimwzZV9LK3xwurw/RZhdePQwyFLRdZnuQ6XmYC8GnL12MVKvqK0jUTBG0wpWvo4udGbJbcSVLvTbWceu+p71+4ccnNfBcP3u0vKu+l0VENtQWK5CWkLj0GEbezzB7TLVh8mCOiIPLMyzWghI7VRI5boIEBWR5BbAHYKl2W6GbCfGGlrpNL3hjNbww7Az7Y/TqIeDm8FsAwgxgn3kbHN0nveNcxMVeoVYfzu20Y=
Content-ID: <FE565A73B09DD54A9E4FF7ECB4905445@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e24b38f2-4e22-480a-bd5c-08d6eda79fed
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2019 13:29:11.6633 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abel.vesa@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6706
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_062917_611730_C90FB084 
X-CRM114-Status: GOOD (  22.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.55 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 Carlo Caione <ccaione@baylibre.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Abel Vesa <abelvesa@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-06-10 14:19:21, Mark Rutland wrote:
> On Mon, Jun 10, 2019 at 03:13:44PM +0300, Abel Vesa wrote:
> > This is another alternative for the RFC:
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flkml.org%2Flkml%2F2019%2F3%2F27%2F545&amp;data=02%7C01%7Cabel.vesa%40nxp.com%7C05d512f83dfa4d4f52d908d6eda64321%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C1%7C636957695741584637&amp;sdata=d3X0xyWiaotq4VPNW306wdRhsY4TI%2BBjRSABk6vzf%2B8%3D&amp;reserved=0
> > 
> > This new workaround proposal is a little bit more hacky but more contained
> > since everything is done within the irq-imx-gpcv2 driver.
> > 
> > Basically, it 'hijacks' the registered gic_raise_softirq __smp_cross_call
> > handler and registers instead a wrapper which calls in the 'hijacked' 
> > handler, after that calling into EL3 which will take care of the actual
> > wake up. This time, instead of expanding the PSCI ABI, we use a new vendor SIP.
> 
> IIUC from last time [1,2], this erratum affects all interrupts
> targetting teh idle CPU, not just IPIs, so even if the bodge is more
> self-contained, it doesn't really solve the issue, and there are still
> cases where a CPU will not be woken from idle when it should be (e.g.
> upon receipt of an LPI).
> 

Wrong, this erratum does not affect any other type of interrupts, other
than IPIs. That is because all the other interrupts go through GPC,
which means the cores will wake up on any other type (again, other than IPI).

> IIUC, Marc, Lorenzo, and Rafael [1,2,3] all thought that that this was
> not worthwhile. What's changed?

The fact that this is done in the imx-gpcv2 driver and it's not spread
around like the old RFC. Yes, I agree that fixing something like this
from the core subsystems (like cpuidle) or irq-gic-v3 driver is a bad
idea, but this is not the case anymore with this new RFC.

> 
> Thanks,
> Mark.
> 
> [1] https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flkml.org%2Flkml%2F2019%2F3%2F28%2F197&amp;data=02%7C01%7Cabel.vesa%40nxp.com%7C05d512f83dfa4d4f52d908d6eda64321%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C1%7C636957695741584637&amp;sdata=cA5UKbFuZHHnk1599lJi2QXCMTKxCJmPPzoBaRhbdCE%3D&amp;reserved=0
> [2] https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flkml.org%2Flkml%2F2019%2F3%2F28%2F203&amp;data=02%7C01%7Cabel.vesa%40nxp.com%7C05d512f83dfa4d4f52d908d6eda64321%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C1%7C636957695741584637&amp;sdata=TrWSY3eozWSd0KwZgIprmPazdDno979NqGnVjpdzi50%3D&amp;reserved=0
> [3] https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flkml.org%2Flkml%2F2019%2F3%2F28%2F198&amp;data=02%7C01%7Cabel.vesa%40nxp.com%7C05d512f83dfa4d4f52d908d6eda64321%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C1%7C636957695741584637&amp;sdata=ge%2FOXE40T6GSb0x1SmYFXtwLIdyVy1W0Yl0EItKyXNU%3D&amp;reserved=0
> 
> > 
> > I also have the patches ready for TF-A but I'll hold on to them until I see if
> > this has a chance of getting in.
> > 
> > Abel Vesa (2):
> >   irqchip: irq-imx-gpcv2: Add workaround for i.MX8MQ ERR11171
> >   arm64: dts: imx8mq: Add idle states and gpcv2 wake_request broken
> >     property
> > 
> >  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 20 +++++++++++++++
> >  drivers/irqchip/irq-imx-gpcv2.c           | 42 +++++++++++++++++++++++++++++++
> >  2 files changed, 62 insertions(+)
> > 
> > -- 
> > 2.7.4
> > 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
