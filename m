Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D12E60E64
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jul 2019 03:09:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ajBePSZkVidztjejHMX3euxpsHxba99wHUOONVEmWfg=; b=KuqoxjTJknr73Z
	xiyd8HjO+XpXCUgB++8Yld45HWvgYa5Dspje5cAvB2PbSVZ/npAdIMdjgduVBPCyUO/x1crETyf+0
	s3Q00aFH4gt7c2TAGvgauAw5e6qLKk79ja7MZYeYLp3ddXs5a+G1lsWdy0eY/bCCw7+7GeT4O/aUq
	r3LQrWnqFXDk3/MY1bsvN6TueWH0cdb13utSPR5YOyWiIAZnv8MQyDw0TZQZOl/CZfsJnTYq2ToOh
	pjlPUo7XQOyMnUvT3TXI7Q0SwNs/+s08YSRwuE2hEknMbvY+YkU6OqRCMpR8wMUM2Lldt9QGXXpFz
	n6DGuq0FC8daNl9kSFIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjZCz-0000dE-7G; Sat, 06 Jul 2019 01:09:45 +0000
Received: from mail-eopbgr1310104.outbound.protection.outlook.com
 ([40.107.131.104] helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjZCn-0000cm-FF
 for linux-arm-kernel@lists.infradead.org; Sat, 06 Jul 2019 01:09:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S5oF/YYyiBAkkF6ABlFenX8dahOFsMeVyxtISjKZDqZwba9URNYk7sLN+8oiRqHp/i76KBPUun+UbYZhrIxVXiFyCMN2ICus2yCGZHLoMvQqu6pkfc8pJ9kuakGVbqd7j+2A2ZzXBbVj3LsSTDoaBg5sdG5OelrqmF2nJ/3xnfOZpIGLyYG6vTx1FLNG/Hd5d0/IexRGwDkpHnaJplXOBPjqVZak4LrN/PdQI16uXcwG+F1/eC7qHkg2k37b/C3kscvgyYa/lOWxcxf1LM//D6ztmHD5bwmQUp2Hg8r2lV3dSUNwKfoolyRoqMQVD5ZQ2dnsW6hcsPAyRNseBwK3dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oVfTiCbuSuyowBgU0EDFeOB36WSD4RLWPg4mswLZ39Y=;
 b=B1+/d2nlLneaLdYSvCBzPgNnZE1srtiws/zWfOyltxjhTPNzLuTK65Aqvc2jNliI9RS7ukEm9R9YwyjgOnQ42yvT0e72FkFfLzsLtTvNaEpvyx3onRetijpcnSf4lv0ubmxLu00OhiK8fy6dih5lPByZozTQjoNCqtN0Gi94Afx4O/h7LflFICIBHfnAWDnOl/qzhocUgcq/4kiQloOswlcmVwNAX83rOUZcKI7zPAhg4iK0+xJ1yo23eUtsqHPZimW5KJTTacZeSPDlBB+eo+MB+Bm1PtGlhNWcbx4kXpSE9YQuHqHP4WpsL1CanlCNNu40Ye3Eobg8KZr5h3qolA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microsoft.com;dmarc=pass action=none
 header.from=microsoft.com;dkim=pass header.d=microsoft.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oVfTiCbuSuyowBgU0EDFeOB36WSD4RLWPg4mswLZ39Y=;
 b=McrE7J3OKcPDKgCnk6IBwGTmNpgBDrOyXt/9NDrOjdTYocG+e2Hn3PYAr0uLeLaBQ0h+GlRygzuNr9xI49b05jnRuxBqcSsbEkt2/nQRAguoEeIlvCRKV8ED5HlRIA7kUng3yIsEr0CXWXcBib42Xkrcg9Svymg/2qfjVi/NQb0=
Received: from PU1P153MB0169.APCP153.PROD.OUTLOOK.COM (10.170.189.13) by
 PU1P153MB0105.APCP153.PROD.OUTLOOK.COM (10.170.188.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.2; Sat, 6 Jul 2019 01:09:08 +0000
Received: from PU1P153MB0169.APCP153.PROD.OUTLOOK.COM
 ([fe80::61b3:885f:a7e4:ec0b]) by PU1P153MB0169.APCP153.PROD.OUTLOOK.COM
 ([fe80::61b3:885f:a7e4:ec0b%9]) with mapi id 15.20.2073.007; Sat, 6 Jul 2019
 01:09:08 +0000
From: Dexuan Cui <decui@microsoft.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "0x7f454c46@gmail.com" <0x7f454c46@gmail.com>, "pbonzini@redhat.com"
 <pbonzini@redhat.com>, "sashal@kernel.org" <sashal@kernel.org>,
 "linux@rasmusvillemoes.dk" <linux@rasmusvillemoes.dk>, "bp@alien8.de"
 <bp@alien8.de>, "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "apw@canonical.com" <apw@canonical.com>, "linux-mips@vger.kernel.org"
 <linux-mips@vger.kernel.org>, "paul.burton@mips.com" <paul.burton@mips.com>,
 Michael Kelley <mikelley@microsoft.com>, Sunil Muthuswamy
 <sunilmut@microsoft.com>, "marc.zyngier@arm.com" <marc.zyngier@arm.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "jasowang@redhat.com" <jasowang@redhat.com>, "huw@codeweavers.com"
 <huw@codeweavers.com>, "ralf@linux-mips.org" <ralf@linux-mips.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "olaf@aepfle.de"
 <olaf@aepfle.de>, "linux-hyperv@vger.kernel.org"
 <linux-hyperv@vger.kernel.org>, "rkrcmar@redhat.com" <rkrcmar@redhat.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>, KY Srinivasan
 <kys@microsoft.com>, "arnd@arndb.de" <arnd@arndb.de>, "mingo@kernel.org"
 <mingo@kernel.org>, "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "vincenzo.frascino@arm.com" <vincenzo.frascino@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>, "tglx@linutronix.de"
 <tglx@linutronix.de>, vkuznets <vkuznets@redhat.com>, "shuah@kernel.org"
 <shuah@kernel.org>, "pcc@google.com" <pcc@google.com>, "kvm@vger.kernel.org"
 <kvm@vger.kernel.org>, "marcelo.cerri@canonical.com"
 <marcelo.cerri@canonical.com>, "salyzyn@android.com" <salyzyn@android.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "hpa@zytor.com" <hpa@zytor.com>,
 "linux-tip-commits@vger.kernel.org" <linux-tip-commits@vger.kernel.org>
Subject: RE: [tip:timers/core] clocksource/drivers: Make Hyper-V clocksource
 ISA agnostic
Thread-Topic: [tip:timers/core] clocksource/drivers: Make Hyper-V clocksource
 ISA agnostic
Thread-Index: AQHVMX8Ip0U8JNAq0UyWogotrR50uqa8tTmA
Date: Sat, 6 Jul 2019 01:09:06 +0000
Message-ID: <PU1P153MB0169E8E3898897BF3B3BE0F6BFF40@PU1P153MB0169.APCP153.PROD.OUTLOOK.COM>
References: <1561955054-1838-2-git-send-email-mikelley@microsoft.com>
 <tip-fd1fea6834d0f9f93062ae6685862908a9baed39@git.kernel.org>
In-Reply-To: <tip-fd1fea6834d0f9f93062ae6685862908a9baed39@git.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=decui@microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2019-07-06T01:09:03.4646131Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=e7a27343-ddfc-4901-8b65-aee59e978098;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=decui@microsoft.com; 
x-originating-ip: [2601:600:a280:1760:5896:cf8a:cefe:fd7]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3bde4982-84b1-4d64-cc89-08d701ae8bf7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:PU1P153MB0105; 
x-ms-traffictypediagnostic: PU1P153MB0105:|PU1P153MB0105:
x-ms-exchange-purlcount: 1
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <PU1P153MB0105DDCD064BB85A7BFEFEA5BFF40@PU1P153MB0105.APCP153.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 00909363D5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(39860400002)(376002)(366004)(346002)(396003)(189003)(199004)(55016002)(7406005)(7416002)(14444005)(68736007)(229853002)(86362001)(256004)(9686003)(6306002)(2906002)(53936002)(25786009)(316002)(6246003)(8936002)(14454004)(6116002)(110136005)(305945005)(81166006)(966005)(22452003)(478600001)(8676002)(10290500003)(7736002)(52536014)(81156014)(6436002)(74316002)(1511001)(71190400001)(186003)(446003)(7696005)(5660300002)(76176011)(99286004)(33656002)(2501003)(2201001)(66446008)(66476007)(64756008)(66556008)(8990500004)(10090500001)(73956011)(66946007)(102836004)(6506007)(486006)(46003)(476003)(11346002)(71200400001)(76116006)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:PU1P153MB0105;
 H:PU1P153MB0169.APCP153.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: bRyVe18twbuRLUZ/Mx5LMVAxuiHWzHG5j6vun3MuoBOaubZwz6lgprSPkk5cMSkGs47qTPhD5OpFWhpMcrzmg6iyvNjxCjFpmVS0MKquImRGY3NJAF/DuH2fQceBbjQR3vWNu39L6YhO7RUYB81NSRH7V5BKAqrRZqUwn1EdwwlnZspokNt5iABfybLcT9AnwCzYbkZSgpnVu8cOOZB9rKdTQKfARbMGlyG2D06zMQfagANcJ535nUMzgnyIUuxu3dodx9r/SdyD0eApdFk1vbXEwNjTW4T+xhlDsy/fLBkzBZ6b9xDsGlYOLF/xg/KYscMHkB4QA/3g7Ygqi5gwxqAcdvL16YTfuyVOiDeiEpWfB5jb3vUif9nqnWG2yGrZ6IofMReafSO+ljbVJRgZojq31ei5UtluwLq5hgENqLU=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3bde4982-84b1-4d64-cc89-08d701ae8bf7
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2019 01:09:07.0380 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: decui@microsoft.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1P153MB0105
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_180933_597099_C94F0F37 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.131.104 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: linux-hyperv-owner@vger.kernel.org
> <linux-hyperv-owner@vger.kernel.org> On Behalf Of tip-bot for Michael Kelley
> Sent: Wednesday, July 3, 2019 2:07 AM
> clocksource/drivers: Make Hyper-V clocksource ISA agnostic
> 
> Hyper-V clock/timer code and data structures are currently mixed
> in with other code in the ISA independent drivers/hv directory as
> well as the ISA dependent Hyper-V code under arch/x86.
> 
> Consolidate this code and data structures into a Hyper-V clocksource driver
> to better follow the Linux model. In doing so, separate out the ISA
> dependent portions so the new clocksource driver works for x86 and for the
> in-process Hyper-V on ARM64 code.
> 
> To start, move the existing clockevents code to create the new clocksource
> driver. Update the VMbus driver to call initialization and cleanup routines
> since the Hyper-V synthetic timers are not independently enumerated in
> ACPI.
> 
> No behavior is changed and no new functionality is added.
>... 
> +void hv_stimer_cleanup(unsigned int cpu)
> +{
> +	struct clock_event_device *ce;
> +
> +	/* Turn off clockevent device */
> +	if (ms_hyperv.features & HV_MSR_SYNTIMER_AVAILABLE) {
> +		ce = per_cpu_ptr(hv_clock_event, cpu);
> +		hv_ce_shutdown(ce);
> +	}
> +}

Actually, there is a behavior change (see https://lkml.org/lkml/2019/7/1/9):
	Removed call to clockevents_unbind_device() [Thomas Gleixner]
and this breaks my ongoing work of Linux guest hibernation on Hyper-V. :-(

I guess Thomas suggested we remove the call because the clockevent device
can be automatically cleaned up in tick_cleanup_dead_cpu(), when a CPU is 
offlined? BTW, I didn't find Thomas's mail suggesting the change.

In the case of hibernation, this is not true for CPU0, because 
tick_cleanup_dead_cpu() is not called for CPU0. As a result, when the
system resumes from hibernation, we add the same clock_event_device
into the global list clockevent_devices twice in hv_stimer_init(0) ->
clockevents_config_and_register() for CPU0, causing unexpected
behaviors...

Should we call clockevents_unbind_device() or tick_cleanup_dead_cpu()
somewher for CPU0, in the case of hibernation? 

Or, in clockevents_config_and_register(), should we not add the event
device, if it's already in the global list?

Thanks,
-- Dexuan
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
