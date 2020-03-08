Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E7817D16C
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 05:49:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yvABwuKT11P18D17D1jhpLQHL1FrUoGBRwhfHDEI5y8=; b=UnkFJiT30D7UUd
	55r3esDHdtgxY5SqNHVz+sON3D8UR7i1CiwaA+pHM5fqwW1n2UbhuuextWaAZ+fvtHEBmBWVqvoFf
	IdPV+dxFHgmS9bMtI+4Xwyv3TBOwDswdvHJOkcR9XFxO+f2d0hituw+oP//RDTN88p8qWkGxRGApx
	yxxiiGteWx0DCI+NT1/0yj9kSVF7XVuNha20OAr87+Tb5si0Sg/ln8cveDF3uf2HizA2qoqcQut2C
	i5wm8d5KaAbUOKhPcK2pL+fELBraCtVEYDe/Dx9uT6MopU4IUBZWDxIJj0vthpwcoixnlg/zkwolu
	O8dZH2SMj811OW+hEOjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAns4-0002TG-6u; Sun, 08 Mar 2020 04:49:00 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAnrt-0002Sj-LF
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 04:48:52 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0284m6p5015330; Sat, 7 Mar 2020 20:48:06 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=5NeEz0ZAFFHjnj9Jx4hKLP9Pe41NEANlE2HVEj3N5y4=;
 b=Co4gyGnvudKzTVe1N7lD8eEo4iC6hrcaNelYL1JuYk6BcvL3+E7sE/eVNyUYxHSp83k0
 afv61FUzr+d8DjcNgoPJHs/FxsR8w0R/V7HdeAU2b9ihV8K/wpZRvXY0I0b37yvXsQ6k
 a7F9aigAl8Bo3RC/ki87jgrZaZwVl56COBWN+VUt3e9jg6EkawX+9pH3I/CzPVSI0b7q
 jpzhtq4wsvo2BmvRatXe4Ooh+tBnjFUiMdgaKJj5GLwDaRPvvsKAkrr4l7jikGbtVaXC
 3eXtZRD/aGNnD8n7x+vcX+cAcuo/ChqwNu3qr/1LpSqNUDIBc3uOI7CIZSqy7AsC7GzS nA== 
Received: from sc-exch03.marvell.com ([199.233.58.183])
 by mx0b-0016f401.pphosted.com with ESMTP id 2ymc0sj51n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Sat, 07 Mar 2020 20:48:06 -0800
Received: from SC-EXCH04.marvell.com (10.93.176.84) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Sat, 7 Mar
 2020 20:48:04 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by SC-EXCH04.marvell.com (10.93.176.84) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Sat, 7 Mar 2020 20:48:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HgvfrEIdHU4MpPMSCZvf7nFsk61R2iQfbDY5cYR3/oYlATVRQGMrPRnstLNqvJhIvzOv2m9teW483SmciVt5cpTCAkJnc61OJWZJHT6zmp09qOSakRsvIifhchCr8uZoSGcnLM4A1EdR2KYTxxanrSo2FXS1hn5lFO2gFoFmcEx7gUilm7wg/uWdTW3gvQKUw0n8pHfomkFHMeCAhypw92uR/T/I4RghRMOK9qCEzpdU3Vp5MMG2xl4W/lnzr2zj9MzByssnil1HPCiugrciSv48p7hSemudmoFCiWlp/hycFxW0tamHAxSCna03uPMBT7tGcipdZ7ZnPdPylQffxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5NeEz0ZAFFHjnj9Jx4hKLP9Pe41NEANlE2HVEj3N5y4=;
 b=HgwLJCHs263IT3/TeURvYGvaE0lSH1sac2AFHaH0OH2ckkGDYGWuH5NBor/1sRIt/zvlHDrrD9vin3ViMrN5TrAv2IX+eYTZ+ZMbSXGqCehYI7UpkYadaLc+vDeYqXG+Yqo2z7YJkiYCBQgNo1QHUsrue/ITzXVKRtQhEGDfwsLOV56f0QBz40TqZOC0A9iqjd/e2a5n0dqFGq9IU1OtFXHFLW2ueV46RVifhj3iwENyAAiCPrAGFfK6+q+56WelGAKokP6sPgccdgPfhDB1y0b4IQEgC/6OmwHJtHnikep6C9K4L4brSBahB73qUbvzcgiXL2LpHuO3QqYmwgD4GQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5NeEz0ZAFFHjnj9Jx4hKLP9Pe41NEANlE2HVEj3N5y4=;
 b=RND7D3JuV4YbT/vT5B3aMp4PCMDZwo8hsCtWWsJSQhxtYdkG/C+1gvwiQEFBna7CMZSRTX/ltaG4iJHMXtY8QU/u3sPHrqZEqlIpXnzjEaB28KXNTaMAiu7kchMotCnT1UhJSwwpsucPSOwbhJGV9Mk1i7OVVVSPWYt1K8l7g1Y=
