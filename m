Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1632E1A3710
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 17:27:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nTzM7lZvPos+oiUg/Ve3uRBct181PJVTRjIPl/Qvaoo=; b=GBD6Ke09NiZsOb
	BrHz5p4DvRQ+2SbvRzcFU8QrdEoFJ0I2vXmrtejno/zBzI2XCNsVcNDEbyh+ISF7e0S0Vr2ZfZsAt
	6tcAQMWY+/kkfIR6L9nRLy++VKr7BJIODGdnRTZSS1ix0+CCnkSRt31q7zS13MvOTiXNbTODc2HQQ
	/KvCIhDb5xcTLxy/lILYgorYttbrm6ZW3RCU9+sUUrn9sxDD+k5QmaC5XHk9M1isBjxi7M8K7NOuR
	V15yPJooPd6jY+qNmKORdmg34CdiTWoDAnXMm6U+rZ3mGKfzok1KQ/OSJnL1aKJRXX7FE3YcbGYJg
	cw0XMVonMm42hHB9ffLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMZ55-0005lt-R4; Thu, 09 Apr 2020 15:27:03 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMZ4x-0005lT-SB
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 15:26:57 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 039FPcPG028887; Thu, 9 Apr 2020 08:26:31 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=rNda+EPHX6ACVgsvf8m7CfyfZGJ9eL6Tw+Ga6KqPb+k=;
 b=ghAZlkJYVL0LCFGBtNJodn5g0etb2klsyQLlwy1JfQuaT+8mW9lbe9CPSw5aWyZkVCTT
 eK3/OQB+FwIOWrLZyaSf0IYNRJcI7MpJuVDC7L5zxnkp9qPRYzYqhfcQGGyfFhWszgl2
 XkWf9v7tg2SYSGatwzKYWXBeiHOdMNeJzWVANxpzKiEh5Ws+wV9Ho7dmf7BgYjvHE+fO
 Dctbrl8aQS207Ueq3+V22/JRPPdsyokGrU35DubCHYtba3b3jdI0guFVh0DzzWQHew1w
 OHZxxZPx2w5O2YAfdvDxVqJgtMK3WKxe1mAeaiTK+oLwk5fCd2wW25KI84AAaiTyIriw HA== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0b-0016f401.pphosted.com with ESMTP id 3091me90a1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 09 Apr 2020 08:26:31 -0700
Received: from DC5-EXCH02.marvell.com (10.69.176.39) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Thu, 9 Apr 2020 08:26:29 -0700
Received: from SC-EXCH03.marvell.com (10.93.176.83) by DC5-EXCH02.marvell.com
 (10.69.176.39) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Thu, 9 Apr 2020 08:26:28 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.56) by
 SC-EXCH03.marvell.com (10.93.176.83) with Microsoft SMTP Server
 (TLS) id
 15.0.1497.2 via Frontend Transport; Thu, 9 Apr 2020 08:26:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TCGPcdgldhOyfFb5Fj62eQAQYXgaNoRAEal1HFgg88wpapioyIRLlgdxaEmhi7lnd3uNeDBBo2jdti0+6QnyI8yo4xJcNtkgtcslTuQf5ZWDQTCFDi85gG17VirHzSOrXyzX5uwuWp361HZxTAmBVFGtbKoWjc6iSuJR5YVlE8n4FkYbJNpbua4ZNgSv6LctmPjz9DctxW2s2xUU5RBlvk4pxnCWql+UclvO/jqK4TeFKxfRgsHyfr7IEm/+5TCDIbjQdWsgO/xiv0QvmIx/gZrEXF72Llfe7DtQ0sEv656SRKSWotPbxc6bP8ttKEauk1blvhSAiW3ySxUjaIMd4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rNda+EPHX6ACVgsvf8m7CfyfZGJ9eL6Tw+Ga6KqPb+k=;
 b=h3trT24a4hWAcuFIGAoc7mnknRloXgwxRBWNgC7N9XQj/O1shPBt06mIgG/XlQQATH7b2xF470v9KfNNf/rWSM0AWv0LLNJ0Kgg4D0XnY033h0ELNm5jFXiCA96ZUnHUBh54Y7Q4kB34Tnvi/eP0vka+g0m7CA2AaTacIQYsC0tk1zvs1htiwe4f6eq9Qtccu4SSMNefPkk2UrsE8mJfaKi8tARXsty1lVLee37bNsmSDPy5CCU3xEnBRvzEACIfwmi8TURW66pP7VXsQ4DJWtsqd4NIMIWHvOs55TXB/cREhfhP8PBYijM8uIRunjAKdZYWF/OYBZrICU38PjiHVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rNda+EPHX6ACVgsvf8m7CfyfZGJ9eL6Tw+Ga6KqPb+k=;
 b=iRKZf6YLMeue274QpSfIIg5L9Yh3cfyR6YXHsEOgvwKL/nVes88ZZGH+yiHXi4M20NXlgecrnwLZsy949k/9QRS2H5gIkec+qRlswKtzh727b/LGE+jVQwRgUnfXso1DHKm5uwYnfbb5SrlsO3sLoeiZsRtCs5GxqGVjyIzHRd4=
