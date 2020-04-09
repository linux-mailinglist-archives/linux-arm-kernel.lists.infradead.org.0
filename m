Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D361A3705
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 17:26:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VgNybksV0Ff8/L1JjG6INoIGMo7J8rIiBmAqxCfS0Ks=; b=qL6JjnsKHhm0Jv
	xrAzH4Hz8b3kTGJKcD9jzuya9aeFDBYtT4yXn1nVP5oYSSWJkm4pnV8Qe8+g5j5jTGx8Yhb6mn90C
	STibJne0Ka08nizDpGch3NjmVZaBlpkV8XnFqxtiribPKZelZSaIREKLQ9VONQxz14FsCh7BF0NZl
	jUVpud/H6PC225BvCtYGHrKOW5LXwyJpwf3K5HT0RAVhFtfZXJVo1g57uicJtnl4gLnYxd3iLlq/h
	67g9pCsHK9jBY6hDWCwBCTL+/Qhwu2RhrHpMPgK9FngEq8pRLii3oNqbY466YKXnuV/fO3e98zsCF
	RfCkoaCI6aEFoj62KfPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMZ4I-0005VD-JP; Thu, 09 Apr 2020 15:26:14 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMZ4A-0005Ua-G2
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 15:26:07 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 039FPUww025152; Thu, 9 Apr 2020 08:25:41 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=SAObrDh4BpvmmmMIk906+21KJgLj+iVWSYavS1bfa1g=;
 b=GNdL6uWvNwBJl+uULPy4Wd6hNu/T1mKt+0EcjpxtHekRy1WOolu1oAMfzW/ShZRFo6ok
 48KUHoqrNK2fcj3+hWIrogQwIrHXli1EpJe9qB83eBaxHFdQe7e77dvg3rtE7yMOSB73
 izMlayTSgZeqkkmtpR8nLmay2eVLULneeHEFWSmUx8CA0AOawTGIoaf/pWBmPBVyMaZH
 HO+0HXxBd5HkeKJpBuBa+gmaHHQya5tURIIe/WP17o1Gqt0quB18TcR09Vs7imh6oaB1
 1jZs+4lSujFsEHZrK3jaAWuOSxmaDNOam3IueoeK1BDgqwN5gKSbC9Irq9bkQNzRAjO+ Pw== 
Received: from sc-exch04.marvell.com ([199.233.58.184])
 by mx0a-0016f401.pphosted.com with ESMTP id 3091jwh18r-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 09 Apr 2020 08:25:41 -0700
Received: from SC-EXCH04.marvell.com (10.93.176.84) by SC-EXCH04.marvell.com
 (10.93.176.84) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Thu, 9 Apr
 2020 08:25:39 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by SC-EXCH04.marvell.com (10.93.176.84) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Thu, 9 Apr 2020 08:25:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SvHE4WUXXx/zVCqTiE0QdVzeEMYvETqO/Mm5WA4rLyBc4xS94oSVLw+9u1MQKpvZS+OwOrHn+mQEj+v5hVTsAZtK0Tl9w8/B/Asf5ONTZ/b2e7xCHG/6Yguk+St4TH+V22QxM+yY+PzjqZoD1S3jR4d+q5J6fsxpnVwAn/IRBBfaZZbMU9dhfwPYeWZz3gCJX5axoh9672/g8HckE8CKcOoFEMv8BiW95TQNsswnqkNHCoE5oauiJ8n34NRMWZlIGwFGcJ6kXAQpysAna+y1GsCep+g5tb1S3hECKeMBsffXYAYyG8mLmUYnDbon/xTRI6sEGb+Cf1qMlnHJ6GW7kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SAObrDh4BpvmmmMIk906+21KJgLj+iVWSYavS1bfa1g=;
 b=GJkiprLwqVXiVZkVU9C0jwLSAFzDOdaL5gZEo14xJP4v1arw2OUUJ8+xCeI+ePOK0VQfrUHu6JJ+F9z0EvfFRAx+di64nlKMINhkl+CM6qwQAloufxSVyyQc8WJAgwLTb/h77JrSlQS4SQEnmPaRpIfvMrqk/AaVviF7xnj+dbueXK9YxCq6Emnacec3gqa0mcikyZvs726XP+vEzphTIs91p7nxxabTFpl5kAgHOAkQDxV5q2o9vG4aM4iPKHxt4nZ655d1lPkvjI/fL6Z4ji3DUPzGBySNTtc4hd7HhRJMxFjKyEKJ3qCCoM6inJUHA2jnCSCEB6soN2NQlHv/rQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SAObrDh4BpvmmmMIk906+21KJgLj+iVWSYavS1bfa1g=;
 b=mnPrfBVh6BC4WxATdxArvtNrykdZis6c4avcvHxhrt+MLP5wpKK33O0RbAuyJxaUKJfqQ1xGMCSAEDelDF2dP0uoXunWYP1fAEd5/GtiyHytgGDVA511yfj9ehjg8KtcNW2FrXuM23sIfP3Cp59x+j+Aw1tQLlMdTDWV9YswfQ4=
Received: from BYAPR18MB2535.namprd18.prod.outlook.com (2603:10b6:a03:137::17)
 by BYAPR18MB2423.namprd18.prod.outlook.com (2603:10b6:a03:132::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.17; Thu, 9 Apr
 2020 15:25:37 +0000
Received: from BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::65f8:9bfe:5fa5:1280]) by BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::65f8:9bfe:5fa5:1280%3]) with mapi id 15.20.2878.022; Thu, 9 Apr 2020
 15:25:37 +0000