Received: from BYAPR18MB2535.namprd18.prod.outlook.com (2603:10b6:a03:137::17)
 by BYAPR18MB2854.namprd18.prod.outlook.com (2603:10b6:a03:10a::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.16; Sun, 8 Mar
 2020 04:48:02 +0000
Received: from BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23]) by BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23%7]) with mapi id 15.20.2793.013; Sun, 8 Mar 2020
 04:48:01 +0000
From: Alex Belits <abelits@marvell.com>
To: "mark.rutland@arm.com" <mark.rutland@arm.com>
Subject: Re: [EXT] Re: [PATCH 06/12] task_isolation: arch/arm64: enable task
 isolation functionality
Thread-Topic: [EXT] Re: [PATCH 06/12] task_isolation: arch/arm64: enable task
 isolation functionality
Thread-Index: AQHV8j9rkf7tIHtWJkKlryVkRdykRag4oBiAgAWE5QA=
Date: Sun, 8 Mar 2020 04:48:01 +0000
Message-ID: <3726a1fd89b12970d1bc79600d8fd6a9145bf5bc.camel@marvell.com>
References: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
 <ef365b5754ffc07980ed1df6ac8531a8ff590a17.camel@marvell.com>
 <20200304163103.GJ3575@lakrids.cambridge.arm.com>
In-Reply-To: <20200304163103.GJ3575@lakrids.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [199.233.58.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 07ce9ec7-641e-4eb5-a044-08d7c31be207
x-ms-traffictypediagnostic: BYAPR18MB2854:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR18MB28548F792A75481F1711DEDCBCE10@BYAPR18MB2854.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 03361FCC43
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39850400004)(136003)(396003)(346002)(376002)(199004)(189003)(86362001)(6506007)(30864003)(76116006)(6486002)(5660300002)(478600001)(91956017)(66946007)(316002)(66556008)(66476007)(64756008)(66446008)(6512007)(81166006)(2906002)(36756003)(8676002)(8936002)(81156014)(54906003)(186003)(26005)(7416002)(4326008)(6916009)(71200400001)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR18MB2854;
 H:BYAPR18MB2535.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hc17c/oZODfSFch/Sg5f6ARilJ6R7u8IU8ZSd/t7/mDsBdHatk2wd7qp7lVjhW4WYgaAmZU3wR/1UAeuHQ5CuH+oyE+UiFeQib6tFRmwQgcywd14AHUTE+hz/z/oEsU2oQLBDu/jiTA78jhmKwbz5wrDIyN6W2WtkPef9B6/RRxv/SzL5ycENfEHTnhTrz7tZqKgxl37cVxgB1+NNoiq6AebPa0kDAH9wkUkzB5XgtMaEg0jwpivcNeZPI4hVi3JdiYG13eZoevAwHuBS63Njhf4UY+F2O1x0gfFKJe2YHLsvNFoqyWpvYoCQcm3IRJegPeBpxEbkV92RDPOfOOcA0bi9J461L89JTVHfQ2/DDThuJOc9MpKxyQtYn7m7M/WDtp4cmnyk3HkiQqt1crxQA8mEXVj/RjHcIn4ejxonpeIV7dG/7WvskfOqiH3UsVV
