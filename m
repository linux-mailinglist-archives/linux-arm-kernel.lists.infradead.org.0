Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F1A17D145
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 04:54:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QpBmBBT907INeMRpK6N/zlX0nUrjy3qcbWi0rjY2B9E=; b=cASNsCzjL+ZOpv
	QRj/NwXaFcGB6IO7zlnkN0XKhYS7K3jjgL3QBf9mFQKYtd3TYBvTkD5MXLalEwCvU7fsPQCEdHIyi
	EIj58p2XoBIg380KSwkGj/FVG0+zJXnvPhjo1VIT3kSFRZQXIdm0FgAXW1XS5wJLHwx7C2w33n2p1
	Te166qalY7LMDgU8V+srS8g9eIwNc6lK67ppZJrCW50eQ80qJaWgTWuuoUP4okGe8rgg3x4tHrLRA
	AE+5LzddndOjbj3Vc9OjeDGxIt2fWySsBV7lVwWtU5O81VPJMKN0iIXxOYWmHGtBMi21B0ETFTTxq
	GBSy/qZQ8IMK0/gzcBHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAn13-0001Au-4J; Sun, 08 Mar 2020 03:54:13 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAn0s-0001AY-NQ
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 03:54:04 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0283l1im010585; Sat, 7 Mar 2020 19:53:38 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=VshAxQlrpDGqLX3Ub9gD9awNJkWKsqMZMcz/QPzm4d0=;
 b=c+cPXSlvmKl0zbzWE2DqoQrEsqoCQjZ6/cG75qffbYZy7RpRSw8SiajIDjEUCJVDsqQ+
 hRIB46QGdBppsChhFAeTOZ9Jzivh+Gcp+qPwPO8JA/dQvVl+pGWRcaMxtS4yaH+5BCTO
 mOed1WDuYofkvEYwhMvsqD/hWPbwzH+YfDehzL7IBJOUNl6v5Uxmn6JqNcmbdmGKuVTV
 rqmBj23ll9nmUukWG6L8drJJOvNykxG/ctewH1kM13DPT1Dn/WrPwjSMmipTLzJstBF7
 snxpejZty5ZRxPum9ojoFHaDQ6F+xJHxqIU/3EUHqL5u30SUlCWsd/urbimf3lfn2MGf FQ== 
Received: from sc-exch04.marvell.com ([199.233.58.184])
 by mx0a-0016f401.pphosted.com with ESMTP id 2ym9uwavc6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Sat, 07 Mar 2020 19:53:38 -0800
Received: from SC-EXCH03.marvell.com (10.93.176.83) by SC-EXCH04.marvell.com
 (10.93.176.84) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Sat, 7 Mar
 2020 19:53:37 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by SC-EXCH03.marvell.com (10.93.176.83) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Sat, 7 Mar 2020 19:53:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iId1pAbZNQ8JgSQg06mNPFAsZmhu7RvxI6UwFck/+zGUNaOJisQ1tvcxSXt1oJp360cPo04cXn1vUxZSIC1QLJG3k2bPgwah9enZmLuPwKJ+CYHat3YEMwmb7ol31aPCT8nFeMZ31nKf8++yTF12icmyRLOUFcAFlUqc4o6ifA5c9i+JV4BscOF5dRfnDt1oVlPWuqpJWDv0HXs6U5xKt0atdvLvl7ABxmHFeeqYUhBPIQlknHmB9rYdE4Tr8M6uh5tfmH3u3ZnfJfzgiexkDLWDi7HiPH3rNJzHZDMZ+WOvjWfzOUGbxXg6POLPT2dCKp6mcucwClll0MupCnuePA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VshAxQlrpDGqLX3Ub9gD9awNJkWKsqMZMcz/QPzm4d0=;
 b=GvBCODgI6XaMsttxXL48Ygdc571+f3VuvpQV0Na4io1ySgDkwKGansBL5tB3yrROg+xKj3oPDM2emCOi/XXW/s6ZUYH+6hxsIEh0zb+8TXbX22nvkBRy6cJfHjV/wGN6brd+ghYDH9hGGqpVtubkhpuDys/9Rc7cIGl0MdoZDFJa5rcTk5rDc+CqId7K0OEFxfs/g6P5F1Ogv2WiwfyAfN5Z23A83r/kHHAYwE768HLwx6vitZ6nNXXvY2UPmodD2EndTZNeXebuxeMZlZdNV+EYmOSk3un9bwjfc0WmFdIlaFsXbMQh8feFWnSsiBR4PkYWPwqA8GK6WTWYsZb1ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VshAxQlrpDGqLX3Ub9gD9awNJkWKsqMZMcz/QPzm4d0=;
 b=m0s/rxSsSgxsdO4SdB6qtiBowW+sMpUAlNTQBFQL3mAKbqhrI5qApQoOMUwQfxysaUe5zSRnkarnuXgNTvWufSuywapH+KSeiVv8F2DbeBG15g0/ZARj4Iw73IEBaOJVC6JkX8ifBdovHYYeSluxVn+TNSc9c9sX2iIZIyiKhqc=
