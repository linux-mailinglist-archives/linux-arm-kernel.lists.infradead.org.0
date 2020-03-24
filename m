Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E8019195E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 19:45:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hdqp8unhxlpEiY9bquSW/hEH1lNPvQXBRvrLliw46MA=; b=nSkvXjFX/KInvi
	qnWiduBcmQnXS0XNtOSjaFToOU5omskghecoNPx8dr/Xikd/cUTL8tZjrhRhHusVIXP9x727ssLEU
	hTONH0qxO6PmcjhKVXJu/rZid0x0Q8pu9RpVexjfP5j69ut1S1UJ/TWJQTga6bJwSiFD0jkPyjYJM
	Y7qMMFrZxPoBF6VusHzFR+xBm6WvGJPbBGYx6NVJq5Um4jO8Uyew+nuzdRZOYL3Qfdxwrea1YOuN7
	AmZw1TnmHLuxjNFiw66d37jlAHi0OvXoBkGMRlCtOW3B1jOSwCaFvp2qCNcAG3xgGv07oTNnjcwgC
	UKDjvhGOxy6uo5P5Jy1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGoXj-0008PP-00; Tue, 24 Mar 2020 18:44:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGoXY-0008Ox-MQ
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 18:44:42 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B969B2074D;
 Tue, 24 Mar 2020 18:44:37 +0000 (UTC)
Date: Tue, 24 Mar 2020 14:44:36 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Zhenyu Ye <yezhenyu2@huawei.com>
Subject: Re: [RFC PATCH v4 4/6] mm: Add page table level flags to vm_flags
Message-ID: <20200324144436.043659c2@gandalf.local.home>
In-Reply-To: <20200324134534.1570-5-yezhenyu2@huawei.com>
References: <20200324134534.1570-1-yezhenyu2@huawei.com>
 <20200324134534.1570-5-yezhenyu2@huawei.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_114440_754429_5C4BC48F 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 linux-mm@kvack.org, guohanjun@huawei.com, will@kernel.org,
 linux-arch@vger.kernel.org, yuzhao@google.com, maz@kernel.org,
 steven.price@arm.com, arm@kernel.org, Dave.Martin@arm.com, arnd@arndb.de,
 suzuki.poulose@arm.com, npiggin@gmail.com, zhangshaokun@hisilicon.com,
 broonie@kernel.org, xiexiangyou@huawei.com, prime.zeng@hisilicon.com,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, aneesh.kumar@linux.ibm.com,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 24 Mar 2020 21:45:32 +0800
Zhenyu Ye <yezhenyu2@huawei.com> wrote:

> --- a/include/trace/events/mmflags.h
> +++ b/include/trace/events/mmflags.h
> @@ -130,6 +130,16 @@ IF_HAVE_PG_IDLE(PG_idle,		"idle"		)
>  #define IF_HAVE_VM_SOFTDIRTY(flag,name)
>  #endif
>  
> +#ifdef CONFIG_64BIT
> +#define IF_HAVE_VM_LEVEL_PUD(flag,name)	{flag, name}
> +#define IF_HAVE_VM_LEVEL_PMD(flag,name)	{flag, name}
> +#define IF_HAVE_VM_LEVEL_PTE(flag,name)	{flag, name}
> +#else
> +#define IF_HAVE_VM_LEVEL_PUD(flag,name)
> +#define IF_HAVE_VM_LEVEL_PMD(flag,name)
> +#define IF_HAVE_VM_LEVEL_PTE(flag,name)
> +#endif
> +
>  #define __def_vmaflag_names						\
>  	{VM_READ,			"read"		},		\
>  	{VM_WRITE,			"write"		},		\
> @@ -161,7 +171,10 @@ IF_HAVE_VM_SOFTDIRTY(VM_SOFTDIRTY,	"softdirty"	)		\
>  	{VM_MIXEDMAP,			"mixedmap"	},		\
>  	{VM_HUGEPAGE,			"hugepage"	},		\
>  	{VM_NOHUGEPAGE,			"nohugepage"	},		\
> -	{VM_MERGEABLE,			"mergeable"	}		\
> +	{VM_MERGEABLE,			"mergeable"	},		\
> +IF_HAVE_VM_LEVEL_PUD(VM_LEVEL_PUD,	"pud-level"	),		\
> +IF_HAVE_VM_LEVEL_PMD(VM_LEVEL_PMD,	"pmd-level"	),		\
> +IF_HAVE_VM_LEVEL_PTE(VM_LEVEL_PTE,	"pte-level"	)		\
>  

Have you tested this on 32bit? It looks like you'll get empty commas there.
Perhaps the defines need to be:

#ifdef CONFIG_64BIT
#define IF_HAVE_VM_LEVEL_PUD(flag,name)	{flag, name},
#define IF_HAVE_VM_LEVEL_PMD(flag,name)	{flag, name},
#define IF_HAVE_VM_LEVEL_PTE(flag,name)	{flag, name}
#else
#define IF_HAVE_VM_LEVEL_PUD(flag,name)
#define IF_HAVE_VM_LEVEL_PMD(flag,name)
#define IF_HAVE_VM_LEVEL_PTE(flag,name)
#endif

And leave out the commas in the list.

-- Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