x-ms-exchange-antispam-messagedata: cuA1umOvf/E8SVBj2O3dvdDOpSRq+QO/pJSZrxXRZMSlgmXOpIDJ9jRcuLcHduh1lUtx955dRQou9w4MdX4uSMXXRjmD2/JqETptLs7I8j6c91YJASIPWW7KxABh1Iy9zC7YkxndMAC80TG5p5oO3g==
Content-ID: <F929E96D1F1D924089188C6399953F29@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 07ce9ec7-641e-4eb5-a044-08d7c31be207
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2020 04:48:01.7359 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LYVrouADZnRJPKcPUFQi2tE3PpourdaO4S2SobhmP9B3t4oCprcVwI/iGF4r4yM/vPnXjILjl2fYCbKHNbv+jg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB2854
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-07_09:2020-03-06,
 2020-03-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_204849_849974_5164B9F3 
X-CRM114-Status: GOOD (  31.10  )
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
 "frederic@kernel.org" <frederic@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
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

On Wed, 2020-03-04 at 16:31 +0000, Mark Rutland wrote:
> Hi Alex,
> 
> For patches affecting arm64, please CC LAKML and the arm64
> maintainers
> (Will and Catalin). I've Cc'd the maintainers here.

Thanks. Added them to Cc:.

> 
> On Wed, Mar 04, 2020 at 04:10:28PM +0000, Alex Belits wrote:
> > From: Chris Metcalf <cmetcalf@mellanox.com>
> > 
> > In do_notify_resume(), call task_isolation_start() for
> > TIF_TASK_ISOLATION tasks. Add _TIF_TASK_ISOLATION to
> > _TIF_WORK_MASK,
> > and define a local NOTIFY_RESUME_LOOP_FLAGS to check in the loop,
> > since we don't clear _TIF_TASK_ISOLATION in the loop.
> > 
> > We tweak syscall_trace_enter() slightly to carry the "flags"
> > value from current_thread_info()->flags for each of the tests,
> > rather than doing a volatile read from memory for each one. This
> > avoids a small overhead for each test, and in particular avoids
> > that overhead for TIF_NOHZ when TASK_ISOLATION is not enabled.
> 
> Stale commit message?
> 
> Looking at the patch below, this doesn't seem to be the case; it just
> calls test_thread_flag(TIF_TASK_ISOLATION).

Right. I had to revert to a simple check to match the current
implementation of this function.

> 
We instrument the smp_send_reschedule() routine so that
itchecks for
> > isolated tasks and generates a suitable warning if needed.
> > 
> > Finally, report on page faults in task-isolation processes in
> > do_page_faults().
> > 
> > Signed-off-by: Alex Belits <abelits@marvell.com>
> 
> The From line says this was from Chris Metcalf, but he's missing from
> the Sign-off chain here, which isn't right.

I have posted updated patches with properly preserved sign-off lines
and descriptions of updates.

