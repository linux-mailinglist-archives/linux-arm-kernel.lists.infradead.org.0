Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBBB539AA8
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 06:01:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/t2wBZl6Dv/Jq2TdQbsWq3BVIxi8oIN+x/Ls+g1ig1M=; b=IxCRv+11cEQ7kc
	Equ+r3whawKk4GlLUUHpq86oCwLvbT0seqia+5djfNCFJdWvMPu1rLh9A3topSFUVpInwQY8tVGq2
	IQYimabHjnIGzLdo/wwE20wXlvtDqPKI876NoUWq9wHQ1XbEQGhEEReqR7I+4tYiAP4zJ1zMOHArQ
	AtyD3YBjRUsn81uQC1FEwkPK83FQbt8uyhFEq58JiYhx2MO+dCe2SrR0ptc+ybnVv1MvbGynUrbQt
	XfsODdqhI8NqwgZgxI1VZ7jgsr8pB2dQXjPFFuk48UQ3cPtEhkk6wU7J5sflvg8Bhas5yYHQjjsws
	q4obLddkNos9sLT/1l1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZSXz-0003l7-Ry; Sat, 08 Jun 2019 04:01:40 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZSVv-0003dY-Q2
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 03:59:42 +0000
Received: by mail-pf1-x443.google.com with SMTP id a186so2236639pfa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 20:59:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=rJIAAqD1NAp4Th9vkRNxbBLJIPc3y8ChkLIZvf3dmAk=;
 b=U7O6NbXBNIeRlPVLj5xwiYB9yIq5HbXkmt1o7eZLIHcCi1sfFtD4pKc4GGOrbqMYRh
 sgIk+ERejfY1WzlSSBSK2Vn9ctskkWUfC7d9RXEYuV+TF3EleJl2nI9tZYJCJJbjZfXj
 ev4abqGBRmVAB5Xa6TnqWXyvladDJfFjes7a4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=rJIAAqD1NAp4Th9vkRNxbBLJIPc3y8ChkLIZvf3dmAk=;
 b=bN7ch9majV7NtzD+R1zbhIcGdb8CPppZfjMOMxCQUV86zmvKHxoCqIubQbVbAw13Mu
 H2WHrnyE7jz3mGCI2TTOgUYZZjy+xk5UiXCS87pU/lIHtqBq/Cb3Ycc+qfGWAWN2oDaV
 +AnBS/jx50BzwNfs6TGDt9bIPhMcS/Xypf8N0v3InMT/73ydxCHa4/lZ8fdNy9091U93
 fNVxmmuRacqy7e3pWgEPQJ+Aw6uvJRE+0qQQmCh0Jr5KgCb+QHFAWLwBAvBduDrIOSpV
 xXZ5DOGi+PqeSW5U8V3tS7vf52HGgM5CwwIwp8CbEfmz/cgM2jcuvNg8t2G547x3LG7D
 Gw2w==
X-Gm-Message-State: APjAAAWgu4ZxCs2e5X3E4pPLpF/VgFly3s9giTuNCmq931WMdvz0BYCH
 v0DyL1zh6yFIziKYtrQIhGUQ3g==
X-Google-Smtp-Source: APXvYqwFvS5ZtgK4hv3bppgp+xNWkWaUdmJ6Dck4NUo25EMo4bji/jhdzX5h+4T1rhnDZmDRvB93qA==
X-Received: by 2002:a17:90a:aa85:: with SMTP id
 l5mr8851590pjq.69.1559966359909; 
 Fri, 07 Jun 2019 20:59:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id o70sm4127428pfo.33.2019.06.07.20.59.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 Jun 2019 20:59:19 -0700 (PDT)
Date: Fri, 7 Jun 2019 20:59:18 -0700
From: Kees Cook <keescook@chromium.org>
To: Andrey Konovalov <andreyknvl@google.com>
Subject: Re: [PATCH v16 06/16] mm, arm64: untag user pointers in mm/gup.c
Message-ID: <201906072059.7D80BA0@keescook>
References: <cover.1559580831.git.andreyknvl@google.com>
 <e1f6d268135f683fd70c2af27e75f694d7ffaf48.1559580831.git.andreyknvl@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e1f6d268135f683fd70c2af27e75f694d7ffaf48.1559580831.git.andreyknvl@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_205933_842833_EE222718 
X-CRM114-Status: GOOD (  19.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Khalid Aziz <khalid.aziz@oracle.com>, linux-kselftest@vger.kernel.org,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, linux-kernel@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 03, 2019 at 06:55:08PM +0200, Andrey Konovalov wrote:
> This patch is a part of a series that extends arm64 kernel ABI to allow to
> pass tagged user pointers (with the top byte set to something else other
> than 0x00) as syscall arguments.
> 
> mm/gup.c provides a kernel interface that accepts user addresses and
> manipulates user pages directly (for example get_user_pages, that is used
> by the futex syscall). Since a user can provided tagged addresses, we need
> to handle this case.
> 
> Add untagging to gup.c functions that use user addresses for vma lookups.
> 
> Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Andrey Konovalov <andreyknvl@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  mm/gup.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/mm/gup.c b/mm/gup.c
> index ddde097cf9e4..c37df3d455a2 100644
> --- a/mm/gup.c
> +++ b/mm/gup.c
> @@ -802,6 +802,8 @@ static long __get_user_pages(struct task_struct *tsk, struct mm_struct *mm,
>  	if (!nr_pages)
>  		return 0;
>  
> +	start = untagged_addr(start);
> +
>  	VM_BUG_ON(!!pages != !!(gup_flags & FOLL_GET));
>  
>  	/*
> @@ -964,6 +966,8 @@ int fixup_user_fault(struct task_struct *tsk, struct mm_struct *mm,
>  	struct vm_area_struct *vma;
>  	vm_fault_t ret, major = 0;
>  
> +	address = untagged_addr(address);
> +
>  	if (unlocked)
>  		fault_flags |= FAULT_FLAG_ALLOW_RETRY;
>  
> -- 
> 2.22.0.rc1.311.g5d7573a151-goog
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
