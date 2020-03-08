Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3467517D238
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 08:29:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8mHDRvkmMQbIC95zEj9G2zxFcluzb6g5jaPb+6q7YIg=; b=JNozJNVUZWfI1r
	pmtn2Oqp8piKkS7ejcORWjHMtYfymLy98wNTkjAAdrBLXLPvmQp4hv4FdwDvvZOr0mEpf6xiErJPq
	8IsxxvT1b/F8flU5KJ9HFJ5IZtVjiCdIG0ll/fRFz2XMALSubaJ6gL4iwzeQEifyzfRXsgl7tMKja
	9xpKnIJk8nxBkDvyv9/LrJeSJ2x+fz0ac2umrBZ/l5vg7CQ5vlYgjxwj9iC/oO9CpiG4FLN8W6BT4
	Gb292Oag4exoqtQE1M28BNaqMgzV147UI/DI95+zzaAPMgEXuQkg45dN7xtHv2a/pkTXyB8kEZIAD
	gBFvwv6R5yu+v5WsUz+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAqN9-0003Kz-QS; Sun, 08 Mar 2020 07:29:15 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAqN2-0003KE-2G
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 07:29:09 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0287P8v7006938; Sat, 7 Mar 2020 23:28:27 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=wu6Lo5wWstzRksrBKaN8MSm3+M+uReG9PpVkF3sgNV4=;
 b=ZhLyGGNUGFtMhhMzyjYM6nhFMh8kXc89yb700+CBpHQcVmCjBD/qlJUCSBTbd6BdlV9b
 vKS+WlU/MOz+thomYdEJFQiDHcpmn/SQrlkmESnRCS6VdTuIlqG9c8OttPzGs2iVh3aK
 FBwctUhX8zrsw5SRdYFk5Zfod5nb3AITwTkMOhC17w8mgnbZ/HMDdDD1ZT0627Zt1KJl
 F7BXwTJ49fvp7LS3vGmwAS56JzjmE4kyGkaHuKI1Cp2c4D4Mnd2aNqNCgzLuMKa0xTbo
 w+vIGZ4hO0gNcJKnOC1nkOk80KGOIi7MJRk9XDaVd1Mq5MXdfT48o3N9VV5tXyTmGnrl DA== 
Received: from sc-exch03.marvell.com ([199.233.58.183])
 by mx0a-0016f401.pphosted.com with ESMTP id 2ym9uwb951-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Sat, 07 Mar 2020 23:28:26 -0800
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Sat, 7 Mar
 2020 23:28:25 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Sat, 7 Mar 2020 23:28:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nPyJGGOZYHcKDWs6xpQ4DVw1IsmhnADtcoMdF+yknAop5d0dNfZUHhtlYNw20x/8eGrMYrNT7zrNnKiqQraYKHsGcYEXf3qktf6n1XUMLUCQz36R1fWSMcEsDU4+Ta/NLYauBt7jfK37fCytosy2peR+NozlAfhOL65Bb6SfchgygHZ2aG1uSj23tk4OXpTkp9l2jSzADp2tZmoHadLBTlXp4Oq/vAFctzcpzldu8Yhiad9BKG1b2qj1Q1wCezlCrGIspUBXYhR38YeUpOlqaG95Tnmq0J0EfygIyyF95IQ95lLQXTQRlwCOaQPmyz/3Lc3Xu0uVFnAzDH3SqReUGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wu6Lo5wWstzRksrBKaN8MSm3+M+uReG9PpVkF3sgNV4=;
 b=gDEgdFaUhp0+RVJw8F5uCefk6X6Rijy02cJ03yMVL2mgB8P6vO8NJIRU+MWz5AV1xuTWg18Tdgpf7gvMKO0ZIYz7yR3S0Pbzlklmo2CE6IcRtVZhyPNc7tAto2cT0a69HfFiI7Pii4UfOACoU/Gjo1VbE5Yv4wdRbIR7fzmbpdxvkUr2udNmHzaauXNnsRAwcduBuoUjInf+tHqYld7dTcztRehSFa7VSE+TviCFDWfORsfsJGW/YUTrRhVQOU8gPXtOqas4coi+dl33D+7FMUWg7+4WrvqiSpK+S97UH9of9IrreTxWXyrFmsSW1qpPWCBiY6NkGdgz0zG8pog02Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wu6Lo5wWstzRksrBKaN8MSm3+M+uReG9PpVkF3sgNV4=;
 b=miyuqoxNzYPQygzas2NObXJbkD8MxbbhtZ+9Mpg5T5ks2QhU85XDjCmsxNyWWngbQN7Td68Ejx5yOm8mOIKJ1wlMcXq3Q8L7MzUOIwpr0ogHSCnIFP7Go8VnSG8ny+VeHSXZgeU0c+oypJSW3v+Z1NhqP2QMPIKJLFDe4yIIiwQ=
Received: from BYAPR18MB2535.namprd18.prod.outlook.com (2603:10b6:a03:137::17)
 by BYAPR18MB2472.namprd18.prod.outlook.com (2603:10b6:a03:13d::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.14; Sun, 8 Mar
 2020 07:28:23 +0000
Received: from BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23]) by BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23%7]) with mapi id 15.20.2793.013; Sun, 8 Mar 2020
 07:28:23 +0000
From: Alex Belits <abelits@marvell.com>
To: "frederic@kernel.org" <frederic@kernel.org>
Subject: Re: [EXT] Re: [PATCH 08/12] task_isolation: don't interrupt CPUs with
 tick_nohz_full_kick_cpu()
Thread-Topic: [EXT] Re: [PATCH 08/12] task_isolation: don't interrupt CPUs
 with tick_nohz_full_kick_cpu()
