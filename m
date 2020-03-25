Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A31F191EDB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 03:11:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HKgINja70kK1NCcQWN5+eCJYQLWy1Ga9FNrCBjDNyEw=; b=HY7S5Xaufz3Hy+
	CytpPSAQ8xyVqtYZAJNuz/teE892cCKczBdN64fcZB8sm6cG7L8bKVvErnCuxAxffBsDRDd+3txY4
	91Mt58+9wtHCfkKXGOAf6nAWG/4mbip2lbwXbMK4qRYyjgljFk9vIN6bWn6S2B/4oK9P++FY269Jf
	7m4S8gxguDzDrGP/wAzQyWfEQG7x5hlU8Tz56g+gDyJrm+agdDt3Riymp4QUktMcKCyP5r/QVYh5A
	6YX1nRCP6gu7tHdlFAkKaVcB/nAe+hG8O4XBt7uVrUyXZkurRGhyTanXBP3Q4qK549hbifasq9qe8
	VPWDr1T3wGD3nsp5k4rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGvVd-0004c5-GH; Wed, 25 Mar 2020 02:11:09 +0000
Received: from szxga03-in.huawei.com ([45.249.212.189] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGvVV-0004b4-Ay
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 02:11:04 +0000
Received: from dggeml405-hub.china.huawei.com (unknown [172.30.72.56])
 by Forcepoint Email with ESMTP id F278CAC235422688F1C5;
 Wed, 25 Mar 2020 10:10:47 +0800 (CST)
Received: from DGGEML421-HUB.china.huawei.com (10.1.199.38) by
 dggeml405-hub.china.huawei.com (10.3.17.49) with Microsoft SMTP Server (TLS)
 id 14.3.487.0; Wed, 25 Mar 2020 10:10:47 +0800
Received: from DGGEML533-MBS.china.huawei.com ([169.254.10.196]) by
 dggeml421-hub.china.huawei.com ([10.1.199.38]) with mapi id 14.03.0487.000;
 Wed, 25 Mar 2020 10:10:40 +0800
From: "yezhenyu (A)" <yezhenyu2@huawei.com>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: RE: [RFC PATCH v4 4/6] mm: Add page table level flags to vm_flags
Thread-Topic: [RFC PATCH v4 4/6] mm: Add page table level flags to vm_flags
Thread-Index: AQHWAeKVXiq19lnJ+0q/54z19KSbo6hXjqYAgAD+HPA=
Date: Wed, 25 Mar 2020 02:10:40 +0000
Message-ID: <10338CF38D9A684EA38E1CF7D8D3411B045BA207@dggeml533-mbs.china.huawei.com>
References: <20200324134534.1570-1-yezhenyu2@huawei.com>
 <20200324134534.1570-5-yezhenyu2@huawei.com>
 <20200324144436.043659c2@gandalf.local.home>
In-Reply-To: <20200324144436.043659c2@gandalf.local.home>
Accept-Language: en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.173.220.25]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_191101_539118_8F65FBEC 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.189 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 "peterz@infradead.org" <peterz@infradead.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "Guohanjun \(Hanjun Guo\)" <guohanjun@huawei.com>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "yuzhao@google.com" <yuzhao@google.com>, "maz@kernel.org" <maz@kernel.org>,
 "steven.price@arm.com" <steven.price@arm.com>,
 "arm@kernel.org" <arm@kernel.org>, "Dave.Martin@arm.com" <Dave.Martin@arm.com>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "suzuki.poulose@arm.com" <suzuki.poulose@arm.com>,
 "npiggin@gmail.com" <npiggin@gmail.com>,
 Zhangshaokun <zhangshaokun@hisilicon.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
 Xiexiangyou <xiexiangyou@huawei.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "aneesh.kumar@linux.ibm.com" <aneesh.kumar@linux.ibm.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Steve,

On Wed, 25 Mar 2020 2:45, Steve wrote:
> On Tue, 24 Mar 2020 21:45:32 +0800
> Zhenyu Ye <yezhenyu2@huawei.com> wrote:
> 
> > --- a/include/trace/events/mmflags.h
> > +++ b/include/trace/events/mmflags.h
> > @@ -130,6 +130,16 @@ IF_HAVE_PG_IDLE(PG_idle,		"idle"		)
> >  #define IF_HAVE_VM_SOFTDIRTY(flag,name)
> >  #endif
> >
> > +#ifdef CONFIG_64BIT
> > +#define IF_HAVE_VM_LEVEL_PUD(flag,name)	{flag, name}
> > +#define IF_HAVE_VM_LEVEL_PMD(flag,name)	{flag, name}
> > +#define IF_HAVE_VM_LEVEL_PTE(flag,name)	{flag, name}
> > +#else
> > +#define IF_HAVE_VM_LEVEL_PUD(flag,name)
> > +#define IF_HAVE_VM_LEVEL_PMD(flag,name)
> > +#define IF_HAVE_VM_LEVEL_PTE(flag,name)
> > +#endif
> > +
> >  #define __def_vmaflag_names						\
> >  	{VM_READ,			"read"		},		\
> >  	{VM_WRITE,			"write"		},		\
> > @@ -161,7 +171,10 @@ IF_HAVE_VM_SOFTDIRTY(VM_SOFTDIRTY,
> 	"softdirty"	)		\
> >  	{VM_MIXEDMAP,			"mixedmap"	},		\
> >  	{VM_HUGEPAGE,			"hugepage"	},		\
> >  	{VM_NOHUGEPAGE,			"nohugepage"	},		\
> > -	{VM_MERGEABLE,			"mergeable"	}		\
> > +	{VM_MERGEABLE,			"mergeable"	},		\
> > +IF_HAVE_VM_LEVEL_PUD(VM_LEVEL_PUD,	"pud-level"	),		\
> > +IF_HAVE_VM_LEVEL_PMD(VM_LEVEL_PMD,	"pmd-level"	),		\
> > +IF_HAVE_VM_LEVEL_PTE(VM_LEVEL_PTE,	"pte-level"	)		\
> >
> 
> Have you tested this on 32bit? It looks like you'll get empty commas there.
> Perhaps the defines need to be:
> 
> #ifdef CONFIG_64BIT
> #define IF_HAVE_VM_LEVEL_PUD(flag,name)	{flag, name},
> #define IF_HAVE_VM_LEVEL_PMD(flag,name)	{flag, name},
> #define IF_HAVE_VM_LEVEL_PTE(flag,name)	{flag, name}
> #else
> #define IF_HAVE_VM_LEVEL_PUD(flag,name)
> #define IF_HAVE_VM_LEVEL_PMD(flag,name)
> #define IF_HAVE_VM_LEVEL_PTE(flag,name)
> #endif
> 
> And leave out the commas in the list.
> 
> -- Steve

Thanks for your review. I will fix this in next version, if I could still use vm_flags
at that time :).

Zhenyu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
