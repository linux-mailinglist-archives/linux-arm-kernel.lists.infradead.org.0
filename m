Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B11555DDF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 03:43:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qTqZS1V48KhLq4+YUQglEXDL5d/8ZBVnsJ8Dae11tk4=; b=tDAipjSx+V3T9h
	AkcsfKADAVDhGugpD2rw1lXYpu/VED/sIjH9RCHCNj66QBgidsZSiSHMpPRHtfjMhb8qDBtUhhVSr
	yOCwncuPBKpjT6RfbcE/Omox7IhdtN0zn6sgIhZgKkCE3r81FxXIsDJ+Z/Qy7h1i1a/bmbyM+66EQ
	lFWapoaDVLEOEs7nTpXnz+ifpnyGnMWDXdvj68sfRqiulQ1SHlMVlqPQjRgWQjB5W6to6GwfxV4Lf
	jHLQ+PivNaQB02QAam7GpJ5dvcghTEZ0KQTU9wDyAL7UoffyLFfuo8pbu0thzH5DGOy/XkBud+Wj8
	TnKb1j2VBK5/8VlV9FHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfwxo-0001mQ-T9; Wed, 26 Jun 2019 01:43:08 +0000
Received: from mail-eopbgr20061.outbound.protection.outlook.com ([40.107.2.61]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfwxa-0001lc-UC
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 01:42:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tZVqGS9K5sTkvVIqgTU2Ye5pdZMkkBpRjs9hZxvDNeY=;
 b=L/0XFdCf6OuHo1+kvO4rhb7yuzIY7ih8d0aqWiJxxxbAZk1Qv3jyZQkZJl79Xg8ftjl9hnDCRlX7L6dbgBIFHjLgSSo/3LLO0Gl/E9y/sexs2ll9FOFqo/i79aZfwzTzA23Thf5B3teyHLguvHKUuoTq/mrLbzzamPD0S+GszdE=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3900.eurprd04.prod.outlook.com (52.134.71.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Wed, 26 Jun 2019 01:42:48 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2008.014; Wed, 26 Jun 2019
 01:42:48 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, "tglx@linutronix.de"
 <tglx@linutronix.de>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "l.stach@pengutronix.de" <l.stach@pengutronix.de>, Abel
 Vesa <abel.vesa@nxp.com>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "angus@akkea.ca" <angus@akkea.ca>, "andrew.smirnov@gmail.com"
 <andrew.smirnov@gmail.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH RESEND V2 1/3] clocksource/drivers/sysctr: Add optional
 clock-frequency property
Thread-Topic: [PATCH RESEND V2 1/3] clocksource/drivers/sysctr: Add optional
 clock-frequency property
Thread-Index: AQHVKcBeREE6S4ew/U+TyYIcUsyobqas4eqAgABJq2A=
Date: Wed, 26 Jun 2019 01:42:48 +0000
Message-ID: <DB3PR0402MB3916AB9F2260B0E46CCDDEC0F5E20@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190623123850.22584-1-Anson.Huang@nxp.com>
 <55abafbd-c010-32b5-6d76-26040830d5b0@linaro.org>
In-Reply-To: <55abafbd-c010-32b5-6d76-26040830d5b0@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 01bbb761-a46f-46ff-3e22-08d6f9d7984b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3900; 
x-ms-traffictypediagnostic: DB3PR0402MB3900:
x-microsoft-antispam-prvs: <DB3PR0402MB3900636172950BF8AFCEBB21F5E20@DB3PR0402MB3900.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 00808B16F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(346002)(396003)(39860400002)(136003)(189003)(199004)(3846002)(6116002)(44832011)(81166006)(53936002)(110136005)(8936002)(486006)(74316002)(476003)(256004)(305945005)(68736007)(71200400001)(6436002)(229853002)(2501003)(316002)(9686003)(76176011)(2906002)(81156014)(55016002)(86362001)(6246003)(2201001)(7416002)(8676002)(4326008)(14454004)(33656002)(52536014)(478600001)(66946007)(64756008)(25786009)(5660300002)(66446008)(71190400001)(186003)(7736002)(66476007)(66556008)(76116006)(73956011)(11346002)(26005)(102836004)(446003)(7696005)(99286004)(6506007)(53546011)(66066001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3900;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: w453HTHzL6Zp40JvfUzUu3HLN5JQvqcwNQ+eHuJ+71SbcVo5AR/bALfGKUjX2kPs86BbrTKPoeuqR4rVDQ97z3Ez/UylJI8Pho/pM6CvpHSQaui2Yhq+QHRvP6Yg9nHLcjqhEQpc6fg5OvA/2kxFqI4YXStJbNFLLzdhBwRGReA91M0zOWY5+QM6PdBDApgvWOoxGsxTzOYx2gm7tlJG5wlQXnX2Nn3/LcgZ521GRHgOj+wEbbuHZe1VQU2Vkr13iTTLsBGew6tZoNTOe12ETZdoWRLbL5PO/cKlcQ+FD1Kdl+HhgRHESbh9oFS+y3u3sDSN7Napl8pgacXt3FKOa9rrPQc1Cf6uux2AmDKnwmX4n1a5cviiH4j7dca69wb0rq5rz5pC18TXsLutkArdJ9SoCyovWW2qHuFEYUusV4Y=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01bbb761-a46f-46ff-3e22-08d6f9d7984b
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2019 01:42:48.5468 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3900
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_184254_980294_30A02C80 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.61 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Daniel

> On 23/06/2019 14:38, Anson.Huang@nxp.com wrote:
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > Systems which use platform driver model for clock driver require the
> > clock frequency to be supplied via device tree when system counter
> > driver is enabled.
> >
> > This is necessary as in the platform driver model the of_clk
> > operations do not work correctly because system counter driver is
> > initialized in early phase of system boot up, and clock driver using
> > platform driver model is NOT ready at that time, it will cause system
> > counter driver initialization failed.
> >
> > Add the optinal clock-frequency to the device tree bindings of the NXP
> > system counter, so the frequency can be handed in and the of_clk
> > operations can be skipped.
> 
> Isn't it possible to create a fixed-clock and refer to it? So no need to create a
> specific action before calling timer_of_init() ?
> 

As the clock must be ready before the TIMER_OF_DECLARE, so adding a CLK_OF_DECLARE_DRIVER in
clock driver to ONLY register a fixed-clock? The system counter's frequency are different on different
platforms, so adding fixed clock in system counter driver is NOT a good idea, ONLY the DT node or the
clock driver can create this fixed clock according to platforms, can you advise where to create this fixed
clock is better?

Thanks,
Anson 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
