Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A51021FC50B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 06:23:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AVVDqiR7SGrs9hytVFa/FCAF7iDU6NgP8RIZaUcGGR8=; b=YjjlMX40cPItJ6
	4ZiCejGIPi5k+Tr5Q9wuB5s1MEeuz6FFQGWBeFwBSNcRvk47scd3XBvPROdgwSixj/D3Qmu2pnbtH
	63oXKHglEH/JBTYdVjVNHAhzJl3JB+/VeFyN3VLYmpe8eql7bC0kTt0Prxm1tUTW7cP8r8Xsr7J2u
	yr3RfiDVSmo4syBeD8IPAqJKmiKnMJkW7qKpD6v+2iU1rrVHguJcCkcEzN/03KnlW3514ShqLf51b
	2KVH+E5EcZZnXIfl+3qt2aGaq1t20Nw1uWEu0aCR+pKHtu2mJthDk/AA58UnjZ3EzXc7Qo29nPM2a
	Pfg3Pm5b9S78/k/lu3TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlPc2-0001id-8G; Wed, 17 Jun 2020 04:23:46 +0000
Received: from mail-eopbgr70059.outbound.protection.outlook.com ([40.107.7.59]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlPbu-0001hV-4F
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 04:23:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AWGCORy5B1vPEW6gAScbCgM7eq+I8f1yiJd13zLZPNd4nuAK/4OOuEw6cLitHrjXv/N/kyxYKILe66O/GYYrv2VG5DFYomWyfqdRY/fe8Ly3mvaH2VFT0eWi6iEOGSnqBa/L1jypgNRvbivw6mYckWf2r9ulCpHoDPMz+FV4E7zDjiXKvFWpSSJqAuqz7t6m36ovY6xvMKUcQ3og3HZL4fgEQlJSF0os+pQeoTO7H+PyS3oCTB1PdvKT6/Ogt+q7x7R9irNYvanpC4F1L4t6dLfee0DRSzzjBrINlbgOoRej4GDHTbl5iU8tQn5e/ppxbxp7qXTfArPcFi0hSpyTsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6e/ypNXjInx+6kqND+kXZqqlHyKjp7CYrze/Xg22x/g=;
 b=bGp8C+OThsQ5mX8jwQszgb9hifOqCeqp2WYCEKJj5OYG0ePfNoc49MlEui/KY6rd74TAYZ5q0ECKEGCvA7KJ4nQQdOTfQpYG4+ovrOdBLAppjMI7NxsEvEOSvq9BvSSkGf5OF6PJeKN+vwaVmc+noIcxAU+srRQhOLnPW1rq06zCgqkcDqn7jZNZTJdgWi8jsggGe7SSsrQyrC5d+YyF4Lp5O8IzXXmnpZrEfCxtr8S41A7MbAZKc5BeTZMuAz9Ye/aAfHneRRcosdetoPj3TGZfKk5PDUj6NiBncxrHSnBGHyNWHnFT1QfxGihKDH6F8k9g021WJ/AJN+R2rDyKsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6e/ypNXjInx+6kqND+kXZqqlHyKjp7CYrze/Xg22x/g=;
 b=EgkJ7k850zcsDWdGUUgRCuc9zTvXgySqd9AMt8Dh7/VKaVhawqXg28Xv8wSamUZUOvHghByljTGDHxFkOEjAkBXv1hN+sMXai7FpldeLIVGsG+t2BJO19fGqLD6uG3subJ1tprbZrmY4b3eM+Bzla4G7Lahf8eYaKOSG0q6VyKo=
Received: from AM7PR04MB6885.eurprd04.prod.outlook.com (2603:10a6:20b:10d::24)
 by AM7PR04MB7063.eurprd04.prod.outlook.com (2603:10a6:20b:11e::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.21; Wed, 17 Jun
 2020 04:23:32 +0000
Received: from AM7PR04MB6885.eurprd04.prod.outlook.com
 ([fe80::55ce:fc95:27b8:7e9a]) by AM7PR04MB6885.eurprd04.prod.outlook.com
 ([fe80::55ce:fc95:27b8:7e9a%9]) with mapi id 15.20.3109.021; Wed, 17 Jun 2020
 04:23:32 +0000
From: "Y.b. Lu" <yangbo.lu@nxp.com>
To: Leo Li <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [v3] ARM: dts: ls1021a: output PPS signal on FIPER2
Thread-Topic: [v3] ARM: dts: ls1021a: output PPS signal on FIPER2
Thread-Index: AQHWL9lT6NzBjMxkeEyGUwX2yrM6W6jPZh0AgABEbnCAAUhTAIAAV0iQgAsUCiA=
Date: Wed, 17 Jun 2020 04:23:31 +0000
Message-ID: <AM7PR04MB68853BA63D597884991222B2F89A0@AM7PR04MB6885.eurprd04.prod.outlook.com>
References: <20200522013052.2838-1-yangbo.lu@nxp.com>
 <VE1PR04MB668745C015609F7D875FBFDE8F850@VE1PR04MB6687.eurprd04.prod.outlook.com>
 <AM7PR04MB6885E81887C3C17B854BD6E6F8820@AM7PR04MB6885.eurprd04.prod.outlook.com>
 <VE1PR04MB6687C5843AD4FE041BA37CCE8F820@VE1PR04MB6687.eurprd04.prod.outlook.com>
 <AM7PR04MB6885EA8043D5B7527840E9A9F8830@AM7PR04MB6885.eurprd04.prod.outlook.com>
In-Reply-To: <AM7PR04MB6885EA8043D5B7527840E9A9F8830@AM7PR04MB6885.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5abf3cd7-e096-46d9-ac8a-08d81276319a
x-ms-traffictypediagnostic: AM7PR04MB7063:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM7PR04MB706317D57658B10B89891938F89A0@AM7PR04MB7063.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1265;
x-forefront-prvs: 04371797A5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bM8MutNi7c6Isw97XaDVkOazafAJ4TFmLS+5n4/Lokbk4JAyb73DNhJkBp+o5DhN4FpCjZXwfrgbEE68FPY0PoZbz0HXNFBQFxmml3tE0YiBeHBI3g4dr6AVB9QLqvavT0TLrJjfSoeJxD3F6tSZET3AzKz3S1jpDSN7HQG2zUXJPWTqZnWhw5IHtQ4PxQfEnO+Om11dFNrq1SlZlGCHbXsfeMBgpAuZ0Toj6/FuIYvVZ0QEODMqASP4JzOYl/azjncC/wE5tfu+dbtTVtb/p3xdZegFJGokFjOFg9G6Q1BjqKmStiGMYf52zD7HUG4B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7PR04MB6885.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(136003)(376002)(39860400002)(366004)(396003)(66556008)(52536014)(186003)(26005)(76116006)(66476007)(66446008)(5660300002)(64756008)(55016002)(9686003)(316002)(71200400001)(2906002)(6506007)(53546011)(66946007)(8676002)(33656002)(7696005)(8936002)(4326008)(110136005)(478600001)(83380400001)(86362001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 7hPNUtDtegrqphIF5dPJQmdiMpoNcWAJOPBfBqDjRgfnbxq6Ltq8H9lHcaNmXLQ6Xr58Uki9C2Pbmta6b85In+ro0NuYOl9+so5UjNQOinDcYuxccPrRlKp5vw7Aq4kEjiOPj4AH2Va8n6A4JY+Lcf8crVDjyM5i32LecIWE9fEaG5cD/10M0/cOVl2ihMiDJoPZPdW9LCQfo/GpIVL73gPfRejRhqHbOhDEDCxUw6dUSYRbCXU+tsfVjApdVBSzu9EajUiCicHOhzL55Bf+o06YoeeLC5OT0ysUowYdflfHzz+pepjUgKYWGeIQOmQZcuu261ThXBRs2bnfYaJx9ZS9Sbc+j9ACS3wR3dlNm194xU2CE3h5dXdmuMxdERZVMfeQ7Q4cax+BQBAFte+deG5gTdbNn0mwqGVvOKRxepkOitKtB2AEDPnlzOf3iOalk3oGU5xbApeHcKFNaaXNjtmSmce4cM70reCMxmuUrkI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5abf3cd7-e096-46d9-ac8a-08d81276319a
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2020 04:23:31.9431 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1pHDCUeEliANsS18m07r71zPZ5vWJou4xxPJCo9O8xmKKKHANalqRT72cnCmbljQakYGJ/LPEWzVucJvetev9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB7063
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_212338_242150_B21D3E8E 
X-CRM114-Status: GOOD (  26.42  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.7.59 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.59 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Richard Cochran <richardcochran@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn and Leo,

Will you help to merge this patch?
Thanks.

Best regards,
Yangbo Lu

> -----Original Message-----
> From: Y.b. Lu
> Sent: Wednesday, June 10, 2020 11:18 AM
> To: Leo Li <leoyang.li@nxp.com>; linux-arm-kernel@lists.infradead.org
> Cc: Shawn Guo <shawnguo@kernel.org>; Richard Cochran
> <richardcochran@gmail.com>
> Subject: RE: [v3] ARM: dts: ls1021a: output PPS signal on FIPER2
> 
> Hi Leo,
> 
> > -----Original Message-----
> > From: Leo Li <leoyang.li@nxp.com>
> > Sent: Wednesday, June 10, 2020 6:00 AM
> > To: Y.b. Lu <yangbo.lu@nxp.com>; linux-arm-kernel@lists.infradead.org
> > Cc: Shawn Guo <shawnguo@kernel.org>; Richard Cochran
> > <richardcochran@gmail.com>
> > Subject: RE: [v3] ARM: dts: ls1021a: output PPS signal on FIPER2
> >
> >
> >
> > > -----Original Message-----
> > > From: Y.b. Lu <yangbo.lu@nxp.com>
> > > Sent: Monday, June 8, 2020 9:30 PM
> > > To: Leo Li <leoyang.li@nxp.com>; linux-arm-kernel@lists.infradead.org
> > > Cc: Shawn Guo <shawnguo@kernel.org>; Richard Cochran
> > > <richardcochran@gmail.com>
> > > Subject: RE: [v3] ARM: dts: ls1021a: output PPS signal on FIPER2
> > >
> > > Hi Leo,
> > >
> > > > -----Original Message-----
> > > > From: Leo Li <leoyang.li@nxp.com>
> > > > Sent: Tuesday, June 9, 2020 6:20 AM
> > > > To: Y.b. Lu <yangbo.lu@nxp.com>; linux-arm-kernel@lists.infradead.org
> > > > Cc: Y.b. Lu <yangbo.lu@nxp.com>; Shawn Guo <shawnguo@kernel.org>;
> > > > Richard Cochran <richardcochran@gmail.com>
> > > > Subject: RE: [v3] ARM: dts: ls1021a: output PPS signal on FIPER2
> > > >
> > > >
> > > >
> > > > > -----Original Message-----
> > > > > From: Yangbo Lu <yangbo.lu@nxp.com>
> > > > > Sent: Thursday, May 21, 2020 8:31 PM
> > > > > To: linux-arm-kernel@lists.infradead.org
> > > > > Cc: Y.b. Lu <yangbo.lu@nxp.com>; Shawn Guo
> <shawnguo@kernel.org>;
> > > > > Leo Li <leoyang.li@nxp.com>; Richard Cochran
> > > > > <richardcochran@gmail.com>
> > > > > Subject: [v3] ARM: dts: ls1021a: output PPS signal on FIPER2
> > > > >
> > > > > The timer fixed interval period pulse generator register is used to
> > > > > generate periodic pulses. The down count register loads the value
> > > > > programmed in the fixed period interval (FIPER). At every tick of
> > > > > the timer accumulator overflow, the counter decrements by the value
> > > > > of TMR_CTRL[TCLK_PERIOD]. It generates a pulse when the down
> > > counter
> > > > > value reaches zero. It reloads the down counter in the cycle following a
> > > pulse.
> > > > >
> > > > > To use the TMR_FIPER register to generate desired periodic pulses.
> > > > > The value should programmed is, desired_period - tclk_period
> > > > >
> > > > > Current tmr-fiper2 value is to generate 100us periodic pulses.
> > > > > (But the value should have been 99995, not 99990. The tclk_period is
> > > > > 5.)
> > > > This
> > > > > patch is to generate 1 second periodic pulses with value
> > > > > 999999995 programmed which is more desired by user.
> > > > >
> > > > > Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
> > > > > ---
> > > > > Changes for v2:
> > > > > 	- Added more discription in commit message.
> > > > > Changes for v3:
> > > > > 	- Mentioned effect of the change in commit message.
> > > > > ---
> > > > >  arch/arm/boot/dts/ls1021a.dtsi | 2 +-
> > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > >
> > > > > diff --git a/arch/arm/boot/dts/ls1021a.dtsi
> > > > > b/arch/arm/boot/dts/ls1021a.dtsi index 760a68c..b2ff27a 100644
> > > > > --- a/arch/arm/boot/dts/ls1021a.dtsi
> > > > > +++ b/arch/arm/boot/dts/ls1021a.dtsi
> > > > > @@ -772,7 +772,7 @@
> > > > >  			fsl,tmr-prsc    = <2>;
> > > > >  			fsl,tmr-add     = <0xaaaaaaab>;
> > > > >  			fsl,tmr-fiper1  = <999999995>;
> > > > > -			fsl,tmr-fiper2  = <99990>;
> > > > > +			fsl,tmr-fiper2  = <999999995>;
> > > >
> > > > I noticed that the fiper2 is now the same as fiper1.  Can we just use
> > > > fiper1 to generate the 1s pulse?  Or both of them have to be used?
> > >
> > > PPS signal is frequently used by users. And more than 1 channel may be
> > > needed.
> > > I think we can configure two PPS signals on fiper1/fiper2 in default.
> > > For specific periodic pulse, user can configure the period wanted by
> > > themselves.
> >
> > If this is an application specific setting, wouldn't it be better to be part of the
> > board dts instead of the SoC dtsi?
> 
> These provide the default setting to the 1588 timer regardless the boards.
> I don't think we need to copy them to each board dts file.
> Thanks.
> 
> >
> > Regards,
> > Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
