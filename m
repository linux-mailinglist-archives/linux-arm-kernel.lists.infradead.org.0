Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E25FFF1A43
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 16:42:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wIJUeyKseoABUEKH7iCR/kOzLOuBOknF4q5oRLApbaA=; b=hWclwSxr51zcBR
	ekHAzcjwFGKt+ZwKNAPxw03wIatPOopg4sCuKLtvy7G0P9LDYz47Rt9UJHAGafL9kvgAcZUtLQfT1
	KPN41nOpZ8F7DioInu4ORma8oTP+ThZl12d4lGge9inWuARNbaiLFGu9BLgM3qTpG4YOTOwZXvzKd
	SqjzR9KHWRjU07w4R+O2xfgBh4d+JqTyCHiw0Z4CZDKQwl3/gq5R5a7ECkqTWK+pU4jneVJ7MK9T8
	S0NZRQ2aP5hbqL83c9m0Ru2F1ZIqWSIHCjVVDUofKaChvhawsDrrauu/KPVaf/ovD58/IFIdLCcra
	cxPjwX8BSNKQI0DK+aZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSNSF-0001IM-HV; Wed, 06 Nov 2019 15:42:43 +0000
Received: from mail-eopbgr60112.outbound.protection.outlook.com
 ([40.107.6.112] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSNS4-00015w-Hl
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 15:42:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WPXZJgThj7uJcGl2AAmV9wcR7bopU6kzP3BUkjPeowosQyicN+Rc+6z2EMqzWc04zNiMgXkmLsWcYrK1S470eM7lioTnv0amxDG9nWZMSSFoptxS9MgL/Wdckjmdji6JTzty0urnBUuPuLhBA+hbmDjYndbKowVxV2aF7Qwy5Y3eLfSqXaX50d0b3B9T8ptYJ9QMy0KQifalyeU3CjIiJPKxuKdgUoVE+RCsQiPqEidNxTGNJmWYn+FuQ3MkjMk4fZeNKNiGer4Z1n+f88qRfKjnHkhCR82Kh09fLENsM2y/SaznL3OEjV7bkOY6icm9SWgmpFfsdOfXNavL3WEciA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WZvUAGxaLgtGJWb2NDNBjCtddpwg6H2W0+Jv+MklurU=;
 b=Dg8f0JElqSHdlscl20PoOqt7shFcEcU61OsNj/9aaNKlRm/nI32FV+Zh5/H2As0gynduPCeXzhq5f9w4Txonnu2Mcvyi32RqXa5JZBnnDxsHleTIEClJG+55w5vlmeQMzfRGxBxxBoJeir351mZmuOTYM2rxP/c4E89/fdzlHhP5XK2ZUHGmJBiLuy9u3pHG++gx2SkKsDhX8dfAPuOklFdqhKQxMdTouwD+e8p6N4xZC0l8x2KHpI4hfrGfPgTDF13HU99PtVomkWbT/nfrYWpodoDpbfcxVUIJ5ybiaz+GqEugpL38kbDl8zLehEtzIfS/AnHHl5/ZA/6W3vzGVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nokia.com; dmarc=pass action=none header.from=nokia.com;
 dkim=pass header.d=nokia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nokia.onmicrosoft.com; 
 s=selector1-nokia-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WZvUAGxaLgtGJWb2NDNBjCtddpwg6H2W0+Jv+MklurU=;
 b=pJJSThKdZR/mwnLQFHfd+gjRIbbSd+s/fdpRCBLtlLThJvi+nP7OkXHUjzH7e/6FpXGomsgNnlZXIpvMWJYx8oRJ9Z6DxX04JwliFYwlqYhrDmQPUyeF6X5PuNmXKuvRUBTqWTn11FPSP7HFNEOIIwnBDIoOv1E+dmmmtbagjKs=
Received: from VI1PR07MB5040.eurprd07.prod.outlook.com (20.177.203.20) by
 VI1PR07MB4287.eurprd07.prod.outlook.com (20.176.5.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.16; Wed, 6 Nov 2019 15:42:25 +0000
Received: from VI1PR07MB5040.eurprd07.prod.outlook.com
 ([fe80::ec3b:5048:b5f7:2826]) by VI1PR07MB5040.eurprd07.prod.outlook.com
 ([fe80::ec3b:5048:b5f7:2826%5]) with mapi id 15.20.2430.020; Wed, 6 Nov 2019
 15:42:24 +0000
From: "Sverdlin, Alexander (Nokia - DE/Ulm)" <alexander.sverdlin@nokia.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: [PATCH v2] ARM: ftrace/recordmcount: filter relocation types
Thread-Topic: [PATCH v2] ARM: ftrace/recordmcount: filter relocation types
Thread-Index: AQHVlLjJ3L9/ljk2bEOhhVB0w3EsXA==
Date: Wed, 6 Nov 2019 15:42:24 +0000
Message-ID: <20191106154209.118919-1-alexander.sverdlin@nokia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [131.228.32.181]
x-mailer: git-send-email 2.23.0
x-clientproxiedby: HE1PR05CA0197.eurprd05.prod.outlook.com
 (2603:10a6:3:f9::21) To VI1PR07MB5040.eurprd07.prod.outlook.com
 (2603:10a6:803:9c::20)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=alexander.sverdlin@nokia.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d1790361-7bf5-4f1c-3707-08d762cfeb96
x-ms-traffictypediagnostic: VI1PR07MB4287:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR07MB4287A59693EC5DD22236DF2488790@VI1PR07MB4287.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02135EB356
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(376002)(366004)(346002)(39860400002)(136003)(189003)(199004)(54534003)(2351001)(478600001)(5660300002)(6506007)(4326008)(386003)(14454004)(52116002)(966005)(6306002)(2616005)(26005)(486006)(25786009)(36756003)(102836004)(6486002)(316002)(5640700003)(6916009)(6512007)(476003)(54906003)(6436002)(1076003)(99286004)(186003)(81156014)(256004)(14444005)(305945005)(7736002)(2501003)(66476007)(66556008)(64756008)(66446008)(71190400001)(3846002)(71200400001)(6116002)(66946007)(66066001)(8936002)(81166006)(2906002)(86362001)(8676002)(50226002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR07MB4287;
 H:VI1PR07MB5040.eurprd07.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nokia.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: l1NQYYq1e5RTtgU/GYjCNFsfcwDmCWXFEO+M3LogAep4WGrYcoqtEznIvT7Me+wOH6dxu0LtX7VRX+KnXJMAWFd6M83gyw10SlHmmVxQRDUU4dmFE1YApdUDqFR4gghkRE1gu0UkrCT5Np248nNHykrKO5Mms5ajU+l1Qlwdf2sr5NQLPU+pdJ4YlHNHq8tEzH4YdIWaJbLrPLfljPJDnlFU1l/Ljaq2azqSDFVqaLEyt1W6VmUs+bIlgqsQ+XHNdNw09V+cde0ZghpMxirooUJAWHRtPay1vAoVClFFffgDR7uac7exfPTcKS1hJg2dl/cSQQjk1UXJXW50p6RV4Qn8EuZXADzLSPj10JHr3MpsunFoMFj0BVIBL23COBN2HJUXgp4P4eHZRZN9eAh+D0trIzSD/oDxCtvfh81rxheMMedZYdIm4Ir82AAHgpfQERR1OpCaUaXn69UVzFgO9i4DkswAzHDCWJFEPkrLqOQ=
MIME-Version: 1.0
X-OriginatorOrg: nokia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1790361-7bf5-4f1c-3707-08d762cfeb96
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2019 15:42:24.8176 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5d471751-9675-428d-917b-70f44f9630b0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DgkQj7kYcwdH6ITA7J1wOda9lYIqXDt3gN3SL3Iki0WBEK8auL4JuYKMPYzYi96/XL/UN5j9kKPJm7XogOoPCRXkXIkHWjk/x89Jnb3fEd8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR07MB4287
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_074232_606445_C520191B 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.112 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Marc Kleine-Budde <mkl@pengutronix.de>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>, "Sverdlin,
 Alexander \(Nokia - DE/Ulm\)" <alexander.sverdlin@nokia.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexander Sverdlin <alexander.sverdlin@nokia.com>

Scenario 1, ARMv7
=================

If code in arch/arm/kernel/ftrace.c would operate on mcount() pointer
the following may be generated:

00000230 <prealloc_fixed_plts>:
 230:   b5f8            push    {r3, r4, r5, r6, r7, lr}
 232:   b500            push    {lr}
 234:   f7ff fffe       bl      0 <__gnu_mcount_nc>
                        234: R_ARM_THM_CALL     __gnu_mcount_nc
 238:   f240 0600       movw    r6, #0
                        238: R_ARM_THM_MOVW_ABS_NC      __gnu_mcount_nc
 23c:   f8d0 1180       ldr.w   r1, [r0, #384]  ; 0x180

FTRACE currently is not able to deal with it:

WARNING: CPU: 0 PID: 0 at .../kernel/trace/ftrace.c:1979 ftrace_bug+0x1ad/0x230()
...
CPU: 0 PID: 0 Comm: swapper/0 Not tainted 4.4.116-... #1
...
[<c0314e3d>] (unwind_backtrace) from [<c03115e9>] (show_stack+0x11/0x14)
[<c03115e9>] (show_stack) from [<c051a7f1>] (dump_stack+0x81/0xa8)
[<c051a7f1>] (dump_stack) from [<c0321c5d>] (warn_slowpath_common+0x69/0x90)
[<c0321c5d>] (warn_slowpath_common) from [<c0321cf3>] (warn_slowpath_null+0x17/0x1c)
[<c0321cf3>] (warn_slowpath_null) from [<c038ee9d>] (ftrace_bug+0x1ad/0x230)
[<c038ee9d>] (ftrace_bug) from [<c038f1f9>] (ftrace_process_locs+0x27d/0x444)
[<c038f1f9>] (ftrace_process_locs) from [<c08915bd>] (ftrace_init+0x91/0xe8)
[<c08915bd>] (ftrace_init) from [<c0885a67>] (start_kernel+0x34b/0x358)
[<c0885a67>] (start_kernel) from [<00308095>] (0x308095)
---[ end trace cb88537fdc8fa200 ]---
ftrace failed to modify [<c031266c>] prealloc_fixed_plts+0x8/0x60
 actual: 44:f2:e1:36
ftrace record flags: 0
 (0)   expected tramp: c03143e9

Scenario 2, ARMv4T
==================

ftrace: allocating 14435 entries in 43 pages
------------[ cut here ]------------
WARNING: CPU: 0 PID: 0 at kernel/trace/ftrace.c:2029 ftrace_bug+0x204/0x310
CPU: 0 PID: 0 Comm: swapper Not tainted 4.19.5 #1
Hardware name: Cirrus Logic EDB9302 Evaluation Board
[<c0010a24>] (unwind_backtrace) from [<c000ecb0>] (show_stack+0x20/0x2c)
[<c000ecb0>] (show_stack) from [<c03c72e8>] (dump_stack+0x20/0x30)
[<c03c72e8>] (dump_stack) from [<c0021c18>] (__warn+0xdc/0x104)
[<c0021c18>] (__warn) from [<c0021d7c>] (warn_slowpath_null+0x4c/0x5c)
[<c0021d7c>] (warn_slowpath_null) from [<c0095360>] (ftrace_bug+0x204/0x310)
[<c0095360>] (ftrace_bug) from [<c04dabac>] (ftrace_init+0x3b4/0x4d4)
[<c04dabac>] (ftrace_init) from [<c04cef4c>] (start_kernel+0x20c/0x410)
[<c04cef4c>] (start_kernel) from [<00000000>] (  (null))
---[ end trace 0506a2f5dae6b341 ]---
ftrace failed to modify
[<c000c350>] perf_trace_sys_exit+0x5c/0xe8
 actual:   1e:ff:2f:e1
Initializing ftrace call sites
ftrace record flags: 0
 (0)
 expected tramp: c000fb24

The analysis for this problem has been already performed previously,
refer to the link below.

Fix the above problems by allowing only selected reloc types in
__mcount_loc. The list itself comes from the legacy recordmcount.pl
script.

Cc: stable@vger.kernel.org
Link: https://lore.kernel.org/lkml/56961010.6000806@pengutronix.de/
Fixes: ed60453fa8 ("ARM: 6511/1: ftrace: add ARM support for C version of recordmcount")
Signed-off-by: Alexander Sverdlin <alexander.sverdlin@nokia.com>

---
Changelog:
v2: Rebased

 scripts/recordmcount.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/scripts/recordmcount.c b/scripts/recordmcount.c
index 612268e..6872d26 100644
--- a/scripts/recordmcount.c
+++ b/scripts/recordmcount.c
@@ -38,6 +38,10 @@
 #define R_AARCH64_ABS64	257
 #endif
 
+#define R_ARM_PC24		1
+#define R_ARM_THM_CALL		10
+#define R_ARM_CALL		28
+
 static int fd_map;	/* File descriptor for file being modified. */
 static int mmap_failed; /* Boolean flag. */
 static char gpfx;	/* prefix for global symbol name (sometimes '_') */
@@ -418,6 +422,18 @@ static char const *already_has_rel_mcount = "success"; /* our work here is done!
 #define RECORD_MCOUNT_64
 #include "recordmcount.h"
 
+static int arm_is_fake_mcount(Elf32_Rel const *rp)
+{
+	switch (ELF32_R_TYPE(w(rp->r_info))) {
+	case R_ARM_THM_CALL:
+	case R_ARM_CALL:
+	case R_ARM_PC24:
+		return 0;
+	}
+
+	return 1;
+}
+
 /* 64-bit EM_MIPS has weird ELF64_Rela.r_info.
  * http://techpubs.sgi.com/library/manuals/4000/007-4658-001/pdf/007-4658-001.pdf
  * We interpret Table 29 Relocation Operation (Elf64_Rel, Elf64_Rela) [p.40]
@@ -523,6 +539,7 @@ static int do_file(char const *const fname)
 		altmcount = "__gnu_mcount_nc";
 		make_nop = make_nop_arm;
 		rel_type_nop = R_ARM_NONE;
+		is_fake_mcount32 = arm_is_fake_mcount;
 		gpfx = 0;
 		break;
 	case EM_AARCH64:
-- 
2.4.6


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
