Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D1717D124
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 04:47:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ps76ErKrcQqRkcTwWGkl907gqf6Wm9+8LdGCgDeHYgE=; b=rjhSdJHbtDrufG
	tz2YLy72s+i6vI2OASZpyw+q7NVe/MzsUZgh/iy2ZZCKLD2hkXBuTIG102IoHKqyRRP+j4b/yrHV4
	XLxNUzNSgLUMb/5hT9YOsuy7i4suRdzBd0mn66XLPZp91SSFcBYAxykKrIAyAsjMblhWyxgLDcRBQ
	Yis+o/DyujjgJnRSvpTAQVeBWJ368MHUqvB5ZIaEY7EUx+z7fmb1Tfktl0fRyTI+L31Yh747HBkWc
	UyO3/4y5g+p0r8Zc8DfrHCQZLOvS+T90Hcv1ZtEMxi2gxf3DqLb9fBdXPXBkB9ZZouODwdPQUwKss
	KZgKXUQfJO6JJRI4WthA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAmu2-0006KA-BM; Sun, 08 Mar 2020 03:46:58 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAmtu-0006Jc-En
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 03:46:52 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0283fYMH006247; Sat, 7 Mar 2020 19:46:10 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=3zRBZywEQlwY12ZkVBkV2O6spn9XfENf40p27pJFgsE=;
 b=flxrLBa2lSLz3b7rVYBwYdQFXPpnIve6rQ6ycea9sTG2CX3z91Xjcbl8FxqXzxQPzzJH
 woSA6H+KmRK7Ke2lMljU0EIlED3niCNh/KHT1TvH75AwRNZxTAblQQXFkBD33/ly4eCj
 bC0D+eFWlxww/ChwY9AoGRSMut81+rsd80eLFKsoKXAPbHwgHr6zsx6iGeXMq4TwsZvF
 U/9ocFbXI6XCproDO4yOXpHwquDyBgOODDrwktV65sQsAiWtehVw0nKqR/s6/iM5vssc
 H7n7Q5hX0oUjyiv/9RNV/04u0+U3IcGPjD1+VZx70WpxmQ9BAyvUzcPoBlsFTi6KyqNh Mw== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0a-0016f401.pphosted.com with ESMTP id 2ym9uwauxt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Sat, 07 Mar 2020 19:46:09 -0800
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Sat, 7 Mar
 2020 19:46:08 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Sat, 7 Mar 2020 19:46:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f7SztssoDwbVn+IPYnqSV/zeBbIEgIc/8TrdhxFz3FpWY9WCwL950P6zrIYdL5mxLfeCKi9xIdBVoJuY8Qi/u1lbZiKxxBa3yXmKIOFmQkPuPSK2BGAEdMMboRs6QAsjAWcflEn/WOssnJtCfHuI7ukKV9Nau9b8qYz0YcVSzZYiBzxQti/kbxQWFcgDg5XxnDs3D3PQ0ra8bVZkmEcaDKtOuBEsc4iniY8tr3Ioie+M6RTQwc5k5rC5e7R/FlPBgrU2x4D0O/vEieVREf6//SLKZGz1ZcocASPSa3AdkCQci779It6iKbeucPLCmj+l0OzqnYzj2W5+7jwN+3JK0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3zRBZywEQlwY12ZkVBkV2O6spn9XfENf40p27pJFgsE=;
 b=XZnuF4CEn/8M4p+rlJlDl3QaTj4E9IloO2VY6/taw50YY8MHM24xYvU4EELygQ5COns8kQp/qiz/cYjXZBhSR7Jf8AuKTb/20bDiUz8tKUJ5fibmb+6silrq6YMMnfxKM5nAolcuckZ6mlSNjQ4ODWtUYsQvK5O2rCmPwd4+T5nODSuutMB0VAio6EaHDx7J4CYFFXopKjblcQxgZW+k9pmFHBHBULtSO7ji0j6+OWuKI4GXJd7vv8iW1HScGSLzZffxOSBBihwcwiBMNTP2stpdczLgeTQDThfhSBcjSFGJeVxNsOEdpJi58gdi4CdXh9mDAaTVh16K7fL2FoKAQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3zRBZywEQlwY12ZkVBkV2O6spn9XfENf40p27pJFgsE=;
 b=atlvKHHH5l1ITNHjhhKbaYhZnJP8/ILb7J/uJYl6NVKuSmQRMJ6fIwcpK1MYKbor3JADr9jZYyBuCRIIRXrXU+PUmh+ZyQ+rkfkzt2ZpZjEuZLrmHQ0yvxaFx1kj7zmi0q7wJKcAmJCkaYaguvRnZ3VCSmCsyLJ4Yos2CsI9JuU=
