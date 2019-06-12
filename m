Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E58842AF4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 17:31:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w8QkjP6V5ijUjhOBGZlPuQ1cu+YRQozBpc6hUo/orso=; b=H6/Og32udK3/p4
	dMt8w8icAanl4DRvQnq+GX4L4mqQ8DR0m3VtuzDidCPKuDBtqZA7nPoCViP/DfgWKivCJ7Q25akSo
	UJ5Ns0FNkEGj6sWKgqh8H/DWRW/LmFJtUERG+1W6WOw2hU9RKMvKxvgdfsYOZyf1GG41pfnF3qEhT
	SQSvrX7uw3uT2FeUtO7zFm6vrwqU6hOJwUq/rrnYabi95zjsRyIW4lm6YqPF7Zh4cCTaHUNSYRLCJ
	gDftpsCflBqpntjrD/jzfEWz85O/u9Ygnmepsft0Bi955cDVAeKRCST0QIjn+NFn6RUIS2hKlPnW4
	CEZRsd4UgGqOHW+Y8pYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb5DG-00024V-M9; Wed, 12 Jun 2019 15:30:58 +0000
Received: from mail-bl2nam02on0725.outbound.protection.outlook.com
 ([2a01:111:f400:fe46::725]
 helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb5D6-00023q-2j
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 15:30:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aampusa.onmicrosoft.com; s=selector2-aampusa-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dUrwkpVESSLKyCeZDDZlL9AXbZ8MhVvp0Lp1Lss1JM8=;
 b=KgcleaNfgku22xKbdVjlRM5iZComqLS6U1fF2VGkPdT7YASuUSxkgtmhW6zVvxFYoBfjdY1tpDB7MOV5lYJuck8UYMHku5GA6lY8ZGWDYkyCKY07YVS+gMcUXNPddWmoPtlHtzbfvccWn7eeXrHI+CUIEN/XnnRIoJ6lckBhyq4=
Received: from BL0PR07MB4115.namprd07.prod.outlook.com (52.132.10.149) by
 BL0PR07MB5251.namprd07.prod.outlook.com (10.167.241.204) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.17; Wed, 12 Jun 2019 15:30:43 +0000
Received: from BL0PR07MB4115.namprd07.prod.outlook.com
 ([fe80::f064:5129:63c6:d3e]) by BL0PR07MB4115.namprd07.prod.outlook.com
 ([fe80::f064:5129:63c6:d3e%6]) with mapi id 15.20.1965.017; Wed, 12 Jun 2019
 15:30:43 +0000
From: Ken Sloat <KSloat@aampglobal.com>
To: Guenter Roeck <linux@roeck-us.net>, "nicolas.ferre@microchip.com"
 <nicolas.ferre@microchip.com>
Subject: RE: [PATCH v1 1/1] watchdog: atmel: atmel-sama5d4-wdt: Disable
 watchdog on system suspend
Thread-Topic: [PATCH v1 1/1] watchdog: atmel: atmel-sama5d4-wdt: Disable
 watchdog on system suspend
Thread-Index: AQHVIS/MMKNdMTqzC02O6HgdHPA8iKaYI2QAgAAAH6A=
Date: Wed, 12 Jun 2019 15:30:43 +0000
Message-ID: <BL0PR07MB4115B38E41BE91E045C04F6AADEC0@BL0PR07MB4115.namprd07.prod.outlook.com>
References: <20190612150154.16778-1-ksloat@aampglobal.com>
 <8af0794a-327d-7144-609f-0c56422e92ec@roeck-us.net>
In-Reply-To: <8af0794a-327d-7144-609f-0c56422e92ec@roeck-us.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=KSloat@aampglobal.com; 
x-originating-ip: [100.3.71.115]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2c74a636-3378-46bf-2c7d-08d6ef4aef07
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR07MB5251; 
x-ms-traffictypediagnostic: BL0PR07MB5251:
x-microsoft-antispam-prvs: <BL0PR07MB52517E6F07FE3C45CD31E5CBADEC0@BL0PR07MB5251.namprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(189003)(199004)(13464003)(71200400001)(305945005)(2501003)(486006)(5660300002)(476003)(7736002)(72206003)(71190400001)(11346002)(446003)(14454004)(6246003)(86362001)(107886003)(110136005)(80792005)(256004)(74316002)(54906003)(33656002)(4326008)(81166006)(52536014)(81156014)(6436002)(6116002)(102836004)(53936002)(8936002)(66066001)(2906002)(8676002)(186003)(64756008)(53546011)(6506007)(25786009)(229853002)(66946007)(26005)(66556008)(66446008)(66476007)(76176011)(68736007)(73956011)(9686003)(99286004)(15650500001)(498600001)(55016002)(7696005)(14444005)(76116006)(3846002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR07MB5251;
 H:BL0PR07MB4115.namprd07.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: aampglobal.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: kTJJWtM5PJNDflrYib8KLPWdiEhgGIabdgknyx3IbDt0/B1xRwNS4Az8Bskth3grwU8AwwUttbPxr9/sQRUzxSc6l1SoLrxWZ75kIyzYA144CO/2mvHAWVfNP0R5IW7qa4S+lDHyqr6olPW1W1Aq/L1169mMwyzikwtrKhzF8C9F/mpRTae1y5HtLA76KrH4Hwrc2ORcvKXIJ47sNYxJdTiQYXZcluN/RTURSeu8GguR5KBZrKtnOXf6x//Km4Ry/qWXabPUlR6hRsIJvrEnlxhGpvN+rMgNTzeQborivgHZkyFed40nN6PFtXaXHaw+OaR0BXjw7uk8hA6kJX5R839KSGfOYG0E9BEkNZE7aBm/UIvtLmwhOUHL8KIDFFEM5Ol1FMQJo7jTcJU4XjAzj3h6E0uGH8+blhpyA+mVeBU=
MIME-Version: 1.0
X-OriginatorOrg: aampglobal.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c74a636-3378-46bf-2c7d-08d6ef4aef07
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 15:30:43.4358 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e20e3a66-8b9e-46e9-b859-cb654c1ec6ea
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ken.sloat@aampglobal.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR07MB5251
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
X-OrganizationHeadersPreserved: BL0PR07MB5251.namprd07.prod.outlook.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_083048_201601_7BCAA556 
X-CRM114-Status: GOOD (  21.70  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe46:0:0:0:725 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 Ken Sloat <KSloat@aampglobal.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ludovic.desroches@microchip.com" <ludovic.desroches@microchip.com>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Guenter,

> -----Original Message-----
> From: Guenter Roeck <groeck7@gmail.com> On Behalf Of Guenter Roeck
> Sent: Wednesday, June 12, 2019 11:24 AM
> To: Ken Sloat <KSloat@aampglobal.com>; nicolas.ferre@microchip.com
> Cc: alexandre.belloni@bootlin.com; ludovic.desroches@microchip.com;
> wim@linux-watchdog.org; linux-arm-kernel@lists.infradead.org; linux-
> watchdog@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH v1 1/1] watchdog: atmel: atmel-sama5d4-wdt: Disable
> watchdog on system suspend
> 
> [This is an EXTERNAL EMAIL]
> ________________________________
> 
> On 6/12/19 8:02 AM, Ken Sloat wrote:
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
> >   drivers/watchdog/sama5d4_wdt.c | 31
> +++++++++++++++++++++++++++++--
> >   1 file changed, 29 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/watchdog/sama5d4_wdt.c
> > b/drivers/watchdog/sama5d4_wdt.c index 111695223aae..84eb4db23993
> > 100644
> > --- a/drivers/watchdog/sama5d4_wdt.c
> > +++ b/drivers/watchdog/sama5d4_wdt.c
> > @@ -280,6 +280,18 @@ static const struct of_device_id
> sama5d4_wdt_of_match[] = {
> >   MODULE_DEVICE_TABLE(of, sama5d4_wdt_of_match);
> >
> >   #ifdef CONFIG_PM_SLEEP
> > +static int sama5d4_wdt_suspend_late(struct device *dev) {
> > +     struct sama5d4_wdt *wdt;
> > +
> > +     wdt = dev_get_drvdata(dev);
> > +
> > +     if (watchdog_active(&wdt->wdd))
> > +             sama5d4_wdt_stop(&wdt->wdd);
> > +
> > +     return 0;
> > +}
> > +
> >   static int sama5d4_wdt_resume(struct device *dev)
> >   {
> >       struct sama5d4_wdt *wdt = dev_get_drvdata(dev); @@ -293,10
> > +305,25 @@ static int sama5d4_wdt_resume(struct device *dev)
> >
> >       return 0;
> >   }
> > +
> > +static int sama5d4_wdt_resume_early(struct device *dev) {
> > +     struct sama5d4_wdt *wdt;
> > +
> > +     wdt = dev_get_drvdata(dev);
> > +
> > +     if (watchdog_active(&wdt->wdd))
> > +             sama5d4_wdt_start(&wdt->wdd);
> > +
> > +     return 0;
> > +}
> >   #endif
> >
> > -static SIMPLE_DEV_PM_OPS(sama5d4_wdt_pm_ops, NULL,
> > -                      sama5d4_wdt_resume);
> > +static const struct dev_pm_ops sama5d4_wdt_pm_ops = {
> > +     SET_SYSTEM_SLEEP_PM_OPS(NULL, sama5d4_wdt_resume)
> > +     SET_LATE_SYSTEM_SLEEP_PM_OPS(sama5d4_wdt_suspend_late,
> > +                     sama5d4_wdt_resume_early)
> 
> I don't think you need both sama5d4_wdt_resume() and
> sama5d4_wdt_resume_early().

Yes I was wondering about that but wanted feedback on the subject first.
I can simply consolidate the statements, the sama5d4_wdt_init statement
present now should probably be called first anyways, so something like this
within resume_early:

struct sama5d4_wdt = dev_get_drvdata(dev); 

sama5d4_wdt_init(wdt);

if (watchdog_active(&wdt->wdd))
        sama5d4_wdt_start(&wdt->wdd);

return 0;

If that sounds good I will resubmit.

> Guenter
> 
> > +};
> >
> >   static struct platform_driver sama5d4_wdt_driver = {
> >       .probe          = sama5d4_wdt_probe,
> >

Thanks,
Ken Sloat

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
