Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BCC1A3727
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 17:29:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sM+TbnXqd5cowzBrU/BzpM6SeVLyLytESQWRQrYDVAY=; b=mXFBkcPVjW6TEK
	JzsrRgtNFADPQdBg9mh+icaha7IeeepoX9IK4niaEtVdvqH4CZGja/800BY71oS3GEIFbVKiGCP7z
	/GbNF4G/rrxH79+Tpp5qSrnKPSKJQmdwc82B++zSQdV+g58M7ap0kRmCIm/H196UjqDGxy2hEoStX
	xXgKv5WiIoCHVYv0yrCrNTT85xiMHKahIR2dCDhQtiCNjGP4oD/thXnQip0YZNZN31/4hZN3Jwab3
	KWmU1IFhy5zuEAa6SAMhAanDViieao18p/juzzSGKcnI/jXSr+VqCZKt5Vc1MEQHF+NLzNvIdSd3+
	JUEqR9NmcjbrYbxDrR6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMZ7R-0006fI-AF; Thu, 09 Apr 2020 15:29:29 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMZ7I-0006ew-1S
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 15:29:21 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 039FOYLa028149; Thu, 9 Apr 2020 08:28:56 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=QqX6DBmhSYAp+Ek6zwjJxp8jOQpdgd0MftEbnabeMYM=;
 b=DucDX/JAV864Kdmn9zCVlJNFdfcoP4JVFZeSUeZy6l4ZApyx5IqJvefrd65wWMtqEfSl
 7EAVGWdegh6ekDxevgVde563ryzjNJxQgx9b3Yzr+PESHjIq0r5BEO3Q2UpCb6WlGzAZ
 u/mFPMtYJzS8ujpU0/Eo0gJLnnv5n11RLFLbVgF9jRzy1+0Z/C+10D7dXZ9l7Y3Wm3UV
 aN+w0AIOUOb1XqsnwI8I3yh8K7tJeTn0jXyL/9e0ztbD9pFyU88ofplVBAr9zawy2jlH
 KYCpqgfti2PuPDipzvNvVqBAEpt0RWohiJDvwEv5VRX3g0RPZmXrIlgccRF/nZJsk3Cg 4g== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
 by mx0b-0016f401.pphosted.com with ESMTP id 3091me90jg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 09 Apr 2020 08:28:56 -0700
Received: from DC5-EXCH01.marvell.com (10.69.176.38) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Thu, 9 Apr 2020 08:28:54 -0700
Received: from SC-EXCH03.marvell.com (10.93.176.83) by DC5-EXCH01.marvell.com
 (10.69.176.38) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Thu, 9 Apr 2020 08:28:53 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by SC-EXCH03.marvell.com (10.93.176.83) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Thu, 9 Apr 2020 08:28:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lhz/7T6vcf060a0D+LfpyW/mf7MBqWD3WEbpKKbv1qn7FvL2jTWGH+x9g0j1LgOx7LOjU0SOdWBs26cbwCf2f6zx4aL6ySsFB6DbDQLMiOWmjYy02tA0lNDYMQ/syHKnC4ZWC44ai43c963vZNqV89PUmbEjji0x7WgRPFifR4PlaNuL3ljTL6oyKfnze4giUlkNgk6sFne+HhkBWe0XRkhm/5rrFTqLWgPdgA9X5Bplh+8gmgj/7CFEn1rj0NQC4Qho+L5JH9PPIi3CZGasmS8jBjkZO31iYrQhYO9YeuupEv652OFf0+OO0dnY7FO+V0Swcutu5BSalmVPOFRiRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QqX6DBmhSYAp+Ek6zwjJxp8jOQpdgd0MftEbnabeMYM=;
 b=DlLdIrulPaR6+fx8sIMIVebC2SfmcjJwOKB1uzyq0s3Y0eRe/vgJs2CbWJJbVb6wPsLaCIS4VFswEdy0yZJI77JsZLomnzkzCskYaPjfOm50+66IVY6ebzIGS2FBFKs5KG4zUo0+dHEaCuHLvGPLELjE2lbHB4RI+2VzCHUEfFZUYv1ARz3ioQxWGKGHfdOcSzCOi0TRMg6ovHdUCN7VVACzbcjoilGWrjGh12URPtG/Jd6Z7SlMueVNr6tc52rCoODpchWKszC+mFgOQZpRu6o3+IrR8S6f+zfCBtx97bg2cb6WBbJMNYtsV0YNE0yhreR1yAjO5aftJ+c/K0MCpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QqX6DBmhSYAp+Ek6zwjJxp8jOQpdgd0MftEbnabeMYM=;
 b=m4iP6B43sPl07Z1xTwILhDLEOVgV0zJqTNGF+ZpP+Xp5Kabrct+rw5kzi0wMVZC51WuKXLsHvbnjetI9HfUqQE+OFq2gfl2hR2lhjCdJVRlYtbpqh5wUdQ8ZXfsQ56gd0N+i9jcZ+YGmJgFPPZHyvIez2fwoU3aGdq1UDfH8znA=
