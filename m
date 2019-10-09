Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 330C3D07BB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 08:58:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IBWPwImpVZK+9IF4Nr2bS8QlRFqCkpaYE3W4SSrJwLo=; b=WWUvnKwB1xrviC
	hzrBOpnvYzucLW/2bKyUv+ep2hl8zOGelm7/qgqkwslrNiCoKcNzP6RQY/lEkB42DvCKSMH1mZlgp
	uhQr3YD/+TnFuN1nhsXCfBHNIJzLaONwRqqvXkT0qRsYUg2W12rcQLQd1uTktnsLnyNQElFAxMqa6
	rUvbjheRUys0cR0q5jMiu7Q1s9A5IUZIDoH7dUbvWdN55Oc43XbXIitwSHNRWsqQKeFmYgw9OhNEg
	XzuVz+e818ohMhOD7cJDE4DuqQIU4EILV3Agfi1S+TnKofeENaB4JtyMzEDf20T2r0MKr9R1wMzhr
	Ye/blpA4btyIMw3DJV+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI5vj-0004vE-Ej; Wed, 09 Oct 2019 06:58:39 +0000
Received: from mail-eopbgr130072.outbound.protection.outlook.com
 ([40.107.13.72] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI5vc-0004jo-9e
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 06:58:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XQJpYpem8g8XIKNBHTw+5k7ZMdrWUBcU+zrN/Bf7ccxqGdW+PanCeiZxc0lZX9gqYhhzEYevOJCPIqSPXg2mPCIfFWfgjmnRWrzZjO7Tr+P885W3LP4x3Arg+qyM76GdVpXHjdDMtCgcjgl1Vy9/q+lT/vvJ1cjhx4jQtSK6VvQ72AiIN46nP+1f+cHjQPP84bV+vxVetsSEBHJw4s1WpLGrJGhnYJInzW5+MV0r3s+fWA6RdsaBQCYsH+8FargrB5JOtllYnjhFu0tlFtp4haz/SQes0qz3syq2CXlqxZtowmz6WuErTHK3LMMiPPWqE2GdY3Uh0KeKWfTWLs1bKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7XyknKhTwJnDdinRy8p9HJUi3Lp4jXFIt0IQhfRQTvo=;
 b=isXde4ZsF52wSfIoZzgwVAhsicNQt+Kvd0jkPv8LpsGXc21ydMMe3Y8eiKxBknITGETijTJjd+NnCTi+MJHwFg7VeOEleVq5n8mL+PKhBunfgCNnmT8Q6N3CrH+THpyNwUVM/LxfreXDc1Md6EOgtH+JjObFW7MHcpQvUhGMMxCJS35udBHFrvlPSP5cz4N3HMQ9V2uyQ+KAZ/Btyn4ANOowBDrVLbkRqvv1B+aQ6N5K5nGwGOa8tH1SCemgLdnJr3vC9w49YxEY/I5USjLv3ugVsZ4t0t1Ca7KiW4qtTuNPTtXBLX6WJZKKPRnNQQLD5EoVWvLih+4teOAj8ufO8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7XyknKhTwJnDdinRy8p9HJUi3Lp4jXFIt0IQhfRQTvo=;
 b=CR1kULCQ03dGM2lAZj5RawqcO+zFgPKQenqNb7saYsZq3G9Vy5TD9E+vQcU6jtqpFFCJzX+/ormgxNdoIEFo6PuMVVPqk46WlVSUK7/2mPWa3WNH9o6H5RYQoApGJ+Pa6qJS6xdCBkVsmyiWT8F66+QonlAS9x17phP7yA0I+gQ=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3948.eurprd04.prod.outlook.com (52.134.70.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.15; Wed, 9 Oct 2019 06:58:24 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0%6]) with mapi id 15.20.2347.016; Wed, 9 Oct 2019
 06:58:24 +0000
From: Anson Huang <anson.huang@nxp.com>
To: =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@pengutronix.de>,
 Stephen Boyd <swboyd@chromium.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Subject: RE: [PATCH] tty: serial: imx: Only get second/third IRQ when there is
 more than one IRQ
Thread-Topic: [PATCH] tty: serial: imx: Only get second/third IRQ when there
 is more than one IRQ
Thread-Index: AQHVfmm1cibywjMA5UifVvn4HL9DWadR35+AgAAA6hA=
Date: Wed, 9 Oct 2019 06:58:24 +0000
Message-ID: <DB3PR0402MB39165F9CE876772F8F94F187F5950@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1570601911-9162-1-git-send-email-Anson.Huang@nxp.com>
 <20191009065315.wgdvmkv6skteyul4@pengutronix.de>
