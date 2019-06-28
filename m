Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B17645A3B3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 20:34:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4VyXWDpxw7qt3ElKs5JcqjXOxmJC+yaj98LEXTwVPcU=; b=DQm4IpVxQKnhGc
	aXhZ2vm95py7EH4rvs4vsfVOjTM7y5OIXPhoNnVnwo7ugKA+wY7+cBv6LySk/+peHAgUXReY3zie3
	HdIUJ2S8eUj0z7gCaJPvoYyTmZVMsoZVcS4oVMoo8+dB9R589k2K1RoOTBhtql0tmR71o9rJSaR5D
	3sgIpK57i3auuw7nlWd827Mh8tOFPCoHRdfHhfMHY7U/Y+ZEuthyAyUTBYuXHcBaO1a5sX+wSJ5x7
	7sVqlK+sFBXQNpwYIqqDu13xYcP16j2VTssjhl7SyLPN63rd+UH0A4VatrMDpM0WhDjGLifvFlCNi
	xbmIo5A/FUxGDPTrcbSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgvhp-0007lD-FZ; Fri, 28 Jun 2019 18:34:41 +0000
Received: from mail-eopbgr770109.outbound.protection.outlook.com
 ([40.107.77.109] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgvh8-0007Yj-V8
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 18:34:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SGCAMF8zISBHLaU5CaZb4qFzzbZbUZNAPoYt4mK6asiP3+XUXJArq8g6q4IgCTi6COGWx6RNA4Ce9Hp6obkc76ldHmpLRN/kwD7TbmDH4PHqBuK/dKq+ncvd/qw8XRMZdBc/7tKxVldYk8tXDlCHhS/FetKvVZI+xDi2m2MyiJa9uho9wkPuEZ2fpEoLken11dzehAZTh5RMuBOTFrVPA9poUIT+5DQKLNotu2DLxYog2oXGNF5kz0SIzt4RzR49DPguzrnBFtNeQTfZ2hVqT/wrGxA3xLlNhjVj4UInYsw42Jha6Rqu8tio74QgaHKPUY6flK+VWkNwLGJkj0Loww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UAc+LbRde22alyzV6iuvLw3u9fwe2eMXQ8pSZ6eQHdI=;
 b=M/7EkuuyWwzuJV/lZHYAlwrn7sHnflk42xlHgq+8hJLWxQa8kqfN0ehjymle/J1bDBsBfq4Qq8sYRM3vzUC8w52rpFjiDFVuWfUlJvQQvwoiSM0GFjdLqlTjEfYRVG17QOYwPuSghCeB3boVAuBPbflpdHv0dgnUkb4UxQavQ2WlncKlOQ6NEQv2Pqcv2sMgPpbHuDFP6AgMcKKFIzQynehPAMx9PSDCaHH54/pNN8019e/Q8DqOH1nOP816cSwDIxnWh/GmkwX10jtuM9T2EnpMgOWlDgU30mIWTu4FIirAeekIxy9HPbziLnH+zHbSdTh6jrkKm6CNecPHOlXXUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microsoft.com;dmarc=pass action=none
 header.from=microsoft.com;dkim=pass header.d=microsoft.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UAc+LbRde22alyzV6iuvLw3u9fwe2eMXQ8pSZ6eQHdI=;
 b=fdu54BecKUS1QfKT5VSmIo3wjpNLsX6LC6p3Wm0YKpWaVyfTktyi7Yvo3PjkJ9JiC4vjiCB4NNpAEYcuUmwBvdIjla3bTFptFV2erHhSMqWu0af+kajCsxD/xaTbppVhIHOBk9OPdPRlXjQnvqc8uMFO8eXiUOjr0yMk9ngI7g8=
Received: from DM6PR21MB1340.namprd21.prod.outlook.com (20.179.53.83) by
 DM6PR21MB1145.namprd21.prod.outlook.com (20.179.50.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.4; Fri, 28 Jun 2019 18:33:56 +0000
Received: from DM6PR21MB1340.namprd21.prod.outlook.com
 ([fe80::c817:8ed1:5d04:5a95]) by DM6PR21MB1340.namprd21.prod.outlook.com
 ([fe80::c817:8ed1:5d04:5a95%6]) with mapi id 15.20.2052.005; Fri, 28 Jun 2019
 18:33:56 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: "tglx@linutronix.de" <tglx@linutronix.de>, "mingo@redhat.com"
 <mingo@redhat.com>, "bp@alien8.de" <bp@alien8.de>, "x86@kernel.org"
 <x86@kernel.org>
Subject: [PATCH v4 1/2] Drivers: hv: Create Hyper-V clocksource driver from
 existing clockevents code
Thread-Topic: [PATCH v4 1/2] Drivers: hv: Create Hyper-V clocksource driver
 from existing clockevents code
Thread-Index: AQHVLeALUPgTamSgkEu8syQSr2RTjA==
Date: Fri, 28 Jun 2019 18:33:55 +0000
Message-ID: <1561746758-23216-2-git-send-email-mikelley@microsoft.com>
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
x-ms-office365-filtering-correlation-id: 930eba6d-15ed-4852-a9af-08d6fbf72d86
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DM6PR21MB1145; 
x-ms-traffictypediagnostic: DM6PR21MB1145:
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <DM6PR21MB1145F0E7B80CBE07B2DA460FD7FC0@DM6PR21MB1145.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00826B6158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(396003)(376002)(366004)(39860400002)(346002)(199004)(189003)(386003)(86362001)(2616005)(54906003)(446003)(256004)(76176011)(11346002)(110136005)(478600001)(316002)(7416002)(7406005)(6486002)(486006)(14454004)(50226002)(2201001)(52116002)(476003)(6512007)(99286004)(4720700003)(6436002)(10290500003)(53936002)(4326008)(22452003)(53946003)(25786009)(305945005)(6116002)(102836004)(5660300002)(71200400001)(71190400001)(14444005)(26005)(73956011)(66556008)(64756008)(66446008)(66476007)(186003)(36756003)(3846002)(66946007)(6506007)(7736002)(30864003)(8676002)(81156014)(81166006)(66066001)(2906002)(68736007)(2501003)(10090500001)(8936002)(579004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR21MB1145;
 H:DM6PR21MB1340.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: JqJnuK8YH5UVHsy1FHRBvTGkETgid+awYspzIzZhI0gt4LpDDPyA/m0fo5LZ3nNfhEjuRZ4E+pUcsG1cvKyeGranaooNmI35GMHthuLPR2w69jiK6uvy7eXfYV/CPKHutRjXpE7Nwg20CdBuWOXgxmmHPvlgndN3orNk6/ABHTGjlZG1MsysOHZqkw69haGwsdbcouFFhyDrmTWJOOoBflit7ZLW9/w6QF/mz6mQTlI7XlYx8SkRD2puyEhqtIlg2LDc1WUtkhrYRjUdM0mlUBBm0YXqM3QioKl+MDMmJROfzbphFFjfA2H5xHB3wa0Mdl63diauoj2k9m5QSUa6sPj+CO3mlOZfHDVxL9vrIUL3HizzAIjc5ZCtxQ5YpuKUWwzxeEWa77nMJ5BGUxokeh8We9sqfvY4o9uRU5d/gFs=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 930eba6d-15ed-4852-a9af-08d6fbf72d86
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2019 18:33:55.9693 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lkmlmhk@microsoft.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR21MB1145
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_113359_050243_53E4B3F8 
X-CRM114-Status: GOOD (  18.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.109 listed in list.dnswl.org]
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

Hyper-V clock/timer code and data structures are currently mixed
in with other code in the ISA independent drivers/hv directory as
well as the ISA dependent Hyper-V code under arch/x86.  Consolidate
this code and data structures into a Hyper-V clocksource driver to
better follow the Linux model. In doing so, separate out the ISA
dependent portions so the new clocksource driver works for x86 and
for the in-process Hyper-V on ARM64 code.

To start, move the existing clockevents code to create the
new clocksource driver. Update the VMbus driver to call
initialization and cleanup routines since the Hyper-V
synthetic timers are not independently enumerated in ACPI.

No behavior is changed and no new functionality is added.

Suggested-by: Marc Zyngier <marc.zyngier@arm.com>
Reviewed-by: Vitaly Kuznetsov <vkuznets@redhat.com>
Signed-off-by: Michael Kelley <mikelley@microsoft.com>
---
 MAINTAINERS                        |   2 +
 arch/x86/include/asm/hyperv-tlfs.h |   6 ++
 arch/x86/kernel/cpu/mshyperv.c     |   2 +
 drivers/clocksource/Makefile       |   1 +
 drivers/clocksource/hyperv_timer.c | 191 +++++++++++++++++++++++++++++++++++++
 drivers/hv/Kconfig                 |   3 +
 drivers/hv/hv.c                    | 156 +-----------------------------
 drivers/hv/hyperv_vmbus.h          |   3 -
 drivers/hv/vmbus_drv.c             |  42 ++++----
 include/clocksource/hyperv_timer.h |  27 ++++++
 10 files changed, 258 insertions(+), 175 deletions(-)
 create mode 100644 drivers/clocksource/hyperv_timer.c
 create mode 100644 include/clocksource/hyperv_timer.h

diff --git a/MAINTAINERS b/MAINTAINERS
index a281297..bfde42a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7313,6 +7313,7 @@ F:	arch/x86/include/asm/trace/hyperv.h
 F:	arch/x86/include/asm/hyperv-tlfs.h
 F:	arch/x86/kernel/cpu/mshyperv.c
 F:	arch/x86/hyperv
+F:	drivers/clocksource/hyperv_timer.c
 F:	drivers/hid/hid-hyperv.c
 F:	drivers/hv/
 F:	drivers/input/serio/hyperv-keyboard.c
@@ -7323,6 +7324,7 @@ F:	drivers/uio/uio_hv_generic.c
 F:	drivers/video/fbdev/hyperv_fb.c
 F:	drivers/iommu/hyperv_iommu.c
 F:	net/vmw_vsock/hyperv_transport.c
+F:	include/clocksource/hyperv_timer.h
 F:	include/linux/hyperv.h
 F:	include/uapi/linux/hyperv.h
 F:	tools/hv/
diff --git a/arch/x86/include/asm/hyperv-tlfs.h b/arch/x86/include/asm/hyperv-tlfs.h
index cdf44aa..af78cd7 100644
--- a/arch/x86/include/asm/hyperv-tlfs.h
+++ b/arch/x86/include/asm/hyperv-tlfs.h
@@ -401,6 +401,12 @@ enum HV_GENERIC_SET_FORMAT {
 #define HV_STATUS_INVALID_CONNECTION_ID		18
 #define HV_STATUS_INSUFFICIENT_BUFFERS		19
 
+/*
+ * The Hyper-V TimeRefCount register and the TSC
+ * page provide a guest VM clock with 100ns tick rate
+ */
+#define HV_CLOCK_HZ (NSEC_PER_SEC/100)
+
 typedef struct _HV_REFERENCE_TSC_PAGE {
 	__u32 tsc_sequence;
 	__u32 res1;
diff --git a/arch/x86/kernel/cpu/mshyperv.c b/arch/x86/kernel/cpu/mshyperv.c
index 7df29f0..b822fa6 100644
--- a/arch/x86/kernel/cpu/mshyperv.c
+++ b/arch/x86/kernel/cpu/mshyperv.c
@@ -17,6 +17,7 @@
 #include <linux/irq.h>
 #include <linux/kexec.h>
 #include <linux/i8253.h>
+#include <linux/random.h>
 #include <asm/processor.h>
 #include <asm/hypervisor.h>
 #include <asm/hyperv-tlfs.h>
@@ -80,6 +81,7 @@ __visible void __irq_entry hv_stimer0_vector_handler(struct pt_regs *regs)
 	inc_irq_stat(hyperv_stimer0_count);
 	if (hv_stimer0_handler)
 		hv_stimer0_handler();
+	add_interrupt_randomness(HYPERV_STIMER0_VECTOR, 0);
 	ack_APIC_irq();
 
 	exiting_irq();
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index 236858f..2b65c5f 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -84,3 +84,4 @@ obj-$(CONFIG_ATCPIT100_TIMER)		+= timer-atcpit100.o
 obj-$(CONFIG_RISCV_TIMER)		+= timer-riscv.o
 obj-$(CONFIG_CSKY_MP_TIMER)		+= timer-mp-csky.o
 obj-$(CONFIG_GX6605S_TIMER)		+= timer-gx6605s.o
+obj-$(CONFIG_HYPERV_TIMER)		+= hyperv_timer.o
diff --git a/drivers/clocksource/hyperv_timer.c b/drivers/clocksource/hyperv_timer.c
new file mode 100644
index 0000000..30615f3
--- /dev/null
+++ b/drivers/clocksource/hyperv_timer.c
@@ -0,0 +1,191 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/*
+ * Clocksource driver for the synthetic counter and timers
+ * provided by the Hyper-V hypervisor to guest VMs, as described
+ * in the Hyper-V Top Level Functional Spec (TLFS). This driver
+ * is instruction set architecture independent.
+ *
+ * Copyright (C) 2019, Microsoft, Inc.
+ *
+ * Author:  Michael Kelley <mikelley@microsoft.com>
+ */
+
+#include <linux/percpu.h>
+#include <linux/cpumask.h>
+#include <linux/clockchips.h>
+#include <linux/mm.h>
+#include <clocksource/hyperv_timer.h>
+#include <asm/hyperv-tlfs.h>
+#include <asm/mshyperv.h>
+
+static struct clock_event_device __percpu *hv_clock_event;
+
+/*
+ * If false, we're using the old mechanism for stimer0 interrupts
+ * where it sends a VMbus message when it expires. The old
+ * mechanism is used when running on older versions of Hyper-V
+ * that don't support Direct Mode. While Hyper-V provides
+ * four stimer's per CPU, Linux uses only stimer0.
+ */
+static bool direct_mode_enabled;
+
+static int stimer0_irq;
+static int stimer0_vector;
+static int stimer0_message_sint;
+
+/*
+ * ISR for when stimer0 is operating in Direct Mode.  Direct Mode
+ * does not use VMbus or any VMbus messages, so process here and not
+ * in the VMbus driver code.
+ */
+void hv_stimer0_isr(void)
+{
+	struct clock_event_device *ce;
+
+	ce = this_cpu_ptr(hv_clock_event);
+	ce->event_handler(ce);
+}
+EXPORT_SYMBOL_GPL(hv_stimer0_isr);
+
+static int hv_ce_set_next_event(unsigned long delta,
+				struct clock_event_device *evt)
+{
+	u64 current_tick;
+
+	WARN_ON(!clockevent_state_oneshot(evt));
+
+	current_tick = hyperv_cs->read(NULL);
+	current_tick += delta;
+	hv_init_timer(0, current_tick);
+	return 0;
+}
+
+static int hv_ce_shutdown(struct clock_event_device *evt)
+{
+	hv_init_timer(0, 0);
+	hv_init_timer_config(0, 0);
+	if (direct_mode_enabled)
+		hv_disable_stimer0_percpu_irq(stimer0_irq);
+
+	return 0;
+}
+
+static int hv_ce_set_oneshot(struct clock_event_device *evt)
+{
+	union hv_stimer_config timer_cfg;
+
+	timer_cfg.as_uint64 = 0;
+	timer_cfg.enable = 1;
+	timer_cfg.auto_enable = 1;
+	if (direct_mode_enabled) {
+		/*
+		 * When it expires, the timer will directly interrupt
+		 * on the specified hardware vector/IRQ.
+		 */
+		timer_cfg.direct_mode = 1;
+		timer_cfg.apic_vector = stimer0_vector;
+		hv_enable_stimer0_percpu_irq(stimer0_irq);
+	} else {
+		/*
+		 * When it expires, the timer will generate a VMbus message,
+		 * to be handled by the normal VMbus interrupt handler.
+		 */
+		timer_cfg.direct_mode = 0;
+		timer_cfg.sintx = stimer0_message_sint;
+	}
+	hv_init_timer_config(0, timer_cfg.as_uint64);
+	return 0;
+}
+
+/*
+ * hv_stimer_init - Per-cpu initialization of the clockevent
+ */
+int hv_stimer_init(unsigned int cpu)
+{
+	struct clock_event_device *ce;
+
+	if (ms_hyperv.features & HV_MSR_SYNTIMER_AVAILABLE) {
+		ce = per_cpu_ptr(hv_clock_event, cpu);
+		ce->name = "Hyper-V clockevent";
+		ce->features = CLOCK_EVT_FEAT_ONESHOT;
+		ce->cpumask = cpumask_of(cpu);
+		ce->rating = 1000;
+		ce->set_state_shutdown = hv_ce_shutdown;
+		ce->set_state_oneshot = hv_ce_set_oneshot;
+		ce->set_next_event = hv_ce_set_next_event;
+
+		clockevents_config_and_register(ce,
+						HV_CLOCK_HZ,
+						HV_MIN_DELTA_TICKS,
+						HV_MAX_MAX_DELTA_TICKS);
+	}
+	return 0;
+}
+EXPORT_SYMBOL_GPL(hv_stimer_init);
+
+/*
+ * hv_stimer_cleanup - Per-cpu cleanup of the clockevent
+ */
+int hv_stimer_cleanup(unsigned int cpu)
+{
+	struct clock_event_device *ce;
+
+	/* Turn off clockevent device */
+	if (ms_hyperv.features & HV_MSR_SYNTIMER_AVAILABLE) {
+		ce = per_cpu_ptr(hv_clock_event, cpu);
+		clockevents_unbind_device(ce, cpu);
+		hv_ce_shutdown(ce);
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(hv_stimer_cleanup);
+
+/* hv_stimer_alloc - Global initialization of the clockevent and stimer0 */
+int hv_stimer_alloc(int sint)
+{
+	hv_clock_event = alloc_percpu(struct clock_event_device);
+	if (!hv_clock_event)
+		return -ENOMEM;
+
+	direct_mode_enabled = ms_hyperv.misc_features &
+			HV_STIMER_DIRECT_MODE_AVAILABLE;
+	if (direct_mode_enabled &&
+	    hv_setup_stimer0_irq(&stimer0_irq, &stimer0_vector,
+				hv_stimer0_isr)) {
+		free_percpu(hv_clock_event);
+		return -EINVAL;
+	}
+
+	stimer0_message_sint = sint;
+	return 0;
+}
+EXPORT_SYMBOL_GPL(hv_stimer_alloc);
+
+/* hv_stimer_free - Free global resources allocated by hv_stimer_alloc() */
+void hv_stimer_free(void)
+{
+	if (direct_mode_enabled)
+		hv_remove_stimer0_irq(stimer0_irq);
+	free_percpu(hv_clock_event);
+}
+EXPORT_SYMBOL_GPL(hv_stimer_free);
+
+/*
+ * Do a global cleanup of clockevents for the cases of kexec and
+ * vmbus exit
+ */
+void hv_stimer_global_cleanup(void)
+{
+	int	cpu;
+	struct clock_event_device *ce;
+
+	if (ms_hyperv.features & HV_MSR_SYNTIMER_AVAILABLE)
+		for_each_present_cpu(cpu) {
+			ce = per_cpu_ptr(hv_clock_event, cpu);
+			clockevents_unbind_device(ce, cpu);
+		}
+	hv_stimer_free();
+}
+EXPORT_SYMBOL_GPL(hv_stimer_global_cleanup);
diff --git a/drivers/hv/Kconfig b/drivers/hv/Kconfig
index 1c1a251..c423e57 100644
--- a/drivers/hv/Kconfig
+++ b/drivers/hv/Kconfig
@@ -10,6 +10,9 @@ config HYPERV
 	  Select this option to run Linux as a Hyper-V client operating
 	  system.
 
+config HYPERV_TIMER
+	def_bool HYPERV
+
 config HYPERV_TSCPAGE
        def_bool HYPERV && X86_64
 
diff --git a/drivers/hv/hv.c b/drivers/hv/hv.c
index a1ea482..6188fb7 100644
--- a/drivers/hv/hv.c
+++ b/drivers/hv/hv.c
@@ -16,6 +16,7 @@
 #include <linux/version.h>
 #include <linux/random.h>
 #include <linux/clockchips.h>
+#include <clocksource/hyperv_timer.h>
 #include <asm/mshyperv.h>
 #include "hyperv_vmbus.h"
 
@@ -23,21 +24,6 @@
 struct hv_context hv_context;
 
 /*
- * If false, we're using the old mechanism for stimer0 interrupts
- * where it sends a VMbus message when it expires. The old
- * mechanism is used when running on older versions of Hyper-V
- * that don't support Direct Mode. While Hyper-V provides
- * four stimer's per CPU, Linux uses only stimer0.
- */
-static bool direct_mode_enabled;
-static int stimer0_irq;
-static int stimer0_vector;
-
-#define HV_TIMER_FREQUENCY (10 * 1000 * 1000) /* 100ns period */
-#define HV_MAX_MAX_DELTA_TICKS 0xffffffff
-#define HV_MIN_DELTA_TICKS 1
-
-/*
  * hv_init - Main initialization routine.
  *
  * This routine must be called before any other routines in here are called
@@ -47,9 +33,6 @@ int hv_init(void)
 	hv_context.cpu_context = alloc_percpu(struct hv_per_cpu_context);
 	if (!hv_context.cpu_context)
 		return -ENOMEM;
-
-	direct_mode_enabled = ms_hyperv.misc_features &
-			HV_STIMER_DIRECT_MODE_AVAILABLE;
 	return 0;
 }
 
@@ -88,89 +71,6 @@ int hv_post_message(union hv_connection_id connection_id,
 	return status & 0xFFFF;
 }
 
-/*
- * ISR for when stimer0 is operating in Direct Mode.  Direct Mode
- * does not use VMbus or any VMbus messages, so process here and not
- * in the VMbus driver code.
- */
-
-static void hv_stimer0_isr(void)
-{
-	struct hv_per_cpu_context *hv_cpu;
-
-	hv_cpu = this_cpu_ptr(hv_context.cpu_context);
-	hv_cpu->clk_evt->event_handler(hv_cpu->clk_evt);
-	add_interrupt_randomness(stimer0_vector, 0);
-}
-
-static int hv_ce_set_next_event(unsigned long delta,
-				struct clock_event_device *evt)
-{
-	u64 current_tick;
-
-	WARN_ON(!clockevent_state_oneshot(evt));
-
-	current_tick = hyperv_cs->read(NULL);
-	current_tick += delta;
-	hv_init_timer(0, current_tick);
-	return 0;
-}
-
-static int hv_ce_shutdown(struct clock_event_device *evt)
-{
-	hv_init_timer(0, 0);
-	hv_init_timer_config(0, 0);
-	if (direct_mode_enabled)
-		hv_disable_stimer0_percpu_irq(stimer0_irq);
-
-	return 0;
-}
-
-static int hv_ce_set_oneshot(struct clock_event_device *evt)
-{
-	union hv_stimer_config timer_cfg;
-
-	timer_cfg.as_uint64 = 0;
-	timer_cfg.enable = 1;
-	timer_cfg.auto_enable = 1;
-	if (direct_mode_enabled) {
-		/*
-		 * When it expires, the timer will directly interrupt
-		 * on the specified hardware vector/IRQ.
-		 */
-		timer_cfg.direct_mode = 1;
-		timer_cfg.apic_vector = stimer0_vector;
-		hv_enable_stimer0_percpu_irq(stimer0_irq);
-	} else {
-		/*
-		 * When it expires, the timer will generate a VMbus message,
-		 * to be handled by the normal VMbus interrupt handler.
-		 */
-		timer_cfg.direct_mode = 0;
-		timer_cfg.sintx = VMBUS_MESSAGE_SINT;
-	}
-	hv_init_timer_config(0, timer_cfg.as_uint64);
-	return 0;
-}
-
-static void hv_init_clockevent_device(struct clock_event_device *dev, int cpu)
-{
-	dev->name = "Hyper-V clockevent";
-	dev->features = CLOCK_EVT_FEAT_ONESHOT;
-	dev->cpumask = cpumask_of(cpu);
-	dev->rating = 1000;
-	/*
-	 * Avoid settint dev->owner = THIS_MODULE deliberately as doing so will
-	 * result in clockevents_config_and_register() taking additional
-	 * references to the hv_vmbus module making it impossible to unload.
-	 */
-
-	dev->set_state_shutdown = hv_ce_shutdown;
-	dev->set_state_oneshot = hv_ce_set_oneshot;
-	dev->set_next_event = hv_ce_set_next_event;
-}
-
-
 int hv_synic_alloc(void)
 {
 	int cpu;
@@ -199,14 +99,6 @@ int hv_synic_alloc(void)
 		tasklet_init(&hv_cpu->msg_dpc,
 			     vmbus_on_msg_dpc, (unsigned long) hv_cpu);
 
-		hv_cpu->clk_evt = kzalloc(sizeof(struct clock_event_device),
-					  GFP_KERNEL);
-		if (hv_cpu->clk_evt == NULL) {
-			pr_err("Unable to allocate clock event device\n");
-			goto err;
-		}
-		hv_init_clockevent_device(hv_cpu->clk_evt, cpu);
-
 		hv_cpu->synic_message_page =
 			(void *)get_zeroed_page(GFP_ATOMIC);
 		if (hv_cpu->synic_message_page == NULL) {
@@ -229,11 +121,6 @@ int hv_synic_alloc(void)
 		INIT_LIST_HEAD(&hv_cpu->chan_list);
 	}
 
-	if (direct_mode_enabled &&
-	    hv_setup_stimer0_irq(&stimer0_irq, &stimer0_vector,
-				hv_stimer0_isr))
-		goto err;
-
 	return 0;
 err:
 	/*
@@ -252,7 +139,6 @@ void hv_synic_free(void)
 		struct hv_per_cpu_context *hv_cpu
 			= per_cpu_ptr(hv_context.cpu_context, cpu);
 
-		kfree(hv_cpu->clk_evt);
 		free_page((unsigned long)hv_cpu->synic_event_page);
 		free_page((unsigned long)hv_cpu->synic_message_page);
 		free_page((unsigned long)hv_cpu->post_msg_page);
@@ -311,36 +197,9 @@ int hv_synic_init(unsigned int cpu)
 
 	hv_set_synic_state(sctrl.as_uint64);
 
-	/*
-	 * Register the per-cpu clockevent source.
-	 */
-	if (ms_hyperv.features & HV_MSR_SYNTIMER_AVAILABLE)
-		clockevents_config_and_register(hv_cpu->clk_evt,
-						HV_TIMER_FREQUENCY,
-						HV_MIN_DELTA_TICKS,
-						HV_MAX_MAX_DELTA_TICKS);
-	return 0;
-}
-
-/*
- * hv_synic_clockevents_cleanup - Cleanup clockevent devices
- */
-void hv_synic_clockevents_cleanup(void)
-{
-	int cpu;
+	hv_stimer_init(cpu);
 
-	if (!(ms_hyperv.features & HV_MSR_SYNTIMER_AVAILABLE))
-		return;
-
-	if (direct_mode_enabled)
-		hv_remove_stimer0_irq(stimer0_irq);
-
-	for_each_present_cpu(cpu) {
-		struct hv_per_cpu_context *hv_cpu
-			= per_cpu_ptr(hv_context.cpu_context, cpu);
-
-		clockevents_unbind_device(hv_cpu->clk_evt, cpu);
-	}
+	return 0;
 }
 
 /*
@@ -388,14 +247,7 @@ int hv_synic_cleanup(unsigned int cpu)
 	if (channel_found && vmbus_connection.conn_state == CONNECTED)
 		return -EBUSY;
 
-	/* Turn off clockevent device */
-	if (ms_hyperv.features & HV_MSR_SYNTIMER_AVAILABLE) {
-		struct hv_per_cpu_context *hv_cpu
-			= this_cpu_ptr(hv_context.cpu_context);
-
-		clockevents_unbind_device(hv_cpu->clk_evt, cpu);
-		hv_ce_shutdown(hv_cpu->clk_evt);
-	}
+	hv_stimer_cleanup(cpu);
 
 	hv_get_synint_state(VMBUS_MESSAGE_SINT, shared_sint.as_uint64);
 
diff --git a/drivers/hv/hyperv_vmbus.h b/drivers/hv/hyperv_vmbus.h
index b8e1ff0..362e70e 100644
--- a/drivers/hv/hyperv_vmbus.h
+++ b/drivers/hv/hyperv_vmbus.h
@@ -138,7 +138,6 @@ struct hv_per_cpu_context {
 	 * per-cpu list of the channels based on their CPU affinity.
 	 */
 	struct list_head chan_list;
-	struct clock_event_device *clk_evt;
 };
 
 struct hv_context {
@@ -176,8 +175,6 @@ extern int hv_post_message(union hv_connection_id connection_id,
 
 extern int hv_synic_cleanup(unsigned int cpu);
 
-extern void hv_synic_clockevents_cleanup(void);
-
 /* Interface */
 
 void hv_ringbuffer_pre_init(struct vmbus_channel *channel);
diff --git a/drivers/hv/vmbus_drv.c b/drivers/hv/vmbus_drv.c
index 92b1874..72d5a7c 100644
--- a/drivers/hv/vmbus_drv.c
+++ b/drivers/hv/vmbus_drv.c
@@ -30,6 +30,7 @@
 #include <linux/kdebug.h>
 #include <linux/efi.h>
 #include <linux/random.h>
+#include <clocksource/hyperv_timer.h>
 #include "hyperv_vmbus.h"
 
 struct vmbus_dynid {
@@ -955,17 +956,6 @@ static void vmbus_onmessage_work(struct work_struct *work)
 	kfree(ctx);
 }
 
-static void hv_process_timer_expiration(struct hv_message *msg,
-					struct hv_per_cpu_context *hv_cpu)
-{
-	struct clock_event_device *dev = hv_cpu->clk_evt;
-
-	if (dev->event_handler)
-		dev->event_handler(dev);
-
-	vmbus_signal_eom(msg, HVMSG_TIMER_EXPIRED);
-}
-
 void vmbus_on_msg_dpc(unsigned long data)
 {
 	struct hv_per_cpu_context *hv_cpu = (void *)data;
@@ -1159,9 +1149,10 @@ static void vmbus_isr(void)
 
 	/* Check if there are actual msgs to be processed */
 	if (msg->header.message_type != HVMSG_NONE) {
-		if (msg->header.message_type == HVMSG_TIMER_EXPIRED)
-			hv_process_timer_expiration(msg, hv_cpu);
-		else
+		if (msg->header.message_type == HVMSG_TIMER_EXPIRED) {
+			hv_stimer0_isr();
+			vmbus_signal_eom(msg, HVMSG_TIMER_EXPIRED);
+		} else
 			tasklet_schedule(&hv_cpu->msg_dpc);
 	}
 
@@ -1263,14 +1254,19 @@ static int vmbus_bus_init(void)
 	ret = hv_synic_alloc();
 	if (ret)
 		goto err_alloc;
+
+	ret = hv_stimer_alloc(VMBUS_MESSAGE_SINT);
+	if (ret < 0)
+		goto err_alloc;
+
 	/*
-	 * Initialize the per-cpu interrupt state and
-	 * connect to the host.
+	 * Initialize the per-cpu interrupt state and stimer state.
+	 * Then connect to the host.
 	 */
 	ret = cpuhp_setup_state(CPUHP_AP_ONLINE_DYN, "hyperv/vmbus:online",
 				hv_synic_init, hv_synic_cleanup);
 	if (ret < 0)
-		goto err_alloc;
+		goto err_cpuhp;
 	hyperv_cpuhp_online = ret;
 
 	ret = vmbus_connect();
@@ -1318,6 +1314,8 @@ static int vmbus_bus_init(void)
 
 err_connect:
 	cpuhp_remove_state(hyperv_cpuhp_online);
+err_cpuhp:
+	hv_stimer_free();
 err_alloc:
 	hv_synic_free();
 	hv_remove_vmbus_irq();
@@ -2064,7 +2062,7 @@ static int vmbus_acpi_add(struct acpi_device *device)
 
 static void hv_kexec_handler(void)
 {
-	hv_synic_clockevents_cleanup();
+	hv_stimer_global_cleanup();
 	vmbus_initiate_unload(false);
 	vmbus_connection.conn_state = DISCONNECTED;
 	/* Make sure conn_state is set as hv_synic_cleanup checks for it */
@@ -2075,6 +2073,8 @@ static void hv_kexec_handler(void)
 
 static void hv_crash_handler(struct pt_regs *regs)
 {
+	int cpu;
+
 	vmbus_initiate_unload(true);
 	/*
 	 * In crash handler we can't schedule synic cleanup for all CPUs,
@@ -2082,7 +2082,9 @@ static void hv_crash_handler(struct pt_regs *regs)
 	 * for kdump.
 	 */
 	vmbus_connection.conn_state = DISCONNECTED;
-	hv_synic_cleanup(smp_processor_id());
+	cpu = smp_processor_id();
+	hv_stimer_cleanup(cpu);
+	hv_synic_cleanup(cpu);
 	hyperv_cleanup();
 };
 
@@ -2131,7 +2133,7 @@ static void __exit vmbus_exit(void)
 	hv_remove_kexec_handler();
 	hv_remove_crash_handler();
 	vmbus_connection.conn_state = DISCONNECTED;
-	hv_synic_clockevents_cleanup();
+	hv_stimer_global_cleanup();
 	vmbus_disconnect();
 	hv_remove_vmbus_irq();
 	for_each_online_cpu(cpu) {
diff --git a/include/clocksource/hyperv_timer.h b/include/clocksource/hyperv_timer.h
new file mode 100644
index 0000000..ba5dc17
--- /dev/null
+++ b/include/clocksource/hyperv_timer.h
@@ -0,0 +1,27 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+/*
+ * Definitions for the clocksource provided by the Hyper-V
+ * hypervisor to guest VMs, as described in the Hyper-V Top
+ * Level Functional Spec (TLFS).
+ *
+ * Copyright (C) 2019, Microsoft, Inc.
+ *
+ * Author:  Michael Kelley <mikelley@microsoft.com>
+ */
+
+#ifndef __CLKSOURCE_HYPERV_TIMER_H
+#define __CLKSOURCE_HYPERV_TIMER_H
+
+#define HV_MAX_MAX_DELTA_TICKS 0xffffffff
+#define HV_MIN_DELTA_TICKS 1
+
+/* Routines called by the VMbus driver */
+extern int hv_stimer_alloc(int sint);
+extern void hv_stimer_free(void);
+extern int hv_stimer_init(unsigned int cpu);
+extern int hv_stimer_cleanup(unsigned int cpu);
+extern void hv_stimer_global_cleanup(void);
+extern void hv_stimer0_isr(void);
+
+#endif
-- 
1.8.3.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
