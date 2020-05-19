Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4EE1D8DEB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 04:59:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N2mK/z5ER0GZn/tK2kyKXkLgPvmFaUUf3hwjMUzI0XY=; b=oREZyG5jidbRmC
	/Yp4awZ/Jnym77GKoKeRQSKKkmGEznRITU3ab3v+bkXdrgHo3clMdBPuWlhmTGEEkpNpf9yvTVzpY
	9q7Z+ZofrdTRCnakWdJqVhNw3uUdUknaYq18EriqkOX4mWaUFAqZsi01K1zgwoTbHFr2smCZtm+no
	Fo75LMu8uhRssBKTE5HM1Nm3edTh75f4+sWyzNp3hZL/3K7svmhs4ruZHE5UTCPSL6i+wUW0JiYKz
	IILXNblmKbbgE6QdR2SRKM2hbg/6GYiTLgp58qFCHpcZuLLOEVUVX3Gx2ZjTjnhjPI2LpDxmRpyFx
	1bXKcmZqCU8BtXT/x26g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jasT4-0001R7-Kg; Tue, 19 May 2020 02:58:58 +0000
Received: from mail-eopbgr10085.outbound.protection.outlook.com ([40.107.1.85]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jasSv-0001QS-1Z
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 02:58:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UL/V6Dk7zK8ERwBK0z+LKzd9llnPoRE+MSpN+kUvPEK4qmwW0jKHwJrF5E+rKN9hqkYoFuIHWk+2ZUctMyeZccPDDFE55vWVlYtFB9NqtWUNgnxy6tdhEA70LOW2p4Gafo1TEmnwbiKxn9BvH7xRnXzuOW9Lg/GvLHTNKdMW6dXWa4T3Y+wcH01+umrh8E1/ESl6e6spupnhy0kcYthLeFrb+XZxmrVcDyNMC06Winp3w0aW+kdhtY390/HZdWugEOzTz4BePcCX6iCUcos26Kffj7E15llg8ODcaz3QPSQgODW9RhsopmDQk8amef7fPnQpDnAjPv+eCGrCBQLozA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2QX9yGjHrsUs8BGErL90xI/6jubegPz0lwit+ul37ws=;
 b=cg+Y4wS07GUvEDCDin6Xuek4XiS08nYOH34rPw2Y9lO4QJOfHG9o5AU7p5ksdtj6YVnq23dQ2QUYRSgpWasXwz8kBbOFpJ24VqnfKuYs6GMkoiaL/LYmW6UhpeOk0yqXPiRmVLeznSZc1ufeCICesh3oCGHQOwI3THlflWgjoYYEqNOlm7Gn8SEhPzsa4jExqlPo1ApEuG/v3b9Y5rSb7he1NU9k9cQ7DP4fItgnJk0/QvEAAzzP4Jw9EJ0neoXxa31XUIlIIHRpH+AVEb/l68vB1+mS8ayVNWNUMiMZUhoetj7TyMbCFdg1mlP7GVqzZP0Ao5BSZYuGaVTYGVvhGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2QX9yGjHrsUs8BGErL90xI/6jubegPz0lwit+ul37ws=;
 b=XDDpnRz8IOgKA6VkzXy8FYmht8KmGhuxdscDuDydYguJzy5P2YSQXBPayneb94/SEOOi1wctfO+K9BgFNW72Hy5cB9PN20eI/EGe77575zcB851Vy5oFiaZNE63RQE1McGOMDEUgetyHLRTrSWSCl6A4gy/4TlUlGZ0SWWYyx0Y=
Received: from AM7PR04MB6885.eurprd04.prod.outlook.com (2603:10a6:20b:10d::24)
 by AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.25; Tue, 19 May
 2020 02:58:45 +0000
Received: from AM7PR04MB6885.eurprd04.prod.outlook.com
 ([fe80::fdc0:9eff:2931:d11b]) by AM7PR04MB6885.eurprd04.prod.outlook.com
 ([fe80::fdc0:9eff:2931:d11b%6]) with mapi id 15.20.3000.034; Tue, 19 May 2020
 02:58:45 +0000
From: "Y.b. Lu" <yangbo.lu@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH] ARM: dts: ls1021a: output PPS signal on FIPER2
Thread-Topic: [PATCH] ARM: dts: ls1021a: output PPS signal on FIPER2
Thread-Index: AQHWHEiBnWxAU4L90kC2ffOlL+Ll/KilxtUAgAE6YvCABWuRgIACbU2w
Date: Tue, 19 May 2020 02:58:45 +0000
Message-ID: <AM7PR04MB688534E0099FC792CADAE792F8B90@AM7PR04MB6885.eurprd04.prod.outlook.com>
References: <20200427035655.18157-1-yangbo.lu@nxp.com>
 <20200513082254.GE26997@dragon>
 <AM7PR04MB688584E51D49FD4A7761734DF8BC0@AM7PR04MB6885.eurprd04.prod.outlook.com>
 <20200517135424.GA25973@dragon>
