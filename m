Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C30755B320
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 05:28:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eblwOKKxILwIpYMVMzpwrR1hubwy9N8l0F6MeIdyKb8=; b=nI0Lhqg7jxNiHw
	XNsDAfzPM52B0NFPlEfhCeahEOWVIAmiblM3kMDtMPAcD7kHSxhdGSW9WYcdDlcqylvTXCQ0BG2bH
	D54WcBVA9Et8oiqrBMyuIYqcdbVNVFPBM23AloaGYryXe+WLFR5Dmf1NF5XpaT4tczrrNhxfDGA6a
	u42QcBKC911outEiCIr8QALW4i6H0Mkt5P4Q1Tp3lw6EllA02Sip7auZ0ChjjWZeRXsBCjaiEgbMh
	tYLZFAy3VqBBfzhQwOroMWd3qqw0iS+Kg3jWcxzEdIvjGzGnOLGYvitfxNi2no3ViKoF+k6J91mT9
	k4gAousCNcS78NO+VyFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhmzE-0001eq-2T; Mon, 01 Jul 2019 03:28:12 +0000
Received: from mail-eopbgr700119.outbound.protection.outlook.com
 ([40.107.70.119] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhmyy-0001e0-Og
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 03:27:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FrNORCwtZsZKEWGZ3GV8CruU9C2G7KstaldjjwhbL7qmHctG5+aLxq0jvlNHVJ99kvP6TV+2on2lK6PsxW9IQnpCWkGYuwVrKBliXShThySMwi4BZ80GJYoBdcHPjxHhq309vNY4BeB2F2ySt6GqxgSNV4hlrv/wv8F0pmtbCqtFJDlLGpGb201VCX9nhZmx+EYdXs7MACSOGPbKfc01zf3EZv4ETf4QA3G9/uyi6hfyHDPwBA7HAfJzlRBAZYlA9ea2CxMVOoLQmeoC0baIoenospP5i5bYaE2U7cwXIGXbRbXyt6tMNdXopi9G8SYo+nlp9IirHVctoePxzpU4/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jKRoCriyhBHZNDqbw+vDECV9rcNqCG2i59H7fVDIvr4=;
 b=jOSbzm8T2U21zrJLFHNTWFTndJFjXGHwQ5mCukFWjRtZv/wWQC/M6LQxfUjN3A7GDLpr7qAgGEq74SwVoI5bZ/Z42Y6+9TO6dl9MwRbLwvKneq98hB7BAxteMOLNP91i3MYVntVu+VeFhlEgBIg7UbQGtWGz8dTe/014oP6JOExWfHec1UE7qT1cRb/WIUeaKud4XgbcbpXmfLF9x6ZYqZoEmpcbyEdAqeLcJHfIjd+TtmeiNb3vNLfKVRjpQX9zB5n1LW80HkAIdCcDi0EBs8vMhDOG1UIZlOQA3xGhAjpTKrY6oKSEO+9X/yKBiimGwGh4JMHmyqsoKpHUlhyM3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microsoft.com;dmarc=pass action=none
 header.from=microsoft.com;dkim=pass header.d=microsoft.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jKRoCriyhBHZNDqbw+vDECV9rcNqCG2i59H7fVDIvr4=;
 b=WVHsO9VPkvw8AnVfRPiZfiTd/drLpjp77IFRfjBr+buDPFE/gAoT7sgLEdUOoXsBadw4oVb4HekrtVcffbWAHQNWw2QZZ8+C5Yl3MvlTvxYQesjXgvYkHmK9S19oD/uwocKUE178TGJUwRspBhWl9fGkKl9WqoQIbhLaB8tqHbU=
Received: from BL0PR2101MB1348.namprd21.prod.outlook.com (20.177.244.150) by
 BL0PR2101MB0980.namprd21.prod.outlook.com (52.132.23.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.4; Mon, 1 Jul 2019 03:27:53 +0000
Received: from BL0PR2101MB1348.namprd21.prod.outlook.com
 ([fe80::4814:2790:9342:9582]) by BL0PR2101MB1348.namprd21.prod.outlook.com
 ([fe80::4814:2790:9342:9582%2]) with mapi id 15.20.2052.005; Mon, 1 Jul 2019
 03:27:53 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: RE: [PATCH v4 2/2] Drivers: hv: Move Hyper-V clocksource code to new
 clocksource driver
Thread-Topic: [PATCH v4 2/2] Drivers: hv: Move Hyper-V clocksource code to new
 clocksource driver
Thread-Index: AQHVLeAUo+4Nh9AV+0+GDvg9Z9lPQKayNgEAgALl1SA=
Date: Mon, 1 Jul 2019 03:27:46 +0000
Message-ID: <BL0PR2101MB1348F33B06FEAFFD4AC5474ED7F90@BL0PR2101MB1348.namprd21.prod.outlook.com>
References: <1561746758-23216-1-git-send-email-mikelley@microsoft.com>
 <1561746758-23216-3-git-send-email-mikelley@microsoft.com>
 <alpine.DEB.2.21.1906290850220.1802@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1906290850220.1802@nanos.tec.linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=mikelley@ntdev.microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2019-07-01T03:27:43.2532613Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=fe0f6f5a-265f-46a6-abab-be1d9e7097d7;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-originating-ip: [24.22.167.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: eb3a0540-b1b4-4eb5-8551-08d6fdd419fd
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BL0PR2101MB0980; 
x-ms-traffictypediagnostic: BL0PR2101MB0980:
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <BL0PR2101MB0980C6F7F1B6BC00CFCD8310D7F90@BL0PR2101MB0980.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 00851CA28B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(136003)(346002)(39860400002)(396003)(366004)(189003)(199004)(25786009)(14454004)(66066001)(66476007)(7416002)(66946007)(73956011)(6116002)(3846002)(76116006)(7406005)(76176011)(7696005)(66556008)(66446008)(6916009)(476003)(99286004)(11346002)(446003)(64756008)(6246003)(486006)(53936002)(256004)(14444005)(71190400001)(71200400001)(54906003)(52536014)(6666004)(22452003)(316002)(102836004)(229853002)(55016002)(186003)(9686003)(8676002)(26005)(6436002)(4326008)(6506007)(10290500003)(81166006)(8936002)(81156014)(5660300002)(10090500001)(33656002)(478600001)(2906002)(68736007)(305945005)(74316002)(7736002)(8990500004)(86362001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR2101MB0980;
 H:BL0PR2101MB1348.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 9EmBNhIM6Gc1BnIDqAlZbJxmM5SVpDVIm1KgIQvi141SbmOs2qHu22suD2smfntS7kJv/IgjDEgK8kmE55M+JibFpfnseOejcvHetKgJIu58DBeGUFMRto2bXhoSxfkvlZZNutJ+V1u19qeDcw5lpEEfVVQ/ufv8HZo4alffSwRhfuSi22+L/Q67n0mwg7faMepsVRFYWKbuH7QCONqI/OEpE44CIPrC376qWPgUbmk2+9096+t5tu5LgJRWTvJpzClWwoV7Xe946uRcDQlJ5mU8NyNc1FdNPLuemS+df6+jHRQYoLWMRCxQUYJveS2eTsd7CM3FVuQte8XUDqW6WTA2Tft82pXDIYcBXiilqz8Tg0IBvPwW3RHrBET09PoSusasaavetX+ubhq+KU+Lp5qfXaPyagFtM3Om7zB18to=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb3a0540-b1b4-4eb5-8551-08d6fdd419fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2019 03:27:46.3472 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mikelley@ntdev.microsoft.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR2101MB0980
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_202756_809464_AF36C8B7 
X-CRM114-Status: GOOD (  21.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.119 listed in list.dnswl.org]
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

From: Thomas Gleixner <tglx@linutronix.de> Sent: Saturday, June 29, 2019 12:04 AM
> 
> On Fri, 28 Jun 2019, Michael Kelley wrote:
> 
> See the other reply vs. prefix and summary
> 
> > Continue consolidating Hyper-V clock and timer code into an ISA
> ...
> 
> > +#ifdef CONFIG_HYPERV_TSCPAGE
> > +
> > +static struct ms_hyperv_tsc_page *tsc_pg;
> > +
> > +struct ms_hyperv_tsc_page *hv_get_tsc_page(void)
> > +{
> > +	return tsc_pg;
> > +}
> > +EXPORT_SYMBOL_GPL(hv_get_tsc_page);
> 
> > +static u64 read_hv_sched_clock_tsc(void)
> 
> Lacks a notrace annotation as it is used as sched clock.

Will add to this and to read_hv_sched_clock_msr().

> 
> > +{
> > +	u64 current_tick = hv_read_tsc_page(tsc_pg);
> > +
> > +	if (current_tick == U64_MAX)
> > +		hv_get_time_ref_count(current_tick);
> > +
> > +	return current_tick;
> > +}
> > +
> > +static u64 read_hv_clock_tsc(struct clocksource *arg)
> > +{
> > +	return read_hv_sched_clock_tsc();
> > +}
> > +
> > +static struct clocksource hyperv_cs_tsc = {
> > +		.name		= "hyperv_clocksource_tsc_page",
> > +		.rating		= 400,
> > +		.read		= read_hv_clock_tsc,
> > +		.mask		= CLOCKSOURCE_MASK(64),
> > +		.flags		= CLOCK_SOURCE_IS_CONTINUOUS,
> 
> One tab indent is sufficient

Will fix.

> 
> > +};
> > +#endif
> 
> > +void __init hv_init_clocksource(void)
> > +{
> > +#ifdef CONFIG_HYPERV_TSCPAGE
> 
> Can you please avoid ifdef blocks in the code and just split out this into
> a helper function and provide an empty stub for the TSCPAGE=n case?
> 
> Then you can spare one indent and the ifdeffery is confined. Get's rid of
> the goto as well.

I was trying not to change code unrelated to reorganizing into a clocksource
driver, but I've coded the approach you suggest and the result is a lot
cleaner.  I'll include the new approach in v5 of the patch.

> 
> > +	if (ms_hyperv.features & HV_MSR_REFERENCE_TSC_AVAILABLE) {
> > +
> > +		u64		tsc_msr;
> > +		phys_addr_t	phys_addr;
> > +
> > +		tsc_pg = vmalloc(PAGE_SIZE);
> > +		if (!tsc_pg)
> > +			goto register_msr_cs;
> > +
> > +		hyperv_cs = &hyperv_cs_tsc;
> > +		phys_addr = page_to_phys(vmalloc_to_page(tsc_pg));
> > +
> > +		/* The Hyper-V TLFS specifies to preserve the value of
> 
> Please use proper multi line comments formatting:
> 
> 		/*
> 		 * This is a proper formatted multi-line comment.
> 		 * See?
> 		 */

Argh.  Old habits ...

> 
> > +		 * reserved bits in registers.  So read the existing
> > +		 * value, preserve the low order 12 bits, and add in
> > +		 * the guest physical address (which already has at
> > +		 * least the low 12 bits set to zero since it is page
> > +		 * aligned). Also set the "enable" bit, which is bit 0.
> > +		 */
> > +		hv_get_reference_tsc(tsc_msr);
> > +		tsc_msr &= GENMASK_ULL(11, 0);
> > +		tsc_msr = tsc_msr | 0x1 | (u64)phys_addr;
> > +		hv_set_reference_tsc(tsc_msr);
> > +
> > +		hv_set_clocksource_vdso(hyperv_cs_tsc);
> > +		clocksource_register_hz(&hyperv_cs_tsc, NSEC_PER_SEC/100);
> > +
> > +		/*
> > +		 * sched_clock_register is needed on ARM64 but
> > +		 * is a no-op on x86
> > +		 */
> > +		sched_clock_register(read_hv_sched_clock_tsc,
> > +						64, HV_CLOCK_HZ);
> 
> If you have to use line breaks, then please align them properly
> 
> 		sched_clock_register(read_hv_sched_clock_tsc,
> 				     64, HV_CLOCK_HZ);
> 

Got it.  The line break is no longer needed in the new version anyway.

> 
> > +		return;
> > +	}
> > +register_msr_cs:
> > +#endif
> > +	/*
> > +	 * For 32 bit guests just use the MSR based mechanism for reading
> > +	 * the partition counter.
> > +	 */
> > +	hyperv_cs = &hyperv_cs_msr;
> > +	if (ms_hyperv.features & HV_MSR_TIME_REF_COUNT_AVAILABLE) {
> > +		clocksource_register_hz(&hyperv_cs_msr, NSEC_PER_SEC/100);
> > +
> > +		/*
> > +		 * sched_clock_register is needed on ARM64 but
> > +		 * is a no-op on x86
> > +		 */
> > +		sched_clock_register(read_hv_sched_clock_msr,
> > +						64, HV_CLOCK_HZ);
> 
> Ditto. But again if you return when the feature is not available you spare
> an indent and the line break.

Agreed.

Thanks,

Michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