> >  arch/arm64/include/asm/thread_info.h |  5 ++++-
> >  arch/arm64/kernel/ptrace.c           | 10 ++++++++++
> >  arch/arm64/kernel/signal.c           | 13 ++++++++++++-
> >  arch/arm64/kernel/smp.c              |  7 +++++++
> >  arch/arm64/mm/fault.c                |  5 +++++
> >  6 files changed, 39 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > index 0b30e884e088..93b6aabc8be9 100644
> > --- a/arch/arm64/Kconfig
> > +++ b/arch/arm64/Kconfig
> > @@ -129,6 +129,7 @@ config ARM64
> >  	select HAVE_ARCH_PREL32_RELOCATIONS
> >  	select HAVE_ARCH_SECCOMP_FILTER
> >  	select HAVE_ARCH_STACKLEAK
> > +	select HAVE_ARCH_TASK_ISOLATION
> >  	select HAVE_ARCH_THREAD_STRUCT_WHITELIST
> >  	select HAVE_ARCH_TRACEHOOK
> >  	select HAVE_ARCH_TRANSPARENT_HUGEPAGE
> > diff --git a/arch/arm64/include/asm/thread_info.h
> > b/arch/arm64/include/asm/thread_info.h
> > index f0cec4160136..7563098eb5b2 100644
> > --- a/arch/arm64/include/asm/thread_info.h
> > +++ b/arch/arm64/include/asm/thread_info.h
> > @@ -63,6 +63,7 @@ void arch_release_task_struct(struct task_struct
> > *tsk);
> >  #define TIF_FOREIGN_FPSTATE	3	/* CPU's FP state is not
> > current's */
> >  #define TIF_UPROBE		4	/* uprobe breakpoint or singlestep
> > */
> >  #define TIF_FSCHECK		5	/* Check FS is USER_DS on
> > return */
> > +#define TIF_TASK_ISOLATION	6
> >  #define TIF_NOHZ		7
> >  #define TIF_SYSCALL_TRACE	8	/* syscall trace active */
> >  #define TIF_SYSCALL_AUDIT	9	/* syscall auditing */
> > @@ -83,6 +84,7 @@ void arch_release_task_struct(struct task_struct
> > *tsk);
> >  #define _TIF_NEED_RESCHED	(1 << TIF_NEED_RESCHED)
> >  #define _TIF_NOTIFY_RESUME	(1 << TIF_NOTIFY_RESUME)
> >  #define _TIF_FOREIGN_FPSTATE	(1 << TIF_FOREIGN_FPSTATE)
> > +#define _TIF_TASK_ISOLATION	(1 << TIF_TASK_ISOLATION)
> >  #define _TIF_NOHZ		(1 << TIF_NOHZ)
> >  #define _TIF_SYSCALL_TRACE	(1 << TIF_SYSCALL_TRACE)
> >  #define _TIF_SYSCALL_AUDIT	(1 << TIF_SYSCALL_AUDIT)
> > @@ -96,7 +98,8 @@ void arch_release_task_struct(struct task_struct
> > *tsk);
> >  
> >  #define _TIF_WORK_MASK		(_TIF_NEED_RESCHED |
> > _TIF_SIGPENDING | \
> >  				 _TIF_NOTIFY_RESUME |
> > _TIF_FOREIGN_FPSTATE | \
> > -				 _TIF_UPROBE | _TIF_FSCHECK)
> > +				 _TIF_UPROBE | _TIF_FSCHECK | \
> > +				 _TIF_TASK_ISOLATION)
> >  
> >  #define _TIF_SYSCALL_WORK	(_TIF_SYSCALL_TRACE |
> > _TIF_SYSCALL_AUDIT | \
> >  				 _TIF_SYSCALL_TRACEPOINT | _TIF_SECCOMP
> > | \
> > diff --git a/arch/arm64/kernel/ptrace.c
> > b/arch/arm64/kernel/ptrace.c
> > index cd6e5fa48b9c..b35b9b0c594c 100644
> > --- a/arch/arm64/kernel/ptrace.c
> > +++ b/arch/arm64/kernel/ptrace.c
> > @@ -29,6 +29,7 @@
> >  #include <linux/regset.h>
> >  #include <linux/tracehook.h>
> >  #include <linux/elf.h>
> > +#include <linux/isolation.h>
> >  
> >  #include <asm/compat.h>
> >  #include <asm/cpufeature.h>
> > @@ -1836,6 +1837,15 @@ int syscall_trace_enter(struct pt_regs
> > *regs)
> >  			return -1;
> >  	}
> >  
> > +	/*
> > +	 * In task isolation mode, we may prevent the syscall from
> > +	 * running, and if so we also deliver a signal to the process.
> > +	 */
> > +	if (test_thread_flag(TIF_TASK_ISOLATION)) {
> > +		if (task_isolation_syscall(regs->syscallno) == -1)
> > +			return -1;
> > +	}
> 
> As above, this doesn't match the commit message.
> 
> AFAICT, task_isolation_syscall() always returns either 0 or -1, which
> isn't great as an API. I see secure_computing() seems to do the same,
> and it'd be nice to clean that up to either be a real erro code or a
> boolean.

