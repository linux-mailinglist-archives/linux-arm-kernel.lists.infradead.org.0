Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2BC17D150
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 04:56:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iCJzPh1IDpWOhIQw4RGY+vBToIGIwnr+649gPwIN6lE=; b=mCLuS2LYZSXBdR
	4j3t15bh05RYQqQfO1EN3NTP+sKyuDmsvbhIuGWthAuvgnarafqoWaY0JIm7d8I5j1sEnaeKztBec
	XEWbFfk45xfygCgtKoaO2KT/+NXnP7YWnjFJwdfg5ceRERlKCQ/CogdeDlQ2q3XFSOZBM163MwcJq
	dIqjMF/7szFC/Svf+F9uRyFHtntQ9JupruqqxmI8ybS/f7QxFtfkBeyc+RT0ttEWAEq1jW9K0wA10
	/TSIH/T+f7MBUCFjvIU+VLixQcWUlScYUTBwxQ/TUkMwVIx7PjIA8j8PBP323suaRDqQjDvlHheC5
	ZUgEpeZkGqVjiH/8RvgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAn2u-00030I-K8; Sun, 08 Mar 2020 03:56:08 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAn2e-0002zS-SX
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 03:55:57 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0283tAWQ026854; Sat, 7 Mar 2020 19:55:28 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=qdZ/vn3bHhysvv1QtgEvgFqxPoO4vvTNif9CUS4Xkc0=;
 b=VIk+Zcpd1gDYm0XqfFQZ5IBBnJM0hWXHHYohUrogszsIMO4TLDaUhg6/xnUJvqUWv4th
 hMM+vGNE1q7osuShuvY68DQIGu+akgOEoOZ/yXs/JemcvkZU1JPdEYE3tYkxP9ei42AB
 sg36SxNYsKM+9qp5AriIbLxVudrrzogM0NM2CR2/GMr4Zt45+/+19Y/K6R2BLrlz4u0Y
 2F3hzIuA/gogdimuFdyBAWKgks4K/6l/CYfy6ZJmKPtH+qPkhMskOGOfjXYnrIo4FnJt
 JgNGc4A9Kklur/fe/xJgplg+ehzcGIoCMs2Hz2bpsOdEUw+Ik31X9s0LyzhW4cCYldE2 uQ== 
Received: from sc-exch03.marvell.com ([199.233.58.183])
 by mx0b-0016f401.pphosted.com with ESMTP id 2ymc0sj24f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Sat, 07 Mar 2020 19:55:28 -0800
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Sat, 7 Mar
 2020 19:55:26 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Sat, 7 Mar 2020 19:55:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F6uupuh5/ZHrMp4BWEpqaiolF77uAduM43m9N8lIXxVf+liFwZBfz8ONf0LG79LH2ETcL3tm6ti/TZccWU4a/H7j6fP1wjuEdsBtpReL43F4GSLe3tOUwTJ3mHLzmMIq9bgcZFUM89R0xMHMy8a/vtJFLKsjC0Cw+wt9fE0aOOX+liJTSmyCOMF9LepRf4pJhUD/+LwrKBPhxYQ9Dsl50aVg3eHveEh+8Z/cWhbz8cQdQxKQja8yx6bA3yMWIdC6vrNpD4kqJyFWLcPYH1e6izaYfSTAINcrifl5VwoY3a1FJBbcdIDO2VGT+8dSnw45GrBpdN2Vd5f/iLhfQPiBWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qdZ/vn3bHhysvv1QtgEvgFqxPoO4vvTNif9CUS4Xkc0=;
 b=XwCuE06Xn12upIYN8GHo5z/qd9b5aZ0guJLKTJ0O3znmgBS4yb0CTm3dnzbo6HwqOud4TaVf9DeWLETiZqcV8Mmyt4dkN3nZuZgte3HBoH0NuJdtsUmqvthK+gd0+0u1vpZg9iQZxDpkYqsm7UUKplO1cr7WKLkx1riDAyz/aXbJJOGAQdGc2+jWf5Fa/UW9ZpaFz5eA9ZqzvF9TuNXo7ZeGYqxq442AAlIxG5goWrQxae3RPeG9Z2r3EY4KFtO+fu1AOQ0X1e5rUq+fy21fsE80OVZhppxqJ2yPtqPGhzNTDLmDWFe4AK8RttqnW3GWqC29xpxQ1SctmaJXShWvwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qdZ/vn3bHhysvv1QtgEvgFqxPoO4vvTNif9CUS4Xkc0=;
 b=WQNpW3dBMEj4T/4XY9zYZzjAX/djRBfZ5spBckvNdYi3UOY5/TwLdQ9xzFNVQy1uRCrGc8981m57HxDCvvwo8PohBn8P6wq/vck8f/CbwGrNl2Mv07CSs++Hp5yXk588TJYP8O+n5ZnPKpyT1YigC8TXhOacciAeMdNAQ8pHhgU=
