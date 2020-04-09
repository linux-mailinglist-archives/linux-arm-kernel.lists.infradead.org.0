Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACA81A36E7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 17:22:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYHF05wcQ4uVMlHSbpRm3RU8xBlfuQzYTfHNILS+vDs=; b=n1sTOl4TDONKii
	ULpSfjL3zWIbV+nxRNlTJMe2ADrnQ+r5G4ZQPjLIQ1eECxh4p6I93nQePdKkod+EJnCxPz+c+yVx9
	DXc0zdpQ94HQgRbjmv8jFpVHprxSk5namMvB+xYbTIxIVPU5M8+NkbARPdkc1mqNqW/8PnyWxfnpW
	CRylF9C90TWK1JYGBrVRluFY3jMahwHouTaHvtKgZnIGj1PYt2+WJMzO2rnCWgX2lYXPRHZGJwXBE
	hn5Z3vwEAhOV/0OAUz49vNa4ibhUWYbSFyeKTOyJZiASy8iDh7edy1E1xUMgBaNZKU4w3c7xjmeaH
	CwFedXEeZw9F6zF4EmsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMZ0S-0001gY-UV; Thu, 09 Apr 2020 15:22:16 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMZ0L-0001g9-PZ
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 15:22:11 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 039FFXmj014772; Thu, 9 Apr 2020 08:21:43 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=MTd/dMc3M0TGfoAmo6csx6t6wKErRI+/1qrvWpMK/To=;
 b=h85xF34Q1ThdNqX8B36c0NHLOjXuGyA/NiTGDrbGNM0nyUHcmuxo7Q97ZYIH66whqtPj
 6HJ1BAq6heHTuP7Vr+xOuI7nKqCR0/AygvtNkPCm5uLNqlKqZaGj1KcmW4tjLZXcGp+u
 6MAE1OCDCVAjO5pWsYjMcKZ8axfTwlUh9rXqrsepy061LAaHby0SlGf38+o1IFXAsqDG
 GSwzKe0eCDdxp32+Af2AFnIeLbRjLMEQlBEMJO8bKAr/oin56CEV7cEHhhhahqcFnLyL
 MkPYixoORrThD/PMlmk2DCb3zra0WPxIAiaIMpAxk3VWnG/6dz9IhujiEbfpamXenGM8 sQ== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
 by mx0a-0016f401.pphosted.com with ESMTP id 3091jwh0sx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 09 Apr 2020 08:21:43 -0700
Received: from SC-EXCH04.marvell.com (10.93.176.84) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Thu, 9 Apr
 2020 08:21:42 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.50) by
 SC-EXCH04.marvell.com (10.93.176.84) with Microsoft SMTP Server
 (TLS) id
 15.0.1497.2 via Frontend Transport; Thu, 9 Apr 2020 08:21:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nsVWlJOt9lyHRcX3OkT/iGpfaw9ShTnyvZ8DK//bl9sL0hI87aosr6u/sdTTZOv52mpHjeYiEhl2OMBuzCznHd2VN6YdEtjYLA+IQNcLlwKmdHR1R62yLx2eIs1pYXIvzybOuJmSnMbiN/+IAcVqVNM1XrPrzKxFpNT2hnftWnE+BHBFdouLDWAzatEUwNjD1dH5Dq+T3o/eDSCFxzjiK506MCpiOsJUPBdqAKi9BLk8w1g+lDvHgKVtanmREdSAsAXK9fM/wKNJ4RJ/yNPBhGc/IjKqZSsTbeifUvamAXE2eY7JM2XJ5QQQiHSidLFmpf2Fz1h9TyC5GzMsH8E5Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MTd/dMc3M0TGfoAmo6csx6t6wKErRI+/1qrvWpMK/To=;
 b=WzpK/VEZ0iFqT/3uqKd6jkfiGifa6tfnAvo5dB3VBqv51mlHgQ/rRpzfIDXGaB8UTdlq/GWAxBbAHz0wEnGZyehK9KG8XqQoeuW20QhGN8+6CqBGmg74ushWlmCs1dMAoS89K2xn7fSMdJqpehz4bcTabtmwllXpQ9zMPPpe1q6jK8k923HBlGQpgntzNSrg6KUFUZpN97X3f6gTrT57xOMuns/wv8wNgmhDJ8tbLJ6RxEtxPwFO2wQp+CfdgXME1V8B2RHwRMhhhsg7485Oh3n7M7d3a0lSeKJBAcqSi8vG0KHyg2Bo5QuWjypTtJZCG9nmZweDWQy2IkRO9mUlbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MTd/dMc3M0TGfoAmo6csx6t6wKErRI+/1qrvWpMK/To=;
 b=lUKNE+a7Rt5nAgSbI6ooNnfommWghvjbq4/vlnCXNnt1HFqTJam1QBhZES+IlZ+xbZn6GpT5zRyH8KeODDH0T4s8YrwWYeaZLgsdhUtAHPHecl4FOPSxB+SkVbjMWBHgj667in8GSmxVBwk+Eusu6a7Wf9HrannLB1WRRja+9lM=