Received: from BYAPR18MB2535.namprd18.prod.outlook.com (2603:10b6:a03:137::17)
 by BYAPR18MB2423.namprd18.prod.outlook.com (2603:10b6:a03:132::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.17; Thu, 9 Apr
 2020 15:28:51 +0000
Received: from BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::65f8:9bfe:5fa5:1280]) by BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::65f8:9bfe:5fa5:1280%3]) with mapi id 15.20.2878.022; Thu, 9 Apr 2020
 15:28:51 +0000
From: Alex Belits <abelits@marvell.com>
To: "frederic@kernel.org" <frederic@kernel.org>, "rostedt@goodmis.org"
 <rostedt@goodmis.org>
Subject: [PATCH v3 13/13] task_isolation: CONFIG_TASK_ISOLATION prevents
 distribution of jobs to non-housekeeping CPUs
Thread-Topic: [PATCH v3 13/13] task_isolation: CONFIG_TASK_ISOLATION prevents
 distribution of jobs to non-housekeeping CPUs
Thread-Index: AQHWDoOSzjqvMuhweUS4YcE4nDeiww==
Date: Thu, 9 Apr 2020 15:28:51 +0000
Message-ID: <51102eebe62336c6a4e584c7a503553b9f90e01c.camel@marvell.com>
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
x-ms-office365-filtering-correlation-id: 47cd1aaa-c1da-498b-13db-08d7dc9ab537
x-ms-traffictypediagnostic: BYAPR18MB2423:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR18MB24238EC7533F317EB364AA86BCC10@BYAPR18MB2423.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0368E78B5B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR18MB2535.namprd18.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(366004)(376002)(39860400002)(346002)(396003)(136003)(86362001)(26005)(186003)(5660300002)(316002)(2616005)(81166007)(36756003)(7416002)(71200400001)(2906002)(76116006)(6486002)(478600001)(6506007)(6512007)(66556008)(64756008)(66446008)(8676002)(81156014)(66476007)(8936002)(66946007)(54906003)(4326008)(110136005);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BxEyfSMn9UqN+T3zfq77zP0QjOLJkGWj2xihfeJw9YL0YKDhvdvJ4TXs7rlPp15c3Rx1np6dG99ztapcMGgVvds+aM+pxaaUZAtNo4mT6//7OYXoMqN2CYHxX64h/MmTkRquSIE9TTp0vuDFLdBT26VejAJI3w5UPrjkeSnS6Wlw+co6ND5kvjUiSlOsW5SFUCwU6tndpqzolp2X97llnFi4J86cdVCpXCdV9USrPWqlF1Mawc7fn6IgpHm4cTXHIRSgknk6e9NYQ6MhVCPU2Jr3BWlI8/sN2HcLUTdqilUEZqZl9jXLDU4TrnzceysMVIIQNHTxqTafB8lXbRpg+u8VUQEcUoW8/DHoZIAncYpiLlOwQf3thot6xJ6ctjeAzjEM0EpC2ne5iW2N/dXwOG+JcqGhu9Ys50Ukups7xFQJBExb9f14tnlwyaTr9Vxw
x-ms-exchange-antispam-messagedata: lXCz1oYALU5gKd/gpTrcVDVpAz5oUbHNvxpHH/gUsUgvEuh05zOZ+Krt0ht21fwf9xQ3b8znwCjIjfMU9YOWXnEldT2kxVNoOqkYrqCclByA/eEbij+vMQVzhcu88l9Ck6R+CHD+6J3kwMAcpQ36Lw==
Content-ID: <EC3A918C58C360479B05693FC6205FD2@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 47cd1aaa-c1da-498b-13db-08d7dc9ab537
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2020 15:28:51.7925 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l26CHGJFLHrhDaBHKgHgOgLpQb7Xv6oBpEtSrJ6rwFUmNtMqDg2Ht3/Nj2IGr0ZCp/MbRosUB2yWCwBW6j3ZnQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB2423
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-09_05:2020-04-07,
 2020-04-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_082920_232287_C69E6A38 
X-CRM114-Status: GOOD (  19.58  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
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