Thread-Index: AQHV8j+6YdQrrVvjWUOq9zKJGSyO36g7vR0AgAKUrgA=
Date: Sun, 8 Mar 2020 07:28:22 +0000
Message-ID: <646a22fd24e8dfeb1eb3101ae7be2b88e91dbfa3.camel@marvell.com>
References: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
 <d7ce01e57d4a35b126e1cb96a63109eaa9781cb6.camel@marvell.com>
 <20200306160341.GE8590@lenoir>
In-Reply-To: <20200306160341.GE8590@lenoir>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [199.233.58.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4b12f124-74ba-4bc5-51ed-08d7c33248c5
x-ms-traffictypediagnostic: BYAPR18MB2472:
x-microsoft-antispam-prvs: <BYAPR18MB2472BB25817FAFBEB894867FBCE10@BYAPR18MB2472.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 03361FCC43
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39850400004)(396003)(366004)(136003)(376002)(199004)(189003)(66446008)(71200400001)(186003)(26005)(5660300002)(4326008)(6486002)(64756008)(66946007)(76116006)(6506007)(91956017)(66476007)(66556008)(86362001)(6512007)(316002)(2616005)(2906002)(81166006)(81156014)(8676002)(478600001)(36756003)(8936002)(54906003)(7416002)(6916009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR18MB2472;
 H:BYAPR18MB2535.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NdDaKHFGHT/n9FMIHK+iNf8u58H+2/hk7KTMmTz8u23uJ4M/5EzZYcTSlYp8gOxKV/UEsX10HUgkfaZbXKLM9pz0faIiMst+ApnUIKWzpRkDYBziFb6tQ7vGpvPnUp8z3qulUjHM9VffsQH+xka9bR05Ya/8qDndYrTB3o+ImZDr5QsU+mYEXDrknvZYmBz3lhYHB1459a6Tgq5WlMJqf6TKYu9xR09v6PCKpY2f1Wpl8VKzwGKBLJTTwgDYaARXeKF4eURlTHcLdZpgCyddo9LCT1XWpzdXhf1a3tCAG6hG562gOA+ENmcqQ0VATEGeK7TOkYBynD8Df4+q1HvgOkoaDyLpnoaVFJpXM7SoxgUEELhe5isL+R5Jl7oomOXVb1qR9g5TBYusvYWeJAmj/hXzDckH4CkG7Pl0AJGRujk6rWvhFTMSPR771xHFXygB
x-ms-exchange-antispam-messagedata: p4nR8GcG16yoP2bXPJWhudVyra+Q5Xd6URvZTfFf1iMF8H/ZshA4mWqUB9ofbBIaW2PYq2P9FLs8l4xbFUWmGjmdxSbFM8cKjz/e8ZJDpo6YPUTiiwXz7sLp2+hbH4i+rKShwI4TgV9UBs5YuwDRvw==
x-ms-exchange-transport-forked: True
Content-ID: <FD5961556E38F24FA82A8F3B47E2B2FC@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b12f124-74ba-4bc5-51ed-08d7c33248c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2020 07:28:23.0228 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TUeawNXKY+lzRNhXtmaquLvsXaP4C7NmQKRlzuv6EIvhxKRMmTekFgqGsNSI89+lNk54CwbcmzyQQka0lqbjKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB2472
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-08_02:2020-03-06,
 2020-03-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_232908_138230_07CA4D2D 
X-CRM114-Status: GOOD (  21.49  )
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
 "peterz@infradead.org" <peterz@infradead.org>,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "will@kernel.org" <will@kernel.org>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-03-06 at 17:03 +0100, Frederic Weisbecker wrote:
> On Wed, Mar 04, 2020 at 04:12:40PM +0000, Alex Belits wrote:
> > From: Yuri Norov <ynorov@marvell.com>
> > 
> > For nohz_full CPUs the desirable behavior is to receive interrupts
> > generated by tick_nohz_full_kick_cpu(). But for hard isolation it's
> > obviously not desirable because it breaks isolation.
> > 
> > This patch adds check for it.
> > 
> > Signed-off-by: Alex Belits <abelits@marvell.com>
> > ---
> >  kernel/time/tick-sched.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/kernel/time/tick-sched.c b/kernel/time/tick-sched.c
> > index 1d4dec9d3ee7..fe4503ba1316 100644
> > --- a/kernel/time/tick-sched.c
> > +++ b/kernel/time/tick-sched.c
> > @@ -20,6 +20,7 @@
> >  #include <linux/sched/clock.h>
> >  #include <linux/sched/stat.h>
> >  #include <linux/sched/nohz.h>
> > +#include <linux/isolation.h>
> >  #include <linux/module.h>
> >  #include <linux/irq_work.h>
> >  #include <linux/posix-timers.h>
> > @@ -262,7 +263,7 @@ static void tick_nohz_full_kick(void)
> >   */
> >  void tick_nohz_full_kick_cpu(int cpu)
> >  {
> > -	if (!tick_nohz_full_cpu(cpu))
> > +	if (!tick_nohz_full_cpu(cpu) || task_isolation_on_cpu(cpu))
> >  		return;
> 
> I fear you can't do that. A nohz full CPU is kicked for a reason.
> As for the other cases, you need to fix the callers.
> 
> In the general case, randomly ignoring an interrupt is a correctness
> issue.

Not ignoring, just delaying until we are back from userspace. We know
that everything was done on this CPU when we successfully entered
userspace in isolated mode -- otherwise we would be kicked out. We
restart timers when we are back in kernel again on cleanup, so things
will be back to normal at that point. Between those moments we can just
as well remain in userspace and forget about the timers until we are
back in kernel.

> 
> Thanks.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
