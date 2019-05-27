Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C08C2B7FB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 17:00:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B8FxnLVSAU0+rs/+VGZSa4F+YI+KAvP2sogD4TNOG3o=; b=RmpBElbtSAtB8A
	kCqTN8xXz4YwsqGynDOIRfhWRF+KMhWFyPMjiLrD7i4VUqdq6DDRhtagbl0a9cIEYMOgFmGv1n17F
	cxw7LWTpK7Rf+eYZbffSzqnqHxTPLoKH78Yo0Xw5h7wCvXQqnU925/WyabwvChuqDVaNut8EFv7gW
	68dkXQjVk0L044lIbLU0lEhtnMvcIxG1yol85kqbdnsg2mbkTZkb4uZxcYHyd56o+NE2C1MJ3KtBX
	05FDxRtJZKdchDN60AFwOJBi5+fXXByqH+a/Z4BVHrZ4J5VtKq0ZjSu6LQlQ+xGEPZW7BKIcaMFGy
	URVTvfzm4ZO0tYYCb+2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVH6m-0005P2-T9; Mon, 27 May 2019 15:00:16 +0000
Received: from mail-eopbgr690108.outbound.protection.outlook.com
 ([40.107.69.108] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVH62-0004nu-Li
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 14:59:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=testarcselector01; d=microsoft.com; cv=none;
 b=U6LsRukQqXom6K/eU7xcvcaiS+tQyQJci/JI1/3JW2oo5K9NvGnd3Yo9y6Ob0m9WulT7k3mD9IhhW2X2ZuUwMYOqe4ts0UQ1KJEqbgNZMj13FuxTlqrERmWn6+i9jvXu2LqG1EI3j+7WBZuPRmOxpFiPPM9ZIdS1OZCYw2NJ5dY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=testarcselector01;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KdzFES4fo5RZ/OtVl+/Hkgd+N+ouJx5xK2yGc4UHjWA=;
 b=DsdBJqSmQndDe5b6XBSIgP2qn4ENxX2sXsYA07DIZGcg5CGHTADuAGuZIAB8Eo6cfEEc3nZC5MoTTFq05rQUxGfUFJ7oUClRLHaM+2G9hzTT1m0Bpe0ooGMHKhSmCLBXZC+kS9u/XGuee29pWT4onJU6LrUddjHMKp+CCIA5voE=
ARC-Authentication-Results: i=1; test.office365.com 1;spf=none;dmarc=none
 action=none header.from=microsoft.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KdzFES4fo5RZ/OtVl+/Hkgd+N+ouJx5xK2yGc4UHjWA=;
 b=TSygfZUBLT4XoYi97ItWRs7j88ljSpGILGWe7LRMzdNkZuoKEkQQsW0Fnrz3O5SRHqF69GRiN/u7xy8gK7OGiAyO9sfvxAm6bx9sWdJW5xuWfSbL4a56GbeinVJW/nXKVWNq4lUibXZAL+zguUaFbPjpfeLkgkDamZiccWO2ams=
Received: from DM6PR21MB1340.namprd21.prod.outlook.com (2603:10b6:5:175::19)
 by DM6PR21MB1339.namprd21.prod.outlook.com (2603:10b6:5:175::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1878.9; Mon, 27 May
 2019 14:59:26 +0000
Received: from DM6PR21MB1340.namprd21.prod.outlook.com
 ([fe80::5057:9e3c:bcc5:9470]) by DM6PR21MB1340.namprd21.prod.outlook.com
 ([fe80::5057:9e3c:bcc5:9470%3]) with mapi id 15.20.1943.006; Mon, 27 May 2019
 14:59:26 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: "will.deacon@arm.com" <will.deacon@arm.com>, "marc.zyngier@arm.com"
 <marc.zyngier@arm.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-hyperv@vger.kernel.org"
 <linux-hyperv@vger.kernel.org>, "olaf@aepfle.de" <olaf@aepfle.de>,
 "apw@canonical.com" <apw@canonical.com>, vkuznets <vkuznets@redhat.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>, "marcelo.cerri@canonical.com"
 <marcelo.cerri@canonical.com>, Sunil Muthuswamy <sunilmut@microsoft.com>, KY
 Srinivasan <kys@microsoft.com>
Subject: [PATCH v3 2/2] Drivers: hv: Move Hyper-V clocksource code to new
 clocksource driver
Thread-Topic: [PATCH v3 2/2] Drivers: hv: Move Hyper-V clocksource code to new
 clocksource driver
Thread-Index: AQHVFJzHbJqXU3m750yCHgYOOvgygg==
Date: Mon, 27 May 2019 14:59:26 +0000
Message-ID: <1558969089-13204-3-git-send-email-mikelley@microsoft.com>
References: <1558969089-13204-1-git-send-email-mikelley@microsoft.com>
In-Reply-To: <1558969089-13204-1-git-send-email-mikelley@microsoft.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR12CA0056.namprd12.prod.outlook.com
 (2603:10b6:300:103::18) To DM6PR21MB1340.namprd21.prod.outlook.com
 (2603:10b6:5:175::19)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [167.220.2.136]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 432caf33-9caa-4b00-d455-08d6e2b3e98b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DM6PR21MB1339; 
x-ms-traffictypediagnostic: DM6PR21MB1339:
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <DM6PR21MB1339142CAC0DDAA5D9D4A852D71D0@DM6PR21MB1339.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0050CEFE70
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(39860400002)(376002)(136003)(346002)(396003)(199004)(189003)(52116002)(7416002)(52396003)(64756008)(81166006)(14454004)(99286004)(6512007)(6436002)(2616005)(6636002)(76176011)(71190400001)(256004)(53936002)(71200400001)(476003)(26005)(73956011)(66476007)(66446008)(6486002)(68736007)(8936002)(4720700003)(478600001)(1511001)(53946003)(7736002)(66946007)(386003)(11346002)(446003)(66066001)(66556008)(2501003)(2201001)(50226002)(54906003)(102836004)(22452003)(81156014)(305945005)(486006)(10090500001)(8676002)(186003)(316002)(25786009)(14444005)(3846002)(36756003)(4326008)(30864003)(10290500003)(5660300002)(86362001)(110136005)(6116002)(86612001)(6506007)(2906002)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR21MB1339;
 H:DM6PR21MB1340.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: UfxzRtR/LEIlsYYIXr1qUb7SMAsiTHCWP9Cv3LU9m/rhWurOT8bJNf5MTCTqWPSlwFret/u829lctk4lLpmfaN8dwyinkZHx+p+oixvSIzsp5MYKAbZdqVN7nKIB8EIHS92N/J112Bi0W/0SiHBgbcWBosRRfCSaZvRGrvV3fFINS4U/bs7DodwOCSel3IcOJOqkj6/SD+sbVL6ux6ehR/lH8tIJbthKnRTVNLyA9GCv2KJsuxvfMVQrcZ/DyXpah8zMa6jRxt2v/j9dnZJ7/ciyeUjYrL+W0VIedfWjcr+7IKd7pGbGz9J83uBd3sO2HEHUJe/Da58VFeIPfTxURM7tj4Uc9CSNAGijy4W6FSiKw5NA0juWZEUhqPuti/ivcX/SO4yaxmF2nCwbLgPqAu2f23Uj857ikOl0zGjtpTA=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 432caf33-9caa-4b00-d455-08d6e2b3e98b
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2019 14:59:26.6563 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR21MB1339
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_075930_998796_BB33CDD6 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.108 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Michael Kelley <mikelley@microsoft.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Code for the Hyper-V specific clocksources is currently mixed
in with other Hyper-V code. Move the code to the Hyper-V specific
driver in the "clocksource" directory, while separating out
ISA dependencies so that the clocksource driver remains ISA
independent. Update the Hyper-V initialization code to call
initialization and cleanup routines since the Hyper-V synthetic
timers are not independently enumerated in ACPI. Update Hyper-V
clocksource users KVM and VDSO to get definitions from a new
include file.

No behavior is changed and no new functionality is added.

Suggested-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Michael Kelley <mikelley@microsoft.com>
---
 arch/x86/entry/vdso/vclock_gettime.c |   1 +
 arch/x86/entry/vdso/vma.c            |   2 +-
 arch/x86/hyperv/hv_init.c            |  91 +-----------------------
 arch/x86/include/asm/mshyperv.h      |  81 +++-------------------
 arch/x86/kvm/x86.c                   |   1 +
 drivers/clocksource/hyperv_timer.c   | 130 +++++++++++++++++++++++++++++++++++
 drivers/hv/hv_util.c                 |   1 +
 include/clocksource/hyperv_timer.h   |  78 +++++++++++++++++++++
 8 files changed, 226 insertions(+), 159 deletions(-)

diff --git a/arch/x86/entry/vdso/vclock_gettime.c b/arch/x86/entry/vdso/vclock_gettime.c
index 98c7d12..7983ca2 100644
--- a/arch/x86/entry/vdso/vclock_gettime.c
+++ b/arch/x86/entry/vdso/vclock_gettime.c
@@ -21,6 +21,7 @@
 #include <linux/math64.h>
 #include <linux/time.h>
 #include <linux/kernel.h>
+#include <clocksource/hyperv_timer.h>
 
 #define gtod (&VVAR(vsyscall_gtod_data))
 
diff --git a/arch/x86/entry/vdso/vma.c b/arch/x86/entry/vdso/vma.c
index babc4e7..99b38e9 100644
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
index e4ba467..79f626a 100644
--- a/arch/x86/hyperv/hv_init.c
+++ b/arch/x86/hyperv/hv_init.c
@@ -27,64 +27,13 @@
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
@@ -353,42 +302,8 @@ void __init hyperv_init(void)
 
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
diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index 536b78c..3fbaac0 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -70,6 +70,7 @@
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
diff --git a/drivers/hv/hv_util.c b/drivers/hv/hv_util.c
index f10eeb1..9eff85e 100644
--- a/drivers/hv/hv_util.c
+++ b/drivers/hv/hv_util.c
@@ -29,6 +29,7 @@
 #include <linux/hyperv.h>
 #include <linux/clockchips.h>
 #include <linux/ptp_clock_kernel.h>
+#include <clocksource/hyperv_timer.h>
 #include <asm/mshyperv.h>
 
 #include "hyperv_vmbus.h"
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
