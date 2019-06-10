Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 498DA3B689
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 15:55:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H8LGEuJNMyuc4D2ZvtQ7Ju4FHJ4mwRX4dzw3W4dop5E=; b=DRuAxgg2T9ixxU
	O5lRP9NKojKnrMg+OCtUItCFYaaiWToJhCf5EuGKRDXLLMd66Tz4RiSYIZkhlzVdmlqWiaeRBYIxz
	z/T27o8wl2x+KRFJjnKlya3vtycVn6qDK305PdEyCP5AFNGzEgLATdBsZNLPOj1z//C39py2k4Ij7
	b23cYPI06iqLtvPz2LucfusMVfgS1+x3pAnZi2LtJKPUipS3eZiK/YISbXZZSax7rmYv80kfgWLWW
	bH47xTqYTz3o2+mGakK2ufZ/4C7w+kSksLGBm+CKhMqDggfMiYB6VN43aj1QG2XHbG/0Is1eGkhOb
	x2FioVQf5lSLo+DgkbCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haKln-0003rR-F6; Mon, 10 Jun 2019 13:55:31 +0000
Received: from mail-eopbgr30089.outbound.protection.outlook.com ([40.107.3.89]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haKlb-0003ql-GS
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 13:55:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T05/Ew+18UuNR4CFUKeK+Ni99rBRcW5MWR24Ro4NT5o=;
 b=hDdlSvH1xn4O8xW3UmAMYf6gTfeauaejUpoogzFI3o9/iaWsZPQsPgW976lU5T9xtFFINKt0+pAjo1BiUL06ekleMpkEUwm0l0kxA63lmyzGsKQvBQ+kI1APS6ioj95Ci/KitmPalq497bDReI/uQu0tsI5bZLZlnv074CjPO3A=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB5170.eurprd04.prod.outlook.com (20.177.42.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.17; Mon, 10 Jun 2019 13:55:15 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::5c91:9215:bcd9:49cc]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::5c91:9215:bcd9:49cc%5]) with mapi id 15.20.1943.023; Mon, 10 Jun 2019
 13:55:15 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [RFC 0/2] Add workaround for core wake-up on IPI for i.MX8MQ
Thread-Topic: [RFC 0/2] Add workaround for core wake-up on IPI for i.MX8MQ
Thread-Index: AQHVH4Y/3naZJOmQTkOgrNdQmlNuA6aU3y6AgAACvgCAAALCAIAABIYA
Date: Mon, 10 Jun 2019 13:55:15 +0000
Message-ID: <20190610135514.xd5myavjsloos2y3@fsr-ub1664-175>
References: <20190610121346.15779-1-abel.vesa@nxp.com>
 <20190610131921.GB14647@lakrids.cambridge.arm.com>
 <20190610132910.srd4j2gtidjeppdx@fsr-ub1664-175>
 <6f1052ea-623a-b2e8-9aa8-22aef5fab4ca@arm.com>
