Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF0F1052C7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 14:18:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MEKjOEyaDHPY/XDmmZ4knjjei3yYUsxIS9jmDKo87RY=; b=D/iB5S+TtLkiEx
	WH/ivhQuARhUKxSim4bptqL0TvX+mb/fgNTOC1FPv9EE/dZynGN1QaxhbI2pSmcSENMavNhhvNUPi
	EkCIaXLD0S9iSUybfJr5+2utpefhkA9rTyhOdLTFzlR5J4dsXA5HO6tUJNoumk0ZqOWSWS3OSZY1M
	ZwI78j3dynMPbHcFC5MgdthMTnMR9W/w98wAlHHr/ptP8/tKVbw521UX6QCwqzk0NH64FOjmGQBBM
	zraO14F7cyHmMz8PXpJGU0sSHdB3gRjLzWytohzTpo0exPVuju5F9M3Xuy7nv/jt3f06B73DaQ08O
	RAzP2YLqJEX3cyYyInEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXmLd-0003WU-CH; Thu, 21 Nov 2019 13:18:13 +0000
Received: from mail-ve1eur03on0619.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::619]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXmLS-0003VD-2C
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 13:18:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FCCUv1DIDmeKK33jsP+duzwaHUhstuic69YXRnA/pnAceSZrfd+VmmMyv0XChha3ctIzxEGcadVQCn6oefaeTWddTUKczXMWUQliefZlpeDd2U98abGCj9jyxy93cf2BtqiupdLoe5KsRhbrxY+0EoovgA1ngg09Se06eFeljXil8Ai1dlZYWcyhwZTZZ1+VqXu7aH5sqplS8D1XP7ny5eZ6FcDiDdPY3F/A9H7/8Ur9b+/+8k0/Vlu/oQ1kWogI3azxSSTIXaMPkEipO3S8yFILp4lSpNsuHfPL8CctWnDl1VYv1OImOlgOqGSOzUfJPweEFTK4ZFLl3dows3RyzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y8u5WdKeS+Yrj17twzYNd+76zhENkQ6yYY/9IW8Rzpc=;
 b=ONiPVFTq3yP4EzovA6P3QUZzpBzKcDBMzEkfojuO8SskijkXHRftGLRmSt4oxzuvYtG7leO4ZlEKUCHIFskDE+2pp536jUHavNxsPZO0Rpz7yG2xmELLOS/kpDyJPe4dbAVAL+elJ0ETA5RKfPHF137jFtVGbfOzw4IG8BYJC46Ez1KG1AlvBgI8d9C+zqEzDA2enQeV8GngR8dZUkYPymQTFxyGVoXwzeW+8RdAAkeQvhDUP5uuZElpD0bQai/3HxEOZHhrvGMe3gvg3BMxBRtQEYQA5HJclI1Ckwwnk6m9esEc4on1dcSZv+BGaUH2XEVL3CZ0Smf7EaGnIjImOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y8u5WdKeS+Yrj17twzYNd+76zhENkQ6yYY/9IW8Rzpc=;
 b=KUQ2ibsUanvO/zpyFCHGPRFpQwdr6oiC3VuwdfRCujyeBkgb5reIDhsrc3bsuIrmkdH6AsPSM9ZPA96pmR1ZpzkG8mgIOGnBuFe6q6gWSCOsviorSLotFSz8uflfHho+W8yhRTCGpicXxAeLiQhEjICZ7J1aKupxhu5zrX7jWvM=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6656.eurprd04.prod.outlook.com (20.179.235.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.19; Thu, 21 Nov 2019 13:17:56 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::9d97:4f81:f35d:6254]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::9d97:4f81:f35d:6254%7]) with mapi id 15.20.2474.019; Thu, 21 Nov 2019
 13:17:56 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: robin <robin@protonic.nl>, Marco Felsch <m.felsch@pengutronix.de>
Subject: RE: [PATCH v3] input: keyboard: snvs_pwrkey: Send key events for
 i.MX6 S, DL and Q
Thread-Topic: [PATCH v3] input: keyboard: snvs_pwrkey: Send key events for
 i.MX6 S, DL and Q
Thread-Index: AQHVYulGitMh2z9280mHPSfJdecGJqcohyAAgAC9Y4CABLkHYIABC+qAgGU6RoCAAHaxAIABWKEg
Date: Thu, 21 Nov 2019 13:17:56 +0000
Message-ID: <VE1PR04MB6638D79F8C929100F6D96479894E0@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <20190904062329.97520-1-robin@protonic.nl>
 <20190912201300.GA636@penguin> <803592d161b9ca75d6ac1c2c54e891a1@protonic.nl>
 <VE1PR04MB663896B94C68B5EF9AE0BE36898C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20190916233701.GH237523@dtor-ws>
 <20191120092749.7rru5fj7eybs4tl6@pengutronix.de>
 <fb98fa1fde9a367d7ab33d04a5804684@protonic.nl>