In-Reply-To: <20191009065315.wgdvmkv6skteyul4@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 35c2c9b8-0abd-4f4a-b042-08d74c86145d
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: DB3PR0402MB3948:|DB3PR0402MB3948:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3948B74C3538E128C17E0E80F5950@DB3PR0402MB3948.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 018577E36E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(376002)(136003)(346002)(366004)(189003)(199004)(55016002)(33656002)(446003)(8936002)(74316002)(66476007)(66946007)(6246003)(6116002)(52536014)(9686003)(11346002)(4326008)(256004)(7416002)(25786009)(305945005)(5660300002)(476003)(99286004)(66556008)(486006)(3846002)(76116006)(64756008)(44832011)(66446008)(26005)(102836004)(6506007)(86362001)(66066001)(81166006)(186003)(76176011)(478600001)(81156014)(2906002)(7736002)(316002)(54906003)(110136005)(8676002)(71190400001)(71200400001)(229853002)(14454004)(7696005)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3948;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OEX+ujd31QMQNoG8UrgX01OK2mRC0WpJtsI5gxY2S0uxSwwWImE5nNKA5ON393xEwJyVKmhDY/b2KO8VCrH3Z8jGD+kGqdRexACw5P0KEp1oCI/xjccXRLL249vTYiKaarEaqq+3n2VAeQic4/S2jAH/Wj59f3o6AKe5/aDIxe5Q0dE13KeknRqwX9//xrHjsMN4Hw/YSul5g8fPKqYAnqzlBf2bbVmcs3qNttRudKSQdGzSKQMLrs1j2ccjqo5tYL1jdfYte5gchgOlRPmzjMcyri/Fa/egEzUjFI6/OE6x7V3YyarXVKy/+IH3fTsE2gedsDkH/1v5/82yP3sR8h6qUxia9ajTGosxo08cFKsWhP1Oo4HZYfU2U1etFPypQls994bitwXeWKesgiknmgsnCuU+/8omjMNyYI0IFU8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35c2c9b8-0abd-4f4a-b042-08d74c86145d
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2019 06:58:24.6098 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wmonbYR1dkHCXNz5KZXnVDgo6Wx9KMQdMI4d2GmiutR9SlZLxkVIVqEsook0DLk2jCXQy9lsVOcUssSAh6P7LA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3948
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_235832_406728_E43D9E6E 
X-CRM114-Status: GOOD (  22.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.72 listed in list.dnswl.org]
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
Cc: "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "Rafael J.
 Wysocki" <rafael.j.wysocki@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "jslaby@suse.com" <jslaby@suse.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Uwe

> On Wed, Oct 09, 2019 at 02:18:31PM +0800, Anson Huang wrote:
> > All i.MX SoCs except i.MX1 have ONLY 1 IRQ, so it is better to check
> > the IRQ count before getting second/third IRQ to avoid below error
> > message during probe:
> >
> > [    0.726219] imx-uart 30860000.serial: IRQ index 1 not found
> > [    0.731329] imx-uart 30860000.serial: IRQ index 2 not found
> 
> This message was introduced in commit
> 7723f4c5ecdb8d832f049f8483beb0d1081cedf6 for 5.4-rc1. I added the
> involved people to the recipents of this mail.

Yes, I noticed this, thanks.

> 
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  drivers/tty/serial/imx.c | 13 +++++++++++--
> >  1 file changed, 11 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c index
> > 504d81c..081fa82 100644
> > --- a/drivers/tty/serial/imx.c
> > +++ b/drivers/tty/serial/imx.c
> > @@ -2198,6 +2198,7 @@ static int imx_uart_probe(struct platform_device
> *pdev)
> >  	u32 ucr1;
> >  	struct resource *res;
> >  	int txirq, rxirq, rtsirq;
> > +	int irq_count;
> >
> >  	sport = devm_kzalloc(&pdev->dev, sizeof(*sport), GFP_KERNEL);
> >  	if (!sport)
> > @@ -2220,9 +2221,17 @@ static int imx_uart_probe(struct
> platform_device *pdev)
> >  	if (IS_ERR(base))
> >  		return PTR_ERR(base);
> >
> > +	irq_count = platform_irq_count(pdev);
> > +	if (irq_count < 0)
> > +		return irq_count;
> > +
> >  	rxirq = platform_get_irq(pdev, 0);
> > -	txirq = platform_get_irq(pdev, 1);
> > -	rtsirq = platform_get_irq(pdev, 2);
> > +	if (irq_count > 1) {
> > +		txirq = platform_get_irq(pdev, 1);
> > +		rtsirq = platform_get_irq(pdev, 2);
> > +	} else {
> > +		txirq = rtsirq = -ENXIO;
> > +	}
> 
> The patch is fine given the changed behaviour of platform_get_irq. I wonder
> if it is sensible to introduce a variant of platform_get_irq (say
> platform_get_irq_nowarn) that behaves like __platform_get_irq does t
> Then the imx driver would just call platform_get_irq_nowarn without having
> to check the number of available irqs first.

Agreed, it would be nice if we can fix this from the API level, this is to save many patches
from various drivers side, let me know if agreement is reached and I will do the patch.

Thanks,
Anson.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
