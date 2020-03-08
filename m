Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB84B17D12F
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 04:48:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYHF05wcQ4uVMlHSbpRm3RU8xBlfuQzYTfHNILS+vDs=; b=Dz922Mah6HCqR1
	fN3tT3+QDxRlU6Lm3XMs0E9ME4UwzGNw49lJ17ifvZIeTRF1hDNngmFWQ0siILgk6J0reQANoLhko
	zA33x8ADX1oyGcP4n7H7uQpSAwsALDwjTmGtD85Pe75eg6A0p/gD8+iiVmX66Bxbdn93QAxYmDBIO
	vGwehUKpPyv9q/r/5rU0SvrocE0DNCKK3RNTRhvw1l27qpdQkPXc1AO9SiIXPRvhh8tvWKd7+/g9g
	gr9n1egD/AWJHNw5T4Yyf4wvrQlj6Pcz0BZc+pZtqYswmKfeYw6TKXZjVkQD1YsFN3N5OOnAiRpp4
	2Qqvv8u3MyeVsrtLbMKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAmvo-0006xX-Ra; Sun, 08 Mar 2020 03:48:48 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAmvg-0006ws-Tr
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 03:48:42 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0283kgI4010475; Sat, 7 Mar 2020 19:48:17 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=MTd/dMc3M0TGfoAmo6csx6t6wKErRI+/1qrvWpMK/To=;
 b=YmBPyq3lkG3u4A9Wl7RSe3LsPgm/kuYeeiUEnx3lqSRSiJTLhM7edjX1KJp1CSMWKZtC
 FPeottYl70VaeBr/H6xb+Cg28foTPFbPA/46xxNk6C/+Tr9pBNNE6BnHP1YnFOwOt/qh
 eBN4hWc/aWSJKgw28ztaTFn7bYLZKTbUE9b9kVU2HtqmuErHxBYSscKVio+FdFSBAu4F
 EB+GW6NieyCmMFouZa14MVYgzWV8UiF824+P+OYBleTQR71X4ckIAGz+RP831Kf4LmCb
 v3nQAa6f/2gE6cAA6ggk3CKkp7y8n73RLxDAUoks+2WGQ5IL6sw6k7l3baR4W6ovxPvk rA== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0a-0016f401.pphosted.com with ESMTP id 2ym9uwav3g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Sat, 07 Mar 2020 19:48:16 -0800
Received: from SC-EXCH04.marvell.com (10.93.176.84) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Sat, 7 Mar
 2020 19:48:15 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by SC-EXCH04.marvell.com (10.93.176.84) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Sat, 7 Mar 2020 19:48:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B/gOjvsslRmZJBFfiRKGh7DjndRoqRlB+/ICRJk1aDHR2qmdg8VgneXC+RnWXdCmf0HCopzoQaqbCJHPnE8v4KUXSsBOuu1s2nArTO7OCAqTA6CVOtkxFuPjmXWdMWu6tG/Au9vPA/aiUydfR+zFOGbTJn2EFQNPTqiN6L4pC/4dBLsIx+TYlU6oyW6ALLV1856kp7z3uNntlpC5FmD3CauR4Nc8W8k5u0v+Jb9k79Jelx37jSTQHRQ3+0deXCJLA2nOk/GVLyc2d4bEXllKfMCJanNUtUjPABC7tyVoqctosUsr+p9VZooxIVgsJJ2aPYsWspAwnym9Et181RMUew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MTd/dMc3M0TGfoAmo6csx6t6wKErRI+/1qrvWpMK/To=;
 b=HkIE5+jusNLl+6mijlNi6OBKEPUoJDIGU40nnHwdtsrHqdPweXyFfxymlF0azm4nNGLvSzRKg3fRhtffUqBTyBqVABgRtP/lcGh4fqAEBdoBE5LzCUhSFgtsfhfOEWdX7hU5nBxuZfeIhy1GxXzGmOhNhMMRY4M0SgRwmhpbXkhYf4sF0wYsiVs4DmPP/Of/VjBrhTojCJWllef6HicCFKFipMeKcn9XDhyISdvTbQuLfRE8iggJc8GCGZncYijlM94cvn3kVVUwsfMUimQUCeBcLT+aWs9+Tp2RBGK+5xNHwHwZdNMTHNL+q5UZcvfm2becBD+3fIPhtHAUTsgjdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MTd/dMc3M0TGfoAmo6csx6t6wKErRI+/1qrvWpMK/To=;
 b=e18sUEzxzjfq+QWTFmPOtGEPJM56CcvcHxadtxW/r155rf7FmowrohVX4cDfoPGlbsu2DirEEXojju8GXq89ETSJMctRLSad7VcwhYNz/65XL16AZlV1CbH8L8X3K7NJjYKSHMe6dMAYhnYBK9+9RIJRnRSGPDLlKXJ6gVBUGFY=
