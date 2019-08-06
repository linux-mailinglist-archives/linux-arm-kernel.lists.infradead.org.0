Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E89C783A4D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 22:33:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yzfVzZCM4gFkwL6fcUZJoBFbuDJNhbr17dRFbMSgEOI=; b=JvrTHFzf3DdJmd
	ZxwdYo+zXLntPPNbeszq8u9l2qCvtH8ZuQPe1X8ufQ47diEZjMqGZevSVklQe5ykyih9Flznqwxx4
	r1l//ykI4m1IYW6UJOTZ+FVsX2tlxsIlzJnaJ1is2Ick1IHtz0f310Eip5XY2gnRUuEVvpKXGyhuX
	u80i1tzinLANEh72Z+k/AY8EWaOYG8q78L3weMI3KnokvuWluaa6J+siWKY1ZR2Qp16LI68toFGmC
	U9cW2EJjXjphkhciU6yyWMfpyPCCkKtgkAgmXOanUJeZLiZepiWyVZwJ5nt9pnALnUWLUMEXDX0os
	6UjzX5IAj/nPTuIvb8Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv68q-0007Qp-Mu; Tue, 06 Aug 2019 20:33:08 +0000
Received: from mail-eopbgr820111.outbound.protection.outlook.com
 ([40.107.82.111] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv66y-0005kG-GP
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 20:31:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kaet/brycjWE2MlRzNXxh9U7R7MCW9FB/6Jg2ePOl8HFoqFfvRxfZQjkZnBiwAtUKdsTMYDwUuFB7e6jVr6zRz34FHPAzcQDpNim2Ij/zCwF3KWTkZvYqpexFLtssM4Nfz0MzEkrZoJRYCw1XUvEHDQ0FhGyfolcH5ncRhZZpeVtW5zwTR6CQhAyRr0O9svnfDVPgimzGroFtBhc/za6arBXcvNUKp+HIbpbInwO6IukHhGBhTjlyn90zsQn0oW4PpEpZ7y5CAJ79KrvC+ySplyaYyLqykTsDFw1WwgsgtJ/Vc79n0S9ZnZ0L1aR5F2saQPgaA03wXVvS7oeBlzkrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZRcjUKuffbdIk6r+FeTJNIGuzF+267fwX53srmE9/o8=;
 b=KJr4yEjSRCl4UHHR07Rbqt9zGH/8PkKW3DvHjUD+gm14mggCxWZPEKNLxY+vEO+v984pNzhPKWyay6wvLAO0MgU7tmViqr1uQMgExd5sE19YSAS4xXdJED0HCYkIe2LA5EDjUgY2WA0uIfKhinNi99lfK/yc5R8P1l2LQdZqPah5gZFl0k+HiO8mbAXEDiEtI1Mfs9j7kYdc4dmu9xBjEhFckZ+Nq7je1bbTkGXPaGhCITLFeB75gakfFqxP8HL0g7Pe0X7Zxwj3itqbt/mBqFlHQ7myrHc/we5I3dSbKjT80fN06kod1Q8RpuQzWzZCkqzqphWowF2HUS6YzXom/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZRcjUKuffbdIk6r+FeTJNIGuzF+267fwX53srmE9/o8=;
 b=R/t2X4JbeaMrhpuR+8LqWSyOpdv7y2LdDs3CiWbheuaY9RpA+9FPsss9v8yXD41Up7SXTCFh8Fsf0FHrwYGd82LNAxdYdEnp0rDwhuNB5gL8y1u8WicKVHQGvi/W2Lpx0NllFnwnkYSp1zVRg5ZW3MFSnjZ11h0M94Mb+OT+eJs=
Received: from BYAPR21MB1335.namprd21.prod.outlook.com (20.179.60.209) by
 BYAPR21MB1255.namprd21.prod.outlook.com (20.179.57.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.9; Tue, 6 Aug 2019 20:31:08 +0000
Received: from BYAPR21MB1335.namprd21.prod.outlook.com
 ([fe80::819:aea0:eda4:9301]) by BYAPR21MB1335.namprd21.prod.outlook.com
 ([fe80::819:aea0:eda4:9301%9]) with mapi id 15.20.2157.001; Tue, 6 Aug 2019
 20:31:08 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: "will.deacon@arm.com" <will.deacon@arm.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "marc.zyngier@arm.com" <marc.zyngier@arm.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-hyperv@vger.kernel.org"
 <linux-hyperv@vger.kernel.org>, "devel@linuxdriverproject.org"
 <devel@linuxdriverproject.org>, "olaf@aepfle.de" <olaf@aepfle.de>,
 "apw@canonical.com" <apw@canonical.com>, vkuznets <vkuznets@redhat.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>, "marcelo.cerri@canonical.com"
 <marcelo.cerri@canonical.com>, KY Srinivasan <kys@microsoft.com>
Subject: [PATCH v4 6/8] arm64: hyperv: Initialize hypervisor on boot
Thread-Topic: [PATCH v4 6/8] arm64: hyperv: Initialize hypervisor on boot
Thread-Index: AQHVTJXgt0yg3J047E6hlDw+N0KjAQ==
Date: Tue, 6 Aug 2019 20:31:08 +0000
Message-ID: <1565122133-9086-7-git-send-email-mikelley@microsoft.com>
References: <1565122133-9086-1-git-send-email-mikelley@microsoft.com>
In-Reply-To: <1565122133-9086-1-git-send-email-mikelley@microsoft.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR01CA0030.prod.exchangelabs.com (2603:10b6:300:101::16)
 To BYAPR21MB1335.namprd21.prod.outlook.com
 (2603:10b6:a03:115::17)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [131.107.174.8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 81d6f7e0-db2d-4b70-bf3a-08d71aad034f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR21MB1255; 
x-ms-traffictypediagnostic: BYAPR21MB1255:|BYAPR21MB1255:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <BYAPR21MB125522C6DE4F16DE4D8243B0D7D50@BYAPR21MB1255.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0121F24F22
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(39860400002)(396003)(376002)(136003)(346002)(189003)(199004)(71200400001)(102836004)(71190400001)(386003)(6636002)(6512007)(66446008)(7416002)(10090500001)(6506007)(10290500003)(66946007)(316002)(50226002)(110136005)(14454004)(4326008)(6116002)(1511001)(52116002)(64756008)(99286004)(2501003)(2201001)(25786009)(68736007)(476003)(11346002)(446003)(86362001)(8936002)(3846002)(486006)(6486002)(256004)(8676002)(54906003)(76176011)(26005)(4720700003)(186003)(7736002)(81166006)(81156014)(2616005)(66066001)(66476007)(22452003)(5660300002)(2906002)(53936002)(305945005)(478600001)(6436002)(36756003)(66556008)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR21MB1255;
 H:BYAPR21MB1335.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: SEbN97AgD73W4F1tMogEwiXnNDKgmqwGf8ZXmNmGP4okr45zVAsZA/dCp3wJyaZgAt8Uht7Shk+R/lF18M5B1cm3z/qhUzXmyeXV9oYtKGmaOfLoFRe2wPoXKMcrPkzi43O/ZfmDfuuQ4UKlURDVXMc6b3Xj9AmyJ2+Fok/MkE+uoR442tk4aGquYdu447juBK0BTiGAZOYKqtzdSx3Cp9NN7pj8WjGSy4zHTay/8E085XEkJgg7EK4Dg9HdAjY7Gnz6mPBR9+JW99qnf1cFCW+Jb7UpKtR9b7nIWPjG/dLYQ0GcSFc79DJgKQwNdlzcnHAqkmP0nG+ylFM0oPQwNN0d1RTq+7JO0SLFGatutXkYK3Sbr800UPv8ZNw2dmouVDuC+3AF4QWOcMKXLf0Ug8ihkQr8GLD3ugGgyYnUSRo=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81d6f7e0-db2d-4b70-bf3a-08d71aad034f
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2019 20:31:08.4641 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hva4QnbQLWBsv0oN5sSBGfkPWGcgNAs2IEPPNdPcsepPGyyUn/y6gMopD9paP4N2PHO9yAtPdXZHweaxOb7Wlg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR21MB1255
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_133112_658414_D47C0AA2 
X-CRM114-Status: GOOD (  16.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.111 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sunil Muthuswamy <sunilmut@microsoft.com>,
 "boqun.feng" <boqun.feng@gmail.com>, Michael Kelley <mikelley@microsoft.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add ARM64-specific code to initialize the Hyper-V
hypervisor when booting as a guest VM. Provide functions
and data structures indicating hypervisor status that
are needed by VMbus driver.

This code is built only when CONFIG_HYPERV is enabled.

Signed-off-by: Michael Kelley <mikelley@microsoft.com>
---
 arch/arm64/hyperv/hv_init.c | 142 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 142 insertions(+)

diff --git a/arch/arm64/hyperv/hv_init.c b/arch/arm64/hyperv/hv_init.c
index 67350ec..7179e12 100644
--- a/arch/arm64/hyperv/hv_init.c
+++ b/arch/arm64/hyperv/hv_init.c
@@ -13,15 +13,47 @@
 #include <linux/types.h>
 #include <linux/version.h>
 #include <linux/export.h>
+#include <linux/vmalloc.h>
 #include <linux/mm.h>
+#include <linux/acpi.h>
+#include <linux/module.h>
 #include <linux/hyperv.h>
 #include <linux/spinlock.h>
 #include <linux/list.h>
 #include <linux/string.h>
+#include <linux/slab.h>
+#include <linux/cpuhotplug.h>
+#include <linux/psci.h>
 #include <asm-generic/bug.h>
 #include <asm/hyperv-tlfs.h>
 #include <asm/mshyperv.h>
+#include <asm/sysreg.h>
+#include <clocksource/hyperv_timer.h>
 
+static bool	hyperv_initialized;
+
+struct		ms_hyperv_info ms_hyperv __ro_after_init;
+EXPORT_SYMBOL_GPL(ms_hyperv);
+
+u32		*hv_vp_index;
+EXPORT_SYMBOL_GPL(hv_vp_index);
+
+u32		hv_max_vp_index;
+EXPORT_SYMBOL_GPL(hv_max_vp_index);
+
+static int hv_cpu_init(unsigned int cpu)
+{
+	u64 msr_vp_index;
+
+	hv_get_vp_index(msr_vp_index);
+
+	hv_vp_index[smp_processor_id()] = msr_vp_index;
+
+	if (msr_vp_index > hv_max_vp_index)
+		hv_max_vp_index = msr_vp_index;
+
+	return 0;
+}
 
 /*
  * Functions for allocating and freeing memory with size and
@@ -88,6 +120,110 @@ void hv_free_hyperv_page(unsigned long addr)
 
 
 /*
+ * This function is invoked via the ACPI clocksource probe mechanism. We
+ * don't actually use any values from the ACPI GTDT table, but we set up
+ * the Hyper-V synthetic clocksource and do other initialization for
+ * interacting with Hyper-V the first time.  Using early_initcall to invoke
+ * this function is too late because interrupts are already enabled at that
+ * point, and hv_init_clocksource() must run before interrupts are enabled.
+ *
+ * 1. Setup the guest ID.
+ * 2. Get features and hints info from Hyper-V
+ * 3. Setup per-cpu VP indices.
+ * 4. Initialize the Hyper-V clocksource.
+ */
+
+static int __init hyperv_init(struct acpi_table_header *table)
+{
+	struct hv_get_vp_register_output result;
+	u32	a, b, c, d;
+	u64	guest_id;
+	int	i;
+
+	/*
+	 * If we're in a VM on Hyper-V, the ACPI hypervisor_id field will
+	 * have the string "MsHyperV".
+	 */
+	if (strncmp((char *)&acpi_gbl_FADT.hypervisor_id, "MsHyperV", 8))
+		return -EINVAL;
+
+	/* Setup the guest ID */
+	guest_id = generate_guest_id(0, LINUX_VERSION_CODE, 0);
+	hv_set_vpreg(HV_REGISTER_GUEST_OSID, guest_id);
+
+	/* Get the features and hints from Hyper-V */
+	hv_get_vpreg_128(HV_REGISTER_PRIVILEGES_AND_FEATURES, &result);
+	ms_hyperv.features = lower_32_bits(result.registervaluelow);
+	ms_hyperv.misc_features = upper_32_bits(result.registervaluehigh);
+
+	hv_get_vpreg_128(HV_REGISTER_FEATURES, &result);
+	ms_hyperv.hints = lower_32_bits(result.registervaluelow);
+
+	pr_info("Hyper-V: Features 0x%x, hints 0x%x\n",
+		ms_hyperv.features, ms_hyperv.hints);
+
+	/*
+	 * Direct mode is the only option for STIMERs provided Hyper-V
+	 * on ARM64, so Hyper-V doesn't actually set the flag.  But add
+	 * the flag so the architecture independent code in
+	 * drivers/clocksource/hyperv_timer.c will correctly use that mode.
+	 */
+	ms_hyperv.misc_features |= HV_STIMER_DIRECT_MODE_AVAILABLE;
+
+	/*
+	 * Hyper-V on ARM64 doesn't support AutoEOI.  Add the hint
+	 * that tells architecture independent code not to use this
+	 * feature.
+	 */
+	ms_hyperv.hints |= HV_DEPRECATING_AEOI_RECOMMENDED;
+
+	/* Get information about the Hyper-V host version */
+	hv_get_vpreg_128(HV_REGISTER_HYPERVISOR_VERSION, &result);
+	a = lower_32_bits(result.registervaluelow);
+	b = upper_32_bits(result.registervaluelow);
+	c = lower_32_bits(result.registervaluehigh);
+	d = upper_32_bits(result.registervaluehigh);
+	pr_info("Hyper-V: Host Build %d.%d.%d.%d-%d-%d\n",
+		b >> 16, b & 0xFFFF, a, d & 0xFFFFFF, c, d >> 24);
+
+	/* Allocate and initialize percpu VP index array */
+	hv_vp_index = kmalloc_array(num_possible_cpus(), sizeof(*hv_vp_index),
+				    GFP_KERNEL);
+	if (!hv_vp_index)
+		return -ENOMEM;
+
+	for (i = 0; i < num_possible_cpus(); i++)
+		hv_vp_index[i] = VP_INVAL;
+
+	if (cpuhp_setup_state(CPUHP_AP_ONLINE_DYN, "arm64/hyperv_init:online",
+			      hv_cpu_init, NULL) < 0)
+		goto free_vp_index;
+
+	hv_init_clocksource();
+
+	hyperv_initialized = true;
+	return 0;
+
+free_vp_index:
+	kfree(hv_vp_index);
+	hv_vp_index = NULL;
+	return -EINVAL;
+}
+TIMER_ACPI_DECLARE(hyperv, ACPI_SIG_GTDT, hyperv_init);
+
+/*
+ * This routine is called before kexec/kdump, it does the required cleanup.
+ */
+void hyperv_cleanup(void)
+{
+	/* Reset our OS id */
+	hv_set_vpreg(HV_REGISTER_GUEST_OSID, 0);
+
+}
+EXPORT_SYMBOL_GPL(hyperv_cleanup);
+
+
+/*
  * hv_do_hypercall- Invoke the specified hypercall
  */
 u64 hv_do_hypercall(u64 control, void *input, void *output)
@@ -260,3 +396,9 @@ void hyperv_report_panic_msg(phys_addr_t pa, size_t size)
 	       (HV_CRASH_CTL_CRASH_NOTIFY | HV_CRASH_CTL_CRASH_NOTIFY_MSG));
 }
 EXPORT_SYMBOL_GPL(hyperv_report_panic_msg);
+
+bool hv_is_hyperv_initialized(void)
+{
+	return hyperv_initialized;
+}
+EXPORT_SYMBOL_GPL(hv_is_hyperv_initialized);
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
