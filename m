Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2F583A48
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 22:31:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aZ2MuWE6sZM1WIqVdhYJmXFHh74kPxc8CB0OE0jB0R8=; b=neIvnU6aTZyh+r
	9ZmR9NaQPWMF2x2eQDtQHBxE5+Aa4mVF+5azqlAAmquNd0q5+7CJAH/8O89ECsnLGm+eYXyyU8+pI
	8uylmAPXj5QYTDsGY1dgbnMkmzuECO6JLiMHBadCV/hUjaK5GtkW6Rw9xJVgNUuntd+y8IP/85/uA
	zzX9+ALzgCqnZJxbk/DaGxElad/D1vvi6miQMUFnaBR+vVGRn5l5yZIKKfqtjQ39RZzzUrBfDdRqX
	3OiNpc/I4BNeAbZd8EvLMW0b9RH3T2d0AP4Cagol/1Yn3RZPjb64+RFwQn/lLcrSNaZWCUaFGk7Jc
	5w7vIP2K3039sjfGFGYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv67C-0005hh-RN; Tue, 06 Aug 2019 20:31:27 +0000
Received: from mail-eopbgr690092.outbound.protection.outlook.com
 ([40.107.69.92] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv66j-0005WH-1k
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 20:30:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=POndwhj59HAlFylWKvaDUyckSqjQTSQr5Pdvp1I7Mv+Q8ONhbfiS2to0OWys7LCE9ToQRAGD0PJ1ImlGrOXZOLlWQtWwomyHmHxBInm9l87mwKsekuM2aC73nRUyut80zIW9ILIpW+fiJTRPAY7tIH0MbfrdfvYlewwMG1l0A/SDTq16lAOYhMEBIY1a45eH8QIk25l/5BDyLySOVTRI/GWI8TeG/T1oEpL11zN97tlGkaKUz+g1sunI8hblafNz3Q8YSM9RB/iLIPFyOARpt+ALiirL9oM8FqxeRWBJ/YLhARvan5/R+EEGRLWH76AVfvw2xgHCe5BIMNPhhDuqdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=okNn/r1zGf7JSzyO9cz5htFo9euxczWyzmqy3oQv29Q=;
 b=GZVd0CnjwsPpwdOaj0hTVOxxhtrLfsg3WGmyh6Rzy1mEFNzWNWX/Ugn/FOvMfNWRACiJA/ZFrFRgRXutP5EiFd6Ts0zzCoaz8fnPMsdaV18ZFHjtKk1sUHxIvVnP5boIcpGM1iOm8G2VmHDxDd6PUidPx09MgaBzTC2YINYDpL5UXChUJNbfLYoII/oV1Dv7ACW14xHHqpeqZHKOOnwOvYCvZnTTf+yK+wIwPfU+FL1EnHeQNOwXKJ5/nCyWJZA5eZc5smyzOJAHqR4vWl7iXzwtZPSkaniU1mK+joiJEXCSMo9EzWyy+ZQWWPIjHqSLZYRY1i8ElcSfrVQP/9wFvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=okNn/r1zGf7JSzyO9cz5htFo9euxczWyzmqy3oQv29Q=;
 b=QiOfGx+4y1GTj0V9hQo7MposaWN5EPw4+0BwgO0FfVEVpUlxrk6FPdwR6RQji+xo3z3iVDrrspTljdSo6Sc8fYJikb/Dw8g7QEn+vxye4aBdUQnwfWQS42jyXuj0+q0bYjbPaXpc+3kdEBPMz5qN0f4EIxxB0TSBje0NVrg530M=
Received: from BYAPR21MB1335.namprd21.prod.outlook.com (20.179.60.209) by
 BYAPR21MB1206.namprd21.prod.outlook.com (20.179.57.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.13; Tue, 6 Aug 2019 20:30:54 +0000
Received: from BYAPR21MB1335.namprd21.prod.outlook.com
 ([fe80::819:aea0:eda4:9301]) by BYAPR21MB1335.namprd21.prod.outlook.com
 ([fe80::819:aea0:eda4:9301%9]) with mapi id 15.20.2157.001; Tue, 6 Aug 2019
 20:30:54 +0000
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
Subject: [PATCH v4 1/8] arm64: hyperv: Add core Hyper-V include files
Thread-Topic: [PATCH v4 1/8] arm64: hyperv: Add core Hyper-V include files
Thread-Index: AQHVTJXYMOS6C9L2tEO2MJcPqZGzmg==
Date: Tue, 6 Aug 2019 20:30:54 +0000
Message-ID: <1565122133-9086-2-git-send-email-mikelley@microsoft.com>
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
x-ms-office365-filtering-correlation-id: 5ab8c4f0-a7f2-4b71-5875-08d71aacfaf5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR21MB1206; 
x-ms-traffictypediagnostic: BYAPR21MB1206:|BYAPR21MB1206:
x-ms-exchange-transport-forked: True
x-ms-exchange-purlcount: 1
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <BYAPR21MB1206BD5DA6933F4D3077CE56D7D50@BYAPR21MB1206.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0121F24F22
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(376002)(39860400002)(396003)(366004)(346002)(189003)(199004)(110136005)(14444005)(14454004)(476003)(102836004)(68736007)(966005)(446003)(99286004)(6436002)(81156014)(8676002)(10290500003)(478600001)(66066001)(2616005)(11346002)(6306002)(316002)(6486002)(76176011)(186003)(81166006)(486006)(54906003)(386003)(1511001)(36756003)(2501003)(10090500001)(2201001)(305945005)(7736002)(26005)(25786009)(6506007)(50226002)(4326008)(256004)(66476007)(6512007)(71200400001)(71190400001)(5660300002)(30864003)(4720700003)(6116002)(6636002)(52116002)(3846002)(66556008)(22452003)(64756008)(66946007)(66446008)(7416002)(86362001)(53936002)(8936002)(53946003)(2906002)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR21MB1206;
 H:BYAPR21MB1335.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 4WBk+22/hB3ptpQy1SVm9xl0KMFA1pWkPbfkba7tasG2IrVwku0UBp5P4Nv5u1KLAJ135Q70CLyJJ18IxoSrf1ktU2Q2xihfBZAp5CScCJEb+RA7JxINeDb3lmaqDcAFNIKPj7fHEGOsa3vpREMW3sMu0ymGpBXmZJ7WvdUiAsk2IoHWcxhl/LgA/0d1SmMYyb4iarjdFN756h+XfdEUyUJzPn14eZIzimbrr2AGIjcgGjwsBT6583DbbsC5KaKlgFB06qnbxi+8InUCoSeb5ExcSDSstZyxtsgtNKl5aJopcKaykjil58A6QIgyVPrgo2TyHrbozdhsdD/45z5lxnNeZs1/n7heHk1EBvocHN6zbRHJzKKEYwb72TeMzRJHy4b5DCqbNpe3sOXiX+vgajIUUm7kJ6rifkn4mVol5T8=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ab8c4f0-a7f2-4b71-5875-08d71aacfaf5
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2019 20:30:54.4588 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7Q/dTWqqnnosd072COu0GYLLeCC3OnuoeuC4vnNtkNKNBQGoD4tl/Vp43lnyUmouTMCSUT4D6Qxmv3kb7dvj5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR21MB1206
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_133057_157672_A10DE43E 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.92 listed in list.dnswl.org]
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

hyperv-tlfs.h defines Hyper-V interfaces from the Hyper-V Top Level
Functional Spec (TLFS). The TLFS is distinctly oriented to x86/x64,
and Hyper-V has not separated out the architecture-dependent parts into
x86/x64 vs. ARM64. So hyperv-tlfs.h includes information for ARM64
that is not yet formally published. The TLFS is available here:

  docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/reference/tlfs

mshyperv.h defines Linux-specific structures and routines for
interacting with Hyper-V on ARM64, and #includes the architecture-
independent part of mshyperv.h in include/asm-generic.

Signed-off-by: Michael Kelley <mikelley@microsoft.com>
---
 MAINTAINERS                          |   2 +
 arch/arm64/include/asm/hyperv-tlfs.h | 408 +++++++++++++++++++++++++++++++++++
 arch/arm64/include/asm/mshyperv.h    | 105 +++++++++
 3 files changed, 515 insertions(+)
 create mode 100644 arch/arm64/include/asm/hyperv-tlfs.h
 create mode 100644 arch/arm64/include/asm/mshyperv.h

diff --git a/MAINTAINERS b/MAINTAINERS
index cf2225b..fa98b21 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7486,6 +7486,8 @@ F:	arch/x86/include/asm/trace/hyperv.h
 F:	arch/x86/include/asm/hyperv-tlfs.h
 F:	arch/x86/kernel/cpu/mshyperv.c
 F:	arch/x86/hyperv
+F:	arch/arm64/include/asm/hyperv-tlfs.h
+F:	arch/arm64/include/asm/mshyperv.h
 F:	drivers/clocksource/hyperv_timer.c
 F:	drivers/hid/hid-hyperv.c
 F:	drivers/hv/
diff --git a/arch/arm64/include/asm/hyperv-tlfs.h b/arch/arm64/include/asm/hyperv-tlfs.h
new file mode 100644
index 0000000..fe167c4
--- /dev/null
+++ b/arch/arm64/include/asm/hyperv-tlfs.h
@@ -0,0 +1,408 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+/*
+ * This file contains definitions from the Hyper-V Hypervisor Top-Level
+ * Functional Specification (TLFS):
+ * https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/reference/tlfs
+ *
+ * Copyright (C) 2019, Microsoft, Inc.
+ *
+ * Author : Michael Kelley <mikelley@microsoft.com>
+ */
+
+#ifndef _ASM_HYPERV_TLFS_H
+#define _ASM_HYPERV_TLFS_H
+
+#include <linux/types.h>
+
+/*
+ * All data structures defined in the TLFS that are shared between Hyper-V
+ * and a guest VM use Little Endian byte ordering.  This matches the default
+ * byte ordering of Linux running on ARM64, so no special handling is required.
+ */
+
+
+/*
+ * While not explicitly listed in the TLFS, Hyper-V always runs with a page
+ * size of 4096. These definitions are used when communicating with Hyper-V
+ * using guest physical pages and guest physical page addresses, since the
+ * guest page size may not be 4096 on ARM64.
+ */
+#define HV_HYP_PAGE_SHIFT	12
+#define HV_HYP_PAGE_SIZE	(1 << HV_HYP_PAGE_SHIFT)
+#define HV_HYP_PAGE_MASK	(~(HV_HYP_PAGE_SIZE - 1))
+
+/*
+ * These Hyper-V registers provide information equivalent to the CPUID
+ * instruction on x86/x64.
+ */
+#define HV_REGISTER_HYPERVISOR_VERSION		0x00000100 /*CPUID 0x40000002 */
+#define	HV_REGISTER_PRIVILEGES_AND_FEATURES	0x00000200 /*CPUID 0x40000003 */
+#define	HV_REGISTER_FEATURES			0x00000201 /*CPUID 0x40000004 */
+#define	HV_REGISTER_IMPLEMENTATION_LIMITS	0x00000202 /*CPUID 0x40000005 */
+#define HV_ARM64_REGISTER_INTERFACE_VERSION	0x00090006 /*CPUID 0x40000001 */
+
+/*
+ * Feature identification. HvRegisterPrivilegesAndFeaturesInfo returns a
+ * 128-bit value with flags indicating which features are available to the
+ * partition based upon the current partition privileges. The 128-bit
+ * value is broken up with different portions stored in different 32-bit
+ * fields in the ms_hyperv structure.
+ */
+
+/* Partition Reference Counter available*/
+#define HV_MSR_TIME_REF_COUNT_AVAILABLE		BIT(1)
+
+/*
+ * Synthetic Timers available
+ */
+#define HV_MSR_SYNTIMER_AVAILABLE		BIT(3)
+
+/* Frequency MSRs available */
+#define HV_FEATURE_FREQUENCY_MSRS_AVAILABLE	BIT(8)
+
+/* Reference TSC available */
+#define HV_MSR_REFERENCE_TSC_AVAILABLE		BIT(9)
+
+/* Crash MSR available */
+#define HV_FEATURE_GUEST_CRASH_MSR_AVAILABLE	BIT(10)
+
+
+/*
+ * This group of flags is in the high order 64-bits of the returned
+ * 128-bit value.
+ */
+
+/* STIMER direct mode is available */
+#define HV_STIMER_DIRECT_MODE_AVAILABLE		BIT(19)
+
+/*
+ * Implementation recommendations in register
+ * HvRegisterFeaturesInfo. Indicates which behaviors the hypervisor
+ * recommends the OS implement for optimal performance.
+ */
+
+/*
+ * Recommend not using Auto EOI
+ */
+#define HV_DEPRECATING_AEOI_RECOMMENDED		BIT(9)
+
+/*
+ * Synthetic register definitions equivalent to MSRs on x86/x64
+ */
+#define HV_REGISTER_CRASH_P0		0x00000210
+#define HV_REGISTER_CRASH_P1		0x00000211
+#define HV_REGISTER_CRASH_P2		0x00000212
+#define HV_REGISTER_CRASH_P3		0x00000213
+#define HV_REGISTER_CRASH_P4		0x00000214
+#define HV_REGISTER_CRASH_CTL		0x00000215
+
+#define HV_REGISTER_GUEST_OSID		0x00090002
+#define HV_REGISTER_VPINDEX		0x00090003
+#define HV_REGISTER_TIME_REFCOUNT	0x00090004
+#define HV_REGISTER_REFERENCE_TSC	0x00090017
+
+#define HV_REGISTER_SINT0		0x000A0000
+#define HV_REGISTER_SINT1		0x000A0001
+#define HV_REGISTER_SINT2		0x000A0002
+#define HV_REGISTER_SINT3		0x000A0003
+#define HV_REGISTER_SINT4		0x000A0004
+#define HV_REGISTER_SINT5		0x000A0005
+#define HV_REGISTER_SINT6		0x000A0006
+#define HV_REGISTER_SINT7		0x000A0007
+#define HV_REGISTER_SINT8		0x000A0008
+#define HV_REGISTER_SINT9		0x000A0009
+#define HV_REGISTER_SINT10		0x000A000A
+#define HV_REGISTER_SINT11		0x000A000B
+#define HV_REGISTER_SINT12		0x000A000C
+#define HV_REGISTER_SINT13		0x000A000D
+#define HV_REGISTER_SINT14		0x000A000E
+#define HV_REGISTER_SINT15		0x000A000F
+#define HV_REGISTER_SCONTROL		0x000A0010
+#define HV_REGISTER_SVERSION		0x000A0011
+#define HV_REGISTER_SIFP		0x000A0012
+#define HV_REGISTER_SIPP		0x000A0013
+#define HV_REGISTER_EOM			0x000A0014
+#define HV_REGISTER_SIRBP		0x000A0015
+
+#define HV_REGISTER_STIMER0_CONFIG	0x000B0000
+#define HV_REGISTER_STIMER0_COUNT	0x000B0001
+#define HV_REGISTER_STIMER1_CONFIG	0x000B0002
+#define HV_REGISTER_STIMER1_COUNT	0x000B0003
+#define HV_REGISTER_STIMER2_CONFIG	0x000B0004
+#define HV_REGISTER_STIMER2_COUNT	0x000B0005
+#define HV_REGISTER_STIMER3_CONFIG	0x000B0006
+#define HV_REGISTER_STIMER3_COUNT	0x000B0007
+
+/*
+ * Crash notification flags.
+ */
+#define HV_CRASH_CTL_CRASH_NOTIFY_MSG	BIT_ULL(62)
+#define HV_CRASH_CTL_CRASH_NOTIFY	BIT_ULL(63)
+
+/*
+ * The guest OS needs to register the guest ID with the hypervisor.
+ * The guest ID is a 64 bit entity and the structure of this ID is
+ * specified in the Hyper-V TLFS.
+ */
+#define HV_LINUX_VENDOR_ID              0x8100
+
+/* Declare the various hypercall operations. */
+#define HVCALL_FLUSH_VIRTUAL_ADDRESS_SPACE	0x0002
+#define HVCALL_FLUSH_VIRTUAL_ADDRESS_LIST	0x0003
+#define HVCALL_NOTIFY_LONG_SPIN_WAIT		0x0008
+#define HVCALL_SEND_IPI				0x000b
+#define HVCALL_FLUSH_VIRTUAL_ADDRESS_SPACE_EX	0x0013
+#define HVCALL_FLUSH_VIRTUAL_ADDRESS_LIST_EX	0x0014
+#define HVCALL_SEND_IPI_EX			0x0015
+#define HVCALL_GET_VP_REGISTERS			0x0050
+#define HVCALL_SET_VP_REGISTERS			0x0051
+#define HVCALL_POST_MESSAGE			0x005c
+#define HVCALL_SIGNAL_EVENT			0x005d
+#define HVCALL_RETARGET_INTERRUPT		0x007e
+#define HVCALL_START_VIRTUAL_PROCESSOR		0x0099
+
+/* Declare standard hypercall field values. */
+#define HV_PARTITION_ID_SELF                    ((u64)-1)
+#define HV_VP_INDEX_SELF                        ((u32)-2)
+
+#define HV_HYPERCALL_FAST_BIT                   BIT(16)
+#define HV_HYPERCALL_REP_COUNT_1                BIT_ULL(32)
+#define HV_HYPERCALL_RESULT_MASK                GENMASK_ULL(15, 0)
+
+/* Define the hypercall status result */
+
+union hv_hypercall_status {
+	u64 as_uint64;
+	struct {
+		u16 status;
+		u16 reserved;
+		u16 reps_completed;  /* Low 12 bits */
+		u16 reserved2;
+	};
+};
+
+/* hypercall status code */
+#define HV_STATUS_SUCCESS			0
+#define HV_STATUS_INVALID_HYPERCALL_CODE	2
+#define HV_STATUS_INVALID_HYPERCALL_INPUT	3
+#define HV_STATUS_INVALID_ALIGNMENT		4
+#define HV_STATUS_INSUFFICIENT_MEMORY		11
+#define HV_STATUS_INVALID_CONNECTION_ID		18
+#define HV_STATUS_INSUFFICIENT_BUFFERS		19
+
+/* Define output layout for Get VP Register hypercall */
+struct hv_get_vp_register_output {
+	u64 registervaluelow;
+	u64 registervaluehigh;
+};
+
+#define HV_FLUSH_ALL_PROCESSORS			BIT(0)
+#define HV_FLUSH_ALL_VIRTUAL_ADDRESS_SPACES	BIT(1)
+#define HV_FLUSH_NON_GLOBAL_MAPPINGS_ONLY	BIT(2)
+#define HV_FLUSH_USE_EXTENDED_RANGE_FORMAT	BIT(3)
+
+enum HV_GENERIC_SET_FORMAT {
+	HV_GENERIC_SET_SPARSE_4K,
+	HV_GENERIC_SET_ALL,
+};
+
+/*
+ * The Hyper-V TimeRefCount register and the TSC
+ * page provide a guest VM clock with 100ns tick rate
+ */
+#define HV_CLOCK_HZ (NSEC_PER_SEC/100)
+
+/*
+ * The fields in this structure are set by Hyper-V and read
+ * by the Linux guest.  They should be accessed with READ_ONCE()
+ * so the compiler doesn't optimize in a way that will cause
+ * problems.  The union pads the size out to the page size
+ * used in communication with Hyper-V.
+ */
+struct ms_hyperv_tsc_page {
+	union {
+		struct {
+			u32 tsc_sequence;
+			u32 reserved1;
+			u64 tsc_scale;
+			s64 tsc_offset;
+		} __packed;
+		u8 reserved2[HV_HYP_PAGE_SIZE];
+	};
+};
+
+/* Define the number of synthetic interrupt sources. */
+#define HV_SYNIC_SINT_COUNT		(16)
+/* Define the expected SynIC version. */
+#define HV_SYNIC_VERSION_1		(0x1)
+
+#define HV_SYNIC_CONTROL_ENABLE		(1ULL << 0)
+#define HV_SYNIC_SIMP_ENABLE		(1ULL << 0)
+#define HV_SYNIC_SIEFP_ENABLE		(1ULL << 0)
+#define HV_SYNIC_SINT_MASKED		(1ULL << 16)
+#define HV_SYNIC_SINT_AUTO_EOI		(1ULL << 17)
+#define HV_SYNIC_SINT_VECTOR_MASK	(0xFF)
+
+#define HV_SYNIC_STIMER_COUNT		(4)
+
+/* Define synthetic interrupt controller message constants. */
+#define HV_MESSAGE_SIZE			(256)
+#define HV_MESSAGE_PAYLOAD_BYTE_COUNT	(240)
+#define HV_MESSAGE_PAYLOAD_QWORD_COUNT	(30)
+
+/* Define hypervisor message types. */
+enum hv_message_type {
+	HVMSG_NONE			= 0x00000000,
+
+	/* Memory access messages. */
+	HVMSG_UNMAPPED_GPA		= 0x80000000,
+	HVMSG_GPA_INTERCEPT		= 0x80000001,
+
+	/* Timer notification messages. */
+	HVMSG_TIMER_EXPIRED		= 0x80000010,
+
+	/* Error messages. */
+	HVMSG_INVALID_VP_REGISTER_VALUE	= 0x80000020,
+	HVMSG_UNRECOVERABLE_EXCEPTION	= 0x80000021,
+	HVMSG_UNSUPPORTED_FEATURE	= 0x80000022,
+
+	/* Trace buffer complete messages. */
+	HVMSG_EVENTLOG_BUFFERCOMPLETE	= 0x80000040,
+};
+
+/* Define synthetic interrupt controller message flags. */
+union hv_message_flags {
+	__u8 asu8;
+	struct {
+		__u8 msg_pending:1;
+		__u8 reserved:7;
+	} __packed;
+};
+
+/* Define port identifier type. */
+union hv_port_id {
+	__u32 asu32;
+	struct {
+		__u32 id:24;
+		__u32 reserved:8;
+	}  __packed u;
+};
+
+/* Define synthetic interrupt controller message header. */
+struct hv_message_header {
+	__u32 message_type;
+	__u8 payload_size;
+	union hv_message_flags message_flags;
+	__u8 reserved[2];
+	union {
+		__u64 sender;
+		union hv_port_id port;
+	};
+} __packed;
+
+/* Define synthetic interrupt controller message format. */
+struct hv_message {
+	struct hv_message_header header;
+	union {
+		__u64 payload[HV_MESSAGE_PAYLOAD_QWORD_COUNT];
+	} u;
+} __packed;
+
+/* Define the synthetic interrupt message page layout. */
+struct hv_message_page {
+	struct hv_message sint_message[HV_SYNIC_SINT_COUNT];
+} __packed;
+
+/* Define timer message payload structure. */
+struct hv_timer_message_payload {
+	__u32 timer_index;
+	__u32 reserved;
+	__u64 expiration_time;	/* When the timer expired */
+	__u64 delivery_time;	/* When the message was delivered */
+} __packed;
+
+#define HV_STIMER_ENABLE		(1ULL << 0)
+#define HV_STIMER_PERIODIC		(1ULL << 1)
+#define HV_STIMER_LAZY			(1ULL << 2)
+#define HV_STIMER_AUTOENABLE		(1ULL << 3)
+#define HV_STIMER_SINT(config)		(__u8)(((config) >> 16) & 0x0F)
+
+
+/* Define synthetic interrupt controller flag constants. */
+#define HV_EVENT_FLAGS_COUNT		(256 * 8)
+#define HV_EVENT_FLAGS_LONG_COUNT	(256 / sizeof(unsigned long))
+
+/*
+ * Timer configuration register.
+ */
+union hv_stimer_config {
+	u64 as_uint64;
+	struct {
+		u64 enable:1;
+		u64 periodic:1;
+		u64 lazy:1;
+		u64 auto_enable:1;
+		u64 apic_vector:8;
+		u64 direct_mode:1;
+		u64 reserved_z0:3;
+		u64 sintx:4;
+		u64 reserved_z1:44;
+	} __packed;
+};
+
+
+/* Define the synthetic interrupt controller event flags format. */
+union hv_synic_event_flags {
+	unsigned long flags[HV_EVENT_FLAGS_LONG_COUNT];
+};
+
+/* Define SynIC control register. */
+union hv_synic_scontrol {
+	u64 as_uint64;
+	struct {
+		u64 enable:1;
+		u64 reserved:63;
+	} __packed;
+};
+
+/* Define synthetic interrupt source. */
+union hv_synic_sint {
+	u64 as_uint64;
+	struct {
+		u64 vector:8;
+		u64 reserved1:8;
+		u64 masked:1;
+		u64 auto_eoi:1;
+		u64 reserved2:46;
+	} __packed;
+};
+
+/* Define the format of the SIMP register */
+union hv_synic_simp {
+	u64 as_uint64;
+	struct {
+		u64 simp_enabled:1;
+		u64 preserved:11;
+		u64 base_simp_gpa:52;
+	} __packed;
+};
+
+/* Define the format of the SIEFP register */
+union hv_synic_siefp {
+	u64 as_uint64;
+	struct {
+		u64 siefp_enabled:1;
+		u64 preserved:11;
+		u64 base_siefp_gpa:52;
+	} __packed;
+};
+
+struct hv_vpset {
+	u64 format;
+	u64 valid_bank_mask;
+	u64 bank_contents[];
+} __packed;
+
+
+#endif
diff --git a/arch/arm64/include/asm/mshyperv.h b/arch/arm64/include/asm/mshyperv.h
new file mode 100644
index 0000000..a8468a6
--- /dev/null
+++ b/arch/arm64/include/asm/mshyperv.h
@@ -0,0 +1,105 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+/*
+ * Linux-specific definitions for managing interactions with Microsoft's
+ * Hyper-V hypervisor. The definitions in this file are specific to
+ * the ARM64 architecture.  See include/asm-generic/mshyperv.h for
+ * definitions are that architecture independent.
+ *
+ * Definitions that are specified in the Hyper-V Top Level Functional
+ * Spec (TLFS) should not go in this file, but should instead go in
+ * hyperv-tlfs.h.
+ *
+ * Copyright (C) 2019, Microsoft, Inc.
+ *
+ * Author : Michael Kelley <mikelley@microsoft.com>
+ */
+
+#ifndef _ASM_MSHYPERV_H
+#define _ASM_MSHYPERV_H
+
+#include <linux/types.h>
+#include <linux/interrupt.h>
+#include <linux/clocksource.h>
+#include <linux/irq.h>
+#include <linux/irqdesc.h>
+#include <asm/hyperv-tlfs.h>
+
+/*
+ * Define the IRQ numbers/vectors used by Hyper-V VMbus interrupts
+ * and by STIMER0 Direct Mode interrupts. Hyper-V should be supplying
+ * these values through ACPI, but there are no other interrupting
+ * devices in a Hyper-V VM on ARM64, so it's OK to hard code for now.
+ * The "CALLBACK_VECTOR" terminology is a left-over from the x86/x64
+ * world that is used in architecture independent Hyper-V code.
+ */
+#define HYPERVISOR_CALLBACK_VECTOR 16
+#define	HV_STIMER0_IRQNR	   17
+
+extern u64 hv_do_hvc(u64 control, ...);
+extern u64 hv_do_hvc_fast_get(u64 control, u64 input1, u64 input2, u64 input3,
+		struct hv_get_vp_register_output *output);
+
+/*
+ * Declare calls to get and set Hyper-V VP register values on ARM64, which
+ * requires a hypercall.
+ */
+extern void hv_set_vpreg(u32 reg, u64 value);
+extern u64 hv_get_vpreg(u32 reg);
+extern void hv_get_vpreg_128(u32 reg, struct hv_get_vp_register_output *result);
+
+/*
+ * Use the Hyper-V provided stimer0 as the timer that is made
+ * available to the architecture independent Hyper-V drivers.
+ */
+#define hv_init_timer(timer, tick) \
+		hv_set_vpreg(HV_REGISTER_STIMER0_COUNT + (2*timer), tick)
+#define hv_init_timer_config(timer, val) \
+		hv_set_vpreg(HV_REGISTER_STIMER0_CONFIG + (2*timer), val)
+#define hv_get_current_tick(tick) \
+		(tick = hv_get_vpreg(HV_REGISTER_TIME_REFCOUNT))
+
+#define hv_get_simp(val) (val = hv_get_vpreg(HV_REGISTER_SIPP))
+#define hv_set_simp(val) hv_set_vpreg(HV_REGISTER_SIPP, val)
+
+#define hv_get_siefp(val) (val = hv_get_vpreg(HV_REGISTER_SIFP))
+#define hv_set_siefp(val) hv_set_vpreg(HV_REGISTER_SIFP, val)
+
+#define hv_get_synic_state(val) (val = hv_get_vpreg(HV_REGISTER_SCONTROL))
+#define hv_set_synic_state(val) hv_set_vpreg(HV_REGISTER_SCONTROL, val)
+
+#define hv_get_vp_index(index) (index = hv_get_vpreg(HV_REGISTER_VPINDEX))
+
+#define hv_signal_eom()	hv_set_vpreg(HV_REGISTER_EOM, 0)
+
+/*
+ * Hyper-V SINT registers are numbered sequentially, so we can just
+ * add the SINT number to the register number of SINT0
+ */
+#define hv_get_synint_state(sint_num, val) \
+		(val = hv_get_vpreg(HV_REGISTER_SINT0 + sint_num))
+#define hv_set_synint_state(sint_num, val) \
+		hv_set_vpreg(HV_REGISTER_SINT0 + sint_num, val)
+
+#define hv_get_crash_ctl(val) \
+		(val = hv_get_vpreg(HV_REGISTER_CRASH_CTL))
+#define hv_get_time_ref_count(val) \
+		(val = hv_get_vpreg(HV_REGISTER_TIME_REFCOUNT))
+#define hv_get_reference_tsc(val) \
+		(val = hv_get_vpreg(HV_REGISTER_REFERENCE_TSC))
+#define hv_set_reference_tsc(val) \
+		hv_set_vpreg(HV_REGISTER_REFERENCE_TSC, val)
+#define hv_set_clocksource_vdso(val) \
+		((val).archdata.vdso_direct = false)
+
+#if IS_ENABLED(CONFIG_HYPERV)
+#define hv_enable_stimer0_percpu_irq(irq)	enable_percpu_irq(irq, 0)
+#define hv_disable_stimer0_percpu_irq(irq)	disable_percpu_irq(irq)
+#endif
+
+/* ARM64 specific code to read the hardware clock */
+#define hv_get_raw_timer() arch_timer_read_counter()
+
+#include <asm-generic/mshyperv.h>
+
+#endif
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