Received: from BYAPR18MB2535.namprd18.prod.outlook.com (2603:10b6:a03:137::17)
 by BYAPR18MB2661.namprd18.prod.outlook.com (2603:10b6:a03:136::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.17; Sun, 8 Mar
 2020 03:55:25 +0000
Received: from BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23]) by BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23%7]) with mapi id 15.20.2793.013; Sun, 8 Mar 2020
 03:55:25 +0000
From: Alex Belits <abelits@marvell.com>
To: "frederic@kernel.org" <frederic@kernel.org>, "rostedt@goodmis.org"
 <rostedt@goodmis.org>
Subject: [PATCH v2 10/12] task_isolation: ringbuffer: don't interrupt CPUs
 running isolated tasks on buffer resize
Thread-Topic: [PATCH v2 10/12] task_isolation: ringbuffer: don't interrupt
 CPUs running isolated tasks on buffer resize
Thread-Index: AQHV9P1lnq03GLPAlkGSNgjYIgfZQg==
Date: Sun, 8 Mar 2020 03:55:24 +0000
Message-ID: <5add46d3bfbdac3fb42dcef6b6e4ea0e39abe11f.camel@marvell.com>
References: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
 <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
In-Reply-To: <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [199.233.58.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3b52a88a-a37f-456f-a47a-08d7c3148868
x-ms-traffictypediagnostic: BYAPR18MB2661:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR18MB2661752785E60C067A6C9154BCE10@BYAPR18MB2661.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 03361FCC43
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(136003)(39850400004)(346002)(376002)(189003)(199004)(36756003)(71200400001)(4326008)(86362001)(2906002)(54906003)(110136005)(316002)(2616005)(8936002)(81156014)(8676002)(81166006)(26005)(186003)(66446008)(66476007)(64756008)(66556008)(66946007)(5660300002)(76116006)(478600001)(7416002)(91956017)(6486002)(6512007)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR18MB2661;
 H:BYAPR18MB2535.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pHI0fRpVX5NZyPb4d79CwPjPYOflsOWaMl9oUuul1CUZRwJD681Zsh91Qmz2pA8jiH+Oz4Du/2BIx3iEjSlv/nOShfM4/VZftY7h9yFzETiDm2Z1gO51YVu+upITaoyGmuQLj+1lLnubjnhaKWbO1W0FfKeV2JuW0lyEMFumpigXXfCueL0H4x8R9XA6M8i82MtVLMpN4p+Zk2TXquT2NH0W5d5EHmLWACoqKBlxoqA2ZMSSSAIyWdycA9fWNY+jVsInFEWreqk10iP7yyHHiSiQ4YD2JV4Dzc5l4N0hxo273z1hwdHkMdQXDZLVeV83gis9k/epAcHigHahT9hoIzEoPykZYXdvyjofGIG4fNR88LeGUYD6TMwlgShInoT4mtCuSQ68YU7GFeb+oZOEpqz8pi1XepbjfbqaLArTXc17nhG/V0A06t43v19Ec07K
x-ms-exchange-antispam-messagedata: 5/B5jPgGH3F5LXyL2WktlHPLgZc6r0RTrmWS3rftadfeDmO4hZNN9FJNFbWZTUF/W8BhSDiUcaRf3DMmCE5zCucaJXTqcaSDfmrPKPQuntgcOQbwEmMun/RQGbuNy+nZ2hnseVzGeO8euJK1i03JtQ==
Content-ID: <3896D0563E38F142822135338FAF4CA2@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b52a88a-a37f-456f-a47a-08d7c3148868
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2020 03:55:24.9437 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Cs/xat34kBHw6Q5eVwXhdA9GSVSZ8BbChTP1sBeYuLW3FP/OaamY5jusSKEaxVjIJTEMJ+vKHMxjONYaiTP7pA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB2661
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-07_09:2020-03-06,
 2020-03-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_195556_462974_7BB9B16B 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
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

From: Yuri Norov <ynorov@marvell.com>

CPUs running isolated tasks are in userspace, so they don't have to
perform ring buffer updates immediately. If ring_buffer_resize()
schedules the update on those CPUs, isolation is broken. To prevent
that, updates for CPUs running isolated tasks are performed locally,
like for offline CPUs.

A race condition between this update and isolation breaking is avoided
at the cost of disabling per_cpu buffer writing for the time of update
when it coincides with isolation breaking.

Signed-off-by: Yuri Norov <ynorov@marvell.com>
[abelits@marvell.com: updated to prevent race with isolation breaking]
Signed-off-by: Alex Belits <abelits@marvell.com>
---
 kernel/trace/ring_buffer.c | 62 ++++++++++++++++++++++++++++++++++----
 1 file changed, 56 insertions(+), 6 deletions(-)

diff --git a/kernel/trace/ring_buffer.c b/kernel/trace/ring_buffer.c
index 61f0e92ace99..593effe40183 100644
--- a/kernel/trace/ring_buffer.c
+++ b/kernel/trace/ring_buffer.c
@@ -21,6 +21,7 @@
 #include <linux/delay.h>
 #include <linux/slab.h>
 #include <linux/init.h>
+#include <linux/isolation.h>
 #include <linux/hash.h>
 #include <linux/list.h>
 #include <linux/cpu.h>
@@ -1701,6 +1702,37 @@ static void update_pages_handler(struct work_struct *work)
 	complete(&cpu_buffer->update_done);
 }
 
