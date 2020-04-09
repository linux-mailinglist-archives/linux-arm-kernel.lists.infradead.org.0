Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 727BC1A36C8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 17:17:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R2RNUI3zG0kwJkNPV033x7MxAoYZJbjvckge/CpF9TM=; b=hH3dwA/39sK+I2
	HG5K7XknHPoe+HWCdhuzUtH4JCOkE6Qr8h4aJ+V/U4Qs1noZSstkDsNIj05Vah0KoMzHS+BBEa6hZ
	H7794bwObDisl+gDmCzPy/XJyorrsI8NBpeqJ8CQ5UmwI4Cn6e45/FPc6Lxthig5C4yfsS2qwsXfC
	jhAxy566mqG1znk4CeDAgxuhInhIUCg3Yqur75N7WmO+G1U7pGSjidVgBv3VyYYxHuD6UBNYsMD5m
	4MVAe+dbVt6bLlWUsTNIUBLvCL0aSyI4AG318XcwCiS8Uk4VUXZrRvqCXHQqnHoOQny3ALAYNsNjQ
	S0R1i2LfmybLQvJ0TKVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMYvc-0005xy-TS; Thu, 09 Apr 2020 15:17:16 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMYvV-0005xZ-Kw
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 15:17:11 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 039FFWBC014747; Thu, 9 Apr 2020 08:16:46 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=P/QdfP55QYWG5XptPDCRiJ1xixBQnz+wRP0fE4vTmHY=;
 b=sUp3r0bIO5hScSiL0TcnvoiHNLaTnxqALnZPiXMQY2VU6Ia9zIVFxebwcn1i65lg3/nH
 E/2qNshFC/GQS7k7+/TY6NrveMNZ/dbF3sEN3ZQhZWmgyHKKJo5EZ8DqvE1aqkSztDXb
 OWHzyDQ9IVa6KHpqHrld/n174lQl1ZVXeJ7kRd0OlTH93QP0poYLNjbWm95QTmrHkv6E
 EZDs6ek6vN+wDSo9GP8GDGPswHAQOZ08GbaQfx8/GJLv5lEvaBnC+BmfuFRMzdVcpB/g
 bKMzZdd/UqQQkHDRYwm35fnI+aJ88MWcwSJLwq54hrsQi9p3eRCNwPMGSEt6RuQCYKkG 3A== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
 by mx0a-0016f401.pphosted.com with ESMTP id 3091jwh05s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 09 Apr 2020 08:16:45 -0700
Received: from SC-EXCH02.marvell.com (10.93.176.82) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Thu, 9 Apr
 2020 08:16:44 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (104.47.46.55) by
 SC-EXCH02.marvell.com (10.93.176.82) with Microsoft SMTP Server
 (TLS) id
 15.0.1497.2 via Frontend Transport; Thu, 9 Apr 2020 08:16:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LsnOIk35nrprwRoCPBsZQQPqYwHKEurGuyF/3ae9CoxkOlmAu6sqB7LmTluL+EZERCaVL+0P9Rqi9Sl72/rXlpcWztx0zqGYWbKp7nDKGTAh4qZ9OGkyTQ6kIR8uMh8p8fEtt2ZQkgCjm1Ml7qtnL8F7W43bXZVZMqZh+f+n3/Ucct9oBszjLq6sR+k0FJyQ5vKgPAHLdTuuGqrK40g9V3Iho9nCy7/H9CiQOsGB26/zIzYKQYdkebWur9Vw9md99u5eJtK0pkS7WAkHMYrHqUim1FAkKIBauJWOUWhX530HPQb3R4n+39GrzI3Ha0MuRpWB/FvEQNKRZ0GRidHruQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P/QdfP55QYWG5XptPDCRiJ1xixBQnz+wRP0fE4vTmHY=;
 b=QJuPQJ1U4+mBYkOiNJrxwXAI7O3AYoygCGb3K14xnvhZxv55TcONjwkmuTKOqygdMAgNAt3hKV4YVo2CG/3JpAH917Jp6pMixedpaacYQwYl4W4d6vMS6gEr381p3RNi+zz0RK5Wz/1aQKhcAC2ZOFkjPMbVF24iWLsY8GW45BPg451w91z3HrthELpNYBKvCsRDP8/sT54p25ABjYy8fuHZQYhttE5tXjyMmpyB/oud6Hc1d/WIsQHU6k+3sCQY5NilCbkJwZCEadJ/+h8d15o8Gybdj/wDtVsvVSqDTOJ0LUm/0Clh+y7LuKTUh6JWIVBUvLGbRU8yuxmCfgXLAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P/QdfP55QYWG5XptPDCRiJ1xixBQnz+wRP0fE4vTmHY=;
 b=Qtb0JMnWhJPvc0ry72i7ykbiPNn9qXtIqfAC+rLbzWr0b585oXY2dRVW+mMgDA7Tqy/q8jrsuNTl8mbGvlSLfUSDksbdO2RBDbFeCA6rI6v7QCaONmGDrOulsNUyjKGHIghaSaunqQIZd1nQ+sE2zzLxKrrXKS4EtEfE+cQNIUw=
Received: from BYAPR18MB2535.namprd18.prod.outlook.com (2603:10b6:a03:137::17)
 by BYAPR18MB2616.namprd18.prod.outlook.com (2603:10b6:a03:13c::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.19; Thu, 9 Apr
 2020 15:16:42 +0000
Received: from BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::65f8:9bfe:5fa5:1280]) by BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::65f8:9bfe:5fa5:1280%3]) with mapi id 15.20.2878.022; Thu, 9 Apr 2020
 15:16:42 +0000
