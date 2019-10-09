Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BFCD0837
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 09:25:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9so9G4YOlNW+X34azzmfilidhm5cYJ63OXtc/Qw01RI=; b=EJLrOQMpPw3HZ9
	b7pMWSOZ6CvotSO0e5zMyTxNDyiaKNtM+7Qirfk9SVdog5L/NxU+dffM1OtzHZk7wkl4+lrd7A2lQ
	fM6sIxPncimmgBCbZrt4rVRuR2zoTztF9FlnAin+Y97hr9ttT0llisKfOvv8WH7kgt7CGIfFpbLnI
	RKcCL1e2UD0D2RJFlz5cTf9Wg48Aek4K66a2lQdMTbYt4VkyccA9pCKi9sc2/QGdJ/alSsvXRwvQT
	NDsgVMkG+Uiw1n+xbSZFlC0Mb3E4bmCRZe8yOKbkmSGKpYrLlY1NEQqrCOKN9F9z4usR2krJ5pVZD
	ThcGzV0cBo494zHcCJnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI6LR-0000WT-Qt; Wed, 09 Oct 2019 07:25:13 +0000
Received: from mail-eopbgr40086.outbound.protection.outlook.com ([40.107.4.86]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI6LE-0000E7-SO
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 07:25:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cr9KWL263gj1td/HAvG7DfIFlvNZKL7of/9qzmMNDqQzQupAHcaFe8zvqaIN/VvFfiNVqXCR/cduemPoywLdYgiUn4U0yBhD2vXslOosL1gH8jc6pBMAQJEAVIg7KHpZ91wsI5kIPUMRnHbjoKtvBn/lKSRT692ZaIKseK1NOFAo6dTPEVxczSEe7sUa/GGVMmiOREQpdyGSYWHZDlrq62qODM1AiWaA0Z8yZXb/v7E0tckMwf0KFpKN63XFho58AU16iD0981TRxbnJREbgu6RgYcYFajTHiKw32RS2oFEzlbLjwgkb+Cr9FkVZNuz9807wmzdDb2lkHayZLvnmUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+D4VemOl8zbTrxjn5xxqR6F9Y/HxysiEFcNy7JlWvm0=;
 b=jYqUoHdYgHOclzGtD1KqwxBcZk/RTiBneoSKt4Xlhsv2eB8MA8qO4Zr2j5R2rYivlFZhDMUy+KhdSLuC3KTr+slDu5scumoCn9j9ptIzLLOehrWtc32YChOMUG1CKqioZvMD01jNyaECQyIxPBc9Wx5fMGQVOi51rYuGCtPtXCMKgVages1HaA5PHkYY8Vzta7LDEE2byFSHPE4cAdypF269GvvQ7VB14UAfXN8Q85PzdGgqcwQef7YZp0xHPXisACJd2eBCk3qJwvoT5RzizyFIe/kUQsURruaaM10V6r426C8PGFv73Ua7MIfXenzDpxuWr7yl3myWD7Axw1Zz0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+D4VemOl8zbTrxjn5xxqR6F9Y/HxysiEFcNy7JlWvm0=;
 b=ChQMkiwK7mQaxQeSvy6bs5leTW2ELdolHp7Ix47q5G9a0HsXcE+fK77hrPPhB1oK0rxW0BsthsEoVnBqZdoH2CWQCP3Pa2moZzaDzR9g8h1xfYSm+MjlvCg3HtFlsN7pOCl7n8xcoiIpL/4aq3yuipBmrwR4yZjeHuS9Fh6IuMs=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3692.eurprd04.prod.outlook.com (52.134.65.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Wed, 9 Oct 2019 07:24:57 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0%6]) with mapi id 15.20.2347.016; Wed, 9 Oct 2019
 07:24:57 +0000
From: Anson Huang <anson.huang@nxp.com>
To: =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@pengutronix.de>
Subject: RE: [PATCH] tty: serial: imx: Only get second/third IRQ when there is
 more than one IRQ
Thread-Topic: [PATCH] tty: serial: imx: Only get second/third IRQ when there
 is more than one IRQ
Thread-Index: AQHVfmm1cibywjMA5UifVvn4HL9DWadR35+AgAAA6hCAAATlgIAAAf4g
Date: Wed, 9 Oct 2019 07:24:57 +0000
Message-ID: <DB3PR0402MB39161E02A9D042948B71FDCDF5950@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1570601911-9162-1-git-send-email-Anson.Huang@nxp.com>
 <20191009065315.wgdvmkv6skteyul4@pengutronix.de>
 <DB3PR0402MB39165F9CE876772F8F94F187F5950@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20191009071403.ugd2wuac6ue5zsd6@pengutronix.de>