Received: from BYAPR18MB2535.namprd18.prod.outlook.com (2603:10b6:a03:137::17)
 by BYAPR18MB2920.namprd18.prod.outlook.com (2603:10b6:a03:10b::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.14; Sun, 8 Mar
 2020 03:46:07 +0000
Received: from BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23]) by BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23%7]) with mapi id 15.20.2793.013; Sun, 8 Mar 2020
 03:46:07 +0000
From: Alex Belits <abelits@marvell.com>
To: "frederic@kernel.org" <frederic@kernel.org>, "rostedt@goodmis.org"
 <rostedt@goodmis.org>
Subject: [PATCH v2 02/12] task_isolation: vmstat: add vmstat_idle function
Thread-Topic: [PATCH v2 02/12] task_isolation: vmstat: add vmstat_idle function
Thread-Index: AQHV9PwZGuit9HuXRU+77sdJLQQteg==
Date: Sun, 8 Mar 2020 03:46:07 +0000
Message-ID: <3443bdf4ff557331c39a99b133defee56452be48.camel@marvell.com>
References: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
 <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
In-Reply-To: <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [199.233.58.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4ecca648-818e-4a2f-3bea-08d7c3133c1b
x-ms-traffictypediagnostic: BYAPR18MB2920:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR18MB2920AB09E089C111D22C839FBCE10@BYAPR18MB2920.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
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
x-microsoft-antispam-message-info: K1w9NNQLSIZEVeuLwjLXHmyPgxXu6iAwZEAz/weEU0znNRgUcfvjMwgEMM1+kpx3lOiMf1LLhAd1jWJ07uykEKgLagewGDDDMsajyvDwI+TiIh9Bi24tOOHju9OGOMZaRctCg8iU9MWyTdSPHY3LgqpJGRMpPO8vCCVAc6T8fUkYVs+31mk9zLRPUqiU/gSQMc8Nmdb5ItbJ3COx7PgLle36C6fpmO5UPo1AARIJtB/2WiLYaydcnulzA4QBaBE7QexjyK0BaXXVJR+mdatJMm0RdU3v8r/0HX7rrU0eE7j0r3oeXCox3GOfeFNoCwiDG1OMMqQTXOvJ2IhaQuMqLRmAA8nhGjP+MKV2jboWXNvFo96+f3KilaeM9GsSh8mWFUhvMwhzlSDNkQwCP74zslEeccB4wZeGiInA1uscJVNKQRM04RrQUN8XB6bBttbF
x-ms-exchange-antispam-messagedata: OHEcJGmt41CWcun0s7cQbSTV28EEdejWEH0FpXvuR8uy9aA5YrCbjBhyRIKACaXrb8av2QbW828CjUjoUKRzTwWo1iGXhVMcBk71xvm/30zMayitQEV9fYoZE7XxnudozjkwEDSiXjMSgw+g1BmkXg==
Content-ID: <31B867DD531EED43ABA359B8014CD8B7@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ecca648-818e-4a2f-3bea-08d7c3133c1b
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2020 03:46:07.5137 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OSE0VXI9N6Pxe2NZ3UMhSPuxeK0lKS3PND98sFxxqba3DAPTWcipf2lUr93WpfSVvIpxN+W8QFcCbMUCAtr4jg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB2920
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-07_09:2020-03-06,
 2020-03-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_194650_509356_818E8C88 
X-CRM114-Status: GOOD (  15.00  )
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
@@ -271,6 +271,7 @@ extern void __dec_node_state(struct pglist_data *,
enum node_stat_item);
 
 void quiet_vmstat(void);
 void quiet_vmstat_sync(void);
+bool vmstat_idle(void);
 void cpu_vm_stats_fold(int cpu);
 void refresh_zone_stat_thresholds(void);
 
@@ -374,6 +375,7 @@ static inline void
refresh_zone_stat_thresholds(void) { }
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
+ * Report on whether vmstat processing is quiesced on the core
currently:
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