Received: from BYAPR18MB2535.namprd18.prod.outlook.com (2603:10b6:a03:137::17)
 by BYAPR18MB3749.namprd18.prod.outlook.com (2603:10b6:a03:96::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Thu, 9 Apr
 2020 15:21:41 +0000
Received: from BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::65f8:9bfe:5fa5:1280]) by BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::65f8:9bfe:5fa5:1280%3]) with mapi id 15.20.2878.022; Thu, 9 Apr 2020
 15:21:41 +0000
From: Alex Belits <abelits@marvell.com>
To: "frederic@kernel.org" <frederic@kernel.org>, "rostedt@goodmis.org"
 <rostedt@goodmis.org>
Subject: [PATCH 05/13] task_isolation: Add task isolation hooks to
 arch-independent code
Thread-Topic: [PATCH 05/13] task_isolation: Add task isolation hooks to
 arch-independent code
Thread-Index: AQHWDoKSSgP/4IAd8kmBGtttI7fyjg==
Date: Thu, 9 Apr 2020 15:21:41 +0000
Message-ID: <74b9aa603bc03fe572cc4cd51ba2f8e2829b6ed5.camel@marvell.com>
References: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
 <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
 <07c25c246c55012981ec0296eee23e68c719333a.camel@marvell.com>
In-Reply-To: <07c25c246c55012981ec0296eee23e68c719333a.camel@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [173.228.7.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 32f65b85-03a0-434b-4a42-08d7dc99b4b3
x-ms-traffictypediagnostic: BYAPR18MB3749:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR18MB37496809C78BC8FB2FCD69DFBCC10@BYAPR18MB3749.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:418;
x-forefront-prvs: 0368E78B5B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR18MB2535.namprd18.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(396003)(136003)(39860400002)(64756008)(316002)(186003)(26005)(66446008)(81156014)(2616005)(8936002)(66476007)(4326008)(7416002)(54906003)(478600001)(81166007)(6506007)(66946007)(71200400001)(110136005)(86362001)(6486002)(76116006)(8676002)(2906002)(36756003)(66556008)(5660300002)(6512007);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vDsc+kzY9wpsVqgfPN3holtjZEW+QRHAZjnx677yDvNPSSbt8R5cDrOmxOWuhlk4Vgfxv4b8r8W9y41d1q1DAP3Jl1AwX+XDVsqhSjH5JjbBoquJ9ONsffQUpETZMSRefMbbELF6afK/7fZmuIEQkL99uRndqsC6O9jhGje/eAMIEED0Xq46NapJg/V9RQk/MDLuKfb7t7b+cxf/9UTKCW+ZKqCO19dBDPXswELaWF08Ho8D3ntcE3MokJKesCraVNr7UcR2nkTLWZ7exRDZgBAvh8wFUWoYtFhqd9KYES5lcsD5/WmqD0zJs7tTkciNZ8GbB7uPI7QmNKlqlVNzdI7REZnaaLaaUU1e1z+AgVjX4MQ0u0aN10jsxykGJCL/QSVzqO0i+KP6BmdV1dB+NuV4CyICGXRhTEMLw77K0DV+o/kM6zm8pU+/1hGL+9Vy
x-ms-exchange-antispam-messagedata: mjCR4yKjm6KgGmV3mzhGcG2pxewJiZOliY28zLL65KM2oHTgz4Q6o0Jip3paUy/mfUfJuU+Z+lLvkIxIbT0GzXzhPcRTJhMH4uJ6BKn+P9AUWnCjb8tUVMEvVdpwIvVKDzW6vsidnnhF28m+EiUR1A==
Content-ID: <1E0295570786A34A894120F715BCC68A@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 32f65b85-03a0-434b-4a42-08d7dc99b4b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2020 15:21:41.3522 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NcTefQ2Tbdr3Z8twXicrgblcJlbHnFQJYiyDk8eG/uhLiys6rFgAeV+RJFzG/53jR5lrVVxm80jqTHBN6Ks9nw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB3749
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-09_05:2020-04-07,
 2020-04-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_082209_843007_6A986614 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
