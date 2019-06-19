Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD974B509
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 11:36:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qP9iZMY7nQb9M1JZTBjTw6nuqc0Ae0GUTlMmrtZmYg8=; b=m5h6nUJtNWveaU
	ts0yxMyXYpQsC/gCHlmsfXKsOxYUMFpuNjFfPBl/q+FsWH+IoHg9E0azxgFnhBc24B3v4+MVKleU3
	HTDCDi08RiKwlfA0xmY8y71Js3kgBlbyd7wyPi9nI6Y+C52LthosJ54JnhaaKKyQD2gh5MJAk+NPL
	wrj7BwNnxPjv+mVl1iKKxaPZeHoYFKrDLoUqWRoZYX1J9u12Jz1SeYuIoNIxroEvPFiojuX0bDL9A
	nnyVmAgM4pKYne9C069Gdg4IJHVPaa3cZYGlu6XYKoudX+oWPUGegDt7poMT9GpwNAUUTQ7qQTyA9
	he5laLxsjQ21wQ9chL8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdX1S-0007tL-TM; Wed, 19 Jun 2019 09:36:54 +0000
Received: from mail-eopbgr20064.outbound.protection.outlook.com ([40.107.2.64]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdX17-0007aw-B9
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 09:36:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yNBuzmlPjAt3HItsdXiyAdHm2GJkn6nVc80tD9V0/2k=;
 b=lmOjRpt3USmutmzpKo8euFc1pFK9psF04rMm9EB1W3vjDdCvOgkAviqf6sdkwj8So4tvnigByiMCU7rezu5YDQLoytFYHiEdZCf00TC1HF8z4Wom4P+lJ5Qt5oxiksa5qCNj8+RL/PB16RiG9m8rkQEqCl5oe0XzC0YNYsq6uLY=
Received: from VE1PR04MB6655.eurprd04.prod.outlook.com (20.179.235.94) by
 VE1PR04MB6672.eurprd04.prod.outlook.com (20.179.235.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.12; Wed, 19 Jun 2019 09:36:27 +0000
Received: from VE1PR04MB6655.eurprd04.prod.outlook.com
 ([fe80::e127:7fe9:ab91:c552]) by VE1PR04MB6655.eurprd04.prod.outlook.com
 ([fe80::e127:7fe9:ab91:c552%7]) with mapi id 15.20.1987.014; Wed, 19 Jun 2019
 09:36:28 +0000
From: Ran Wang <ran.wang_1@nxp.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Subject: RE: [PATCH v4 1/3] PM: wakeup: Add routine to help fetch wakeup
 source object.
Thread-Topic: [PATCH v4 1/3] PM: wakeup: Add routine to help fetch wakeup
 source object.
Thread-Index: AQHVDvGJHigpnFjbr0+iCnHCepvpt6aiMPUAgACuisA=
Date: Wed, 19 Jun 2019 09:36:27 +0000
Message-ID: <VE1PR04MB66556830530B0B3488FE5DA6F1E50@VE1PR04MB6655.eurprd04.prod.outlook.com>
References: <20190520095238.29210-1-ran.wang_1@nxp.com>
 <3448272.3g8bHhgBA9@kreacher>
In-Reply-To: <3448272.3g8bHhgBA9@kreacher>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ran.wang_1@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0030911f-d6cc-45df-6f5e-08d6f4999a96
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6672; 
x-ms-traffictypediagnostic: VE1PR04MB6672:
x-microsoft-antispam-prvs: <VE1PR04MB6672A5435CE84ADB07FCE56AF1E50@VE1PR04MB6672.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0073BFEF03
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39860400002)(366004)(136003)(396003)(376002)(189003)(199004)(54534003)(66446008)(8936002)(81166006)(25786009)(66066001)(186003)(66946007)(76116006)(73956011)(7696005)(64756008)(68736007)(52536014)(86362001)(5024004)(99286004)(5660300002)(316002)(53936002)(71190400001)(6246003)(71200400001)(33656002)(6116002)(14444005)(7416002)(74316002)(66476007)(6506007)(8676002)(3846002)(76176011)(305945005)(53546011)(256004)(26005)(66556008)(6436002)(54906003)(11346002)(7736002)(446003)(478600001)(2906002)(6916009)(4326008)(81156014)(476003)(486006)(102836004)(55016002)(14454004)(229853002)(9686003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6672;
 H:VE1PR04MB6655.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: XkbMvpKlQdyfWKTUWvaKj6q/wP8eKl98WasGmzd0Ahx7PlFD2yN0a+uYpbaeqQexZI25Tu0B6uM7PbbWI7O4okoIDRAYKtH9R23fhu2w9hLu/YOzrljlvejBJKSMaXmNRRp6Dgn3KzuqADxuEVSxARCih0p8whdhMEmz0CKG2IBEu7THcTAzkZM+sSvPUGhyJGVXAkrN65BKwxGUA8YTqC0jxkQTDWUAA+pOtfQEl9IPBD8NmxpA3HR/cEfRzZtcu09WHWrP0Kn4FV4fj2uRiipmVrKtylMF5xhkMvaAqk8hSnuqPEtQgIVdrIUe2p1tHjjm46ksI/AwGOI3MM13ucHcelQ/lIs4ePdmxmtUUDbmGyOR4RiP3JZvbW6g1JsnFJgWcsAjbktPjSvE2aPAhD/wj2F4BdV0+b2kZa5VDVI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0030911f-d6cc-45df-6f5e-08d6f4999a96
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2019 09:36:27.9018 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ran.wang_1@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6672
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_023633_697401_370C7D4A 
X-CRM114-Status: GOOD (  26.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.64 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Len Brown <len.brown@intel.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Pavel Machek <pavel@ucw.cz>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rafael,

On Wednesday, June 19, 2019 06:45, Rafael J. Wysocki wrote:
> 
> On Monday, May 20, 2019 11:52:36 AM CEST Ran Wang wrote:
> > Some user might want to go through all registered wakeup sources and
> > doing things accordingly. For example, SoC PM driver might need to do
> > HW programming to prevent powering down specific IP which wakeup
> > source depending on. And is user's responsibility to identify if this
> > wakeup source he is interested in.
> 
> I guess the idea here is that you need to walk wakeup devices and you noticed
> that there was a wakeup source object for each of them and those wakeup
> source objects were on a list, so you could walk wakeup devices by walking the
> list of wakeup source objects.
> 
> That is fair enough, but the changelog above doesn't even talk about that.

How about this:
"Providing a API for helping walk through all registered wakeup devices on the list.
It will be useful for SoC PMU driver to know which device will work as a wakeup
source then do specific HW programming for them."

> > Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
> > ---
> > Change in v4:
> > 	- None.
> >
> > Change in v3:
> > 	- Adjust indentation of *attached_dev;.
> >
> > Change in v2:
> > 	- None.
> >
> >  drivers/base/power/wakeup.c |   18 ++++++++++++++++++
> >  include/linux/pm_wakeup.h   |    3 +++
> >  2 files changed, 21 insertions(+), 0 deletions(-)
> >
> > diff --git a/drivers/base/power/wakeup.c b/drivers/base/power/wakeup.c
> > index 5b2b6a0..6904485 100644
> > --- a/drivers/base/power/wakeup.c
> > +++ b/drivers/base/power/wakeup.c
> > @@ -14,6 +14,7 @@
> >  #include <linux/suspend.h>
> >  #include <linux/seq_file.h>
> >  #include <linux/debugfs.h>
> > +#include <linux/of_device.h>
> >  #include <linux/pm_wakeirq.h>
> >  #include <trace/events/power.h>
> >
> > @@ -226,6 +227,22 @@ void wakeup_source_unregister(struct
> wakeup_source *ws)
> >  	}
> >  }
> >  EXPORT_SYMBOL_GPL(wakeup_source_unregister);
> > +/**
> > + * wakeup_source_get_next - Get next wakeup source from the list
> > + * @ws: Previous wakeup source object, null means caller want first one.
> > + */
> > +struct wakeup_source *wakeup_source_get_next(struct wakeup_source
> > +*ws) {
> > +	struct list_head *ws_head = &wakeup_sources;
> > +
> > +	if (ws)
> > +		return list_next_or_null_rcu(ws_head, &ws->entry,
> > +				struct wakeup_source, entry);
> > +	else
> > +		return list_entry_rcu(ws_head->next,
> > +				struct wakeup_source, entry);
> > +}
> > +EXPORT_SYMBOL_GPL(wakeup_source_get_next);
> 
> This needs to be arranged along the lines of
> wakeup_sources_stats_seq_start/next/stop()
> because of the SRCU protection of the list.

Got it, how about this:
 230 /**                                                                              
 231  * wakeup_source_get_next - Get next wakeup source from the list                 
 232  * @ws: Previous wakeup source object, null means caller want first one.         
 233  */                                                                              
 234 struct wakeup_source *wakeup_source_get_next(struct wakeup_source *ws)           
 235 {                                                                                
 236         struct list_head *ws_head = &wakeup_sources;                             
 237         struct wakeup_source *next_ws = NULL;                                    
 238         int idx;                                                                 
 239                                                                                  
 240         idx = srcu_read_lock(&wakeup_srcu);                                      
 241         if (ws)                                                                                                                
 242                 next_ws = list_next_or_null_rcu(ws_head, &ws->entry,             
 243                                 struct wakeup_source, entry);                    
 244         else                                                                     
 245                 next_ws = list_entry_rcu(ws_head->next,                          
 246                                 struct wakeup_source, entry);                    
 247         srcu_read_unlock(&wakeup_srcu, idx);                                     
 248                                                                                  
 249         return next_ws;                                                          
 250 }                                                                                
 251 EXPORT_SYMBOL_GPL(wakeup_source_get_next);   

> >
> >  /**
> >   * device_wakeup_attach - Attach a wakeup source object to a device object.
> > @@ -242,6 +259,7 @@ static int device_wakeup_attach(struct device *dev,
> struct wakeup_source *ws)
> >  		return -EEXIST;
> >  	}
> >  	dev->power.wakeup = ws;
> > +	ws->attached_dev = dev;
> >  	if (dev->power.wakeirq)
> >  		device_wakeup_attach_irq(dev, dev->power.wakeirq);
> >  	spin_unlock_irq(&dev->power.lock);
> > diff --git a/include/linux/pm_wakeup.h b/include/linux/pm_wakeup.h
> > index 0ff134d..913b2fb 100644
> > --- a/include/linux/pm_wakeup.h
> > +++ b/include/linux/pm_wakeup.h
> > @@ -50,6 +50,7 @@
> >   * @wakeup_count: Number of times the wakeup source might abort suspend.
> >   * @active: Status of the wakeup source.
> >   * @has_timeout: The wakeup source has been activated with a timeout.
> > + * @attached_dev: The device it attached to
> >   */
> >  struct wakeup_source {
> >  	const char 		*name;
> > @@ -70,6 +71,7 @@ struct wakeup_source {
> >  	unsigned long		wakeup_count;
> >  	bool			active:1;
> >  	bool			autosleep_enabled:1;
> > +	struct device		*attached_dev;
> 
> Please (a) call it just dev and (b) move it up (before wakeirq, say)

Got it, will update in next version.

Thanks & Regards,
Ran
> 
> >  };
> >
> >  #ifdef CONFIG_PM_SLEEP
> > @@ -101,6 +103,7 @@ static inline void device_set_wakeup_path(struct
> > device *dev)  extern void wakeup_source_remove(struct wakeup_source
> > *ws);  extern struct wakeup_source *wakeup_source_register(const char
> > *name);  extern void wakeup_source_unregister(struct wakeup_source
> > *ws);
> > +extern struct wakeup_source *wakeup_source_get_next(struct
> > +wakeup_source *ws);
> >  extern int device_wakeup_enable(struct device *dev);  extern int
> > device_wakeup_disable(struct device *dev);  extern void
> > device_set_wakeup_capable(struct device *dev, bool capable);
> >
> 
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