Boolean may make more sense considering that we are not dealing with
errors returned by some operation the fact that calls were made from
the wrong state.

> 

> > > > +
> >  	/* Do the secure computing after ptrace; failures should be
> > fast. */
> >  	if (secure_computing() == -1)
> >  		return -1;
> > diff --git a/arch/arm64/kernel/signal.c
> > b/arch/arm64/kernel/signal.c
> > index 339882db5a91..d488c91a4877 100644
> > --- a/arch/arm64/kernel/signal.c
> > +++ b/arch/arm64/kernel/signal.c
> > @@ -20,6 +20,7 @@
> >  #include <linux/tracehook.h>
> >  #include <linux/ratelimit.h>
> >  #include <linux/syscalls.h>
> > +#include <linux/isolation.h>
> >  
> >  #include <asm/daifflags.h>
> >  #include <asm/debug-monitors.h>
> > @@ -898,6 +899,11 @@ static void do_signal(struct pt_regs *regs)
> >  	restore_saved_sigmask();
> >  }
> >  
> > +#define NOTIFY_RESUME_LOOP_FLAGS \
> > +	(_TIF_NEED_RESCHED | _TIF_SIGPENDING | \
> > +	_TIF_NOTIFY_RESUME | _TIF_FOREIGN_FPSTATE | \
> > +	_TIF_UPROBE | _TIF_FSCHECK)
> > +
> >  asmlinkage void do_notify_resume(struct pt_regs *regs,
> >  				 unsigned long thread_flags)
> >  {
> > @@ -908,6 +914,8 @@ asmlinkage void do_notify_resume(struct pt_regs
> > *regs,
> >  	 */
> >  	trace_hardirqs_off();
> >  
> > +	task_isolation_check_run_cleanup();
> > +
> >  	do {
> >  		/* Check valid user FS if needed */
> >  		addr_limit_user_check();
> > @@ -938,7 +946,10 @@ asmlinkage void do_notify_resume(struct
> > pt_regs *regs,
> >  
> >  		local_daif_mask();
> >  		thread_flags = READ_ONCE(current_thread_info()->flags);
> > -	} while (thread_flags & _TIF_WORK_MASK);
> > +	} while (thread_flags & NOTIFY_RESUME_LOOP_FLAGS);
> > +
> > +	if (thread_flags & _TIF_TASK_ISOLATION)
> > +		task_isolation_start();
> >  }
> >  
> >  unsigned long __ro_after_init signal_minsigstksz;
> > diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> > index d4ed9a19d8fe..00f0f77adea0 100644
> > --- a/arch/arm64/kernel/smp.c
> > +++ b/arch/arm64/kernel/smp.c
> > @@ -32,6 +32,7 @@
> >  #include <linux/irq_work.h>
> >  #include <linux/kexec.h>
> >  #include <linux/kvm_host.h>
> > +#include <linux/isolation.h>
> >  
> >  #include <asm/alternative.h>
> >  #include <asm/atomic.h>
> > @@ -818,6 +819,7 @@ void arch_send_call_function_single_ipi(int
> > cpu)
> >  #ifdef CONFIG_ARM64_ACPI_PARKING_PROTOCOL
> >  void arch_send_wakeup_ipi_mask(const struct cpumask *mask)
> >  {
> > +	task_isolation_remote_cpumask(mask, "wakeup IPI");
> >  	smp_cross_call(mask, IPI_WAKEUP);
> >  }
> >  #endif
> > @@ -886,6 +888,9 @@ void handle_IPI(int ipinr, struct pt_regs
> > *regs)
> >  		__inc_irq_stat(cpu, ipi_irqs[ipinr]);
> >  	}
> >  
> > +	task_isolation_interrupt("IPI type %d (%s)", ipinr,
> > +				 ipinr < NR_IPI ? ipi_types[ipinr] :
> > "unknown");
> > +
> 
> Are these tracing hooks?
> 
> Surely they aren't necessary for functional correctness?

