Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 244903AF15
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 08:44:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YsMOOslRKC7fS+zwF+arxbCc/0gajq46ayFxwaRBkto=; b=lK3zxFOTAzI/qX
	S3GEaLUtrt01g/w5zdju13kWFRQ4jqGyB53mwoN8u7yjmV+P1CowmCZhC6MjsBSDU1Vp2rsKcVR0l
	xT07pj+6emaqtTQ72BhcELpsGvKibmRUjfrYd4xfegElFIlsb1/bFrAZ6st0yD7NMl5dcTXpa72cy
	gnVcg8rlfewORaRuwUegQIG55dI7o1+wxisu0idf/3Tzl33tcyh0NFmOVd0ZZZYZT0HNBfMCNO0wi
	MqqWAh9h8x6qJX9SAh++i6NoxCv7IpVHhobj+Mkvsi13vh1Hrdfyov7w/iXuUJvAmMa9qBeL2FvgC
	+tEhwdMQ0afG61X6caKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haE2S-0002gX-HK; Mon, 10 Jun 2019 06:44:16 +0000
Received: from mail-eopbgr70044.outbound.protection.outlook.com ([40.107.7.44]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haE2H-0002g0-1O
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 06:44:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QOw+8RG6TiPIg1IJb6MH9vPRw0/JTcOKgymZbG+4g+w=;
 b=Jaa9EAs0Gd9eTWUzWj5r2qfncsCKu5wscb3afSodq4qxW8dX5KmgUATyiXD+WGKXj4T0m1e+tcVeq0/sIKvugF7o3eFKjuI/JwAMtaeV+/ao4AZZjSA1FgLETIOW02Zo3dRvCcfz4WO8Tpo+8ympuI5aMfuL6BcznvsQv/YrmEA=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Mon, 10 Jun 2019 06:44:00 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1965.017; Mon, 10 Jun 2019
 06:44:00 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>
Subject: RE: [RESEND] input: keyboard: imx: make sure keyboard can always wake
 up system
Thread-Topic: [RESEND] input: keyboard: imx: make sure keyboard can always
 wake up system
Thread-Index: AQHU6odaZd/8EWsin0yXXO1zjKS4q6Z1V6CAgAALV+CAH3eEoA==
Date: Mon, 10 Jun 2019 06:44:00 +0000
Message-ID: <DB3PR0402MB39169646E73C1A78958EA325F5130@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1554341727-16084-1-git-send-email-Anson.Huang@nxp.com>
 <20190521053047.GG183429@dtor-ws>
 <DB3PR0402MB3916ED371BF79D823FBC5171F5070@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916ED371BF79D823FBC5171F5070@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a9a2fc0e-032f-49b7-14c6-08d6ed6f0555
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3916; 
x-ms-traffictypediagnostic: DB3PR0402MB3916:
x-microsoft-antispam-prvs: <DB3PR0402MB39160C61CA48C14F718487D9F5130@DB3PR0402MB3916.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 0064B3273C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(366004)(136003)(396003)(39860400002)(13464003)(199004)(189003)(6246003)(54906003)(2906002)(446003)(53936002)(11346002)(25786009)(4326008)(476003)(7736002)(81166006)(68736007)(8676002)(486006)(5660300002)(8936002)(305945005)(1361003)(81156014)(316002)(52536014)(186003)(2501003)(44832011)(86362001)(26005)(229853002)(14444005)(66446008)(64756008)(66556008)(66476007)(66946007)(73956011)(9686003)(71200400001)(33656002)(76116006)(74316002)(256004)(3846002)(66066001)(55016002)(6436002)(6116002)(5640700003)(14454004)(2351001)(102836004)(99286004)(6916009)(478600001)(76176011)(6506007)(53546011)(71190400001)(7696005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3916;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GDMYDNc4fAq9cl8nkO60D/tDt9ffV3JXVz0MuYtiGMR4VLQUPdus2f9dg6tIwa/G29tgq6coaBBek7dqkFk9fFnNm93LShCfnDmzeQfo4dYcGneXXfiuD20+s6gDemP7gWHx6z9UmVHwpBoB65j6yYTsnecxXtHQgfywFyYu/O/4hX2zrGaIlEnWZP+CiqWtS3IeX/+K4BEzVW8ey6aN19XcrT4ykcLeqv+5TumUIc7274mQBBNcMLpnmhQQLV6vHXrE15kMabd7e4gtEKuQ62etjl4lMlTMGqRXTRFCyfrA3TK9ycbht926R1VNKI6/pxyx4IfVR3wZ4jBC2hy2cVVLOgFQP68tizXJ5GiA8mlVtvxF8DVGHPOHTyHRweGpgB89QP/X5M0BsGdzVIgN5S2EdV2HOoF6d6ukeXWy804=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9a2fc0e-032f-49b7-14c6-08d6ed6f0555
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2019 06:44:00.4919 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3916
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_234405_088812_84319536 
X-CRM114-Status: GOOD (  21.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.44 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Dmitry
	Any feedback for this patch?

Thanks,
Anson

> -----Original Message-----
> From: Anson Huang
> Sent: Tuesday, May 21, 2019 2:36 PM
> To: dmitry.torokhov@gmail.com
> Cc: shawnguo@kernel.org; s.hauer@pengutronix.de;
> kernel@pengutronix.de; festevam@gmail.com; linux-input@vger.kernel.org;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; dl-linux-
> imx <linux-imx@nxp.com>
> Subject: RE: [RESEND] input: keyboard: imx: make sure keyboard can always
> wake up system
> 
> Hi, Dmitry
> 
> > -----Original Message-----
> > From: dmitry.torokhov@gmail.com [mailto:dmitry.torokhov@gmail.com]
> > Sent: Tuesday, May 21, 2019 1:31 PM
> > To: Anson Huang <anson.huang@nxp.com>
> > Cc: shawnguo@kernel.org; s.hauer@pengutronix.de;
> > kernel@pengutronix.de; festevam@gmail.com;
> > linux-input@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> > linux-kernel@vger.kernel.org; dl-linux- imx <linux-imx@nxp.com>
> > Subject: Re: [RESEND] input: keyboard: imx: make sure keyboard can
> > always wake up system
> >
> > Hi Anson,
> > On Thu, Apr 04, 2019 at 01:40:16AM +0000, Anson Huang wrote:
> > > There are several scenarios that keyboard can NOT wake up system
> > > from suspend, e.g., if a keyboard is depressed between system device
> > > suspend phase and device noirq suspend phase, the keyboard ISR will
> > > be called and both keyboard depress and release interrupts will be
> > > disabled, then keyboard will no longer be able to wake up system.
> > > Another scenario would be, if a keyboard is kept depressed, and then
> > > system goes into suspend, the expected behavior would be when
> > > keyboard is released, system will be waked up, but current
> > > implementation can NOT achieve that, because both depress and
> > > release interrupts are disabled in ISR, and the event check is still in
> progress.
> > >
> > > To fix these issues, need to make sure keyboard's depress or release
> > > interrupt is enabled after noirq device suspend phase, this patch
> > > moves the suspend/resume callback to noirq suspend/resume phase,
> and
> > > enable the corresponding interrupt according to current keyboard status.
> >
> > I believe it is possible for IRQ to be disabled and still  being
> > enabled as wakeup source. What happens if you call disable_irq()
> > before disabling the clock?
> 
> Doing below does NOT fix the scenario/issue 100%, if the keypad's IRQ
> arrived during suspend phase but before disabling its IRQ in its suspend
> callback, then issue is still there, as the issue is that when system suspend,
> keypad's irq arrived during suspend and noirq suspend phase, then keypad's
> hardware interrupt detection will be disabled in the ISR handler, and the
> timer event setup by ISR handler is NOT fired,
> imx_keypad_check_for_events() is NOT executed and hardware keypad's
> depress/release interrupt is NOT re-enabled yet, so it can NOT wake up
> system anymore...
> 
> So I think the solid fix is to make sure keypad can generate IRQ (either
> depress or release) at any time during system suspend flow.
> 
> +++ b/drivers/input/keyboard/imx_keypad.c
> @@ -533,6 +533,8 @@ static int __maybe_unused imx_kbd_suspend(struct
> device *dev)
>         /* imx kbd can wake up system even clock is disabled */
>         mutex_lock(&input_dev->mutex);
> 
> +       disable_irq(kbd->irq);
> +
>         if (input_dev->users)
>                 clk_disable_unprepare(kbd->clk);
> 
> 
> @@ -562,6 +569,8 @@ static int __maybe_unused imx_kbd_resume(struct
> device *dev)
>                         goto err_clk;
>         }
> 
> +       enable_irq(kbd->irq);
> +
>  err_clk:
> 
> Anson.
> 
> >
> > Thanks.
> >
> > --
> > Dmitry
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
