Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8016A17D11F
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 04:44:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FNI+ES4qa7l8sRyhzg4MZ/TCTiPnirPod0KI+hp0dCw=; b=QWSfv9cXKiLwfu
	KEAm3J4NttTsHbkaBCOGweKCMEroJ6T/QK+9uFrx6p9MUlMWFfd/t+YFUAoL9zWNcnQGvQ97lju+Y
	PpITlvzdu0386thtH42XY1c6fEQVxMEEHKRpliOzg6KIFzxvQUwqYbTpvbmxOp+VTZ1LyqlCiPU4h
	tHBi2p/eKQJBKCuh2Hrakzsc3llpsoXSTVK9WrVNMSE4CKJXR/qVyk+myZXiB/vlcsb9Vcw4epwZM
	nFFsvOzG7cIW87dLLTob6iLEa6qOkQL7QB4TPfs/CMGo2RnQixeE6JskmP7TYumsN/sAKWW8PMIHc
	a0Hajsi99U2iFuAkObCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAmry-0004TB-54; Sun, 08 Mar 2020 03:44:50 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAmrn-0004Sh-Ph
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 03:44:41 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0283fbk1011848; Sat, 7 Mar 2020 19:44:15 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=mOmcxhcHfdvs2/ffWTPRYKAh6MJbVx4NXz+n9OW7E6A=;
 b=J/pFjUIxxIZrdncw+in5uedPYv1Zy9oC9zlPa+r40DIeGWM8KZ4WTxUGEWk3FtvinapR
 aUVQeCgGgvwucKje6c5QBBP0rvil8jKdNVwMxtUlbzhBUn5iXjS1CAEbAjWr6mjtu7jO
 HY+YpTyDBHSPTaAPo9kA2uneKtPc3f4kzgvsJpGnhu0khfMGub5EvFIR6G+m5+U8/Cf7
 NemBtfDR4ezvm40vBxnOtEwqS3HR0/QyleKCMoBd6BOmaKNTTpLYSf3CRo6mOgScIqn0
 aljJgGkbqh8silJSUjcIMjb2OxGTWHvN5rr+4ui20DbxUayFAI/GtUhg5qBer+mCm9K8 Kw== 
Received: from sc-exch03.marvell.com ([199.233.58.183])
 by mx0b-0016f401.pphosted.com with ESMTP id 2ymc0sj1e1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Sat, 07 Mar 2020 19:44:15 -0800
Received: from SC-EXCH03.marvell.com (10.93.176.83) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Sat, 7 Mar
 2020 19:44:12 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by SC-EXCH03.marvell.com (10.93.176.83) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Sat, 7 Mar 2020 19:44:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kqw0QOMZJuRqzCIIDZt5iygL+7Jcsh1mzV+obWsZEM6fmV9Ol8wKO6EHSbwtRepb24/hKjrbrMT2W7w5DM6vngPbU+XcnDFkT2kD5SBo0fab0Lq82gbIbnLnJPlljV6BoS6C0CVm9BGAngcK9PK5PtZmCSFQh9DJWdRX9gtQI6fXC2QxTDr8p9uvtkjoJQkP2gr5K1cV2w/UYoeS04Tq4jOmheBuUrmwxrv/C2YxQPR9msDEPJKdNbUGTQkx0XmDL3ehjdEV/C83gXV9KKEQ6qp5R/6hVFF3pHIXNkYKkwL6LDwXOp8n41ZmA2vqK3ZDfe5QK3LOfQdBSHrccObiFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mOmcxhcHfdvs2/ffWTPRYKAh6MJbVx4NXz+n9OW7E6A=;
 b=kYj5sUX0e4idCLBW5O6ExKsALxWDl0mZfln5k7O7Eu3CGCXQ78zJr4N0Jcd4YGNGGs+Xb2hWXmZx1it8oaCLcFoxVznWLwpko+XqZQFWapkdAfwkInMW+IpmegrUtqoXz/ijDwtz+Gh1PU8r3XP5luYv6YXBL5CQ59nNu3Z6yeKOWN9xmPF7uW+9FPd0MdOdl42IOQybACt6RlGAwDxxYDofTlyQYCyf2gTxmUe3q0r/ZtPg9qB+h0pGV0sIk0+qRgExaWN85G06UAq6nb/SxUS0heDS2rnqr+S8mbRXgRKjzMWVV98kIqcqM3a6kceQUvc2Gs1BmY3Yfj7LzaPymg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mOmcxhcHfdvs2/ffWTPRYKAh6MJbVx4NXz+n9OW7E6A=;
 b=Kiz2qXZnpzsVJ1vcKIEtXnmxIN2LmAJ7SQWe6RCiNezFn7XNNaW+gPr966Aujog+pL9WDdGlJQxctco9ZpVfd6REICf5g+tDl9HUIj3grIA18PJ6J/c9OLgVHS+TvsSkK++PINhKhRcbBk0HPi09NO3Jf8EZq/2V7IY42g7lfJ0=
Received: from BYAPR18MB2535.namprd18.prod.outlook.com (2603:10b6:a03:137::17)
 by BYAPR18MB2920.namprd18.prod.outlook.com (2603:10b6:a03:10b::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.14; Sun, 8 Mar
 2020 03:44:11 +0000
Received: from BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23]) by BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23%7]) with mapi id 15.20.2793.013; Sun, 8 Mar 2020
 03:44:11 +0000