Received: from BYAPR18MB2535.namprd18.prod.outlook.com (2603:10b6:a03:137::17)
 by BYAPR18MB2920.namprd18.prod.outlook.com (2603:10b6:a03:10b::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.14; Sun, 8 Mar
 2020 03:48:14 +0000
Received: from BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23]) by BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23%7]) with mapi id 15.20.2793.013; Sun, 8 Mar 2020
 03:48:14 +0000
From: Alex Belits <abelits@marvell.com>
To: "frederic@kernel.org" <frederic@kernel.org>, "rostedt@goodmis.org"
 <rostedt@goodmis.org>
Subject: [PATCH v2 04/12] task_isolation: Add task isolation hooks to
 arch-independent code
Thread-Topic: [PATCH v2 04/12] task_isolation: Add task isolation hooks to
 arch-independent code
Thread-Index: AQHV9Pxl8pkDGPPGIkW3Dq3VcQpODQ==
Date: Sun, 8 Mar 2020 03:48:14 +0000
Message-ID: <fe04f7ef54cac1ea4abb1a01963b27796261fef6.camel@marvell.com>
References: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
 <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
In-Reply-To: <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [199.233.58.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 565d896e-70f9-4fde-1f8d-08d7c31387b2
x-ms-traffictypediagnostic: BYAPR18MB2920:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR18MB29205ECA4D462743B73B27FABCE10@BYAPR18MB2920.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:418;
x-forefront-prvs: 03361FCC43
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(39850400004)(376002)(346002)(366004)(199004)(189003)(316002)(66946007)(5660300002)(6512007)(478600001)(8936002)(71200400001)(2906002)(6486002)(66556008)(66476007)(76116006)(6506007)(91956017)(64756008)(66446008)(36756003)(54906003)(4326008)(2616005)(186003)(110136005)(8676002)(26005)(81166006)(81156014)(86362001)(7416002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR18MB2920;
 H:BYAPR18MB2535.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OkM/3l9kPUecBiRT5oxINp6rtJUGFNZEXHa8kJYJ10ueYs2Jn7d4hzRxkhmR/vKb1pwK7eL9b4M9YX67M3hEmIRwYg8XDWUHx1IIHlLpO2+JhJl5WQIvMLUJx4ENURZ17/jdDDxKlas62AFaPU0dDTAUaQ28R1+53WXsEDy3i1Vpf5OrHJk5XVdz2kk1by8J/qyhg/s/ksT/ubSdcNXibhlhj7LCJO41S3puRceo7uvU2zd5M0UFDvaa6jjH2I3vVpQidV48+yjco1FgwWsx9Alo/cYSwz0S1S575MvLLDnBdvsbZ70teI5MKpxtIObaA/lvwv2EJmDW9C7TZolodvqFXiyOuyZuS8ltVZbmy6sEV4r6+qFdnD+TRWOXERrok09RatRPVcuYw4v8G1evcej8LSmWg31vFaIs5HQq3puCAigiFlwTOoMFQqmJeDXl
x-ms-exchange-antispam-messagedata: D/Mtrvz8zNxD/2FLhKjp2lbDImRlRFwHr5HKlls6uK1ox4GEYCHHQB5xc9RP0f4zA/AntWfdwQPmJR9KDUXZXY88uJxaIPtVwvaVEyr6JTVSdTBxKHu/dB9rthxWljw6UV9AYgJE4WW0ap09RooX6A==
Content-ID: <E26DEC7E7D52154398780542E04450B8@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 565d896e-70f9-4fde-1f8d-08d7c31387b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2020 03:48:14.3297 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LeF9Wx7kepNpZhtJi4NJAXZjrDgaPECbwR9g3ImxeYzwuc7uHyeKVwsom+5FoLwnX0gxTB04db5DPqx4ZHaK7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB2920
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-07_09:2020-03-06,
 2020-03-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_194840_969885_79559F66 
X-CRM114-Status: GOOD (  17.44  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Prasun Kapoor <pkapoor@marvell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "will@kernel.org" <will@kernel.org>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chris Metcalf <cmetcalf@mellanox.com>

This commit adds task isolation hooks as follows:

- __handle_domain_irq() generates an isolation warning for the
  local task

- irq_work_queue_on() generates an isolation warning for the remote
  task being interrupted for irq_work

- generic_exec_single() generates a remote isolation warning for
  the remote cpu being IPI'd

- smp_call_function_many() generates a remote isolation warning for
  the set of remote cpus being IPI'd

Calls to task_isolation_remote() or task_isolation_interrupt() can
be placed in the platform-independent code like this when doing so
results in fewer lines of code changes, as for example is true of
the users of the arch_send_call_function_*() APIs. Or, they can be
placed in the per-architecture code when there are many callers,
as for example is true of the smp_send_reschedule() call.

A further cleanup might be to create an intermediate layer, so that
for example smp_send_reschedule() is a single generic function that
just calls arch_smp_send_reschedule(), allowing generic code to be
called every time smp_send_reschedule() is invoked. But for now, we
just update either callers or callees as makes most sense.

Signed-off-by: Chris Metcalf <cmetcalf@mellanox.com>
[abelits@marvell.com: adapted for kernel 5.6]
Signed-off-by: Alex Belits <abelits@marvell.com>
---
 kernel/irq/irqdesc.c | 9 +++++++++
 kernel/irq_work.c    | 5 ++++-
 kernel/smp.c         | 6 +++++-
 3 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/kernel/irq/irqdesc.c b/kernel/irq/irqdesc.c
index 98a5f10d1900..e2b81d035fa1 100644
--- a/kernel/irq/irqdesc.c
+++ b/kernel/irq/irqdesc.c
@@ -16,6 +16,7 @@
 #include <linux/bitmap.h>
 #include <linux/irqdomain.h>
 #include <linux/sysfs.h>
+#include <linux/isolation.h>
 
 #include "internals.h"
 
@@ -670,6 +671,10 @@ int __handle_domain_irq(struct irq_domain *domain, unsigned int hwirq,
 		irq = irq_find_mapping(domain, hwirq);
 #endif
 
+	task_isolation_interrupt((irq == hwirq) ?
+				 "irq %d (%s)" : "irq %d (%s hwirq %d)",
+				 irq, domain ? domain->name : "", hwirq);
+
 	/*
 	 * Some hardware gives randomly wrong interrupts.  Rather
 	 * than crashing, do something sensible.
@@ -711,6 +716,10 @@ int handle_domain_nmi(struct irq_domain *domain, unsigned int hwirq,
 
 	irq = irq_find_mapping(domain, hwirq);
 
+	task_isolation_interrupt((irq == hwirq) ?
+				 "NMI irq %d (%s)" : "NMI irq %d (%s hwirq %d)",
+				 irq, domain ? domain->name : "", hwirq);
+
 	/*
 	 * ack_bad_irq is not NMI-safe, just report
 	 * an invalid interrupt.
diff --git a/kernel/irq_work.c b/kernel/irq_work.c
index 828cc30774bc..8fd4ece43dd8 100644
--- a/kernel/irq_work.c
+++ b/kernel/irq_work.c
@@ -18,6 +18,7 @@
 #include <linux/cpu.h>
 #include <linux/notifier.h>
 #include <linux/smp.h>
+#include <linux/isolation.h>
 #include <asm/processor.h>
 
 
@@ -102,8 +103,10 @@ bool irq_work_queue_on(struct irq_work *work, int cpu)
 	if (cpu != smp_processor_id()) {
 		/* Arch remote IPI send/receive backend aren't NMI safe */
 		WARN_ON_ONCE(in_nmi());
-		if (llist_add(&work->llnode, &per_cpu(raised_list, cpu)))
+		if (llist_add(&work->llnode, &per_cpu(raised_list, cpu))) {
+			task_isolation_remote(cpu, "irq_work");
 			arch_send_call_function_single_ipi(cpu);
+		}
 	} else {
 		__irq_work_queue_local(work);
 	}
diff --git a/kernel/smp.c b/kernel/smp.c
index d0ada39eb4d4..3a8bcbdd4ce6 100644
--- a/kernel/smp.c
+++ b/kernel/smp.c
@@ -20,6 +20,7 @@
 #include <linux/sched.h>
 #include <linux/sched/idle.h>
 #include <linux/hypervisor.h>
+#include <linux/isolation.h>
 
 #include "smpboot.h"
 
@@ -176,8 +177,10 @@ static int generic_exec_single(int cpu, call_single_data_t *csd,
 	 * locking and barrier primitives. Generic code isn't really
 	 * equipped to do the right thing...
 	 */
-	if (llist_add(&csd->llist, &per_cpu(call_single_queue, cpu)))
+	if (llist_add(&csd->llist, &per_cpu(call_single_queue, cpu))) {
+		task_isolation_remote(cpu, "IPI function");
 		arch_send_call_function_single_ipi(cpu);
+	}
 
 	return 0;
 }
@@ -466,6 +469,7 @@ static void smp_call_function_many_cond(const struct cpumask *mask,
 	}
 
 	/* Send a message to all CPUs in the map */
+	task_isolation_remote_cpumask(cfd->cpumask_ipi, "IPI function");
 	arch_send_call_function_ipi_mask(cfd->cpumask_ipi);
 
 	if (wait) {
-- 
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