In-Reply-To: <20200517135424.GA25973@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c4205154-09e4-4465-03ae-08d7fba08bf9
x-ms-traffictypediagnostic: AM7PR04MB7046:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM7PR04MB704642C2D0BC17866BB63262F8B90@AM7PR04MB7046.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:236;
x-forefront-prvs: 040866B734
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fgn25PLta921NKvN0NOHE26+Y3HJBMzZDJAaSCtM7vdbwzE2+Blhi1dXsi9Wyh4Cl0c6SDC0xEhQM18VjqDVf665uTMc7I6ihf60WY2B+mM6X1SHmrrtPDOQdAGoDWl1S/tHQP2a6yZXsI3Eb6ft7vWQ/vHgcDOCCSEoH4kYduFgeomWHFJvUkqKQzlqG7EY4TLLld0jTfZZ5An/B9WB8hyEGwJEJMprtcITRB972ZGI/mqKoeAKUIOy+PAb65oExzEBKea/4s9bSQjPg+J+yjo1mvrCUBoy8F6mFmkA/IGSiAl7zk/elXik8HjobTK88IGrj7x2JX1BdmlDCzh8tGH6Vrr5Vr6bX1C1WXOQ/20Rujr+j3+emicrTlZwQ8YGW63wzXLF2zT5gSfpBGMlLq8KTrv8knaDH59D4sxKFPLA6U0WV0ulpzGy1WzUooRc
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7PR04MB6885.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(346002)(366004)(396003)(376002)(26005)(33656002)(186003)(55016002)(9686003)(52536014)(8936002)(53546011)(76116006)(66946007)(66476007)(66556008)(64756008)(66446008)(8676002)(6506007)(54906003)(71200400001)(316002)(7696005)(4326008)(6916009)(2906002)(86362001)(478600001)(5660300002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: ObXelBDS0B9pn79crrlDD+zlSysWAoGsFwzbimm4J6OdIXCAlKuL599Pwez7kFdcpCqcazg62U4axKh41Lg4bVZw0T4UQq4hhrDPk4ll1/xp036FtsMm3UcWUvqNBCCmOnsmwrBneNnzi5qOQda887vaqQQTL6Bq23S0s0KCfi3yiQ3d/zojSmYhNRMIzlyHAe0oRalF56uy3hftb+EHEeDfGYneTjGhtaNdLhZfBdB/FXt8+w2arIxp6jlXkFjD0DOEfeNzjbUr/Cc4K2st1KRx6RAry+0AK6N8vT7XrTkp32rVYsC+MDt3MGaAxYUXhMiLJoQ+roH9XHnJ9sgS5dEoPHrwzH8ncS0cv4ItzNDI7ahH/UgWpHB2s6sUSBtZabU9VqxCztXL3Mk5V4PsY2q1eYLxN5APA2PiAavJ5696gysxN0yen1vnJAy83kkd1FJ8hI3fF642zslxz1xH51//hcHo+7BPyD8tR8iHgGk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4205154-09e4-4465-03ae-08d7fba08bf9
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2020 02:58:45.6621 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HwIhBT1H8fMupMZYZTGJM8jabsRUwn/7NwyDZMdc47Ayi7FgV8ME7JsOz6CFe1YxMn3vafK1qDViR7YO8f8OYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB7046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_195849_084967_FC13A9EE 
X-CRM114-Status: GOOD (  19.63  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.1.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.1.85 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Richard Cochran <richardcochran@gmail.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Leo Li <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Shawn Guo <shawnguo@kernel.org>
> Sent: Sunday, May 17, 2020 9:54 PM
> To: Y.b. Lu <yangbo.lu@nxp.com>
> Cc: linux-arm-kernel@lists.infradead.org; Leo Li <leoyang.li@nxp.com>;
> Richard Cochran <richardcochran@gmail.com>
> Subject: Re: [PATCH] ARM: dts: ls1021a: output PPS signal on FIPER2
> 
> On Thu, May 14, 2020 at 03:13:45AM +0000, Y.b. Lu wrote:
> > Hi Shawn,
> >
> > > -----Original Message-----
> > > From: Shawn Guo <shawnguo@kernel.org>
> > > Sent: Wednesday, May 13, 2020 4:23 PM
> > > To: Y.b. Lu <yangbo.lu@nxp.com>
> > > Cc: linux-arm-kernel@lists.infradead.org; Leo Li <leoyang.li@nxp.com>;
> > > Richard Cochran <richardcochran@gmail.com>
> > > Subject: Re: [PATCH] ARM: dts: ls1021a: output PPS signal on FIPER2
> > >
> > > On Mon, Apr 27, 2020 at 11:56:55AM +0800, Yangbo Lu wrote:
> > > > Output PPS signal on FIPER2 (Fixed Period Interval Pulse)
> > > > which is more desired by user.
> > > >
> > > > Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
> > > > ---
> > > >  arch/arm/boot/dts/ls1021a.dtsi | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/arch/arm/boot/dts/ls1021a.dtsi
> b/arch/arm/boot/dts/ls1021a.dtsi
> > > > index 760a68c..b2ff27a 100644
> > > > --- a/arch/arm/boot/dts/ls1021a.dtsi
> > > > +++ b/arch/arm/boot/dts/ls1021a.dtsi
> > > > @@ -772,7 +772,7 @@
> > > >  			fsl,tmr-prsc    = <2>;
> > > >  			fsl,tmr-add     = <0xaaaaaaab>;
> > > >  			fsl,tmr-fiper1  = <999999995>;
> > > > -			fsl,tmr-fiper2  = <99990>;
> > > > +			fsl,tmr-fiper2  = <999999995>;
> > >
> > > Not sure code change matches patch subject and commit log.  The change
> > > is about changing fsl,tmr-fiper2 setting from one value to another.
> >
> > The calculation refers to
> Documentation/devicetree/bindings/ptp/ptp-qoriq.txt. It looks complicated.
> > But to be simple, to get 1PPS signal (period is 1s) on FIPER2, the value should
> be set as,
> > fiper2 = <desired period> - <tclk-period> = 1000000000ns - 5ns =
> 999999995.
> 
> Please update commit log to include how new value comes.

Sent out v2. Thanks!

> 
> Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