In-Reply-To: <6f1052ea-623a-b2e8-9aa8-22aef5fab4ca@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a85f1427-0959-495d-717d-08d6edab4412
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5170; 
x-ms-traffictypediagnostic: AM0PR04MB5170:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB517096D477F1C933C101FE24F6130@AM0PR04MB5170.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0064B3273C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(396003)(366004)(376002)(346002)(39860400002)(136003)(43544003)(199004)(189003)(8936002)(66066001)(6306002)(45080400002)(44832011)(6506007)(102836004)(53546011)(966005)(316002)(7736002)(8676002)(4326008)(6246003)(81156014)(53936002)(26005)(186003)(446003)(7416002)(68736007)(229853002)(1076003)(6436002)(11346002)(76176011)(486006)(71200400001)(476003)(71190400001)(14454004)(81166006)(33716001)(478600001)(561944003)(25786009)(5660300002)(99286004)(86362001)(2906002)(305945005)(54906003)(3846002)(256004)(6486002)(9686003)(14444005)(66946007)(6916009)(6116002)(6512007)(73956011)(91956017)(76116006)(66556008)(66446008)(66476007)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5170;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: CTj2uYdBGiawLS2fzpHik7kKEWEv30whRIWCfsoFqdF3auTGOE08nN748+ddP8rGWrHQ0XeNtiKX2nrCZZhZTph00SoTJmvoGqTEJdO6rU2OHhPDpWmJFi4lBsjtF1gHnGBO3WhcDDxRGweyCEYy8A4xMx1ZJJhxswtGsIeRRO+FO6qS+CQ375E8VXcxmvDFCPtAe4fyE4wnMRcugrAKYdQ8VXNp6H/kC1kE4fNmE1hbB5sX7QO8bdUAVn0W/6bbnnNr6y1Vdje2sM1B89j9gx6euXZWrwqEyBKaDv05eCM5GcUKXqjA4BO/tqwaHw9KrO39a3SVFgaqTqHEqaDg6rsUb0brkQ/+a8mxV/NM5myzGWPUBn83sXqsxxt5/yfCFZuWz81BLU6Jvofs1FUoSYtHUkOQELnhjv+fpVQLz18=
Content-ID: <AFFA43130A95A345A0B17C6E6F4503EA@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a85f1427-0959-495d-717d-08d6edab4412
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2019 13:55:15.5584 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abel.vesa@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5170
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_065519_610839_17CF4580 
X-CRM114-Status: GOOD (  20.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.89 listed in list.dnswl.org]
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
 Carlo Caione <ccaione@baylibre.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Abel Vesa <abelvesa@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-06-10 14:39:02, Marc Zyngier wrote:
> On 10/06/2019 14:29, Abel Vesa wrote:
> > On 19-06-10 14:19:21, Mark Rutland wrote:
> >> On Mon, Jun 10, 2019 at 03:13:44PM +0300, Abel Vesa wrote:
> >>> This is another alternative for the RFC:
> >>> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flkml.org%2Flkml%2F2019%2F3%2F27%2F545&amp;data=02%7C01%7Cabel.vesa%40nxp.com%7C7cb2bda286214541bd1e08d6eda903e0%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C636957707535314247&amp;sdata=guYqyq5ND6HzW6doFyWrR1Ry4ffWpGwtm0xDZ2ufFSg%3D&amp;reserved=0
> >>>
> >>> This new workaround proposal is a little bit more hacky but more contained
> >>> since everything is done within the irq-imx-gpcv2 driver.
> >>>
> >>> Basically, it 'hijacks' the registered gic_raise_softirq __smp_cross_call
> >>> handler and registers instead a wrapper which calls in the 'hijacked' 
> >>> handler, after that calling into EL3 which will take care of the actual
> >>> wake up. This time, instead of expanding the PSCI ABI, we use a new vendor SIP.
> >>
> >> IIUC from last time [1,2], this erratum affects all interrupts
> >> targetting teh idle CPU, not just IPIs, so even if the bodge is more
> >> self-contained, it doesn't really solve the issue, and there are still
> >> cases where a CPU will not be woken from idle when it should be (e.g.
> >> upon receipt of an LPI).
> >>
> > 
> > Wrong, this erratum does not affect any other type of interrupts, other
> > than IPIs. That is because all the other interrupts go through GPC,
> > which means the cores will wake up on any other type (again, other than IPI).
> 
> Huh... Are you saying that LPIs and PPIs are going through the GPC, and
> will trigger the wake-up of the core? That's not the conclusion we
> reached last time.
> 

Hmm, I don't think that was the conclusion. Yes, Lucas was saying (IIRC)
that if you terminate the IRQs at GIC then all the other interrupts will be
in the same situation. But the performance improvement given by terminating
them at GIC might not be worth it when compared to the cpuidle support.

> 	M.
> -- 
> Jazz is not dead. It just smells funny...
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
