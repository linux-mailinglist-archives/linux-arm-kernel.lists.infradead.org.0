Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 578575A3C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 20:35:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HRhTF8DhXifriYID7UuRADtM/nSwY9kjiVyI/n8JXVc=; b=Q3DJflC5X+Jogy
	/UJWYXK3a3wcVlO1rxI5zswrvVq+p5c7+0M7l9DwBmjNnX5nzRKAL+fONoHlsx0vyGnfeQ9swZr1s
	b913eTHCQ433yRDT70J/xJpEExxxXjoai9dtWR3F6jwhz40MPiS6IQByTrUjNCBVWiSLrz9rY+Fq8
	TMYEAdX+zxoxA6Y30ilOU/s28+7fo1p4LLoedvmXfIU8gflE4SAVX0GCp0rglb26JtU6MUzJXGJdc
	rIcazsAkLEwIR/yFvqG0y9Ne1Ltrp5Ek3nqZvPk2hv/JJ9IgxDeYDMH4+Ng4JAt1s44jP6uWXT5bN
	1wA8Z9GVmsNcW5HnULZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgviW-0008PL-L3; Fri, 28 Jun 2019 18:35:24 +0000
Received: from mail-sn1nam02on071b.outbound.protection.outlook.com
 ([2a01:111:f400:fe44::71b]
 helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgvhN-0007l1-3h
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 18:34:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y5s8s8DJGUTm/YbWFga0RlsWC9beiq/vvowItVhnolf1GPDMvF9qdEfMcou2wjqLZfI3lYpL95ByjFYUzIJtfKF9QiYj5AYpXVve0og1aSW6oDwecV9I6f4++yxwTOdwSQ8KMg2HWKKu1XyN+UaPPxViOqj8lUCEcAmOSbJkHWBP7CJqR6XSGFTNeS8xMgLNBaSOyr4vjJCW6DFqnCKtYkMIG3KcXzWRncMs51nehEB+Iu8Fj2iKtkQcRa3T2iSVjlufwUzvm27UiRSUWiimtGkMtSaIZ3B3uwv6YQhJI+tg5YF9Jk9i1syYrTcOVBFUS8bl8EybN3cBzVwL6QDtFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EFp3zdu0CQtmEhbLV3i70VDnyRtjDR1egnlxKnFTPYk=;
 b=LQNk/Giz20mu1YypHZTBGGh2XT8mbnqinYyky4WW1WPtJkDiDCL8SgFTZUmjsn+efv8u6TCcSMXhnbXfh9Zl0Ajy6AJEBjp6WeLPWuLYJWEP2XIMWgcWZUT+gOtLtPJ3c8u1zaCNDro/FuwXNOMNVs6z6ICdKlleN4C0TS1qYqZ/vkM5ZkyM2eZL7HOCyBLDx14E++e1Sh64+KH6JjnlVaRKhPUB3koyeXUtUjyNGtmRov2HFEZYogNQaVCTX63fOYSBKMNRi8czAZSEPAMr3L42uhT1EpNXX2A+bqIaL3hLU54wTv/pukm+80UqnpgcbU7THOFiaB2ePGUL7DstDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microsoft.com;dmarc=pass action=none
 header.from=microsoft.com;dkim=pass header.d=microsoft.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EFp3zdu0CQtmEhbLV3i70VDnyRtjDR1egnlxKnFTPYk=;
 b=UrIlytRzewGZHNIYEto6BrcbZavywEBG8dbfoLS9396JSgrRrqQWPwNHI/sihmUayjLxnZl5weVHC8hXNzxUpBJbmTCzdwqNczUd5xg3uybrCiGyqfiSo1vxHtSzToBtge5MoiBkL8NWDXgoiCWhJcY7/WSJjCbeNIIaBPApQnI=
Received: from DM6PR21MB1340.namprd21.prod.outlook.com (20.179.53.83) by
 DM6PR21MB1145.namprd21.prod.outlook.com (20.179.50.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.4; Fri, 28 Jun 2019 18:34:09 +0000
Received: from DM6PR21MB1340.namprd21.prod.outlook.com
 ([fe80::c817:8ed1:5d04:5a95]) by DM6PR21MB1340.namprd21.prod.outlook.com
 ([fe80::c817:8ed1:5d04:5a95%6]) with mapi id 15.20.2052.005; Fri, 28 Jun 2019
 18:34:09 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: "tglx@linutronix.de" <tglx@linutronix.de>, "mingo@redhat.com"
 <mingo@redhat.com>, "bp@alien8.de" <bp@alien8.de>, "x86@kernel.org"
 <x86@kernel.org>
Subject: [PATCH v4 2/2] Drivers: hv: Move Hyper-V clocksource code to new
 clocksource driver
Thread-Topic: [PATCH v4 2/2] Drivers: hv: Move Hyper-V clocksource code to new
 clocksource driver
Thread-Index: AQHVLeATLDB01tTFkEWwCsz+ag6J/g==
Date: Fri, 28 Jun 2019 18:34:09 +0000
Message-ID: <1561746758-23216-3-git-send-email-mikelley@microsoft.com>
References: <1561746758-23216-1-git-send-email-mikelley@microsoft.com>
In-Reply-To: <1561746758-23216-1-git-send-email-mikelley@microsoft.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: CY4PR06CA0043.namprd06.prod.outlook.com
 (2603:10b6:903:77::29) To DM6PR21MB1340.namprd21.prod.outlook.com
 (2603:10b6:5:175::19)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [131.107.174.8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b0bc641a-9ba9-4806-0aeb-08d6fbf7359a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DM6PR21MB1145; 
x-ms-traffictypediagnostic: DM6PR21MB1145:
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <DM6PR21MB11458DD6D230091267AE7E6CD7FC0@DM6PR21MB1145.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 00826B6158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(396003)(376002)(366004)(39860400002)(346002)(199004)(189003)(386003)(86362001)(2616005)(54906003)(446003)(256004)(76176011)(11346002)(110136005)(478600001)(316002)(7416002)(7406005)(6486002)(486006)(14454004)(50226002)(2201001)(52116002)(476003)(6512007)(99286004)(4720700003)(6436002)(10290500003)(53936002)(4326008)(22452003)(53946003)(25786009)(305945005)(6116002)(102836004)(5660300002)(71200400001)(71190400001)(14444005)(26005)(73956011)(66556008)(64756008)(66446008)(66476007)(186003)(36756003)(3846002)(66946007)(6506007)(7736002)(30864003)(8676002)(81156014)(81166006)(66066001)(2906002)(68736007)(2501003)(10090500001)(8936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR21MB1145;
 H:DM6PR21MB1340.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Op89X0PELWUxl+7wAoQ17sT5CPmk+MCGClcqiC/KITF/oz1Nv5LmLOoxar+kvoy2+lfvDtq4MG0xDcWF0EAy5leB9Z0CNdcwpp6qEMYVTyKPRiK6U1Mqe+GXuT1faTMnmoeCLMt39ZFjnUmRiySNmpXIRGqfpvgx1HIA11xB1j3F8XBYIzBi4lHCkuvz05PohcvZ8z8d6PwkOiww7uxGUfGmq1Kt4/xOPC9TAdKDfCiMyAecd63uQGfgUpkGEyx7HJLgnpnTfIHuwqAajtg2iNhYn0fOIn5zLHn3nx6ObgJjmVSd9dczddIigzWXaHq/SPmNHIyzyBC8ihqMRWlyR1CEl2uJRiGbSSRLoASWMFxRGzYV1dy/tAIpYysFku96LBcKjjsK61Rymja71hidDJOvhRR0ggSjCbBtBRKLTPI=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0bc641a-9ba9-4806-0aeb-08d6fbf7359a
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2019 18:34:09.5301 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lkmlmhk@microsoft.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR21MB1145
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_113413_783138_D15C34CF 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe44:0:0:0:71b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "linux@rasmusvillemoes.dk" <linux@rasmusvillemoes.dk>,
 "rkrcmar@redhat.com" <rkrcmar@redhat.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "vincenzo.frascino@arm.com" <vincenzo.frascino@arm.com>,
 "shuah@kernel.org" <shuah@kernel.org>, "sashal@kernel.org" <sashal@kernel.org>,
 "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 KY Srinivasan <kys@microsoft.com>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "olaf@aepfle.de" <olaf@aepfle.de>, "arnd@arndb.de" <arnd@arndb.de>,
 "0x7f454c46@gmail.com" <0x7f454c46@gmail.com>,
 "apw@canonical.com" <apw@canonical.com>,
 Sunil Muthuswamy <sunilmut@microsoft.com>,
 Michael Kelley <mikelley@microsoft.com>, "pcc@google.com" <pcc@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "huw@codeweavers.com" <huw@codeweavers.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 "ralf@linux-mips.org" <ralf@linux-mips.org>,
 "salyzyn@android.com" <salyzyn@android.com>,
 "paul.burton@mips.com" <paul.burton@mips.com>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>, vkuznets <vkuznets@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Continue consolidating Hyper-V clock and timer code into an ISA
independent Hyper-V clocksource driver. Move the existing clocksource
code under drivers/hv and arch/x86 to the new clocksource driver
while separating out the ISA dependencies. Update Hyper-V
initialization to call initialization and cleanup routines since the
Hyper-V synthetic clock is not independently enumerated in ACPI.
Update Hyper-V clocksource users in KVM and VDSO to get definitions
from a new include file.

No behavior is changed and no new functionality is added.

Suggested-by: Marc Zyngier <marc.zyngier@arm.com>
Reviewed-by: Vitaly Kuznetsov <vkuznets@redhat.com>
Signed-off-by: Michael Kelley <mikelley@microsoft.com>
---
 arch/x86/entry/vdso/vma.c                |   2 +-
 arch/x86/hyperv/hv_init.c                |  91 +---------------------
 arch/x86/include/asm/mshyperv.h          |  81 +++----------------
 arch/x86/include/asm/vdso/gettimeofday.h |   2 +-
 arch/x86/kvm/x86.c                       |   1 +
 drivers/clocksource/hyperv_timer.c       | 130 +++++++++++++++++++++++++++++++
 include/clocksource/hyperv_timer.h       |  78 +++++++++++++++++++
 7 files changed, 225 insertions(+), 160 deletions(-)

diff --git a/arch/x86/entry/vdso/vma.c b/arch/x86/entry/vdso/vma.c
index 8db1f59..349a61d 100644
--- a/arch/x86/entry/vdso/vma.c
+++ b/arch/x86/entry/vdso/vma.c
@@ -22,7 +22,7 @@
 #include <asm/page.h>
 #include <asm/desc.h>
 #include <asm/cpufeature.h>
-#include <asm/mshyperv.h>
+#include <clocksource/hyperv_timer.h>
 
 #if defined(CONFIG_X86_64)
 unsigned int __read_mostly vdso64_enabled = 1;
diff --git a/arch/x86/hyperv/hv_init.c b/arch/x86/hyperv/hv_init.c
index 1608050..0e033ef 100644
--- a/arch/x86/hyperv/hv_init.c
+++ b/arch/x86/hyperv/hv_init.c
@@ -17,64 +17,13 @@
 #include <linux/version.h>
 #include <linux/vmalloc.h>
 #include <linux/mm.h>
-#include <linux/clockchips.h>
 #include <linux/hyperv.h>
 #include <linux/slab.h>
 #include <linux/cpuhotplug.h>
-
-#ifdef CONFIG_HYPERV_TSCPAGE
-
-static struct ms_hyperv_tsc_page *tsc_pg;
-
-struct ms_hyperv_tsc_page *hv_get_tsc_page(void)
-{
-	return tsc_pg;
-}
-EXPORT_SYMBOL_GPL(hv_get_tsc_page);
-
-static u64 read_hv_clock_tsc(struct clocksource *arg)
-{
-	u64 current_tick = hv_read_tsc_page(tsc_pg);
-
-	if (current_tick == U64_MAX)
-		rdmsrl(HV_X64_MSR_TIME_REF_COUNT, current_tick);
-
-	return current_tick;
-}
-
-static struct clocksource hyperv_cs_tsc = {
-		.name		= "hyperv_clocksource_tsc_page",
-		.rating		= 400,
-		.read		= read_hv_clock_tsc,
-		.mask		= CLOCKSOURCE_MASK(64),
-		.flags		= CLOCK_SOURCE_IS_CONTINUOUS,
-};
-#endif
-
-static u64 read_hv_clock_msr(struct clocksource *arg)
-{
-	u64 current_tick;
-	/*
-	 * Read the partition counter to get the current tick count. This count
-	 * is set to 0 when the partition is created and is incremented in
-	 * 100 nanosecond units.
-	 */
-	rdmsrl(HV_X64_MSR_TIME_REF_COUNT, current_tick);
-	return current_tick;
-}
-
-static struct clocksource hyperv_cs_msr = {
-	.name		= "hyperv_clocksource_msr",
-	.rating		= 400,
-	.read		= read_hv_clock_msr,
-	.mask		= CLOCKSOURCE_MASK(64),
-	.flags		= CLOCK_SOURCE_IS_CONTINUOUS,
-};
+#include <clocksource/hyperv_timer.h>
 
 void *hv_hypercall_pg;
 EXPORT_SYMBOL_GPL(hv_hypercall_pg);
-struct clocksource *hyperv_cs;
-EXPORT_SYMBOL_GPL(hyperv_cs);
 
 u32 *hv_vp_index;
 EXPORT_SYMBOL_GPL(hv_vp_index);
@@ -343,42 +292,8 @@ void __init hyperv_init(void)
 
 	x86_init.pci.arch_init = hv_pci_init;
 
-	/*
-	 * Register Hyper-V specific clocksource.
-	 */
-#ifdef CONFIG_HYPERV_TSCPAGE
-	if (ms_hyperv.features & HV_MSR_REFERENCE_TSC_AVAILABLE) {
-		union hv_x64_msr_hypercall_contents tsc_msr;
-
-		tsc_pg = __vmalloc(PAGE_SIZE, GFP_KERNEL, PAGE_KERNEL);
-		if (!tsc_pg)
-			goto register_msr_cs;
-
-		hyperv_cs = &hyperv_cs_tsc;
-
-		rdmsrl(HV_X64_MSR_REFERENCE_TSC, tsc_msr.as_uint64);
-
-		tsc_msr.enable = 1;
-		tsc_msr.guest_physical_address = vmalloc_to_pfn(tsc_pg);
-
-		wrmsrl(HV_X64_MSR_REFERENCE_TSC, tsc_msr.as_uint64);
-
-		hyperv_cs_tsc.archdata.vclock_mode = VCLOCK_HVCLOCK;
-
-		clocksource_register_hz(&hyperv_cs_tsc, NSEC_PER_SEC/100);
-		return;
-	}
-register_msr_cs:
-#endif
-	/*
-	 * For 32 bit guests just use the MSR based mechanism for reading
-	 * the partition counter.
-	 */
-
-	hyperv_cs = &hyperv_cs_msr;
-	if (ms_hyperv.features & HV_MSR_TIME_REF_COUNT_AVAILABLE)
-		clocksource_register_hz(&hyperv_cs_msr, NSEC_PER_SEC/100);
-
+	/* Register Hyper-V specific clocksource */
+	hv_init_clocksource();
 	return;
 
 remove_cpuhp_state:
diff --git a/arch/x86/include/asm/mshyperv.h b/arch/x86/include/asm/mshyperv.h
index cc60e61..f4fa8a9 100644
--- a/arch/x86/include/asm/mshyperv.h
+++ b/arch/x86/include/asm/mshyperv.h
@@ -105,6 +105,17 @@ static inline void vmbus_signal_eom(struct hv_message *msg, u32 old_msg_type)
 #define hv_get_crash_ctl(val) \
 	rdmsrl(HV_X64_MSR_CRASH_CTL, val)
 
+#define hv_get_time_ref_count(val) \
+	rdmsrl(HV_X64_MSR_TIME_REF_COUNT, val)
+
+#define hv_get_reference_tsc(val) \
+	rdmsrl(HV_X64_MSR_REFERENCE_TSC, val)
+#define hv_set_reference_tsc(val) \
+	wrmsrl(HV_X64_MSR_REFERENCE_TSC, val)
+#define hv_set_clocksource_vdso(val) \
+	((val).archdata.vclock_mode = VCLOCK_HVCLOCK)
+#define hv_get_raw_timer() rdtsc_ordered()
+
 void hyperv_callback_vector(void);
 void hyperv_reenlightenment_vector(void);
 #ifdef CONFIG_TRACING
@@ -133,7 +144,6 @@ static inline void hv_disable_stimer0_percpu_irq(int irq) {}
 
 
 #if IS_ENABLED(CONFIG_HYPERV)
-extern struct clocksource *hyperv_cs;
 extern void *hv_hypercall_pg;
 extern void  __percpu  **hyperv_pcpu_input_arg;
 
@@ -387,73 +397,4 @@ static inline int hyperv_flush_guest_mapping_range(u64 as,
 }
 #endif /* CONFIG_HYPERV */
 
-#ifdef CONFIG_HYPERV_TSCPAGE
-struct ms_hyperv_tsc_page *hv_get_tsc_page(void);
-static inline u64 hv_read_tsc_page_tsc(const struct ms_hyperv_tsc_page *tsc_pg,
-				       u64 *cur_tsc)
-{
-	u64 scale, offset;
-	u32 sequence;
-
-	/*
-	 * The protocol for reading Hyper-V TSC page is specified in Hypervisor
-	 * Top-Level Functional Specification ver. 3.0 and above. To get the
-	 * reference time we must do the following:
-	 * - READ ReferenceTscSequence
-	 *   A special '0' value indicates the time source is unreliable and we
-	 *   need to use something else. The currently published specification
-	 *   versions (up to 4.0b) contain a mistake and wrongly claim '-1'
-	 *   instead of '0' as the special value, see commit c35b82ef0294.
-	 * - ReferenceTime =
-	 *        ((RDTSC() * ReferenceTscScale) >> 64) + ReferenceTscOffset
-	 * - READ ReferenceTscSequence again. In case its value has changed
-	 *   since our first reading we need to discard ReferenceTime and repeat
-	 *   the whole sequence as the hypervisor was updating the page in
-	 *   between.
-	 */
-	do {
-		sequence = READ_ONCE(tsc_pg->tsc_sequence);
-		if (!sequence)
-			return U64_MAX;
-		/*
-		 * Make sure we read sequence before we read other values from
-		 * TSC page.
-		 */
-		smp_rmb();
-
-		scale = READ_ONCE(tsc_pg->tsc_scale);
-		offset = READ_ONCE(tsc_pg->tsc_offset);
-		*cur_tsc = rdtsc_ordered();
-
-		/*
-		 * Make sure we read sequence after we read all other values
-		 * from TSC page.
-		 */
-		smp_rmb();
-
-	} while (READ_ONCE(tsc_pg->tsc_sequence) != sequence);
-
-	return mul_u64_u64_shr(*cur_tsc, scale, 64) + offset;
-}
-
-static inline u64 hv_read_tsc_page(const struct ms_hyperv_tsc_page *tsc_pg)
-{
-	u64 cur_tsc;
-
-	return hv_read_tsc_page_tsc(tsc_pg, &cur_tsc);
-}
-
-#else
-static inline struct ms_hyperv_tsc_page *hv_get_tsc_page(void)
-{
-	return NULL;
-}
-
-static inline u64 hv_read_tsc_page_tsc(const struct ms_hyperv_tsc_page *tsc_pg,
-				       u64 *cur_tsc)
-{
-	BUG();
-	return U64_MAX;
-}
-#endif
 #endif
diff --git a/arch/x86/include/asm/vdso/gettimeofday.h b/arch/x86/include/asm/vdso/gettimeofday.h
index a14039a..ae91429 100644
--- a/arch/x86/include/asm/vdso/gettimeofday.h
+++ b/arch/x86/include/asm/vdso/gettimeofday.h
@@ -18,7 +18,7 @@
 #include <asm/unistd.h>
 #include <asm/msr.h>
 #include <asm/pvclock.h>
-#include <asm/mshyperv.h>
+#include <clocksource/hyperv_timer.h>
 
 #define __vdso_data (VVAR(_vdso_data))
 
diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index 9857992..07ddb1e 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -67,6 +67,7 @@
 #include <asm/mshyperv.h>
 #include <asm/hypervisor.h>
 #include <asm/intel_pt.h>
+#include <clocksource/hyperv_timer.h>
 
 #define CREATE_TRACE_POINTS
 #include "trace.h"
diff --git a/drivers/clocksource/hyperv_timer.c b/drivers/clocksource/hyperv_timer.c
index 30615f3..274614d 100644
--- a/drivers/clocksource/hyperv_timer.c
+++ b/drivers/clocksource/hyperv_timer.c
@@ -14,6 +14,8 @@
 #include <linux/percpu.h>
 #include <linux/cpumask.h>
 #include <linux/clockchips.h>
+#include <linux/clocksource.h>
+#include <linux/sched_clock.h>
 #include <linux/mm.h>
 #include <clocksource/hyperv_timer.h>
 #include <asm/hyperv-tlfs.h>
@@ -189,3 +191,131 @@ void hv_stimer_global_cleanup(void)
 	hv_stimer_free();
 }
 EXPORT_SYMBOL_GPL(hv_stimer_global_cleanup);
+
+/*
+ * Code and definitions for the Hyper-V clocksources.  Two
+ * clocksources are defined: one that reads the Hyper-V defined MSR, and
+ * the other that uses the TSC reference page feature as defined in the
+ * TLFS.  The MSR version is for compatibility with old versions of
+ * Hyper-V and 32-bit x86.  The TSC reference page version is preferred.
+ */
+
+struct clocksource *hyperv_cs;
+EXPORT_SYMBOL_GPL(hyperv_cs);
+
+#ifdef CONFIG_HYPERV_TSCPAGE
+
+static struct ms_hyperv_tsc_page *tsc_pg;
+
+struct ms_hyperv_tsc_page *hv_get_tsc_page(void)
+{
+	return tsc_pg;
+}
+EXPORT_SYMBOL_GPL(hv_get_tsc_page);
+
+static u64 read_hv_sched_clock_tsc(void)
+{
+	u64 current_tick = hv_read_tsc_page(tsc_pg);
+
+	if (current_tick == U64_MAX)
+		hv_get_time_ref_count(current_tick);
+
+	return current_tick;
+}
+
+static u64 read_hv_clock_tsc(struct clocksource *arg)
+{
+	return read_hv_sched_clock_tsc();
+}
+
+static struct clocksource hyperv_cs_tsc = {
+		.name		= "hyperv_clocksource_tsc_page",
+		.rating		= 400,
+		.read		= read_hv_clock_tsc,
+		.mask		= CLOCKSOURCE_MASK(64),
+		.flags		= CLOCK_SOURCE_IS_CONTINUOUS,
+};
+#endif
+
+static u64 read_hv_sched_clock_msr(void)
+{
+	u64 current_tick;
+	/*
+	 * Read the partition counter to get the current tick count. This count
+	 * is set to 0 when the partition is created and is incremented in
+	 * 100 nanosecond units.
+	 */
+	hv_get_time_ref_count(current_tick);
+	return current_tick;
+}
+
+static u64 read_hv_clock_msr(struct clocksource *arg)
+{
+	return read_hv_sched_clock_msr();
+}
+
+static struct clocksource hyperv_cs_msr = {
+	.name		= "hyperv_clocksource_msr",
+	.rating		= 400,
+	.read		= read_hv_clock_msr,
+	.mask		= CLOCKSOURCE_MASK(64),
+	.flags		= CLOCK_SOURCE_IS_CONTINUOUS,
+};
+
+void __init hv_init_clocksource(void)
+{
+#ifdef CONFIG_HYPERV_TSCPAGE
+	if (ms_hyperv.features & HV_MSR_REFERENCE_TSC_AVAILABLE) {
+
+		u64		tsc_msr;
+		phys_addr_t	phys_addr;
+
+		tsc_pg = vmalloc(PAGE_SIZE);
+		if (!tsc_pg)
+			goto register_msr_cs;
+
+		hyperv_cs = &hyperv_cs_tsc;
+		phys_addr = page_to_phys(vmalloc_to_page(tsc_pg));
+
+		/* The Hyper-V TLFS specifies to preserve the value of
+		 * reserved bits in registers.  So read the existing
+		 * value, preserve the low order 12 bits, and add in
+		 * the guest physical address (which already has at
+		 * least the low 12 bits set to zero since it is page
+		 * aligned). Also set the "enable" bit, which is bit 0.
+		 */
+		hv_get_reference_tsc(tsc_msr);
+		tsc_msr &= GENMASK_ULL(11, 0);
+		tsc_msr = tsc_msr | 0x1 | (u64)phys_addr;
+		hv_set_reference_tsc(tsc_msr);
+
+		hv_set_clocksource_vdso(hyperv_cs_tsc);
+		clocksource_register_hz(&hyperv_cs_tsc, NSEC_PER_SEC/100);
+
+		/*
+		 * sched_clock_register is needed on ARM64 but
+		 * is a no-op on x86
+		 */
+		sched_clock_register(read_hv_sched_clock_tsc,
+						64, HV_CLOCK_HZ);
+		return;
+	}
+register_msr_cs:
+#endif
+	/*
+	 * For 32 bit guests just use the MSR based mechanism for reading
+	 * the partition counter.
+	 */
+	hyperv_cs = &hyperv_cs_msr;
+	if (ms_hyperv.features & HV_MSR_TIME_REF_COUNT_AVAILABLE) {
+		clocksource_register_hz(&hyperv_cs_msr, NSEC_PER_SEC/100);
+
+		/*
+		 * sched_clock_register is needed on ARM64 but
+		 * is a no-op on x86
+		 */
+		sched_clock_register(read_hv_sched_clock_msr,
+						64, HV_CLOCK_HZ);
+	}
+}
+EXPORT_SYMBOL_GPL(hv_init_clocksource);
diff --git a/include/clocksource/hyperv_timer.h b/include/clocksource/hyperv_timer.h
index ba5dc17..e17e8a2 100644
--- a/include/clocksource/hyperv_timer.h
+++ b/include/clocksource/hyperv_timer.h
@@ -13,6 +13,10 @@
 #ifndef __CLKSOURCE_HYPERV_TIMER_H
 #define __CLKSOURCE_HYPERV_TIMER_H
 
+#include <linux/clocksource.h>
+#include <linux/math64.h>
+#include <asm/mshyperv.h>
+
 #define HV_MAX_MAX_DELTA_TICKS 0xffffffff
 #define HV_MIN_DELTA_TICKS 1
 
@@ -24,4 +28,78 @@
 extern void hv_stimer_global_cleanup(void);
 extern void hv_stimer0_isr(void);
 
+#if IS_ENABLED(CONFIG_HYPERV)
+extern struct clocksource *hyperv_cs;
+extern void hv_init_clocksource(void);
+#endif /* CONFIG_HYPERV */
+
+#ifdef CONFIG_HYPERV_TSCPAGE
+extern struct ms_hyperv_tsc_page *hv_get_tsc_page(void);
+static inline u64 hv_read_tsc_page_tsc(const struct ms_hyperv_tsc_page *tsc_pg,
+				       u64 *cur_tsc)
+{
+	u64 scale, offset;
+	u32 sequence;
+
+	/*
+	 * The protocol for reading Hyper-V TSC page is specified in Hypervisor
+	 * Top-Level Functional Specification ver. 3.0 and above. To get the
+	 * reference time we must do the following:
+	 * - READ ReferenceTscSequence
+	 *   A special '0' value indicates the time source is unreliable and we
+	 *   need to use something else. The currently published specification
+	 *   versions (up to 4.0b) contain a mistake and wrongly claim '-1'
+	 *   instead of '0' as the special value, see commit c35b82ef0294.
+	 * - ReferenceTime =
+	 *        ((RDTSC() * ReferenceTscScale) >> 64) + ReferenceTscOffset
+	 * - READ ReferenceTscSequence again. In case its value has changed
+	 *   since our first reading we need to discard ReferenceTime and repeat
+	 *   the whole sequence as the hypervisor was updating the page in
+	 *   between.
+	 */
+	do {
+		sequence = READ_ONCE(tsc_pg->tsc_sequence);
+		if (!sequence)
+			return U64_MAX;
+		/*
+		 * Make sure we read sequence before we read other values from
+		 * TSC page.
+		 */
+		smp_rmb();
+
+		scale = READ_ONCE(tsc_pg->tsc_scale);
+		offset = READ_ONCE(tsc_pg->tsc_offset);
+		*cur_tsc = hv_get_raw_timer();
+
+		/*
+		 * Make sure we read sequence after we read all other values
+		 * from TSC page.
+		 */
+		smp_rmb();
+
+	} while (READ_ONCE(tsc_pg->tsc_sequence) != sequence);
+
+	return mul_u64_u64_shr(*cur_tsc, scale, 64) + offset;
+}
+
+static inline u64 hv_read_tsc_page(const struct ms_hyperv_tsc_page *tsc_pg)
+{
+	u64 cur_tsc;
+
+	return hv_read_tsc_page_tsc(tsc_pg, &cur_tsc);
+}
+
+#else /* CONFIG_HYPERV_TSC_PAGE */
+static inline struct ms_hyperv_tsc_page *hv_get_tsc_page(void)
+{
+	return NULL;
+}
+
+static inline u64 hv_read_tsc_page_tsc(const struct ms_hyperv_tsc_page *tsc_pg,
+				       u64 *cur_tsc)
+{
+	return U64_MAX;
+}
+#endif /* CONFIG_HYPERV_TSCPAGE */
+
 #endif
-- 
1.8.3.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
