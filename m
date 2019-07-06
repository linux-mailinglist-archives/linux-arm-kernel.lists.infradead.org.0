Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B2E6126D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jul 2019 19:40:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yMAw6dkOt3SqTz4DqJQUkH5mtCZ4hDFzpCRdTXid4ck=; b=uPWIHlPBUVN971
	HKlknGt3lqcM3+KYth/lDt7QuZpNpOXCpUBSN0NSnFo6J5M8N2hxf0Mo5a3RrRrZoObU+6T9SX7cl
	OSAdDtMm1X9PyHn9hJcJsTg9DLe+TzTK4w3ttPh22ucIFYxxZwetr0XIydA+SdivsdZYHuyJ4T2mi
	jNOTUGOuQbmGZhGsTtjyzrs9Wll8eF96VhxT2a+C4FE/gtL36BKxWb2hdEP8DltgXHHlfPxD4EGKI
	M6a+uva9lBca3tmIMJYe/M48OHhWz2XxvvoD5Zx6x5ZGcwEU1YvLC71cfuRXCvEZeKSLGr6ASOKPC
	5taXKjZvVBsEGHFU6Ffg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjofK-0003Y1-CG; Sat, 06 Jul 2019 17:40:02 +0000
Received: from mail-eopbgr1310120.outbound.protection.outlook.com
 ([40.107.131.120] helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjof6-0003XS-GG
 for linux-arm-kernel@lists.infradead.org; Sat, 06 Jul 2019 17:39:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lXGFZb4BKdbBgDavGkPbvzo+m9umtarQOF+WBRMssDSaJo8dgqV/swkO7nTvraghSA40cZAHcpTDp640AVbwA36YPfsmSwNQnXWBSaCP2sZu52HyDOXBCgvxz+1wasuDw/axO9fTkIpj7XfkqlrAcWm/ASsdCq2XwUh66OoeIKPMftQ4NIZtN6GCBUaiyfWVeyCL0NYZXv97OOmaeIIYktOpWmtOnjOGu674t8c/FZ0hJjPsdQ1I6jNUKWbrV68GD6wmNeDNyBuHZ3QZ2bdaGT1QmKSmGHQ4xsWmDw7dn205GurDDhqPDTq8nzzAD9q8+m3Vr+GMbzj5wFMMcYpLfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fek41ymizvhcgr5pzuj1nxztQFNTVv8wSrGxD8J+83k=;
 b=ISwzw8s3EIPpJLvDvYA6ywx+jMz60NGvUtX8iM0JE+hRyxLdx43Qb4ORL7VHjhQVTPo9MPLQFZ0cLrs3CwbbPrZmmrDfdKYvj86lrifq04t5EmS9RhWnkMBmFrDO/Mr4rFoRpebNuayip0/gAs1uzKw4poefgLYSX5f3afwCVkA8crWpHjSaCJKFLnNRVEOfRZfiBP9jMonZREu7d7A9xhFTFuuymUgUunsDJuTiF1NERBRIeSwUIzuzNYsrbLG9X688TA7JR+bN7Es4d2XK+fjWCw43cVvQg+96c8Eu/KjPY5U9T+PoK41ui3XK4SrxObYIhMBk0k9pNz7QT1CMzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microsoft.com;dmarc=pass action=none
 header.from=microsoft.com;dkim=pass header.d=microsoft.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fek41ymizvhcgr5pzuj1nxztQFNTVv8wSrGxD8J+83k=;
 b=j1IOyDkQf2GAB9x0lcd6pmuqKBGmNAKjJxDiVYQ2I5HzHQKoaAW34fyb3NG0iZzzmapaRMo8coKDytIH3kkz/Kfo8RkozwLRo4vv8L0vQzsmeN0jd7nQ5o7/DwVHKKkazMqAiIojTV0IUN9jCcVFCEP2Ju+DaGxgVnCX9vqqxTE=
Received: from PU1P153MB0169.APCP153.PROD.OUTLOOK.COM (10.170.189.13) by
 PU1P153MB0204.APCP153.PROD.OUTLOOK.COM (52.133.194.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.2; Sat, 6 Jul 2019 17:39:15 +0000
Received: from PU1P153MB0169.APCP153.PROD.OUTLOOK.COM
 ([fe80::61b3:885f:a7e4:ec0b]) by PU1P153MB0169.APCP153.PROD.OUTLOOK.COM
 ([fe80::61b3:885f:a7e4:ec0b%9]) with mapi id 15.20.2073.007; Sat, 6 Jul 2019
 17:39:15 +0000
From: Dexuan Cui <decui@microsoft.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: RE: [tip:timers/core] clocksource/drivers: Make Hyper-V clocksource
 ISA agnostic
Thread-Topic: [tip:timers/core] clocksource/drivers: Make Hyper-V clocksource
 ISA agnostic
Thread-Index: AQHVMX8Ip0U8JNAq0UyWogotrR50uqa8tTmAgACS6LSAAI4oQA==
Date: Sat, 6 Jul 2019 17:39:14 +0000
Message-ID: <PU1P153MB0169C8A38643B9284C938353BFF40@PU1P153MB0169.APCP153.PROD.OUTLOOK.COM>
References: <1561955054-1838-2-git-send-email-mikelley@microsoft.com>
 <tip-fd1fea6834d0f9f93062ae6685862908a9baed39@git.kernel.org>
 <PU1P153MB0169E8E3898897BF3B3BE0F6BFF40@PU1P153MB0169.APCP153.PROD.OUTLOOK.COM>
 <alpine.DEB.2.21.1907060944200.3648@nanos.tec.linutronix.de>
 <alpine.DEB.2.21.1907061032400.3648@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1907061032400.3648@nanos.tec.linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=decui@microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2019-07-06T17:39:10.2454493Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=6e05d016-58b0-4f12-8e8c-a1c9aec4019c;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=decui@microsoft.com; 
x-originating-ip: [2601:600:a280:1760:5896:cf8a:cefe:fd7]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 496cb2e2-2a12-4651-b233-08d70238dd75
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:PU1P153MB0204; 
x-ms-traffictypediagnostic: PU1P153MB0204:|PU1P153MB0204:
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <PU1P153MB0204BC20007C6F35F2367156BFF40@PU1P153MB0204.APCP153.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00909363D5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(396003)(366004)(346002)(376002)(136003)(51914003)(199004)(189003)(55016002)(6436002)(4326008)(8676002)(5660300002)(66946007)(66476007)(74316002)(66556008)(64756008)(66446008)(229853002)(7416002)(7406005)(54906003)(73956011)(6246003)(316002)(76116006)(22452003)(478600001)(71190400001)(68736007)(81156014)(9686003)(71200400001)(53936002)(305945005)(8936002)(81166006)(10090500001)(52536014)(2906002)(14454004)(256004)(86362001)(486006)(476003)(6116002)(11346002)(446003)(46003)(25786009)(186003)(99286004)(8990500004)(7696005)(102836004)(6916009)(33656002)(7736002)(76176011)(10290500003)(14444005)(6506007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:PU1P153MB0204;
 H:PU1P153MB0169.APCP153.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: lOb5cfbHu6OMbtdd6KD55cUgsG6nwO+0CLGFYBsK6tiFXsBjBQ+tWmIrcG/3KCxsVyaEnZkp62Np5KO0AyL0ij6WowGheUt03ABzuVvtNb8ztUWSncTpnkqRnn3uMSBEgoXUP0IQ2FSoNBEpZyRGgWfjRbjba85bc6c43xj7wed33H0XauBHBf5OmAtahePqiYK9Gyw+A5tSFpijzr1ZQNpAaMiacRJLVTM00EOFl4vehLmMughSnke0W+8K/z7RTirqo0llw3iPVQ+x08rwFnyD8TbyJyDAJBi0tnJ2twQL7JkhczGlflCKUqRwP7DWqzO89ma/Jo94HKID5jUjmdlFEP1VXh96J0+97CNm2pfN3iydHN1uHt8xPc9xuq8vACMv5Jt7SFR0O8CrcrLRjmprhsV0/yC6ypwIcJGymYU=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 496cb2e2-2a12-4651-b233-08d70238dd75
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2019 17:39:14.4331 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: decui@microsoft.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1P153MB0204
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190706_103948_576900_F114A406 
X-CRM114-Status: GOOD (  25.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.131.120 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "rkrcmar@redhat.com" <rkrcmar@redhat.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>,
 "linux@rasmusvillemoes.dk" <linux@rasmusvillemoes.dk>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "hpa@zytor.com" <hpa@zytor.com>, KY Srinivasan <kys@microsoft.com>,
 "shuah@kernel.org" <shuah@kernel.org>, "mingo@kernel.org" <mingo@kernel.org>,
 "sashal@kernel.org" <sashal@kernel.org>,
 "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 "vincenzo.frascino@arm.com" <vincenzo.frascino@arm.com>,
 "linux-tip-commits@vger.kernel.org" <linux-tip-commits@vger.kernel.org>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "olaf@aepfle.de" <olaf@aepfle.de>, "arnd@arndb.de" <arnd@arndb.de>,
 "marc.zyngier@arm.com" <marc.zyngier@arm.com>,
 "0x7f454c46@gmail.com" <0x7f454c46@gmail.com>, "bp@alien8.de" <bp@alien8.de>,
 "apw@canonical.com" <apw@canonical.com>,
 Sunil Muthuswamy <sunilmut@microsoft.com>,
 Michael Kelley <mikelley@microsoft.com>, "pcc@google.com" <pcc@google.com>,
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

> From: Thomas Gleixner <tglx@linutronix.de>
> Sent: Saturday, July 6, 2019 1:34 AM
> 
> On Sat, 6 Jul 2019, Thomas Gleixner wrote:
> 
> > On Sat, 6 Jul 2019, Dexuan Cui wrote:
> > > > From: linux-hyperv-owner@vger.kernel.org
> > > > <linux-hyperv-owner@vger.kernel.org> On Behalf Of tip-bot for Michael
> Kelley
> > > > No behavior is changed and no new functionality is added.
> > > >...
> > > > +void hv_stimer_cleanup(unsigned int cpu)
> > > > +{
> > > > +	struct clock_event_device *ce;
> > > > +
> > > > +	/* Turn off clockevent device */
> > > > +	if (ms_hyperv.features & HV_MSR_SYNTIMER_AVAILABLE) {
> > > > +		ce = per_cpu_ptr(hv_clock_event, cpu);
> > > > +		hv_ce_shutdown(ce);
> > > > +	}
> > > > +}
> > >
> > > Actually, there is a behavior change (see ...):
> > > 	Removed call to clockevents_unbind_device() [Thomas Gleixner]
> > > and this breaks my ongoing work of Linux guest hibernation on Hyper-V. :-(
> > >
> > > I guess Thomas suggested we remove the call because the clockevent
> device
> > > can be automatically cleaned up in tick_cleanup_dead_cpu(), when a CPU is
> > > offlined? BTW, I didn't find Thomas's mail suggesting the change.
> > >
> > > In the case of hibernation, this is not true for CPU0, because
> > > tick_cleanup_dead_cpu() is not called for CPU0. As a result, when the
> > > system resumes from hibernation, we add the same clock_event_device
> > > into the global list clockevent_devices twice in hv_stimer_init(0) ->
> > > clockevents_config_and_register() for CPU0, causing unexpected
> > > behaviors...
> >
> > The way this is normally done is to suspend the clockevent device on
> > hibernation and resume it when coming back. From a kernel POV resume is
> > really different than boot.

Hi Thomas,
Thanks for the important reminder! I realized actually Michael's patches are
good, and hibernation can not work because my own hibernation code is buggy:
in the resume path, on CPU0, I should NOT call hv_stimer_init() -> 
clockevents_config_and_register(): instead, I should use the event device's 
suspend/resume callbacks to save/restore the device's state.

With this kept in mind, I made some small changes to my code and hibernation
can work fine for me now!

> > But that needs probably more surgery. I'll add the unbind() call back for
> > now.

Can you please drop the unbind() call again? :-)

I realized we don't really need it, and hibernation can work for me without it.
I checked the related functions in detail: tick_cleanup_dead_cpu(), 
timekeeping_suspend() and timekeeping_resume(), and I think the unbind()
call is indeed unnecessary.

I also checked the CPU offlining scenario, and I think the unbind() call is
also unnecessary.
 
> Second thoughts. As it was just on top of the branch, I dropped the two
> patches and we can sort it out for 5.4 without a hurry.
> 
> 	tglx

Hmm, I'm sorry for providing misleading info in my previous mail.
IMHO I really think the 2 patches are good. They have been there quite
a while and it's already the 5th version. I hope they can be in 5.3-rc1 so
life would be a lot easier for everyone. :-) Especially, my hiberation work
has been rebased onto the 2 patches; if they can not be in 5.3, I'll have
to rebase my code again and once my code is accepted, it would make
it harder to rebase the 2 patches.

May I know if there is any concern about the 2 patches? If yes, I 
definitely want to help sort it out now.

Thanks,
-- Dexuan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
