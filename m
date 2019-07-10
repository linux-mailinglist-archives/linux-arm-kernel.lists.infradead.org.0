Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E349C63EF4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 03:31:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zxc22OXgkPrszq4lJ3SxPDarcv6nEUgwBTNv6JtQGLo=; b=LEey9BaKyG1SzB
	omaFWbB11+PKlFyAtTJ5/r9tvITRcryPpctuzCWBm26d2adQeMiqLKrCUaKYA+xtNYmj0Skij2liV
	Ap91lr4ZNSYZ4+hQYUk+h8Y48PT9RhY/TEh25qtSyTWD3o7fAbuuM0xDGELwgQce4QBsgu9LIUWd9
	rtyHkxrtOz/qdK+VX+quctJslP8eEFBXWcIgithz0XUiS+ykzbWhh3ek6JpPDZPW7DfmihJB3jWl3
	U4KwjEAcCspUd9IjcarYynV6ZKsRk+z58JFIj2wLGD4ssVgc7Aj7HwKbHTWMSk9wx4PMKNBemZlbL
	rnJoO2Y9Ae0cRRxShVuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl1Rn-0006Bl-C4; Wed, 10 Jul 2019 01:31:03 +0000
Received: from mail-eopbgr80085.outbound.protection.outlook.com ([40.107.8.85]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl1RU-0006BH-VU
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 01:30:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N2IBnVTAEyvdR1MQ49f13eVt6MXjGwfzTKdRSGrhXVxR7HXn0v3JW5eAheHdbGiAfifdGSu84uIKUBHm9E+zwNHQvqa5L7wmwhMlekmlCEm9wBJS0liOvWzqz/TajThiX40Sh0PUPgmm250cRd1m/x2HNUFQbAKc7xE0g/RqK/xZkWj14tc3+gOCHEpbvjjaHJUNHJFvyyiHjc7nWBzjDoeDM7LqWQhFsoIjJF7FlKa+VFp2RnhVAtfKVDmjqUMiUT7DT0sTTAUa8Yv4SDJd2oSqG/gT7Am2qNGSyy4eqzMjVftjOCQW3esprAK5FkCDfbogmWy3LOqG98Drnvim4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0/+GyMmVS/scMWnNx7/qPdLuUu8JgFpGswysIyL0Ulc=;
 b=Qeukn5ecOjzSmkrTHMP0VE02MzC2+mD4apnhDB73V4x6udfNNID/5RoSScc0ZLKId/biBB9B734QENFQ/7waTCSWeTK57yfn0yRuEI/DtUziTpUlVNdsSFjTuo2SRfS6BpVCp0jqDc/CZQmryzMZweQk6EMCzuv5aLKLZWdK98rggTdo8wNLjYhLpx/mtEWQKdJduB9g+3xdE0z2YUUttxS3gNI81Vi7V1allaftxNt7WO9L6KPDNGgwKvra9owf1aQXcvR7CuF1viNu7STXW2DHwfER/Mn2n3NbFm4Ttzpm2/0TlJAtzqJLvHYotTH9mUrWALmJOOmnuTzYFF0NVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0/+GyMmVS/scMWnNx7/qPdLuUu8JgFpGswysIyL0Ulc=;
 b=GD9MiTsxSUJGAu/uIfMDp2Q9UgqsyivjLofcwb4dIlPi7xHUsrZROZuaSniXn2ERtj2MeLBa0fxsdGWBf+Gdw7fA94/pt7+h6AxHcPFPh4s6NvECjsur4XMetPag8zkwHTV8WwnXXUWpahKUJAS9/odVvBOTpJZ5NLpPx7//n+A=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3657.eurprd04.prod.outlook.com (52.134.69.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.10; Wed, 10 Jul 2019 01:30:40 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8875:8e81:7be1:b0a0]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8875:8e81:7be1:b0a0%5]) with mapi id 15.20.2073.008; Wed, 10 Jul 2019
 01:30:40 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: RE: [PATCH V4 2/5] clocksource/drivers/sysctr: Add clock-frequency
 property
Thread-Topic: [PATCH V4 2/5] clocksource/drivers/sysctr: Add clock-frequency
 property
Thread-Index: AQHVL/II1Ibi8cGYOUSIKmrgeiNcLabCyoSAgABPmdA=
Date: Wed, 10 Jul 2019 01:30:40 +0000
Message-ID: <DB3PR0402MB39167FC68991F071E9E58D81F5F00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190701093826.5472-1-Anson.Huang@nxp.com>
 <20190701093826.5472-2-Anson.Huang@nxp.com>
 <CAL_JsqKeu-b8mbMJBtnNn1vL=RSvUXbo+g40haZnjXTW11CJ6w@mail.gmail.com>
In-Reply-To: <CAL_JsqKeu-b8mbMJBtnNn1vL=RSvUXbo+g40haZnjXTW11CJ6w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 74c29fd7-3894-48a8-0674-08d704d63829
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3657; 
x-ms-traffictypediagnostic: DB3PR0402MB3657:
x-microsoft-antispam-prvs: <DB3PR0402MB3657D04A9CF4510DC5D5063AF5F00@DB3PR0402MB3657.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0094E3478A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(346002)(396003)(39860400002)(366004)(189003)(199004)(76176011)(478600001)(7736002)(4326008)(2906002)(99286004)(6436002)(5660300002)(53546011)(66066001)(52536014)(7416002)(74316002)(229853002)(54906003)(8936002)(186003)(6506007)(256004)(316002)(102836004)(305945005)(9686003)(6246003)(81166006)(486006)(81156014)(33656002)(25786009)(26005)(86362001)(3846002)(6116002)(8676002)(53936002)(68736007)(446003)(476003)(44832011)(7696005)(66446008)(55016002)(66476007)(66556008)(64756008)(11346002)(71190400001)(71200400001)(14454004)(66946007)(76116006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3657;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GFnAN5i/pyUaxAd/0zEIrolL/AngVN5xzIM0ps0QFeuqdb2MoJ+EgGEKnEubQTP2GJ8x1lsnvIHVKWtXVBT8NWiKRjkceCX/Q0SlgAFL7sDcT5WR+42Kjoy/igh9c1FKO2+tojLd6a5TkogDop0zTmoLQMIQaGx3iiuDfTyDLPBM/PDwJYJjHhUhOixdLVeHjewaimRdaUqmWSVrxiwzeusjdM8LVbt7KGrQVxtjx4utVJi7AT8u23bjgJcNe/pcxKgtRXA8xI3l6g1iPqkO9RGPfgDFqynnU/sY+mvFV+kHNye3TV+d00ummC+WOsaxZq8ee5H7BeUPY39pDqvANUA6FqYrksZMBt2Wz4MZ1yuddm/HPZkW+T4lXqFWb3TIofnX8kvA1y1oA5LDa0adHzD0dVibeSMnYvkQ9t3hPl8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74c29fd7-3894-48a8-0674-08d704d63829
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2019 01:30:40.5760 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3657
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_183045_139190_65468421 
X-CRM114-Status: GOOD (  25.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "Angus
 Ainslie \(Purism\)" <angus@akkea.ca>, Jacky Bai <ping.bai@nxp.com>,
 Carlo Caione <ccaione@baylibre.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Viresh Kumar <viresh.kumar@linaro.org>, Thomas Gleixner <tglx@linutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 =?utf-8?B?R3VpZG8gR8O8bnRoZXI=?= <agx@sigxcpu.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Rob

> On Mon, Jul 1, 2019 at 3:47 AM <Anson.Huang@nxp.com> wrote:
> >
> > From: Anson Huang <Anson.Huang@nxp.com>
> 
> 'dt-bindings: timer: ...' for the subject.

OK, I made a mistake.

> 
> >
> > Systems which use platform driver model for clock driver require the
> > clock frequency to be supplied via device tree when system counter
> > driver is enabled.
> 
> This is a DT binding. What's a platform driver?

It is just trying to explain why we need to introduce this "clock-frequency"
property, nothing about the binding and platform driver.

> 
> >
> > This is necessary as in the platform driver model the of_clk
> > operations do not work correctly because system counter driver is
> > initialized in early phase of system boot up, and clock driver using
> > platform driver model is NOT ready at that time, it will cause system
> > counter driver initialization failed.
> >
> > Add clock-frequency property to the device tree bindings of the NXP
> > system counter, so the driver can tell timer-of driver to get clock
> > frequency from DT directly instead of doing of_clk operations via clk
> > APIs.
> 
> While you've now given a good explanation why you need this, it all sounds
> like linux specific issues and a DT change should not be necessary.
> 
> Presumably, 'clocks' points to a fixed-clock node, right? Just parse the 'clocks'
> phandle and fetch the frequency from that node if you need to get the
> frequency 'early'.

Sound like a better solution, I will try that, since the system counter's clock is
from osc_24m and divided by 3, since different platforms may have different divider,
so maybe I can create a fixed-clock node in DT, then system counter driver can parse
the clock and fetch the frequency from that node, will redo a V5 patch.

> 
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > No change.
> > ---
> >  .../devicetree/bindings/timer/nxp,sysctr-timer.txt        | 15 +++++++++------
> >  1 file changed, 9 insertions(+), 6 deletions(-)
> >
> > diff --git
> > a/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt
> > b/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt
> > index d576599..7088a0e 100644
> > --- a/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt
> > +++ b/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt
> > @@ -11,15 +11,18 @@ Required properties:
> >  - reg :             Specifies the base physical address and size of the comapre
> >                      frame and the counter control, read & compare.
> >  - interrupts :      should be the first compare frames' interrupt
> > -- clocks :         Specifies the counter clock.
> > -- clock-names:             Specifies the clock's name of this module
> > +- clocks :          Specifies the counter clock, mutually exclusive with clock-
> frequency.
> > +- clock-names :     Specifies the clock's name of this module, mutually
> exclusive with
> > +                   clock-frequency.
> > +- clock-frequency : Specifies system counter clock frequency, mutually
> exclusive with
> > +                   clocks/clock-names.
> 
> It doesn't really work to say one or the other is needed unless you make the
> OS support both cases.

The OS already support both cases now with this patch series.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
