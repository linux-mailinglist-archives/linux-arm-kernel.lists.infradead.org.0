Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F85C17D15C
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 04:58:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sM+TbnXqd5cowzBrU/BzpM6SeVLyLytESQWRQrYDVAY=; b=h7RflsAX6rMfYo
	IScYLxfyaMbZbpC08/zGZNI0fXEtMKYOnjm+ib1KJLuIrn2LQVvhFlCNDZ3mOCTRbqD2RIRDxy/nC
	Eq5tV2eL21NiQWGg6TGylpYKhtSP9tU3Z14fSUjekA+vFmiKNjDQQJ9bel9qJ8q0121EZwdmIDbzT
	womVlMSWE6VvSjdWEOFh/Ng6nn+C66xHLHr9QNARcD3vGkwPMeBNr02FPh1DiZTGpYQcA89IoRy5d
	Qlppedfmps4n/SKzaHqTGB34a5RZzJT2bUs1J9rLib+BAUl53J33N7ns/88HR9Vm6Axbzb74wJlOp
	9+Qjhar+AlpxeMv4m29Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAn4a-0003eP-0l; Sun, 08 Mar 2020 03:57:52 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAn4Q-0003e1-Ei
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 03:57:44 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0283tG4F026879; Sat, 7 Mar 2020 19:57:18 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=QqX6DBmhSYAp+Ek6zwjJxp8jOQpdgd0MftEbnabeMYM=;
 b=JsaUY8b31R5i0N1Y+geKkqlDDi1bdwiHrO1ZP0DG5QsF9ihK603GNXzn0QYenhtpgNER
 fnMwiUcg9nFj36XBmBtlQ1hCsPgXllKQ/4q9w7KDh8a0/tT2hgyMhBJs2kZs5wGqYRMb
 G7ydK0MoANebQsd3fUpFM9jpw5PiZ3pV8iP7V3IKiOgb4AW8bj1IJPafG6Uyh1EX2tFm
 gZ0xgn6eNVk1/l7wNAaflT2QSdVGixbjM3KQJ7cEX3up6XxDiuXLpiAB5gKc/XETxyWu
 HMBaXNYR/66hWyRJAY4Xu07OsfEJcwvVoYAIGyv2zO/x+ExDvgL7h3ll37hxdNizoW6D HQ== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
 by mx0b-0016f401.pphosted.com with ESMTP id 2ymc0sj27q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Sat, 07 Mar 2020 19:57:17 -0800
Received: from SC-EXCH03.marvell.com (10.93.176.83) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Sat, 7 Mar
 2020 19:57:15 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by SC-EXCH03.marvell.com (10.93.176.83) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Sat, 7 Mar 2020 19:57:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oZYAQbMFcqkdvnAxzMJyDTRbLYPvaa72/eIK02veLLWl7UMB7tQqgnYdJKr06H3PvS7HjXZBm4nA8p1BW8/RFAJoBRSRPkYsDihmnlNpIdv4ThGrTRl5YuFCJEP7KFlI85r41twqq7Zrq6nfWrv7sJ6Gsi8/BDcqv3XDSx9He0YAXGHjhDRMMOrgeYBSlUzgLGKy4g6kiF1DKzkBiIVFnkNCbL0ZTNT6BytIYbQxC44Ftx/k7Qc+a8iaPdg8mHF2dqNscAryeysBWxKrHEOPp6LoBfB5l3obu14gJeuW6YubXkgboFaOzRaOcujbafvODl4iaydnSdEgeJPxET2uRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QqX6DBmhSYAp+Ek6zwjJxp8jOQpdgd0MftEbnabeMYM=;
 b=k+l5HzOcjsTf+3KXJNqUu7LTXUyrvsbQyVf/uVgFhNO+zt1331p9Z8X18MZDPafnOHMdCd4YLgjAqMcOfcquG14+3qA279U3cxIEaE60gboAXc6v7oVFhuBkZzbyWR+PTArrl+etg5TWAh8CY5tkDX3lgeT3ZbU6xsDobc421aWy54SUjgXQTsLK35aGY6Lacfozf2pjJN0J23yIkmtqEH1yUn0m795xMVYzHOqWen6//P5AtcC3wTZb+l0gZCUNh2som4ug4giyZuIxy/00Vyvu5seelYxTOv4Vya1e4z8WZe7LSeJhN+t0LugTCwGThtxlGPC+7yiNX9FeCkZZog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QqX6DBmhSYAp+Ek6zwjJxp8jOQpdgd0MftEbnabeMYM=;
 b=N2SARFl4R5vCYvZD/rUsNXxrB2Vw55V8v49/1z1KTIAxjyXcfQnGDopJPWfgXGdIyNp41fmFvPPsO/11n+yzSQ5Vy9kWqlJB5t//CU+Ca77ucU/PYfAg8x3NoB/MrL1U396xc8b1oeQfNjQ6K9oOIDfL8HNIIctQbcWcW507SfQ=