In-Reply-To: <fb98fa1fde9a367d7ab33d04a5804684@protonic.nl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [101.86.226.36]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 341cc5e6-6b9a-4309-bbfd-08d76e853926
x-ms-traffictypediagnostic: VE1PR04MB6656:
x-microsoft-antispam-prvs: <VE1PR04MB6656663C3DBC587D9250E099894E0@VE1PR04MB6656.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0228DDDDD7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(346002)(376002)(366004)(396003)(189003)(199004)(26005)(66066001)(3846002)(76176011)(229853002)(102836004)(9686003)(53546011)(86362001)(6116002)(6506007)(6436002)(305945005)(11346002)(66946007)(76116006)(14444005)(66556008)(64756008)(2906002)(256004)(74316002)(66446008)(446003)(8676002)(8936002)(81156014)(81166006)(66476007)(7736002)(25786009)(52536014)(14454004)(7696005)(186003)(55016002)(54906003)(316002)(110136005)(99286004)(71190400001)(6246003)(5660300002)(4326008)(33656002)(478600001)(4001150100001)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6656;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: h9JylEDCiRkl+6xmU/WRTa1/VCfj1jmr7WY4H05FHNkrnZc/AB4eyESsKNGn73Ge9TKiXB9y43Gr8LhVkhbnp4NlsFcnkzVTv+Mk8Gx43p+o8QQ85PkJT/CMqcB+oQOn0/Hpvbjikx1nvEk98EpdyIqxgCcu17j5mJsZbFCxVRDKGsfzWBiYn9S1f33Wi1qxon4DiLaocf+qUcDumEkUgUEdhhOn9ZgEkRqDQ0ECbV50Etm9S7UBtDWRPR97C+EiLww2gPlHIySxInFn0zYoujVbyHkuoUjgKJUug6UDBe268CUKKcnjZZfKmgd9Negx/y98Ch5lBIsHqH3hpSeGp0nZ1OdV9jKvIWSnllpt5A8IAAjlS11I9kOoSVdZjvsddIc4fkRrfCNi29/Pgxg7JSYyIm2EwDqPs0xSs8GPym4D0jJJQjWZFjUuAZd4CesH
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 341cc5e6-6b9a-4309-bbfd-08d76e853926
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2019 13:17:56.2091 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9t3qQvQIjKsTRurJeT1WoB4H7iok+vcv69EhB/dJL0ZMpAil9aapB4ckV2q6OQdyUGGv9nFfOtfSdIsvKd3vKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6656
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_051802_113506_2B5BE921 
X-CRM114-Status: GOOD (  20.35  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:619 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Shawn Guo <shawnguo@kernel.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "linux-kernel @ vger . kernel . org" <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, "linux-input @ vger . kernel
 . org" <linux-input@vger.kernel.org>, Adam Ford <aford173@gmail.com>,
 "linux-arm-kernel @ lists . infradead . org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 2019-11-21 0:33, robin <robin@protonic.nl> wrote:
> On 2019-11-20 10:27, Marco Felsch wrote:
> > Hi Robin,
> >
> > On 19-09-16 16:37, Dmitry Torokhov wrote:
> >> On Mon, Sep 16, 2019 at 07:45:37AM +0000, Robin Gong wrote:
> >> > On 2019/9/13 15:31 robin <robin@protonic.nl> wrote:>
> >> > > Hi Dmitry,
> >> > >
> >> > > On 2019-09-12 22:13, Dmitry Torokhov wrote:
> >> > > > Hi Robin,
> >> > > >
> >> > > > On Wed, Sep 04, 2019 at 06:23:29AM +0000, Robin van der Gracht
> wrote:
> >> > > >> The first generation i.MX6 processors does not send an
> >> > > >> interrupt when the power key is pressed. It sends a power down
> >> > > >> request interrupt if the key is released before a hard
> >> > > >> shutdown (5 second press). This should allow software to bring down
> the SoC safely.
> >> > > >>
> >> > > >> For this driver to work as a regular power key with the older
> >> > > >> SoCs, we need to send a keypress AND release when we get the
> >> > > >> power down request irq.
> >> > > >>
> >> > > >> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
> >> > > >> ---
> >> > > >> @@ -67,13 +83,17 @@ static irqreturn_t
> >> > > >> imx_snvs_pwrkey_interrupt(int irq, void *dev_id)  {
> >> > > >>  	struct platform_device *pdev = dev_id;
> >> > > >>  	struct pwrkey_drv_data *pdata = platform_get_drvdata(pdev);
> >> > > >> +	unsigned long expire = jiffies;
> >> > > >>  	u32 lp_status;
> >> > > >>
> >> > > >>  	pm_wakeup_event(pdata->input->dev.parent, 0);
> >> > > >>
> >> > > >>  	regmap_read(pdata->snvs, SNVS_LPSR_REG, &lp_status);
> >> > > >> -	if (lp_status & SNVS_LPSR_SPO)
> >> > > >> -		mod_timer(&pdata->check_timer, jiffies +
> >> > > >> msecs_to_jiffies(DEBOUNCE_TIME));
> >> > > >> +	if (lp_status & SNVS_LPSR_SPO) {
> >> > > >> +		if (pdata->minor_rev > 0)
> >> > > >> +			expire = jiffies + msecs_to_jiffies(DEBOUNCE_TIME);
> >> > > >> +		mod_timer(&pdata->check_timer, expire);
> >> > > >
> >> > > > Why do we even need to fire the timer in case of the first
> >> > > > generation hardware? Just send press and release events directly from
> the ISR.
> >> > That timer looks like a software debounce to prevent unexpected and
> >> > meaningless interrupt/event caused by quick press/release.
> >>
> >> Right, but in case of the first generation hardware we schedule the
> >> timer immediately (expire == 0) and do not check state of the
> >> hardware in the timer handler, but rather simply emit down/up events,
> >> so we do not really get any benefit from the timer (again, I am
> >> talking about first generation hardware only).
> >
> > Did you prepared a v4? Just ask to avoid a duplicated work :)
> 
> No I haven't. Not sure what the public wants. Use timer, don't use timer..
> 
> v3 has had long term testing though ;)
Sorry for that I miss the mail.
Understood a little bit confusion about immediate timer for
the first press, just stand on the view of clean code shape.
But I'm okay if you prefer to remove timer in the first interrupt
generation.
> 
> Regards,
> Robin van der Gracht

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
