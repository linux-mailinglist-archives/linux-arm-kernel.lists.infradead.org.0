Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 857B346641
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 19:53:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E1RHJhkjzH/fbdjs1eK/Kyx2dZ1SyaiI2sRFjwh64es=; b=ZDpWSfBEFfD4xt
	2F8XwnZW96zyZrcr0GtrH8+gSIlJ5K7jG+ve1zfXjThNzX0wxKV1IqO4ytNcHqdXmxmU7E7fCgcbC
	XyOOziS+/aT5j2Ub/KqvX1MDhZvpPtEyBxSCiLRgpn+2PUpyZQFpc8uWlLhkjxVWnHRkFNck5BCL1
	/dO6GpNnZXxH2LHaEpO4/VyXkp0psFSbdCZpvrmTZciEzwxWpj4nAJl6c1aor66Wkr1pZlbBmZTGz
	Vuc5Qby5eSvNxsPJsaX5O7XijNME3sbi2eyTEDfpqMlurBZ4Vc9Dpb77kkr/oCnKrS9FRRiwflpWR
	a1k2DkQlvw0TA35YXHbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbqO6-0000Yx-2x; Fri, 14 Jun 2019 17:53:18 +0000
Received: from mail-eopbgr750122.outbound.protection.outlook.com
 ([40.107.75.122] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbqNu-0000YF-3u
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 17:53:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aampusa.onmicrosoft.com; s=selector2-aampusa-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EktKp3FM/TYhopDrmc4FHkZWPxJilSUv8KXU9GDkTtQ=;
 b=pHY41RnJm4QzIrthtIGZVqOpL8TaCZ8e5903pYZ7o9T2OKCsKNJRM9u9HmtsG9x4CMOOIRAh1MGUC+hpiVAVLNBW9NRfj2Uj9hqiwESZlkXAoyUSUdGvLhIoa7DnYAR7heMVOAxWIWbTHIESD30MFUAB2zNxfabvxgIf6n6+o4Y=
Received: from BL0PR07MB4115.namprd07.prod.outlook.com (52.132.10.149) by
 BL0PR07MB4034.namprd07.prod.outlook.com (52.132.10.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.12; Fri, 14 Jun 2019 17:53:02 +0000
Received: from BL0PR07MB4115.namprd07.prod.outlook.com
 ([fe80::f064:5129:63c6:d3e]) by BL0PR07MB4115.namprd07.prod.outlook.com
 ([fe80::f064:5129:63c6:d3e%6]) with mapi id 15.20.1965.019; Fri, 14 Jun 2019
 17:53:02 +0000
From: Ken Sloat <KSloat@aampglobal.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: RE: [PATCH v2 1/1] watchdog: atmel: atmel-sama5d4-wdt: Disable
 watchdog on system suspend
Thread-Topic: [PATCH v2 1/1] watchdog: atmel: atmel-sama5d4-wdt: Disable
 watchdog on system suspend
Thread-Index: AQHVIrAmpSe7ef5LPkq+gtVGV8yaCKabW/WAgAAQIfA=
Date: Fri, 14 Jun 2019 17:53:01 +0000
Message-ID: <BL0PR07MB4115E99D065FD9BEA4C43BB5ADEE0@BL0PR07MB4115.namprd07.prod.outlook.com>
References: <20190614125310.29458-1-ksloat@aampglobal.com>
 <20190614164609.GA29814@roeck-us.net>
In-Reply-To: <20190614164609.GA29814@roeck-us.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=KSloat@aampglobal.com; 
x-originating-ip: [100.3.71.115]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0930e3a5-75c0-4c09-553b-08d6f0f12546
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR07MB4034; 
x-ms-traffictypediagnostic: BL0PR07MB4034:
x-microsoft-antispam-prvs: <BL0PR07MB403422AF5E3C1EEE01DE79DCADEE0@BL0PR07MB4034.namprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0068C7E410
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(979002)(346002)(376002)(136003)(366004)(39850400004)(396003)(189003)(199004)(13464003)(68736007)(76176011)(26005)(7696005)(33656002)(8676002)(305945005)(54906003)(316002)(102836004)(74316002)(99286004)(81156014)(52536014)(6916009)(478600001)(15650500001)(72206003)(71200400001)(71190400001)(81166006)(6506007)(53546011)(80792005)(14454004)(66066001)(6246003)(2906002)(66476007)(6436002)(256004)(73956011)(55016002)(53936002)(86362001)(14444005)(76116006)(186003)(229853002)(66556008)(66946007)(66446008)(64756008)(5660300002)(476003)(4326008)(486006)(8936002)(11346002)(446003)(7736002)(25786009)(6116002)(3846002)(9686003)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR07MB4034;
 H:BL0PR07MB4115.namprd07.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: aampglobal.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: M4JaadTdGtAewidarsw/8y7QUS5qeDhCPW1LOIwU8hAgI6t5cRIc69rIv/Csm4pBKLVZzPcx+FdLIN5Agkn99qJNsgtJ4MTVd8ECt47hQRzdLM9eQuPwSf1+WhdDLAzZ83VqjA0V9wgw00RobI8E3PpjnCQ9oKp4nx48kGYeEQAn+20rOWoyZdo8eBUdnxK5xAoSqVlfLNMryj6zw1CWRiB79a5HvI6vtkYaf4TevtoCPbbO2CgWpchhKCJh7Z2FEyAPB5XG9eRpzAhC+IQJHRyUoeq+E6txLwlGeWkY6hTlcq1mwD9v9hGbikiyUU256bZ3tbe+d86qTPBS6l+Ng1O1Q/s21WoI/A5KAj6Wxi3Mj/KFooTFlqxD8c8LNi0pOqqJ4y3Vke7afYL2gBmOwYLbLNTGWNiBDCuELXOgfWs=
MIME-Version: 1.0
X-OriginatorOrg: aampglobal.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0930e3a5-75c0-4c09-553b-08d6f0f12546
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2019 17:53:02.1265 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e20e3a66-8b9e-46e9-b859-cb654c1ec6ea
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ken.sloat@aampglobal.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR07MB4034
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
X-OrganizationHeadersPreserved: BL0PR07MB4034.namprd07.prod.outlook.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_105306_221908_C734201E 
X-CRM114-Status: GOOD (  23.85  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.122 listed in list.dnswl.org]
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
Cc: "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ludovic.desroches@microchip.com" <ludovic.desroches@microchip.com>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Guenter Roeck <groeck7@gmail.com> On Behalf Of Guenter Roeck
> Sent: Friday, June 14, 2019 12:46 PM
> To: Ken Sloat <KSloat@aampglobal.com>
> Cc: nicolas.ferre@microchip.com; alexandre.belloni@bootlin.com;
> ludovic.desroches@microchip.com; wim@linux-watchdog.org; linux-arm-
> kernel@lists.infradead.org; linux-watchdog@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Subject: Re: [PATCH v2 1/1] watchdog: atmel: atmel-sama5d4-wdt: Disable
> watchdog on system suspend
> 
> [This is an EXTERNAL EMAIL]
> ________________________________
> 
> On Fri, Jun 14, 2019 at 12:53:22PM +0000, Ken Sloat wrote:
> > From: Ken Sloat <ksloat@aampglobal.com>
> >
> > Currently, the atmel-sama5d4-wdt continues to run after system suspend.
> > Unless the system resumes within the watchdog timeout period so the
> > userspace can kick it, the system will be reset. This change disables
> > the watchdog on suspend if it is active and re-enables on resume.
> > These actions occur during the late and early phases of suspend and
> > resume respectively to minimize chances where a lock could occur while
> > the watchdog is disabled.
> >
> > Signed-off-by: Ken Sloat <ksloat@aampglobal.com>
> > ---
> >  Changes in v2:
> >  -Consolidate resume and resume early statements.
> >
> >  drivers/watchdog/sama5d4_wdt.c | 21 ++++++++++++++++++---
> >  1 file changed, 18 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/watchdog/sama5d4_wdt.c
> > b/drivers/watchdog/sama5d4_wdt.c index 111695223aae..0d123f8cbcc6
> > 100644
> > --- a/drivers/watchdog/sama5d4_wdt.c
> > +++ b/drivers/watchdog/sama5d4_wdt.c
> > @@ -280,7 +280,17 @@ static const struct of_device_id
> > sama5d4_wdt_of_match[] = {  MODULE_DEVICE_TABLE(of,
> > sama5d4_wdt_of_match);
> >
> >  #ifdef CONFIG_PM_SLEEP
> > -static int sama5d4_wdt_resume(struct device *dev)
> > +static int sama5d4_wdt_suspend_late(struct device *dev) {
> > +     struct sama5d4_wdt *wdt = dev_get_drvdata(dev);
> > +
> > +     if (watchdog_active(&wdt->wdd))
> > +             sama5d4_wdt_stop(&wdt->wdd);
> > +
> > +     return 0;
> > +}
> > +
> > +static int sama5d4_wdt_resume_early(struct device *dev)
> >  {
> >       struct sama5d4_wdt *wdt = dev_get_drvdata(dev);
> >
> > @@ -291,12 +301,17 @@ static int sama5d4_wdt_resume(struct device
> *dev)
> >        */
> >       sama5d4_wdt_init(wdt);
> >
> > +     if (watchdog_active(&wdt->wdd))
> > +             sama5d4_wdt_start(&wdt->wdd);
> > +
> 
> The call to sama5d4_wdt_init() above now explicitly stops the watchdog
> even if we want to (re)start it. I think this would be better handled with an
> else case here
> 
>         else
>                 sama5d4_wdt_stop(&wdt->wdd);
> 

So we completely remove the sama5d4_wdt_init() call then correct?

To leave the code as it behaves today with the addition
of wdt stop/start, shouldn't we call init in the else instead?

	if (watchdog_active(&wdt->wdd))
		sama5d4_wdt_start(&wdt->wdd);
	else
		sama5d4_wdt_init();

I guess I don't really understand the purpose of having the init statement in resume
in the first place. I agree, calling this first does end up essentially resetting the wdt
it will start again if it was running before, but the count will be reset.

> Guenter
> 
> >       return 0;
> >  }
> >  #endif
> >
> > -static SIMPLE_DEV_PM_OPS(sama5d4_wdt_pm_ops, NULL,
> > -                      sama5d4_wdt_resume);
> > +static const struct dev_pm_ops sama5d4_wdt_pm_ops = {
> > +     SET_LATE_SYSTEM_SLEEP_PM_OPS(sama5d4_wdt_suspend_late,
> > +                     sama5d4_wdt_resume_early) };
> >
> >  static struct platform_driver sama5d4_wdt_driver = {
> >       .probe          = sama5d4_wdt_probe,
> > --
> > 2.17.1
> >

Thanks,
Ken Sloat

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