From: Alex Belits <abelits@marvell.com>
To: "frederic@kernel.org" <frederic@kernel.org>, "rostedt@goodmis.org"
 <rostedt@goodmis.org>
Subject: [PATCH 02/13] task_isolation: vmstat: add vmstat_idle function
Thread-Topic: [PATCH 02/13] task_isolation: vmstat: add vmstat_idle function
Thread-Index: AQHWDoHfkpuEbVFPn02f+uWSy0xqog==
Date: Thu, 9 Apr 2020 15:16:42 +0000
Message-ID: <6b3631e4543e467b6261f7a4bf0792d6f86eafc7.camel@marvell.com>
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
x-ms-office365-filtering-correlation-id: a53c63b6-40b1-40c9-2b77-08d7dc990282
x-ms-traffictypediagnostic: BYAPR18MB2616:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR18MB261621C1E2CADC3B6D1D0FD0BCC10@BYAPR18MB2616.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 0368E78B5B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR18MB2535.namprd18.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(376002)(136003)(366004)(346002)(39860400002)(396003)(7416002)(8676002)(5660300002)(26005)(71200400001)(2616005)(6486002)(6506007)(86362001)(2906002)(186003)(81156014)(64756008)(4326008)(316002)(6512007)(66946007)(81166007)(76116006)(66476007)(66446008)(478600001)(8936002)(54906003)(110136005)(36756003)(66556008);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QjxweUkuXp/ZshR6xy6o4DYotktxOEFmsODwQKeGHfo+rUkO1EjFxsw4A5hHfL/8mAMETU5XhdznmGFRuvPhgGWZaAjdWcK8cV43JiUP+sfgj3vy0EAjYAy56bSJ0J2vQVmE32SM4HD95bDFDVtoKJursaPG7BLD5d7wNqxAQiWTvCRNtOfIP9Dh2VDYz7J8oI7FS2jnlf4CgP32XDu3fkSj/Zx2G7eSqqo7+vY3P1Nx+xVzgvs9IVW0Kzbj8FQ8ZTQB0IhIlDxNlWjpqG+VGtUaOqcSPj5MwccUuLS0O2O4pbDtp5k5OLz8jT5PlwHZRmcCETB1IWgPoURIiohISTiA3lny8gZ45LQPXN5Cer91RHToKy0O1w7zWiOiFWRPs2zQ1+XVUl4ya9HiRVBHoIo7KcLJCdkehfLLy0AXhDlSQN99VmHXiclz7YYFwtvC
x-ms-exchange-antispam-messagedata: +fmh8wJONgk5aIB5lyoWnYAYcdby1Xnftvcgw3LGZvG64aKRZk+SbSF740SPEjgZiBahW6AKeYRMCc+NP2Hlcc1Y4V9qVdptP1qNg9X1YRnBtlZBWVMPWeOZ/CNcdOifFHc6ygYVOfMevSU/HgRPdA==
Content-ID: <56A6499FF35C8548BB3097BDC4A1FF84@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a53c63b6-40b1-40c9-2b77-08d7dc990282
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2020 15:16:42.4387 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HQpdoAq+oCceNbT/WvBlENAVb/q8aPTQnJOZzyrKQ4kCYguiLJ+rs85VEaKOt2qGSu0fAcCdxRX6O/stToMErg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB2616
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-09_05:2020-04-07,
 2020-04-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_081710_048040_FE2207C9 
X-CRM114-Status: GOOD (  15.83  )
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

This function checks to see if a vmstat worker is not running,
and the vmstat diffs don't require an update.  The function is
called from the task-isolation code to see if we need to
actually do some work to quiet vmstat.

Signed-off-by: Chris Metcalf <cmetcalf@mellanox.com>
Signed-off-by: Alex Belits <abelits@marvell.com>
---
 include/linux/vmstat.h |  2 ++
 mm/vmstat.c            | 10 ++++++++++
 2 files changed, 12 insertions(+)

diff --git a/include/linux/vmstat.h b/include/linux/vmstat.h
index 2bc5e85f2514..66d9ae32cf07 100644
--- a/include/linux/vmstat.h
+++ b/include/linux/vmstat.h
@@ -271,6 +271,7 @@ extern void __dec_node_state(struct pglist_data *, enum node_stat_item);
 
 void quiet_vmstat(void);
 void quiet_vmstat_sync(void);
+bool vmstat_idle(void);
 void cpu_vm_stats_fold(int cpu);
 void refresh_zone_stat_thresholds(void);
 
@@ -374,6 +375,7 @@ static inline void refresh_zone_stat_thresholds(void) { }
 static inline void cpu_vm_stats_fold(int cpu) { }
 static inline void quiet_vmstat(void) { }
 static inline void quiet_vmstat_sync(void) { }
+static inline bool vmstat_idle(void) { return true; }
 
 static inline void drain_zonestat(struct zone *zone,
 			struct per_cpu_pageset *pset) { }
diff --git a/mm/vmstat.c b/mm/vmstat.c
index 1fa0b2d04afa..5c4aec651062 100644
--- a/mm/vmstat.c
+++ b/mm/vmstat.c
@@ -1879,6 +1879,16 @@ void quiet_vmstat_sync(void)
 	refresh_cpu_vm_stats(false);
 }
 
+/*
+ * Report on whether vmstat processing is quiesced on the core currently:
+ * no vmstat worker running and no vmstat updates to perform.
+ */
+bool vmstat_idle(void)
+{
+	return !delayed_work_pending(this_cpu_ptr(&vmstat_work)) &&
+		!need_update(smp_processor_id());
+}
+
 /*
  * Shepherd worker thread that checks the
  * differentials of processors that have their worker
-- 
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
