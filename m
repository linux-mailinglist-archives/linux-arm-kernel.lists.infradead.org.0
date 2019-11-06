Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D5EF0B65
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 02:02:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jUKbxUE34a1pC1f1Ftg4Fa2eIh552YCM4lWIZcJW8Vc=; b=BtkfLn8cXl8JCE
	6sUnRi6laYrZnh7sohmvcv7BJJovFuNNZ5AMjZKUzf8mpJmLaiaSHx/UGRXKuyjkMiXL0QCzY3VFn
	Cz7jBDukhDK+Aa9eqao5DJkb8wL2rwt47xqmeJ34j3JR1j6YodB4hkmqgKhfCkZETkGkaGBD8o9Zd
	kzZE3SjsyNft6KQCRwmIoXbiXdQtfiEKs5IT86pJ+dhHbCSADsembTOmzcoG5L/Lh0e9HEjBJNdZB
	XEZ/pLZnRe+bpIJmnwCWX2p3PU53y5UIBZSzTCEIF68S6x5z5sgU4KJZHZFkEwVV9tsPMTRHINTkv
	wRtATzzg0geD8IjxWQnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS9if-0001RV-CB; Wed, 06 Nov 2019 01:02:45 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS9hw-0000wf-BQ
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 01:02:01 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA611805020368; Tue, 5 Nov 2019 17:01:44 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pfpt0818;
 bh=YSMG0ikR7PMMYVxuHfwLRQol141O7TgoCv863BMEqaM=;
 b=xS5JxajzDMd9uehRQoggGC2GpGO92wRa8nbmMHGHWZYTqDUjfThQf47/8OXrldkTt+4P
 WuirrKAmDVsl0sFkGGv3DDfGEuNIne92A+HOn/WX4f3pxM8z3rBwduT0eNdzD/0j+IBY
 cr9FJd6Le54sMxqX7NwjpP2byITGyNGx3dRU/ECFmzEiBNPGpFp8uZwDW5tmfJtypqs+
 WZ7UD/RIn+fTnLN5T/D94FBI0QsGmTs20sZJE8hRE23wwN32mKLSExSZNsBCwJ2al/1+
 zoOzyNELbAsDiaGFjMWVGpsaXhgdp7n5RMtS/eloCFiAIuy19YYG8PeXe/+hYVTE93nt FA== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0b-0016f401.pphosted.com with ESMTP id 2w19amw1vm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 05 Nov 2019 17:01:44 -0800
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Tue, 5 Nov
 2019 17:01:42 -0800
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (104.47.41.56) by
 SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Tue, 5 Nov 2019 17:01:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bZGx1GqwyAv31I5/lAq6y5JJ1RrSYIvOSRK3B6eqxz40wq/Y0G6vk0tJceG4p4GQBQ7rkO/ugAVg4q7k7ichCYB2o/TV3dhpU6tG+JSLJhcVIV9Bb9EqW8FEhqYbSetSqiyC1HfEbzbgyh9Ph0RNyUeQEPHitd32+J2lCOkVvTgJKLGr3ksPn8Z08WeyzcaCdHE6K2nhjyyawqxD1bWHQZpcvArMFJElFzUjEa/PXHk15t0PkyuxtqNpxxTYJ+6TxUd5CBOPHlwBa6JgQBUqadzfgp3KuYV+8C3YtyeG/hQIPFD1LvQmG9r43OEOIwioTCm8PmaExqGcf5q1ZaCAxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YSMG0ikR7PMMYVxuHfwLRQol141O7TgoCv863BMEqaM=;
 b=H4ClsBybPaeB5W7+wY4jrPzuPvXU89sLD51VjBBQsodJDjJhzIvKS4N1QBZTi51EDJsLyP7LnF7Mx0KAUVKWvk8jPiXCtYHa7xg+r1jdyD2z7dRaJ5XZL6bIWrnbZvsZNg268a49OU6lyk5soJRA9FHlcLyR9cpvJBnuntqE8MBWwVXRnomOVmuKdDZTXQuJvk0nL07U3r0hKtyXu1+nTnGuGWM/iSwvBFuKsSM987mcSMenLe67fJlzu9Om2WZ0mE3ZnJfzgYm3WLI6TKfu6wIBHe/iSjW8CuFezNh719H+YTle95iuX/XATs/HDf+LhtM9gXdKNykf593CYzWAjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YSMG0ikR7PMMYVxuHfwLRQol141O7TgoCv863BMEqaM=;
 b=ZoHVl/AevnzlNqNDtpAjcL/QEU6IfNvm0SkLN1NNTRceqkajW6u/2mQe0puD7jKTaRo0U9917bb6Dhtr2pa468fMgL7y+Azis5ijQNJ7V7l8012y+ISoLcm1c44wDswLNUQ8ZK99kpFgRRXn8cEYXjsyHOg0M8jRu+ZIrjZtPRA=