In-Reply-To: <20191009071403.ugd2wuac6ue5zsd6@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a3bbfc24-c19a-419e-16dd-08d74c89c9ac
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: DB3PR0402MB3692:|DB3PR0402MB3692:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB36929626F0D091ADB3D10C54F5950@DB3PR0402MB3692.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 018577E36E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(39860400002)(136003)(376002)(366004)(189003)(199004)(99286004)(5660300002)(14454004)(66066001)(2906002)(66946007)(186003)(66476007)(66556008)(64756008)(478600001)(66446008)(6506007)(71200400001)(76176011)(7696005)(102836004)(6116002)(3846002)(76116006)(54906003)(71190400001)(33656002)(52536014)(316002)(26005)(6916009)(256004)(8676002)(8936002)(81166006)(44832011)(11346002)(476003)(86362001)(81156014)(446003)(6246003)(7736002)(25786009)(229853002)(4326008)(486006)(74316002)(7416002)(9686003)(6436002)(305945005)(55016002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3692;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TKLWHkE5vK+2V3eeOWj+Y9I6Q9zwY3oDHZou1rh/y6mAf7w6u49y6frOCRL/FLKUDegrnHlE1qauRnZJR5ZF1oPH93sNDH0zgEv4LqFIOEBDA5sj8F2lvNoFIvv1jzLQa0NW8whuIquM03zuY5OMWPcf+80S3KCjP/IGVcN/qbFqY4ZxLajJHi05t8hllR878V/nVs1Erl+GBbyTOqUVT9njouf9VJi/k8NGz1k2iHAe952/xZvc9DhclpRg1MH03gRbmMRI/UrcG80MmI0lzjZCwkzF8q0FAw5DJSEAxrPL0kmts6XeJljxRsPDdFWv4ANCDeL8DOtGSAqfSV+e3MMZEizSNqkOlauLuqB6sPA1lGA5996VZggiXP2f/JlQmutK+w7K4Cq1SzR7+aX288E1gQeZzzfg2zQyK54RH8M=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3bbfc24-c19a-419e-16dd-08d74c89c9ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2019 07:24:57.3123 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8Ja/5rKDe0atfYpuIYXBh+yS/n/PIkDVtd6T7hTRDDW2/Tc8MOYvRPH3W4udiYFIri2S77k31kHr7FxmyYXstw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3692
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_002500_917035_95639738 
X-CRM114-Status: GOOD (  30.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.86 listed in list.dnswl.org]
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
Cc: "festevam@gmail.com" <festevam@gmail.com>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "Rafael J.
 Wysocki" <rafael.j.wysocki@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Uwe

> On Wed, Oct 09, 2019 at 06:58:24AM +0000, Anson Huang wrote:
> > > On Wed, Oct 09, 2019 at 02:18:31PM +0800, Anson Huang wrote:
> > > > All i.MX SoCs except i.MX1 have ONLY 1 IRQ, so it is better to
> > > > check the IRQ count before getting second/third IRQ to avoid below
> > > > error message during probe:
> > > >
> > > > [    0.726219] imx-uart 30860000.serial: IRQ index 1 not found
> > > > [    0.731329] imx-uart 30860000.serial: IRQ index 2 not found
> > >
> > > This message was introduced in commit
> > > 7723f4c5ecdb8d832f049f8483beb0d1081cedf6 for 5.4-rc1. I added the
> > > involved people to the recipents of this mail.
> >
> > Yes, I noticed this, thanks.
> >
> > >
> > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > > ---
> > > >  drivers/tty/serial/imx.c | 13 +++++++++++--
> > > >  1 file changed, 11 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
> > > > index
> > > > 504d81c..081fa82 100644
> > > > --- a/drivers/tty/serial/imx.c
> > > > +++ b/drivers/tty/serial/imx.c
> > > > @@ -2198,6 +2198,7 @@ static int imx_uart_probe(struct
> > > > platform_device
> > > *pdev)
> > > >  	u32 ucr1;
> > > >  	struct resource *res;
> > > >  	int txirq, rxirq, rtsirq;
> > > > +	int irq_count;
> > > >
> > > >  	sport = devm_kzalloc(&pdev->dev, sizeof(*sport), GFP_KERNEL);
> > > >  	if (!sport)
> > > > @@ -2220,9 +2221,17 @@ static int imx_uart_probe(struct
> > > platform_device *pdev)
> > > >  	if (IS_ERR(base))
> > > >  		return PTR_ERR(base);
> > > >
> > > > +	irq_count = platform_irq_count(pdev);
> > > > +	if (irq_count < 0)
> > > > +		return irq_count;
> > > > +
> > > >  	rxirq = platform_get_irq(pdev, 0);
> > > > -	txirq = platform_get_irq(pdev, 1);
> > > > -	rtsirq = platform_get_irq(pdev, 2);
> > > > +	if (irq_count > 1) {
> > > > +		txirq = platform_get_irq(pdev, 1);
> > > > +		rtsirq = platform_get_irq(pdev, 2);
> > > > +	} else {
> > > > +		txirq = rtsirq = -ENXIO;
> > > > +	}
> > >
> > > The patch is fine given the changed behaviour of platform_get_irq. I
> > > wonder if it is sensible to introduce a variant of platform_get_irq
> > > (say
> > > platform_get_irq_nowarn) that behaves like __platform_get_irq does t
> > > Then the imx driver would just call platform_get_irq_nowarn without
> > > having to check the number of available irqs first.
> >
> > Agreed, it would be nice if we can fix this from the API level, this
> > is to save many patches from various drivers side, let me know if
> > agreement is reached and I will do the patch.
> 
> I wouldn't expect that most callers actually want an error message and so
> these need a different patch (i.e. dropping the error message by the caller).
> This type of patch is fine and the normal load when something is
> consolidated.
> 
> Which other drivers do you have on your radar that don't want an error
> message if platform_get_irq() fails?

I did NOT mean drivers don't want an error when getting irq failed, but I just
agree that introducing another API with nowarn as you mentioned upper, then
i.MX driver can call it. For now, the FEC driver also have many such error message,
we will fix later.

So if the API with nowarn is added, then I can change the API call in some i.MX driver
instead of getting irq_count first. Do you think I should add the nowarn API and redo
this patch to call it? 

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