Received: from BYAPR18MB2535.namprd18.prod.outlook.com (2603:10b6:a03:137::17)
 by BYAPR18MB2661.namprd18.prod.outlook.com (2603:10b6:a03:136::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.17; Sun, 8 Mar
 2020 03:57:14 +0000
Received: from BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23]) by BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23%7]) with mapi id 15.20.2793.013; Sun, 8 Mar 2020
 03:57:14 +0000
From: Alex Belits <abelits@marvell.com>
To: "frederic@kernel.org" <frederic@kernel.org>, "rostedt@goodmis.org"
 <rostedt@goodmis.org>
Subject: [PATCH v2 12/12] task_isolation: CONFIG_TASK_ISOLATION prevents
 distribution of jobs to non-housekeeping CPUs
Thread-Topic: [PATCH v2 12/12] task_isolation: CONFIG_TASK_ISOLATION prevents
 distribution of jobs to non-housekeeping CPUs
Thread-Index: AQHV9P2m7r4Cq5RXm0W7iV9iTkwGPQ==
Date: Sun, 8 Mar 2020 03:57:13 +0000
Message-ID: <c8aad5686cbea676831a9f38634820bc5f2ffb76.camel@marvell.com>
References: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
 <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
In-Reply-To: <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [199.233.58.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c65de317-9996-4ed4-0e16-08d7c314c94b
x-ms-traffictypediagnostic: BYAPR18MB2661:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR18MB2661980B5CEA924B1565A7F0BCE10@BYAPR18MB2661.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
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
x-microsoft-antispam-message-info: tRZx4B7zRm9z98p2OXHivqF9ZInmk414dMbNffTE/DXcuyUkQTkw+gK1zbwd0xNupoU+3q3h7wu4tL0uXszyJinoa4AdEHYhQleNyrF+ZxYowTMIrPNE0Z7+CDGvxrXeoCtylaJNTjUpKPVjIWKYWPJYYrTunJILbZNA7eZz+iyoIg2hWrxKMixxLqyR7ICImkiu4Rqol20ZimxK0/nZnyg1n15GXX3N95Xp5qdQ+c2uWRj1NQVJud37Tq2tLSgV8Z6/7+2QgFl/cVG6KxeQQJIJW7a5QI7a5gFdaKnYFuAgoFf0cXj3ratu6hGWhLyXed1vjVQQ/J9lotQBvf5EmgTimqbkY0SsM6ykjzVvcUm4Rik7Tdf5gr9ZQ5ItMquKhQ4cEyozdCR50A7tJKCogavCShDVddIOT9WHOdj6p4kO1lcevfeaWxwvcisMYJva
x-ms-exchange-antispam-messagedata: cIHdX12WV4njsZ177EM5HXuuJ5nDEYUQBQJdZBEla0Kv82ZEYekqnUJXBG1Sp7YOi0D+YTsWHoZspCAorhGeLw/jJw1+zmyrtPGf5aA/9DpmKqcoGJ9taXzYd+6oSNss3mYjTlABk0un38L02iTquQ==
Content-ID: <6F7A0CBA8D79BD4490A8227E3C795C60@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c65de317-9996-4ed4-0e16-08d7c314c94b
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2020 03:57:13.8426 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tX4HOFXBeJWiRn+m0XzX1SFEyk+4E3R+pri5OJCT3S+BlObkx+2obpb06WVw7z6VixS6PYWTLAAXSzLzSwE+zA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB2661
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-07_09:2020-03-06,
 2020-03-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_195742_618468_3641C425 
X-CRM114-Status: GOOD (  18.43  )
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

There are various mechanisms that select CPUs for jobs other than
regular workqueue selection. CPU isolation normally does not
prevent those jobs from running on isolated CPUs. When task
isolation is enabled those jobs should be limited to housekeeping
CPUs.

Signed-off-by: Alex Belits <abelits@marvell.com>
---
 drivers/pci/pci-driver.c |  9 +++++++
 lib/cpumask.c            | 53 +++++++++++++++++++++++++---------------
 net/core/net-sysfs.c     |  9 +++++++
 3 files changed, 51 insertions(+), 20 deletions(-)

diff --git a/drivers/pci/pci-driver.c b/drivers/pci/pci-driver.c
index 0454ca0e4e3f..cb872cdd1782 100644
--- a/drivers/pci/pci-driver.c
+++ b/drivers/pci/pci-driver.c
@@ -12,6 +12,7 @@
 #include <linux/string.h>
 #include <linux/slab.h>
 #include <linux/sched.h>
+#include <linux/sched/isolation.h>
 #include <linux/cpu.h>
 #include <linux/pm_runtime.h>
 #include <linux/suspend.h>
@@ -332,6 +333,9 @@ static bool pci_physfn_is_probed(struct pci_dev *dev)
 static int pci_call_probe(struct pci_driver *drv, struct pci_dev *dev,
 			  const struct pci_device_id *id)
 {
+#ifdef CONFIG_TASK_ISOLATION
+	int hk_flags = HK_FLAG_DOMAIN | HK_FLAG_WQ;
+#endif
 	int error, node, cpu;
 	struct drv_dev_and_id ddi = { drv, dev, id };
 
@@ -353,7 +357,12 @@ static int pci_call_probe(struct pci_driver *drv, struct pci_dev *dev,
 	    pci_physfn_is_probed(dev))
 		cpu = nr_cpu_ids;
 	else
+#ifdef CONFIG_TASK_ISOLATION
+		cpu = cpumask_any_and(cpumask_of_node(node),
+				      housekeeping_cpumask(hk_flags));
+#else
 		cpu = cpumask_any_and(cpumask_of_node(node), cpu_online_mask);
+#endif
 
 	if (cpu < nr_cpu_ids)
 		error = work_on_cpu(cpu, local_pci_probe, &ddi);
diff --git a/lib/cpumask.c b/lib/cpumask.c
index 0cb672eb107c..dcbc30a47600 100644
--- a/lib/cpumask.c
+++ b/lib/cpumask.c
@@ -6,6 +6,7 @@
 #include <linux/export.h>
 #include <linux/memblock.h>
 #include <linux/numa.h>
+#include <linux/sched/isolation.h>
 
 /**
  * cpumask_next - get the next cpu in a cpumask
@@ -205,28 +206,40 @@ void __init free_bootmem_cpumask_var(cpumask_var_t mask)
  */
 unsigned int cpumask_local_spread(unsigned int i, int node)
 {
-	int cpu;
+	const struct cpumask *mask;
+	int cpu, m, n;
+
+#ifdef CONFIG_TASK_ISOLATION
+	mask = housekeeping_cpumask(HK_FLAG_DOMAIN);
+	m = cpumask_weight(mask);
+#else
+	mask = cpu_online_mask;
+	m = num_online_cpus();
+#endif
 
 	/* Wrap: we always want a cpu. */
-	i %= num_online_cpus();
-
-	if (node == NUMA_NO_NODE) {
-		for_each_cpu(cpu, cpu_online_mask)
-			if (i-- == 0)
-				return cpu;
-	} else {
-		/* NUMA first. */
-		for_each_cpu_and(cpu, cpumask_of_node(node), cpu_online_mask)
-			if (i-- == 0)
-				return cpu;
-
-		for_each_cpu(cpu, cpu_online_mask) {
-			/* Skip NUMA nodes, done above. */
-			if (cpumask_test_cpu(cpu, cpumask_of_node(node)))
-				continue;
-
-			if (i-- == 0)
-				return cpu;
+	n = i % m;
+
+	while (m-- > 0) {
+		if (node == NUMA_NO_NODE) {
+			for_each_cpu(cpu, mask)
+				if (n-- == 0)
+					return cpu;
+		} else {
+			/* NUMA first. */
+			for_each_cpu_and(cpu, cpumask_of_node(node), mask)
+				if (n-- == 0)
+					return cpu;
+
+			for_each_cpu(cpu, mask) {
+				/* Skip NUMA nodes, done above. */
+				if (cpumask_test_cpu(cpu,
+						     cpumask_of_node(node)))
+					continue;
+
+				if (n-- == 0)
+					return cpu;
+			}
 		}
 	}
 	BUG();
diff --git a/net/core/net-sysfs.c b/net/core/net-sysfs.c
index 4c826b8bf9b1..253758f102d9 100644
--- a/net/core/net-sysfs.c
+++ b/net/core/net-sysfs.c
@@ -11,6 +11,7 @@
 #include <linux/if_arp.h>
 #include <linux/slab.h>
 #include <linux/sched/signal.h>
+#include <linux/sched/isolation.h>
 #include <linux/nsproxy.h>
 #include <net/sock.h>
 #include <net/net_namespace.h>
@@ -725,6 +726,14 @@ static ssize_t store_rps_map(struct netdev_rx_queue *queue,
 		return err;
 	}
 
+#ifdef CONFIG_TASK_ISOLATION
+	cpumask_and(mask, mask, housekeeping_cpumask(HK_FLAG_DOMAIN));
+	if (cpumask_weight(mask) == 0) {
+		free_cpumask_var(mask);
+		return -EINVAL;
+	}
+#endif
+
 	map = kzalloc(max_t(unsigned int,
 			    RPS_MAP_SIZE(cpumask_weight(mask)), L1_CACHE_BYTES),
 		      GFP_KERNEL);
-- 
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