Received: from BN8PR18MB2868.namprd18.prod.outlook.com (20.179.74.155) by
 BN8PR18MB2804.namprd18.prod.outlook.com (20.179.73.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Wed, 6 Nov 2019 01:01:41 +0000
Received: from BN8PR18MB2868.namprd18.prod.outlook.com
 ([fe80::431:e92e:ca76:f241]) by BN8PR18MB2868.namprd18.prod.outlook.com
 ([fe80::431:e92e:ca76:f241%5]) with mapi id 15.20.2408.024; Wed, 6 Nov 2019
 01:01:41 +0000
From: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>
To: "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 2/2] Thunderx2, uncore: Add workaround for ThunderX2 erratum
 221
Thread-Topic: [PATCH 2/2] Thunderx2, uncore: Add workaround for ThunderX2
 erratum 221
Thread-Index: AQHVlD3AjQ2M+OHOJkedwuU0meShQQ==
Date: Wed, 6 Nov 2019 01:01:41 +0000
Message-ID: <1573002091-9744-3-git-send-email-gkulkarni@marvell.com>
References: <1573002091-9744-1-git-send-email-gkulkarni@marvell.com>
In-Reply-To: <1573002091-9744-1-git-send-email-gkulkarni@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR11CA0087.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::28) To BN8PR18MB2868.namprd18.prod.outlook.com
 (2603:10b6:408:a2::27)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 261687f8-5ae6-44fd-0b7c-08d76254e26a
x-ms-traffictypediagnostic: BN8PR18MB2804:
x-microsoft-antispam-prvs: <BN8PR18MB28043AB4506181715A023788B2790@BN8PR18MB2804.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 02135EB356
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(136003)(366004)(376002)(39860400002)(199004)(189003)(8676002)(99286004)(81166006)(81156014)(2906002)(316002)(2501003)(50226002)(8936002)(54906003)(110136005)(3846002)(6116002)(36756003)(476003)(25786009)(14454004)(186003)(478600001)(26005)(102836004)(66066001)(386003)(6506007)(486006)(2201001)(2616005)(86362001)(11346002)(66556008)(446003)(71200400001)(71190400001)(256004)(14444005)(7736002)(305945005)(4720700003)(52116002)(66446008)(64756008)(6486002)(66476007)(66946007)(76176011)(6436002)(4326008)(6512007)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN8PR18MB2804;
 H:BN8PR18MB2868.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HJLe4N0C4S2ke/xOEQWApotGVNBPEFCSytIQH565FjeI3Rd6Kj4OZH4s5Pe0j8+hvGPYfUTTfJi2Zqs6ro4swuej8O34EI6c+1EbVzPzH63K0cQtVovurVpYh/Y9OAN0+b+nSe4xTyMvPEwlRMe/DoqRAzkC90SSEw26VEoVxXKFmiJWEn5b2vpn7rSQln5mOBQ1yjL9EGBRTCQ57Jz02N+j30TK0d4VdL8f9XOw6+4jZ+8QAc5+Lb63C4VdtqkUdfy4bjG9tmtRLkYxPruGOcpshg3GQqR0LAXFvhuaQUXd6lkoLJt411IwBFzVMiXQ6HN85anx6lRFKcgZ+KDk6uVptDfydJC7M4JRZIBZB8Z3L8jakMm2SjcYfg/naSWvXYOlKz4fFMEINJirWi5PHyDtFpcAgtHtAMbbHH1enNWcaQ8xe58Nr/Pqm5K6mjEv
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 261687f8-5ae6-44fd-0b7c-08d76254e26a
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2019 01:01:41.3768 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JOhc+LIf+BBCWLq/NAspvyflXcsu6wxQNsnL7MU1IMuhUU2PfGEeAdVbqraxhZE5befKQngI17vsKYh5CCoQ2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR18MB2804
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-11-05_09:2019-11-05,2019-11-05 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_170200_514494_D05B46EC 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "gklkml16@gmail.com" <gklkml16@gmail.com>,
 "mingo@redhat.com" <mingo@redhat.com>, "will@kernel.org" <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When perf tried with more events than the PMU supported counters, the perf
core uses event multiplexing to accommodate all events. This results in
burst of PMU register read and writes and causes the system hang, when
executed along with the CPU intensive applications.

Adding software workaround by disabling event multiplexing.

Signed-off-by: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>
---
 Documentation/admin-guide/perf/thunderx2-pmu.rst | 9 +++++++++
 drivers/perf/thunderx2_pmu.c                     | 3 ++-
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/Documentation/admin-guide/perf/thunderx2-pmu.rst b/Documentation/admin-guide/perf/thunderx2-pmu.rst
index 08e33675853a..fff65382c887 100644
--- a/Documentation/admin-guide/perf/thunderx2-pmu.rst
+++ b/Documentation/admin-guide/perf/thunderx2-pmu.rst
@@ -40,3 +40,12 @@ Examples::
   uncore_l3c_0/read_hit/,\
   uncore_l3c_0/inv_request/,\
   uncore_l3c_0/inv_hit/ sleep 1
+
+ThunderX2 erratum 221:
+When perf tried with more events than the PMU supported counters, the perf core
+uses event multiplexing to accommodate all events. This results in burst of PMU
+registers read and write and leading to system hang when executed along with
+CPU intensive applications.
+
+
+Disabling PMUs event multiplexing capability.
diff --git a/drivers/perf/thunderx2_pmu.c b/drivers/perf/thunderx2_pmu.c
index 43d76c85da56..c443be8bd449 100644
--- a/drivers/perf/thunderx2_pmu.c
+++ b/drivers/perf/thunderx2_pmu.c
@@ -563,7 +563,8 @@ static int tx2_uncore_pmu_register(
 		.start		= tx2_uncore_event_start,
 		.stop		= tx2_uncore_event_stop,
 		.read		= tx2_uncore_event_read,
-		.capabilities	= PERF_PMU_CAP_NO_EXCLUDE,
+		.capabilities	= PERF_PMU_CAP_NO_EXCLUDE |
+					PERF_PMU_CAP_NO_MUX_EVENTS,
 	};
 
 	tx2_pmu->pmu.name = devm_kasprintf(dev, GFP_KERNEL,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