From: Alex Belits <abelits@marvell.com>
To: "frederic@kernel.org" <frederic@kernel.org>, "rostedt@goodmis.org"
 <rostedt@goodmis.org>
Subject: [PATCH v2 01/12] task_isolation: vmstat: add quiet_vmstat_sync
 function
Thread-Topic: [PATCH v2 01/12] task_isolation: vmstat: add quiet_vmstat_sync
 function
Thread-Index: AQHV9PvUoI+q+Qtq5kW5lYF66zseNQ==
Date: Sun, 8 Mar 2020 03:44:11 +0000
Message-ID: <3118206b99e862d4c163eefd086af14dd12fe305.camel@marvell.com>
References: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
 <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
In-Reply-To: <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [199.233.58.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5d1224fc-89a5-442e-bda2-08d7c312f6db
x-ms-traffictypediagnostic: BYAPR18MB2920:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR18MB2920B78225119B512C0C90E5BCE10@BYAPR18MB2920.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1186;
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
x-microsoft-antispam-message-info: LCevfyd3TjO59jIN9PP1YJOR99nlqERfDWpOJlXWY8oPyYugKX+jB4Bk7nBnfFdFzRm/+W8p+7rjrehCbKQATyJNz2XBhdI26ArNcnSLHvqNyGpuNRel6NBW1f5Q2Tl4r7HgdRIKRG5aGwZALhO6iwplnmS61cPpH1y8OxQwdccsX+E7lvoihxHgi+5XpxMtDrDfK3F2Uxrbte0g7VPPDBxY2QQrznkahFPMYinQVlPPO+sFv+qmPAYRY9hqFHDaKdDiq9dw5+5KW1Cygdd7Ze+3bl9c7vrVSKS/CRb5uy66yXRQepZwGrN9A4W537gOCTx0bV8C01ijSBmk+JkXXw3JVovVLvn5ENqX51+dEYRPsSMCi8EKCdUArnPFYb4HF1ux9kmz0KY25LuSn9omsTgZyiUOeseQWrFP7ZO1QYAyaAB1P8PYJw0sT+y4spTP
x-ms-exchange-antispam-messagedata: 49h2ZUw5oVc8dq9Nq1GSF3wGOCqyiaL3QCbh9CtMm0vuauL+urIaxaHwwPAjefKwAUw07f6ejnEt/mLjflzKNP7L4/Qd24HISokvazlw2bzaQdV5of4JiC66izy4kSfQM3Z/Lpcr57L+6tGlbIl92w==
Content-ID: <34D5BF63C3F7774795D2B302FE3EC1E3@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d1224fc-89a5-442e-bda2-08d7c312f6db
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2020 03:44:11.3448 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U8+wW6UiKHPmk+1ZkPKeDK3YiFcdKcvJYKSJ43o5xYUUK8vflOm6VrlSajQrIfb9KIVzcCmDxlKr1CdEVUDSdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB2920
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-07_09:2020-03-06,
 2020-03-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_194439_957034_38D913FA 
X-CRM114-Status: GOOD (  13.80  )
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

From: Chris Metcalf <cmetcalf@mellanox.com>

In commit f01f17d3705b ("mm, vmstat: make quiet_vmstat lighter")
the quiet_vmstat() function became asynchronous, in the sense that
the vmstat work was still scheduled to run on the core when the
function returned.  For task isolation, we need a synchronous
version of the function that guarantees that the vmstat worker
will not run on the core on return from the function.  Add a
quiet_vmstat_sync() function with that semantic.

Signed-off-by: Chris Metcalf <cmetcalf@mellanox.com>
Signed-off-by: Alex Belits <abelits@marvell.com>
---
 include/linux/vmstat.h | 2 ++
 mm/vmstat.c            | 9 +++++++++
 2 files changed, 11 insertions(+)

diff --git a/include/linux/vmstat.h b/include/linux/vmstat.h
index 292485f3d24d..2bc5e85f2514 100644
--- a/include/linux/vmstat.h
+++ b/include/linux/vmstat.h
@@ -270,6 +270,7 @@ extern void __dec_zone_state(struct zone *, enum zone_stat_item);
 extern void __dec_node_state(struct pglist_data *, enum node_stat_item);
 
 void quiet_vmstat(void);
+void quiet_vmstat_sync(void);
 void cpu_vm_stats_fold(int cpu);
 void refresh_zone_stat_thresholds(void);
 
@@ -372,6 +373,7 @@ static inline void __dec_node_page_state(struct page *page,
 static inline void refresh_zone_stat_thresholds(void) { }
 static inline void cpu_vm_stats_fold(int cpu) { }
 static inline void quiet_vmstat(void) { }
+static inline void quiet_vmstat_sync(void) { }
 
 static inline void drain_zonestat(struct zone *zone,
 			struct per_cpu_pageset *pset) { }
diff --git a/mm/vmstat.c b/mm/vmstat.c
index 78d53378db99..1fa0b2d04afa 100644
--- a/mm/vmstat.c
+++ b/mm/vmstat.c
@@ -1870,6 +1870,15 @@ void quiet_vmstat(void)
 	refresh_cpu_vm_stats(false);
 }
 
+/*
+ * Synchronously quiet vmstat so the work is guaranteed not to run on return.
+ */
+void quiet_vmstat_sync(void)
+{
+	cancel_delayed_work_sync(this_cpu_ptr(&vmstat_work));
+	refresh_cpu_vm_stats(false);
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