From: Alex Belits <abelits@marvell.com>
To: "frederic@kernel.org" <frederic@kernel.org>, "rostedt@goodmis.org"
 <rostedt@goodmis.org>
Subject: [PATCH v3 09/13] task_isolation: don't interrupt CPUs with
 tick_nohz_full_kick_cpu()
Thread-Topic: [PATCH v3 09/13] task_isolation: don't interrupt CPUs with
 tick_nohz_full_kick_cpu()
Thread-Index: AQHWDoMezv9vdBNP0UKJE60niGuu6A==
Date: Thu, 9 Apr 2020 15:25:37 +0000
Message-ID: <eb1f4ecbda4aa49a23bc459a37b8f160828f2919.camel@marvell.com>
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
x-ms-office365-filtering-correlation-id: dd9a56da-5fd7-4969-82c4-08d7dc9a4166
x-ms-traffictypediagnostic: BYAPR18MB2423:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR18MB24236FB93201BB22CFB1E33EBCC10@BYAPR18MB2423.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 0368E78B5B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR18MB2535.namprd18.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(366004)(376002)(39860400002)(346002)(396003)(136003)(86362001)(26005)(186003)(5660300002)(316002)(2616005)(81166007)(36756003)(7416002)(71200400001)(2906002)(76116006)(4744005)(6486002)(478600001)(6506007)(6512007)(66556008)(64756008)(66446008)(8676002)(81156014)(66476007)(8936002)(66946007)(54906003)(4326008)(110136005);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: u8lIxSXLq+5FP9v9JHnqyAeolh5Fvh8Vbc8wtR/ZKwKvELXDUxR08Rtr54EaO20ncKIYbQtdXPOSrUMs0Vn0Maaj5mcw6LJG8Pm4NlAf1bqwNPFNQ3BQAIVyRMCLmm1/fdfv+NO9+F/jlMQAP9peOnRu+X+hy9UWlSkRVl4Oq/dQXvra1Xuo8NdO6T+i/sAhKKjIsfDmQiLi81adQunnSaL4RXi9e8YGS5lrVUHMgtmqNLUbq6ML+GwVGFlXB5zv8PsqSgw1NlKLUsDoxW0MxyLcHlL1pPFEGsBrKVXrQuadJTRmtHfmtzoOsksl9zAwnUdrk3SNaeEryHHxKKsdw/oqQxpEkYo86t9NU5Oon7q/lvJfZMAAiN8Xu+4HYrv2yV8tC7NkAy61xWuhO11fnrdWTpTOsQzpVIXENG5MAqCwaeP/KWct6pJmahFEXEeX
x-ms-exchange-antispam-messagedata: PVp9uW4Ymz1S8U6GLyvdvFiAqOv0PgoSNl5vnn03WCc6afG94RP3DO3yTOdED7JDOGHGcRCXQyx5y6zBZuF1Fo0Y5lB+4oXfvSWGg9nSTZtL4inZaXJVIh8H+ovQi0uh30ZYWRIdaw4h4KgBu3ZTwQ==
Content-ID: <75515075B8A98845BEB0DA9CF39FEF36@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: dd9a56da-5fd7-4969-82c4-08d7dc9a4166
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2020 15:25:37.4267 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g4KQWbzNfvW9YmKek8OD5BCVPKWRmmybLMl5ES8JQmDU3lyE4K+h013+vKp6A60FIHYPyENMsLtSLNTn44FF7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB2423
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-09_05:2020-04-07,
 2020-04-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_082606_603817_52832480 
X-CRM114-Status: GOOD (  15.13  )
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

From: Yuri Norov <ynorov@marvell.com>

For nohz_full CPUs the desirable behavior is to receive interrupts
generated by tick_nohz_full_kick_cpu(). But for hard isolation it's
obviously not desirable because it breaks isolation.

This patch adds check for it.

Signed-off-by: Yuri Norov <ynorov@marvell.com>
[abelits@marvell.com: updated, only exclude CPUs running isolated tasks]
Signed-off-by: Alex Belits <abelits@marvell.com>
---
 kernel/time/tick-sched.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/kernel/time/tick-sched.c b/kernel/time/tick-sched.c
index 1d4dec9d3ee7..8488c2825a45 100644
--- a/kernel/time/tick-sched.c
+++ b/kernel/time/tick-sched.c
@@ -20,6 +20,7 @@
 #include <linux/sched/clock.h>
 #include <linux/sched/stat.h>
 #include <linux/sched/nohz.h>
+#include <linux/isolation.h>
 #include <linux/module.h>
 #include <linux/irq_work.h>
 #include <linux/posix-timers.h>
@@ -262,7 +263,8 @@ static void tick_nohz_full_kick(void)
  */
 void tick_nohz_full_kick_cpu(int cpu)
 {
-	if (!tick_nohz_full_cpu(cpu))
+	smp_rmb();
+	if (!tick_nohz_full_cpu(cpu) || task_isolation_on_cpu(cpu))
 		return;
 
 	irq_work_queue_on(&per_cpu(nohz_full_kick_work, cpu), cpu);
-- 
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