This is necessary to properly break isolation and send a signal when
something disturbed the isolated task, and to tell the user (likely a
developer), why this happened. There are some legitimate reasons for
breaking isolation (for example, a signal that terminates the process)
and very large number of possible things that should not happen to an
isolated task -- page fault caused by access to unmapped addresses,
syscall issued by the task in isolated state, interrupt directed to the
core running isolated task, timer remaining there, or kernel trying to
run something on that core. It was very helpful to know what exactly
happened, and if not this reporting, I would have hard time debugging
the drivers and subsystems that called their functions and scheduled
their threads all over the place. So both reliable breaking of
isolation and reporting the cause is important.

> 
> >  	switch (ipinr) {
> >  	case IPI_RESCHEDULE:
> >  		scheduler_ipi();
> > @@ -948,12 +953,14 @@ void handle_IPI(int ipinr, struct pt_regs
> > *regs)
> >  
> >  void smp_send_reschedule(int cpu)
> >  {
> > +	task_isolation_remote(cpu, "reschedule IPI");
> >  	smp_cross_call(cpumask_of(cpu), IPI_RESCHEDULE);
> >  }
> >  
> >  #ifdef CONFIG_GENERIC_CLOCKEVENTS_BROADCAST
> >  void tick_broadcast(const struct cpumask *mask)
> >  {
> > +	task_isolation_remote_cpumask(mask, "timer IPI");
> >  	smp_cross_call(mask, IPI_TIMER);
> >  }
> >  #endif
> > diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
> > index 85566d32958f..fc4b42c81c4f 100644
> > --- a/arch/arm64/mm/fault.c
> > +++ b/arch/arm64/mm/fault.c
> > @@ -23,6 +23,7 @@
> >  #include <linux/perf_event.h>
> >  #include <linux/preempt.h>
> >  #include <linux/hugetlb.h>
> > +#include <linux/isolation.h>
> >  
> >  #include <asm/acpi.h>
> >  #include <asm/bug.h>
> > @@ -543,6 +544,10 @@ static int __kprobes do_page_fault(unsigned
> > long addr, unsigned int esr,
> >  	 */
> >  	if (likely(!(fault & (VM_FAULT_ERROR | VM_FAULT_BADMAP |
> >  			      VM_FAULT_BADACCESS)))) {
> > +		/* No signal was generated, but notify task-isolation
> > tasks. */
> > +		if (user_mode(regs))
> > +			task_isolation_interrupt("page fault at %#lx",
> > addr);
> > +
> 
> We check user_mode(regs) much earlier in this function to set
> FAULT_FLAG_USER. Is there some reason this cannot live there?
> 
> Also, this seems to be a tracing hook -- is this necessary?

This is another point where task isolation state is broken, task
receives a signal and the reason is logged. If not isolation, task
would not know that anything happened, but it is important for
isolation.

In general if isolated task is supposed to be running on a CPU core, it
has to stay in userspace. So if for some reason a kernel code is
running on that CPU core, this is either a task leaving isolation on
its own or isolation is broken and the task should be notified about
it. The only problem is how to properly and reliably explain why this
happened.

Thanks!

-- 
Alex
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
