Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2F15B30C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 05:19:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D+Kz1VBBkQ2e+gJ53DtPDScyUpJBDP0DrcIH+rWPUC0=; b=rdBILRN1/WdRLF
	7Es8X+/8/azi3pZiLdBuJ3N4KXH1HYvBZeLcaxLwdSA1DBKq43j3pKmZL60Gd/YWSer4uVFdoL7zQ
	+vUhpmX8l2VmdElnuZyS5ilgZAtJtcFMWYo6dzvt0zOz56Xs0wJn4ZMFbS/C1u5azRvNE2lEDlaaH
	uhOhbvAuWnOI9CjOZHEAACKOdzU+ofpebVvKAk6mAzlwpfjGGp231y3AzUSJgxTBYQjby4gt1yFJj
	W02GMARxMJfGCPb8QUyhOWiE750pMTrH2BHEwZJdJENImJ9ivQ1eInP1/aXT218oAzV08XRbimChl
	etAsZL2yjWA8Ek990R3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhmr5-0006Ap-Um; Mon, 01 Jul 2019 03:19:47 +0000
Received: from mail-eopbgr820104.outbound.protection.outlook.com
 ([40.107.82.104] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhmqq-0006AB-TQ
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 03:19:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mviQ5REMfw26BUao2WkLcPaeUTOhaD8eC7NcYRQ5//J8MJtCK0Xa4PW1SQfzIRj5H74PHkdp+E+1RguzV8C+R1UI/d3DHChIAhAs2CsfWVnAqZ3aQFOy2qxH4qsjf7/b+Oz0WoGJ1esqH+1rCwSArUwkCBwv0riFt6XqtWapIGuCmAxp34gTZ0i5WT/KEy0T+uKcX/A9BC+WnBc339U5O0LIOKUsyNUl+h60qa+b2XPL0S/PjAakw4p45PB66035Sm+eCgX3F+XPmqK1WkdkQE3fbCbYY7gCqZEs+sieRe2OEAAytmorc26e+VjMgPulxBq6md0po7AWf1xxoGomRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1svku485QneN4EToU1Al5dOHxrOdlTzY+6ogYhHn0k4=;
 b=L4KaBSGQzHLYBfMEj6qrwEbo0kfYSSIPHsbToxX6FmfpLRUoBtHKVCElUDd8QyQxqzX2Pj0FHCHRNcgBv31GDnk8ZYjuDCFjw3YnF4BMX/SWrGzJRmC8lFyHnDNjG1DpP/nbtklLsIJuuvYO3HA67WU7rwVbN6KExAlcPiWWz1XCEW+GTahreiPEeKgT/VUZOEbKtpJFD0lMBhyT6oXJ4s+EvAdX/b9I4pBYtQegLFkVitkTN+h7J0mAqO+fTXFbp5uAal4qbXkZ09I4vMGfdHWsYMR82Af5n4jfKbGJ+KfQMHo8iGJ+oncaoiyg58+lrX9Mp/91+1F847aLH2LXHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microsoft.com;dmarc=pass action=none
 header.from=microsoft.com;dkim=pass header.d=microsoft.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1svku485QneN4EToU1Al5dOHxrOdlTzY+6ogYhHn0k4=;
 b=Vy4HD5yMM29QgYfVRy/PWwzIfxbQHrtqx5T5LNaZjte8pwSyXa9Haowp5CLj6GZCR8d0I06AfimVPZAD8itz98CbBfvt+OFqaSo53Rxiwi6WCbwmNbyvzgTvac0P0Y2Ls6QBYGj3GHDkWI3cNzlirYVdVWdMjGWz7SPyo1X5scM=
Received: from BL0PR2101MB1348.namprd21.prod.outlook.com (20.177.244.150) by
 BL0PR2101MB0980.namprd21.prod.outlook.com (52.132.23.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.4; Mon, 1 Jul 2019 03:19:28 +0000
Received: from BL0PR2101MB1348.namprd21.prod.outlook.com
 ([fe80::4814:2790:9342:9582]) by BL0PR2101MB1348.namprd21.prod.outlook.com
 ([fe80::4814:2790:9342:9582%2]) with mapi id 15.20.2052.005; Mon, 1 Jul 2019
 03:19:28 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: RE: [PATCH v4 1/2] Drivers: hv: Create Hyper-V clocksource driver
 from existing clockevents code
Thread-Topic: [PATCH v4 1/2] Drivers: hv: Create Hyper-V clocksource driver
 from existing clockevents code
Thread-Index: AQHVLeAMHiWm8LQIvkKxYaQbeY7VpKayMhAAgALkQYA=
Date: Mon, 1 Jul 2019 03:19:27 +0000
Message-ID: <BL0PR2101MB1348040EA7CFCBB2CB01090AD7F90@BL0PR2101MB1348.namprd21.prod.outlook.com>
References: <1561746758-23216-1-git-send-email-mikelley@microsoft.com>
 <1561746758-23216-2-git-send-email-mikelley@microsoft.com>
 <alpine.DEB.2.21.1906290827340.1802@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1906290827340.1802@nanos.tec.linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=mikelley@ntdev.microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2019-07-01T03:19:24.0757477Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=926b80ae-3535-4a88-9926-6afe3be07a5c;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-originating-ip: [24.22.167.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 84a4a0f8-406c-4dd6-92b3-08d6fdd2ed14
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BL0PR2101MB0980; 
x-ms-traffictypediagnostic: BL0PR2101MB0980:
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <BL0PR2101MB0980B4B9C3790B853296D56AD7F90@BL0PR2101MB0980.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 00851CA28B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(366004)(396003)(346002)(136003)(376002)(54534003)(199004)(189003)(51914003)(5660300002)(10090500001)(10290500003)(81156014)(8936002)(81166006)(33656002)(26005)(4326008)(6436002)(8676002)(6506007)(8990500004)(86362001)(2906002)(68736007)(478600001)(7736002)(74316002)(305945005)(7406005)(73956011)(66946007)(6116002)(3846002)(76116006)(76176011)(6916009)(66446008)(66556008)(7696005)(14454004)(25786009)(7416002)(66476007)(66066001)(102836004)(22452003)(316002)(229853002)(186003)(9686003)(55016002)(6246003)(476003)(64756008)(446003)(11346002)(99286004)(256004)(53936002)(52536014)(54906003)(71200400001)(71190400001)(486006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR2101MB0980;
 H:BL0PR2101MB1348.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: cF9QCBzQgpe/Zf996V9tiGiQB8TwdjD3uv3sILzL9lBUktDrxPW/f27nTwLsXJFI5OCbKzEKmj+cC1zNqLEOcZOf1zcGC2nUbTAUzUGnXo/dtWw5ToiuynStfa+wQLLdY17c7iUBvva/jibI6n2ZaH1Do2vat1TwFAyQIT0ajuPZI5/mFKMRrqMmF/oVOIa+/XaT59WKV+0dJwuUR7FuprPvUSC4igUSf3nMWLa7ld9lqnN9rzJS2WOVEepMd6N5OZ+Z9FFgBDCELcLC/f/OK5FZRB9QCcpz0e2lMVv9Z4SMQHAvE4VPsYde3qoFkYJhcLNO/SZHPxoWVbFb8SaK2XdbifUNfJMPOSOU0uUs+u8St3gInBqSxpXBfj7eoXKVmGGdBkGaNirCbqbb7SD0amTyaPEHlkmCtV+sm9p/4Lo=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 84a4a0f8-406c-4dd6-92b3-08d6fdd2ed14
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2019 03:19:27.8018 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mikelley@ntdev.microsoft.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR2101MB0980
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_201933_046965_AFD03C99 
X-CRM114-Status: GOOD (  23.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.104 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "linux@rasmusvillemoes.dk" <linux@rasmusvillemoes.dk>,
 "rkrcmar@redhat.com" <rkrcmar@redhat.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "vincenzo.frascino@arm.com" <vincenzo.frascino@arm.com>,
 "shuah@kernel.org" <shuah@kernel.org>, "sashal@kernel.org" <sashal@kernel.org>,
 "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 KY Srinivasan <kys@microsoft.com>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "mingo@redhat.com" <mingo@redhat.com>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "olaf@aepfle.de" <olaf@aepfle.de>, "arnd@arndb.de" <arnd@arndb.de>,
 "0x7f454c46@gmail.com" <0x7f454c46@gmail.com>, "bp@alien8.de" <bp@alien8.de>,
 "apw@canonical.com" <apw@canonical.com>,
 Sunil Muthuswamy <sunilmut@microsoft.com>, "pcc@google.com" <pcc@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "huw@codeweavers.com" <huw@codeweavers.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ralf@linux-mips.org" <ralf@linux-mips.org>,
 "salyzyn@android.com" <salyzyn@android.com>,
 "paul.burton@mips.com" <paul.burton@mips.com>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>, vkuznets <vkuznets@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thomas Gleixner <tglx@linutronix.de> Sent: Friday, June 28, 2019 11:50 PM

> On Fri, 28 Jun 2019, Michael Kelley wrote:
> 
> > [PATCH v4 1/2] Drivers: hv: Create Hyper-V clocksource driver from existing clockevents
> code
> 
> As this creates a new clocksource driver, please use the
> 
>    'clocksource/drivers: '
> 
> prefix and provide a more concise summary phrase. Something like:
> 
>    'clocksource/drivers: Make Hyper-V clocksource ISA agnostic'
> 
> The longer explanation is already in the changelog.

Will do in v5.

> 
> > +++ b/drivers/clocksource/hyperv_timer.c
> > @@ -0,0 +1,191 @@
> > +static int hv_ce_set_next_event(unsigned long delta,
> > +				struct clock_event_device *evt)
> > +{
> > +	u64 current_tick;
> > +
> > +	WARN_ON(!clockevent_state_oneshot(evt));
> 
> If at all that wants to be a WARN_ON_ONCE, but there is really no point in
> sprinkling these WARN_ONs into functions which are called from generic
> infrastructure code.
> 
> Generic infrastructure wants to have warnings because the functions are
> called from random places.

I'll remove it.

> 
> > +
> > +	current_tick = hyperv_cs->read(NULL);
> > +	current_tick += delta;
> > +	hv_init_timer(0, current_tick);
> > +	return 0;
> > +}
> > +/*
> > + * hv_stimer_init - Per-cpu initialization of the clockevent
> > + */
> > +int hv_stimer_init(unsigned int cpu)
> > +{
> > +	struct clock_event_device *ce;
> > +
> > +	if (ms_hyperv.features & HV_MSR_SYNTIMER_AVAILABLE) {
> > +		ce = per_cpu_ptr(hv_clock_event, cpu);
> > +		ce->name = "Hyper-V clockevent";
> > +		ce->features = CLOCK_EVT_FEAT_ONESHOT;
> > +		ce->cpumask = cpumask_of(cpu);
> > +		ce->rating = 1000;
> > +		ce->set_state_shutdown = hv_ce_shutdown;
> > +		ce->set_state_oneshot = hv_ce_set_oneshot;
> > +		ce->set_next_event = hv_ce_set_next_event;
> > +
> > +		clockevents_config_and_register(ce,
> > +						HV_CLOCK_HZ,
> > +						HV_MIN_DELTA_TICKS,
> > +						HV_MAX_MAX_DELTA_TICKS);
> > +	}
> > +	return 0;
> 
> Why is this returning success if there is no timer available?

The synthetic timers are available on all Hyper-V versions on
ARM64 and all but the oldest versions of Hyper-V on x86.  For
the latter case, it's not an error because Linux still runs with
PIT and LAPIC-based clock events using the emulated hardware
provided by Hyper-V.  So the caller doesn't check the return
value.  I'll add a comment to this effect, and change
this to a void function.

> 
> > +}
> > +EXPORT_SYMBOL_GPL(hv_stimer_init);
> > +
> > +/*
> > + * hv_stimer_cleanup - Per-cpu cleanup of the clockevent
> > + */
> > +int hv_stimer_cleanup(unsigned int cpu)
> > +{
> > +	struct clock_event_device *ce;
> > +
> > +	/* Turn off clockevent device */
> > +	if (ms_hyperv.features & HV_MSR_SYNTIMER_AVAILABLE) {
> > +		ce = per_cpu_ptr(hv_clock_event, cpu);
> > +		clockevents_unbind_device(ce, cpu);
> 
> Can you please explain why this unbind is needed?

It's not needed.  But it has been in the code since the beginning of
the Hyper-V support and I was taking the approach of not changing
code I didn't need to.  I'll take it out.

> 
> > +		hv_ce_shutdown(ce);
> > +	}
> > +
> > +	return 0;
> 
> Why does that function need a return value?

It doesn't.  This should be a void function.  I'll change it.

> 
> > +}
> > +EXPORT_SYMBOL_GPL(hv_stimer_cleanup);
> > +
> > +/* hv_stimer_alloc - Global initialization of the clockevent and stimer0 */
> > +int hv_stimer_alloc(int sint)
> > +{
> > +	hv_clock_event = alloc_percpu(struct clock_event_device);
> > +	if (!hv_clock_event)
> > +		return -ENOMEM;
> > +
> > +	direct_mode_enabled = ms_hyperv.misc_features &
> > +			HV_STIMER_DIRECT_MODE_AVAILABLE;
> > +	if (direct_mode_enabled &&
> > +	    hv_setup_stimer0_irq(&stimer0_irq, &stimer0_vector,
> > +				hv_stimer0_isr)) {
> > +		free_percpu(hv_clock_event);
> 
> Leaves a dangling pointer around.

Will fix.

> 
> > +		return -EINVAL;
> 
> Hrm. Doesn't hv_setup_stimer0_irq() return a useful return value? -EINVAL
> looks pretty strange here.

On x86, hv_setup_stimer0_irq() does nothing because Hyper-V stimer0 has
a hardcoded interrupt vector across all CPUs.  But on ARM64, it does real
setup of a PPI and gives a useful return value.  I'll change this to propagate
the return value from hv_setup_stimer0_irq().

> 
> > +	}
> > +
> > +	stimer0_message_sint = sint;
> > +	return 0;
> > +}
> > +EXPORT_SYMBOL_GPL(hv_stimer_alloc);
> > +
> > +/* hv_stimer_free - Free global resources allocated by hv_stimer_alloc() */
> > +void hv_stimer_free(void)
> > +{
> > +	if (direct_mode_enabled)
> > +		hv_remove_stimer0_irq(stimer0_irq);
> > +	free_percpu(hv_clock_event);
> 
> Again dangling pointer. Also is it guaranteed that stimer0_irq has been set
> up when this is invoked? As a general rule, make such functions defensive
> then you don't need state tracking at the call site and you can invoke them
> unconditionally.

I'll fix the dangling pointer and add a check for stimer0_irq being 0.

> 
> > +}
> > +EXPORT_SYMBOL_GPL(hv_stimer_free);
> > +
> > +/*
> > + * Do a global cleanup of clockevents for the cases of kexec and
> > + * vmbus exit
> > + */
> > +void hv_stimer_global_cleanup(void)
> > +{
> > +	int	cpu;
> > +	struct clock_event_device *ce;
> > +
> > +	if (ms_hyperv.features & HV_MSR_SYNTIMER_AVAILABLE)
> > +		for_each_present_cpu(cpu) {
> > +			ce = per_cpu_ptr(hv_clock_event, cpu);
> > +			clockevents_unbind_device(ce, cpu);
> > +		}
> 
> Please put braces after the if () because the 4 lines following it do not
> qualify as a single line statement.

Will do.

Thanks for the comments.

Michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