Received: from BYAPR18MB2535.namprd18.prod.outlook.com (2603:10b6:a03:137::17)
 by BYAPR18MB3749.namprd18.prod.outlook.com (2603:10b6:a03:96::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Thu, 9 Apr
 2020 15:26:26 +0000
Received: from BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::65f8:9bfe:5fa5:1280]) by BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::65f8:9bfe:5fa5:1280%3]) with mapi id 15.20.2878.022; Thu, 9 Apr 2020
 15:26:26 +0000
From: Alex Belits <abelits@marvell.com>
To: "frederic@kernel.org" <frederic@kernel.org>, "rostedt@goodmis.org"
 <rostedt@goodmis.org>
Subject: [PATCH v3 10/13] task_isolation: net: don't flush backlog on CPUs
 running isolated tasks
Thread-Topic: [PATCH v3 10/13] task_isolation: net: don't flush backlog on
 CPUs running isolated tasks
Thread-Index: AQHWDoM8P2Up5m25JUiWl370CK4agQ==
Date: Thu, 9 Apr 2020 15:26:26 +0000
Message-ID: <ca337ff4e82a92d2fe22ce74232730eacfc74d96.camel@marvell.com>
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
x-ms-office365-filtering-correlation-id: 3a63550c-7867-40b1-9498-08d7dc9a5e9c
x-ms-traffictypediagnostic: BYAPR18MB3749:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR18MB374986641C2B48554EF3642EBCC10@BYAPR18MB3749.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
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
x-microsoft-antispam-message-info: MKc1zgMam84Y3wKSH2GRNo6YgvXS5BMM4Layi5lW0jQLTFBm2RINMQ3RTIsiVDLDv3RiljTB73dYZQLqn+hFyndVmvmuQoCyD8O9dJTZRcjq7zr6LwDCng/whUV5L0ZljYUFtvvkN/mVtpFs0K/COeAHe0DU6CEDfBJXEA6OioT+d0y+xM3XGFyoYqOcAtNVLF/SLt/4tVDcMZtWwCT0BjllPb8NduG0GKEl6/pFp/NqqxGoapgTw/7XAKFg9DFVs4lFCHRheISAiJdTNf/Q3b9/yF3eieAfAaXEZ+TbQIAd/SXDVztnJ0Ca2OcQNReA8UJ7hmxCknttx4VaqwbpfDJUyQNAt1HdIsPzV/x8iRxcaRmprsR3nrDmjFSfmf/Qc1M1JZO4wpFAjm+001utRe/Dh7gIkYkb6GYi4BCbnDgGpZUx1/c9Ta17R0RghVum
x-ms-exchange-antispam-messagedata: rtnqZm61VdZISohv6dTL/+UuxCj0W8hPdh9bbCqR/E96scW+L1v2Gbdr7hczDzQWuU4ZQ9feQiPs5IudVL6nt7UgSAWaHjcKqJ9GRb1qiG7xlvAnl8IVdbp9ow2V7GNG39JSlhhVeRPx8rHPONoaiA==
Content-ID: <76EC25E45302BC4699A62EBA0CFD13EB@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a63550c-7867-40b1-9498-08d7dc9a5e9c
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2020 15:26:26.5089 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lhi4Cu2H+MnuSulLF/xpbfmtVl0YodXEtDU1SS499q+CaJ4cV0pGYqCxHxkaIo8DWlT9mVb9Q433b1Jb3nEGrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB3749
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-09_05:2020-04-07,
 2020-04-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_082656_035450_8F692178 
X-CRM114-Status: GOOD (  15.33  )
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

From: Yuri Norov <ynorov@marvell.com>

If CPU runs isolated task, there's no any backlog on it, and
so we don't need to flush it. Currently flush_all_backlogs()
enqueues corresponding work on all CPUs including ones that run
isolated tasks. It leads to breaking task isolation for nothing.

In this patch, backlog flushing is enqueued only on non-isolated CPUs.

Signed-off-by: Yuri Norov <ynorov@marvell.com>
[abelits@marvell.com: use safe task_isolation_on_cpu() implementation]
Signed-off-by: Alex Belits <abelits@marvell.com>
---
 net/core/dev.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/net/core/dev.c b/net/core/dev.c
index c6c985fe7b1b..353d2be39202 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -74,6 +74,7 @@
 #include <linux/cpu.h>
 #include <linux/types.h>
 #include <linux/kernel.h>
+#include <linux/isolation.h>
 #include <linux/hash.h>
 #include <linux/slab.h>
 #include <linux/sched.h>
@@ -5518,9 +5519,13 @@ static void flush_all_backlogs(void)
 
 	get_online_cpus();
 
-	for_each_online_cpu(cpu)
+	smp_rmb();
+	for_each_online_cpu(cpu) {
+		if (task_isolation_on_cpu(cpu))
+			continue;
 		queue_work_on(cpu, system_highpri_wq,
 			      per_cpu_ptr(&flush_works, cpu));
+	}
 
 	for_each_online_cpu(cpu)
 		flush_work(per_cpu_ptr(&flush_works, cpu));
-- 
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