+static bool update_if_isolated(struct ring_buffer_per_cpu *cpu_buffer,
+			       int cpu)
+{
+	bool rv = false;
+
+	if (task_isolation_on_cpu(cpu)) {
+		/*
+		 * CPU is running isolated task. Since it may lose
+		 * isolation and re-enter kernel simultaneously with
+		 * this update, disable recording until it's done.
+		 */
+		atomic_inc(&cpu_buffer->record_disabled);
+		/* Make sure, update is done, and isolation state is current */
+		smp_mb();
+		if (task_isolation_on_cpu(cpu)) {
+			/*
+			 * If CPU is still running isolated task, we
+			 * can be sure that breaking isolation will
+			 * happen while recording is disabled, and CPU
+			 * will not touch this buffer until the update
+			 * is done.
+			 */
+			rb_update_pages(cpu_buffer);
+			cpu_buffer->nr_pages_to_update = 0;
+			rv = true;
+		}
+		atomic_dec(&cpu_buffer->record_disabled);
+	}
+	return rv;
+}
+
 /**
  * ring_buffer_resize - resize the ring buffer
  * @buffer: the buffer to resize.
@@ -1784,13 +1816,22 @@ int ring_buffer_resize(struct trace_buffer *buffer, unsigned long size,
 			if (!cpu_buffer->nr_pages_to_update)
 				continue;
 
-			/* Can't run something on an offline CPU. */
+			/*
+			 * Can't run something on an offline CPU.
+			 *
+			 * CPUs running isolated tasks don't have to
+			 * update ring buffers until they exit
+			 * isolation because they are in
+			 * userspace. Use the procedure that prevents
+			 * race condition with isolation breaking.
+			 */
 			if (!cpu_online(cpu)) {
 				rb_update_pages(cpu_buffer);
 				cpu_buffer->nr_pages_to_update = 0;
 			} else {
-				schedule_work_on(cpu,
-						&cpu_buffer->update_pages_work);
+				if (!update_if_isolated(cpu_buffer, cpu))
+					schedule_work_on(cpu,
+					&cpu_buffer->update_pages_work);
 			}
 		}
 
@@ -1829,13 +1870,22 @@ int ring_buffer_resize(struct trace_buffer *buffer, unsigned long size,
 
 		get_online_cpus();
 
-		/* Can't run something on an offline CPU. */
+		/*
+		 * Can't run something on an offline CPU.
+		 *
+		 * CPUs running isolated tasks don't have to update
+		 * ring buffers until they exit isolation because they
+		 * are in userspace. Use the procedure that prevents
+		 * race condition with isolation breaking.
+		 */
 		if (!cpu_online(cpu_id))
 			rb_update_pages(cpu_buffer);
 		else {
-			schedule_work_on(cpu_id,
+			if (!update_if_isolated(cpu_buffer, cpu_id))
+				schedule_work_on(cpu_id,
 					 &cpu_buffer->update_pages_work);
-			wait_for_completion(&cpu_buffer->update_done);
+				wait_for_completion(&cpu_buffer->update_done);
+			}
 		}
 
 		cpu_buffer->nr_pages_to_update = 0;
-- 
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
