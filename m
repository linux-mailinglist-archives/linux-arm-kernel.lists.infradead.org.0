Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E31467C1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 20:43:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bu3O1b3+CKXGBGnPnEukkPzOgSQbQ3a22s0eF66OSvA=; b=gpUot2UJ1JCagT
	Zd+OCvnmwCkXdHqEiQkP7QYAegyHfChBEACwC/L+gt6skmeH+tsjnL+iNHOjJa9N78fyobNCYvq+a
	Z+lvJhr31PFIf2zurapgEWGjbRurnkqa2hNBD3usmTWXMSSqx7E8iw4Tg7XuwKJePeSrbPgJ7O7uk
	UgECxHqJJXiVpnfjFImz230fdfzIujEyWkjeDv1D/HLyqW42YcC7bbBR482YOBsWch/VpNIt9A3K1
	uxk2SJitZlfJESzHttJ9jReex6OE906axM3wU4orNm8ixgt3KUq+QdryFj7d55PX6IwLfftR4FIIX
	GmkvusOhIjzkgGoTyVfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbrAl-0005OO-Hn; Fri, 14 Jun 2019 18:43:35 +0000
Received: from mail-eopbgr820109.outbound.protection.outlook.com
 ([40.107.82.109] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbrAc-0005Nv-UD
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 18:43:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aampusa.onmicrosoft.com; s=selector2-aampusa-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qtt450h+f+tkdEMWYYpHKyH+gJa5PEMVat8TwJQ/L40=;
 b=SpRuhmERdkH8xMfShXO2sReD4GHlH6yYZY/HcmCDS58daCJmII4lIjmrQzUq9jrZbLEtIsd/Mkel196jHTZ98dW3KrdnLMyoDpqLawc7Z8TSATM0KMyNrg52q/xCxihU+DHkj1Zwtf63FoGV11mowJJFzTBNQK211UhkYbbns7c=
Received: from BL0PR07MB4115.namprd07.prod.outlook.com (52.132.10.149) by
 BL0PR07MB5057.namprd07.prod.outlook.com (10.167.180.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.17; Fri, 14 Jun 2019 18:43:22 +0000
Received: from BL0PR07MB4115.namprd07.prod.outlook.com
 ([fe80::f064:5129:63c6:d3e]) by BL0PR07MB4115.namprd07.prod.outlook.com
 ([fe80::f064:5129:63c6:d3e%6]) with mapi id 15.20.1965.019; Fri, 14 Jun 2019
 18:43:22 +0000
From: Ken Sloat <KSloat@aampglobal.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: RE: [PATCH v2 1/1] watchdog: atmel: atmel-sama5d4-wdt: Disable
 watchdog on system suspend
Thread-Topic: [PATCH v2 1/1] watchdog: atmel: atmel-sama5d4-wdt: Disable
 watchdog on system suspend
Thread-Index: AQHVIrAmpSe7ef5LPkq+gtVGV8yaCKabW/WAgAAQIfCAAAbcAIAAAenA
Date: Fri, 14 Jun 2019 18:43:22 +0000
Message-ID: <BL0PR07MB4115D5ECDEDCC028197637E5ADEE0@BL0PR07MB4115.namprd07.prod.outlook.com>
References: <20190614125310.29458-1-ksloat@aampglobal.com>
 <20190614164609.GA29814@roeck-us.net>
 <BL0PR07MB4115E99D065FD9BEA4C43BB5ADEE0@BL0PR07MB4115.namprd07.prod.outlook.com>
 <20190614180826.GD3369@piout.net>
In-Reply-To: <20190614180826.GD3369@piout.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=KSloat@aampglobal.com; 
x-originating-ip: [100.3.71.115]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5919de89-18ca-4172-f084-08d6f0f82dbd
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR07MB5057; 
x-ms-traffictypediagnostic: BL0PR07MB5057:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BL0PR07MB5057D536C153A2FF487164E3ADEE0@BL0PR07MB5057.namprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0068C7E410
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(39850400004)(346002)(136003)(396003)(366004)(13464003)(54534003)(199004)(189003)(4326008)(6116002)(6246003)(25786009)(102836004)(107886003)(486006)(3846002)(6916009)(7736002)(68736007)(74316002)(15650500001)(305945005)(6506007)(8676002)(81166006)(8936002)(66066001)(53546011)(26005)(76176011)(81156014)(7696005)(99286004)(80792005)(186003)(11346002)(446003)(476003)(54906003)(53936002)(316002)(2906002)(14454004)(33656002)(72206003)(966005)(66446008)(6436002)(55016002)(229853002)(86362001)(9686003)(6306002)(478600001)(256004)(14444005)(71190400001)(71200400001)(76116006)(73956011)(66946007)(66476007)(66556008)(64756008)(52536014)(5660300002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR07MB5057;
 H:BL0PR07MB4115.namprd07.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: aampglobal.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: MAYgmU/uXeEIlo5G+o5UDxtOhA4ncU8pZheDW+2m1n9lZJHR5yknHJDzCGShE4Wgv9xGMTCJlO0osT2ySdkGyiDy2XSmja6iOAlcxlJ0KfPB88eDYNfVZ7ThaNx3QL4ZFn4qXQ9jODvp0/3Mg/2qnYOfGVRMGjIob8s7C8LMEUKNdki3QlacZpOLC30SNCY9dNSvRS5z//AFRKkNccuV7Fc3+QlaIbLqsSCdd8bytCzitBMgTApobnwSIqldC9XjFCOkneVsUNDDMee4wmc8HEvj69PZUEsHMhNIXUZ1saDsbWn1RBBcocgQ1rPdx/UI4tck0r/Iq6U/YonYNBcX1IGNf1uBQaVbG3sIy5vwygmgqK1KzaPrxDQpWttPItJRZFTE1mRMJwiVoHI5eLyQIlVPVuC77Vs/jrzA2sVb0/Q=
MIME-Version: 1.0
X-OriginatorOrg: aampglobal.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5919de89-18ca-4172-f084-08d6f0f82dbd
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2019 18:43:22.7233 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e20e3a66-8b9e-46e9-b859-cb654c1ec6ea
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ken.sloat@aampglobal.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR07MB5057
X-MS-Exchange-CrossPremises-AuthAs: Internal
X-MS-Exchange-CrossPremises-AuthMechanism: 04
X-MS-Exchange-CrossPremises-AuthSource: BL0PR07MB4115.namprd07.prod.outlook.com
X-MS-Exchange-CrossPremises-TransportTrafficType: Email
X-MS-Exchange-CrossPremises-TransportTrafficSubType: 
X-MS-Exchange-CrossPremises-SCL: 1
X-MS-Exchange-CrossPremises-messagesource: StoreDriver
X-MS-Exchange-CrossPremises-BCC: 
X-MS-Exchange-CrossPremises-originalclientipaddress: 100.3.71.115
X-MS-Exchange-CrossPremises-transporttraffictype: Email
X-MS-Exchange-CrossPremises-transporttrafficsubtype: 
X-MS-Exchange-CrossPremises-antispam-scancontext: DIR:Originating; SFV:NSPM;
 SKIP:0; 
X-MS-Exchange-CrossPremises-processed-by-journaling: Journal Agent
X-OrganizationHeadersPreserved: BL0PR07MB5057.namprd07.prod.outlook.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_114326_981519_18EDD440 
X-CRM114-Status: GOOD (  18.42  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.109 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Ken Sloat <KSloat@aampglobal.com>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ludovic.desroches@microchip.com" <ludovic.desroches@microchip.com>,
 Guenter Roeck <linux@roeck-us.net>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Sent: Friday, June 14, 2019 2:08 PM
> To: Ken Sloat <KSloat@aampglobal.com>
> Cc: Guenter Roeck <linux@roeck-us.net>; nicolas.ferre@microchip.com;
> ludovic.desroches@microchip.com; wim@linux-watchdog.org; linux-arm-
> kernel@lists.infradead.org; linux-watchdog@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Subject: Re: [PATCH v2 1/1] watchdog: atmel: atmel-sama5d4-wdt: Disable
> watchdog on system suspend
> 
> [This is an EXTERNAL EMAIL]
> ________________________________
> 
> On 14/06/2019 17:53:01+0000, Ken Sloat wrote:
> > > The call to sama5d4_wdt_init() above now explicitly stops the
> > > watchdog even if we want to (re)start it. I think this would be
> > > better handled with an else case here
> > >
> > >         else
> > >                 sama5d4_wdt_stop(&wdt->wdd);
> > >
> >
> > So we completely remove the sama5d4_wdt_init() call then correct?
> >
> > To leave the code as it behaves today with the addition of wdt
> > stop/start, shouldn't we call init in the else instead?
> >
> >       if (watchdog_active(&wdt->wdd))
> >               sama5d4_wdt_start(&wdt->wdd);
> >       else
> >               sama5d4_wdt_init();
> >
> > I guess I don't really understand the purpose of having the init
> > statement in resume in the first place. I agree, calling this first
> > does end up essentially resetting the wdt it will start again if it was running
> before, but the count will be reset.
> >
> 
> There is a nice comment explaining why ;)

Well I'm a little confused still because there are two separate comments
in these statements. The first within resume implies that the init should
be called because we might have lost register values for some reason
unexplained. Then within the init it says that the bootloader might have
modified the registers so we should check them and then update it or
otherwise disable it. I'm not trying to pick apart the logic or anything, 
I'm just readily assuming it is good as it was already reviewed before. 

So without digging into that too much, if we don't know if any of the runtime
situations above might have occurred, then isn't it best to leave my patch
as is? Yes this has the side effect of resetting the timer count, but if 
the init call is needed and we don't have any way to know if any
of the situations occurred, then we have no choice right?

Happy to modify it either way, just didn't want to change
logic without understanding it thoroughly.

> 
> --
> Alexandre Belloni, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

Thanks,
Ken Sloat

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