Received: from BYAPR18MB2535.namprd18.prod.outlook.com (2603:10b6:a03:137::17)
 by BYAPR18MB2661.namprd18.prod.outlook.com (2603:10b6:a03:136::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.17; Sun, 8 Mar
 2020 03:53:35 +0000
Received: from BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23]) by BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23%7]) with mapi id 15.20.2793.013; Sun, 8 Mar 2020
 03:53:35 +0000
From: Alex Belits <abelits@marvell.com>
To: "frederic@kernel.org" <frederic@kernel.org>, "rostedt@goodmis.org"
 <rostedt@goodmis.org>
Subject: [PATCH v2 08/12] task_isolation: don't interrupt CPUs with
 tick_nohz_full_kick_cpu()
Thread-Topic: [PATCH v2 08/12] task_isolation: don't interrupt CPUs with
 tick_nohz_full_kick_cpu()
Thread-Index: AQHV9P0k4GMnIbRPmkShfBNP7hpH9A==
Date: Sun, 8 Mar 2020 03:53:35 +0000
Message-ID: <0b4615be96008d1031efd3ed309437c05d564019.camel@marvell.com>
References: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
 <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
In-Reply-To: <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [199.233.58.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0e45a13b-7eaa-444d-32e0-08d7c3144730
x-ms-traffictypediagnostic: BYAPR18MB2661:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR18MB2661306AAC3B05F416AF05B3BCE10@BYAPR18MB2661.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 03361FCC43
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(39850400004)(136003)(366004)(396003)(189003)(199004)(5660300002)(186003)(26005)(66946007)(66446008)(66476007)(64756008)(66556008)(6486002)(6506007)(6512007)(91956017)(478600001)(76116006)(7416002)(4326008)(2906002)(86362001)(36756003)(4744005)(71200400001)(2616005)(8936002)(81156014)(8676002)(81166006)(54906003)(110136005)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR18MB2661;
 H:BYAPR18MB2535.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: w9bPIUUzRiYavzQsGz27feKKQf8amrol5kYqO7iXcCaEp8nzSy1wJS3UM6lmsNKetDMCHDMxfksjTTHV+JqDDeeVF9iyV20xul+ZVXK6WXkamgAlQ0+cWFqIxoDZEhmHXWBfBkBtiCC1XtXsn0rZGcmG8W9+XthgjRby9V0kDV1BrCwjfBZI9aMLTsDUWwCDWqWSJNO7xEHN3cI9GdardtUE/2nIBkiDStouejbC6aIGa+8fgQISTS4Nycq1FtiXQeGw6zMCPpRnUZwwmpMG8dZPM9hh1KYvH4Ni/2rlPVqHK7paDSHn3M3hMKcf3tkFSNiX3PCsWFx0AjeKlopfzA1FJbdFcxN9RccNRn7pYQVxFaMrQK9QRnEmu6d9VAHNfcJ/Lso7q1flujlkcbqWoGCfb28l1Wk6jQONikJtedVMVGx5icynODpZWFm6bI0b
x-ms-exchange-antispam-messagedata: wyFtbJwbo6uu250MoBQgzm7ZNyMUyGQO2/miTojm5/qyvw0WKKMRBHvmyOacwPPdqHRInbiCNY4K8slZeUaN1624bOfG6jpax/sC/Y1XGp319fM8pDRyNspFPiMfq82wcrsWLWiwTuhsIHWvfwwJvg==
Content-ID: <12BFA578C199064E880E6064C4B51C83@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e45a13b-7eaa-444d-32e0-08d7c3144730
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2020 03:53:35.5828 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: niHMUmcgY/fF4N9xHpXroHTwFYtzu4p3oiRGrstz1DZ7DXcdet+XUAxR0dX5qMW6MyQERa6y8/fum4Mdq6j+ig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB2661
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-07_09:2020-03-06,
 2020-03-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_195402_774684_3D56CCBD 
X-CRM114-Status: GOOD (  14.66  )
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

From: Yuri Norov <ynorov@marvell.com>

For nohz_full CPUs the desirable behavior is to receive interrupts
generated by tick_nohz_full_kick_cpu(). But for hard isolation it's
obviously not desirable because it breaks isolation.

This patch adds check for it.

Signed-off-by: Yuri Norov <ynorov@marvell.com>
[abelits@marvell.com: updated, only exclude CPUs running isolated tasks]
Signed-off-by: Alex Belits <abelits@marvell.com>
---
 kernel/time/tick-sched.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/kernel/time/tick-sched.c b/kernel/time/tick-sched.c
index 1d4dec9d3ee7..fe4503ba1316 100644
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
@@ -262,7 +263,7 @@ static void tick_nohz_full_kick(void)
  */
 void tick_nohz_full_kick_cpu(int cpu)
 {
-	if (!tick_nohz_full_cpu(cpu))
+	if (!tick_nohz_full_cpu(cpu) || task_isolation_on_cpu(cpu))
 		return;
 
 	irq_work_queue_on(&per_cpu(nohz_full_kick_work, cpu), cpu);
-- 
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
