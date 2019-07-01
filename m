Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5946B5B385
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 06:26:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C6LJJLAN49d7WYFKRwJwFoxrtDeeiQZFRJZjXeAiID4=; b=eTqm0Trxn3nrbY
	HXvbvpvLAQRULza0soIn6B/+i4+TZTkM0s5mtgVyzMP92s9m2Q50ORDgn0Qf23L+X+k1oD6TNdGiC
	X8wtsBu0/kUkyE+5YCYFHGuXIXA6cQ/4qDjBoBjzB+8BZx83ut6FbjJItm8djP4Gm2vzyHG/rirdX
	OL/seWNxa8EJr5ba+4fcvP47ijuG9CPetVpppJMrS/DuBjeVDGCfCNdKFth0C98D2GyabpkXf47Yj
	sVuldW7EG60zq+e4W6ijzoulzstu+++7QJV85EnBC/G22jylD/lyuNfbwBwaTL/codttLONluWnbV
	3E39nhWARkNtK/+DdDXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhntb-0003mM-JQ; Mon, 01 Jul 2019 04:26:27 +0000
Received: from mail-eopbgr710112.outbound.protection.outlook.com
 ([40.107.71.112] helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhnt9-0003hr-1v
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 04:26:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FRsV3cpjlEJdRwB6jvgenGXXEvSTRjvvm2YNw23Q6+0E24p9J8t9kDjrPHTb5/NeKHDZWXXn1AhlwYzzYKzjdfsRgFiOGIC+WwwMZdnR5Azzavk8GuFwEPTgBW70o6K6nnMlMal6qdUcu5h3444h363oR1psPJVgOBAHmbjNxZvc+nDn2jWHq1nlfMP1MBI0cnmFBxx8UdVCbLjn6FOgqREUOeBWWt66rPz3btQSJHMM61sEUMdW9FnERtFSHM7v9v2dbKzMN2mjDWyGTbvMmYQ9Dl48LIS0K9yYZK19U2PfyOGVU1CUzkYexoK7GTSOmpmjy5MNKfV1O5c/OTUSmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VQz+f/MDQeeNvVTZqZjEHRUxbDi4pMF/jdZc/Q8Ia5Q=;
 b=amobOPcJx+VOIZJc2CI1A+emNWXNEjSDuopMoRcc2lehZ7AIdr4t1vtu6vCnMx/X0EJehSp+0xR0bdw/HY+2ERNjTb848wN1+DaVsxpTeWnIuX/niyItuzUx7ySagci2JyLfvopQ2HEWscOeYYj3+AKNLwSjJpMmRLoc6DiCQ9/DCilqhjFJGnBb40Z1AluHvRdghKKpQWOjCmxI1F59publdyBc0NwVAh4gJ7ZgYqcr0/1BiXXaL3F3dLW6dfPIw3LTNyM31U0SfEGP3+EhtMDgQ0t1Ig8ms3UIoDfIy4p+VZNTYxXBga//FPdzr2aR5XMhIm/MIKGF0jNng1unVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microsoft.com;dmarc=pass action=none
 header.from=microsoft.com;dkim=pass header.d=microsoft.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VQz+f/MDQeeNvVTZqZjEHRUxbDi4pMF/jdZc/Q8Ia5Q=;
 b=dMPl9b/4WCdiRun/eMzGDJf41FHmWFRZg/ti30xRubqzdhX77HKwq8I+mB25l4LEst3a04i7D1lTsEt5kaLywZbsn0O9GRhC+cFtM9GeugY6zNbtby8QbXqfkPUYwT9GmcTe0KY3FHydnlIe6zpbiu3aHI/+1CXt19vbtDv0Jtg=
Received: from BYAPR21MB1335.namprd21.prod.outlook.com (20.179.60.209) by
 BYAPR21MB1159.namprd21.prod.outlook.com (20.179.56.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.1; Mon, 1 Jul 2019 04:25:56 +0000
Received: from BYAPR21MB1335.namprd21.prod.outlook.com
 ([fe80::71df:6122:56a2:2a4f]) by BYAPR21MB1335.namprd21.prod.outlook.com
 ([fe80::71df:6122:56a2:2a4f%2]) with mapi id 15.20.2032.019; Mon, 1 Jul 2019
 04:25:56 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: "tglx@linutronix.de" <tglx@linutronix.de>, "mingo@redhat.com"
 <mingo@redhat.com>, "bp@alien8.de" <bp@alien8.de>, "x86@kernel.org"
 <x86@kernel.org>
Subject: [PATCH v5 1/2] clocksource/drivers: Make Hyper-V clocksource ISA
 agnostic
Thread-Topic: [PATCH v5 1/2] clocksource/drivers: Make Hyper-V clocksource ISA
 agnostic
Thread-Index: AQHVL8UTXsWD1D4kmUi43cZe++2aMA==
Date: Mon, 1 Jul 2019 04:25:56 +0000
Message-ID: <1561955054-1838-2-git-send-email-mikelley@microsoft.com>
References: <1561955054-1838-1-git-send-email-mikelley@microsoft.com>
In-Reply-To: <1561955054-1838-1-git-send-email-mikelley@microsoft.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: CY4PR01CA0015.prod.exchangelabs.com (2603:10b6:903:1f::25)
 To BYAPR21MB1335.namprd21.prod.outlook.com
 (2603:10b6:a03:115::17)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [167.220.2.8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d102e1d6-25ce-462c-ad8c-08d6fddc35f2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR21MB1159; 
x-ms-traffictypediagnostic: BYAPR21MB1159:|BYAPR21MB1159:
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <BYAPR21MB115914745502840FCDF8A9BED7F90@BYAPR21MB1159.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00851CA28B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(366004)(39860400002)(136003)(396003)(376002)(189003)(199004)(6436002)(54906003)(4326008)(316002)(110136005)(8676002)(10090500001)(446003)(11346002)(6486002)(86362001)(81166006)(2616005)(476003)(486006)(81156014)(256004)(186003)(7736002)(2501003)(53946003)(6116002)(3846002)(6512007)(36756003)(14444005)(66946007)(305945005)(73956011)(66446008)(66476007)(66556008)(64756008)(8936002)(30864003)(22452003)(53936002)(4720700003)(25786009)(68736007)(26005)(99286004)(2906002)(5660300002)(50226002)(71200400001)(386003)(71190400001)(6506007)(10290500003)(102836004)(478600001)(14454004)(52116002)(2201001)(76176011)(66066001)(7416002)(7406005)(579004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR21MB1159;
 H:BYAPR21MB1335.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ReLiRRfzqh1NvEhJWvxcOvMXxN72Q7uGxHyIytOUQVIfLbuhp72lzhOo/gBwv8pKjdYynPyTKem52I3VZuhEVzMH2DiLRMns5RI+nbwNgP7Iz2C3QK91cdM9nSFoT8KKZSU+IJSImkWEPp05Fq8A3nSu2kNlKTROfln3QCN7I7PyhpJDvxk9mUvnZHxdrf1c27VBHHcPbMO8Ook0h2fOXgFx6Ybc0cgmg4rEOMmq6dkyaM0MKqZI602gqdRT2vqIuC5TVGmML8D8G4E3U4flGXEAWKMYdwvk197e1dk6siXiJY9wHUvWeD7UgdwLBz4702FjQi2sI8/oda9IU2ojupQYSj3nSf0CgpMO9SDJ1ftAKewzIslyp403+1Ymv8D90hqI0AFnVCGLheMkaKvShqqlEv6pLvgiMgGhrs6vjfY=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d102e1d6-25ce-462c-ad8c-08d6fddc35f2
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2019 04:25:56.2355 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lkmlmhk@microsoft.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR21MB1159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_212559_313243_89AC14D4 
X-CRM114-Status: GOOD (  20.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.71.112 listed in list.dnswl.org]
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
 arch/x86/kernel/cpu/mshyperv.c     |   4 +-
 drivers/clocksource/Makefile       |   1 +
 drivers/clocksource/hyperv_timer.c | 200 +++++++++++++++++++++++++++++++++++++
 drivers/hv/Kconfig                 |   3 +
 drivers/hv/hv.c                    | 156 +----------------------------
 drivers/hv/hyperv_vmbus.h          |   3 -
 drivers/hv/vmbus_drv.c             |  42 ++++----
 include/clocksource/hyperv_timer.h |  27 +++++
 10 files changed, 268 insertions(+), 176 deletions(-)
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
index 7df29f0..1e5f7a0 100644
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
@@ -89,7 +91,7 @@ __visible void __irq_entry hv_stimer0_vector_handler(struct pt_regs *regs)
 int hv_setup_stimer0_irq(int *irq, int *vector, void (*handler)(void))
 {
 	*vector = HYPERV_STIMER0_VECTOR;
-	*irq = 0;   /* Unused on x86/x64 */
+	*irq = -1;   /* Unused on x86/x64 */
 	hv_stimer0_handler = handler;
 	return 0;
 }
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
index 0000000..68a28af
--- /dev/null
+++ b/drivers/clocksource/hyperv_timer.c
@@ -0,0 +1,200 @@
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
+void hv_stimer_init(unsigned int cpu)
+{
+	struct clock_event_device *ce;
+
+	/*
+	 * Synthetic timers are always available except on old versions of
+	 * Hyper-V on x86.  In that case, just return as Linux will use a
+	 * clocksource based on emulated PIT or LAPIC timer hardware.
+	 */
+	if (!(ms_hyperv.features & HV_MSR_SYNTIMER_AVAILABLE))
+		return;
+
+	ce = per_cpu_ptr(hv_clock_event, cpu);
+	ce->name = "Hyper-V clockevent";
+	ce->features = CLOCK_EVT_FEAT_ONESHOT;
+	ce->cpumask = cpumask_of(cpu);
+	ce->rating = 1000;
+	ce->set_state_shutdown = hv_ce_shutdown;
+	ce->set_state_oneshot = hv_ce_set_oneshot;
+	ce->set_next_event = hv_ce_set_next_event;
+
+	clockevents_config_and_register(ce,
+					HV_CLOCK_HZ,
+					HV_MIN_DELTA_TICKS,
+					HV_MAX_MAX_DELTA_TICKS);
+}
+EXPORT_SYMBOL_GPL(hv_stimer_init);
+
+/*
+ * hv_stimer_cleanup - Per-cpu cleanup of the clockevent
+ */
+void hv_stimer_cleanup(unsigned int cpu)
+{
+	struct clock_event_device *ce;
+
+	/* Turn off clockevent device */
+	if (ms_hyperv.features & HV_MSR_SYNTIMER_AVAILABLE) {
+		ce = per_cpu_ptr(hv_clock_event, cpu);
+		hv_ce_shutdown(ce);
+	}
+}
+EXPORT_SYMBOL_GPL(hv_stimer_cleanup);
+
+/* hv_stimer_alloc - Global initialization of the clockevent and stimer0 */
+int hv_stimer_alloc(int sint)
+{
+	int ret;
+
+	hv_clock_event = alloc_percpu(struct clock_event_device);
+	if (!hv_clock_event)
+		return -ENOMEM;
+
+	direct_mode_enabled = ms_hyperv.misc_features &
+			HV_STIMER_DIRECT_MODE_AVAILABLE;
+	if (direct_mode_enabled) {
+		ret = hv_setup_stimer0_irq(&stimer0_irq, &stimer0_vector,
+				hv_stimer0_isr);
+		if (ret) {
+			free_percpu(hv_clock_event);
+			hv_clock_event = NULL;
+			return ret;
+		}
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
+	if (direct_mode_enabled && (stimer0_irq != 0)) {
+		hv_remove_stimer0_irq(stimer0_irq);
+		stimer0_irq = 0;
+	}
+	free_percpu(hv_clock_event);
+	hv_clock_event = NULL;
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
+	if (ms_hyperv.features & HV_MSR_SYNTIMER_AVAILABLE) {
+		for_each_present_cpu(cpu) {
+			ce = per_cpu_ptr(hv_clock_event, cpu);
+			clockevents_unbind_device(ce, cpu);
+		}
+	}
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
index 0000000..0cd73f7
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
+extern void hv_stimer_init(unsigned int cpu);
+extern void hv_stimer_cleanup(unsigned int cpu);
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
