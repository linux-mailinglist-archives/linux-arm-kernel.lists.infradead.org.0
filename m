Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32009183DAF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 01:00:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uEgGGBcdYxCaIxXsMr2s18Y+tFDuziZmJ08TgIP3sKk=; b=sXvKJm10ymldww
	MrvQ+dykbb1HUXWdIAHWqUaSlWTZUrgkBNkBhV40sAVG/3OsIXD3xDmvgBen4H1+Smy8PYpgfX8ZR
	ENhn19j+RHnDtzjIN18wi3yPVa+tOJ0/3ICm1JT8qoZyKo0Ryfug6/aW4e2QoTe+y9fCnmaeyrcca
	Ai9ywi2BSso78+AN5ScYcav4hQs9PV72xnrSLvivQvNpGE2/dcXDXyLwhBRcIuoY1MKEv0WyyzhNN
	U8Sc/X34KkFyvEfRpfhVnA2Uzj00TeGmPFfQCglbJM7C7bdGtRut7XEbYSWXeCqZ+7cMwo5KIVPC0
	43i8eS1nbOOoJsYh/+8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCXkm-0000rc-32; Fri, 13 Mar 2020 00:00:40 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCXkd-0000dl-Vm
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 00:00:33 +0000
Received: by mail-pl1-x644.google.com with SMTP id w12so3317354pll.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 17:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=68Cq5h+6GaqQ99oSPAy6IaN4rpXx7c2iWTnSQGSX7Aw=;
 b=dEoqxqf1i30Hqx1/xFGfas8I7FnPfE7HxFpLMkCILtUDLqZhex57zJ/JEu7kOHQRdZ
 EKav1f8IYK2fxkrBBXA3uAc+nNPcN+1Guio6L0do+O3oV+j8OelQ1sonxdnzc+XJFIZ8
 kxkLdSbC+Z3uNOjUyoUZovQpWcGR5gjC3hXh8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=68Cq5h+6GaqQ99oSPAy6IaN4rpXx7c2iWTnSQGSX7Aw=;
 b=I2djGOfjCCARsIzegPVkKM0kMA7PrisimHsrJPtuY2AXu0ykZbLKXVk8GbXtH1YQ8u
 ZVXuRwDazpKDmdswU1LBGUMcxd4h9+M4IVLQQoPXdoTqB303DlMNzSZenXZGIyV1cNSE
 Qau+q5ib0YZacQew6xmACbnfbW1BQHQpw/vikp10fjxZlrDPUohjX8CHHZ7LjPK6PJfN
 UXYmiky0/NOnv3EE+/dDCyjN2wOLOL6knqciU70T13PnI1u6B85fyFKCZb2kC+Juk72g
 zzxmBwICFcLHbcehfHw9AyWK35y+0N7ttLQc5iyd8vD56hrXLUHKw2uNYy15yW5OgQnI
 RAsA==
X-Gm-Message-State: ANhLgQ2y1Jho3exRLRRxo2vGSO9BZM1Db29AjPQxRRqG4a2cuEyXxQ3Z
 qFy4DT6Ft7zEUl4/Iq66QN9AcA==
X-Google-Smtp-Source: ADFU+vvUroD1W1qqX0EjqEWCImiHJfbhkJXYYbkKwy3WRva09w1jh4DoGHfxFTEJwE4ce0YverNKyg==
X-Received: by 2002:a17:902:868d:: with SMTP id
 g13mr10761455plo.36.1584057631106; 
 Thu, 12 Mar 2020 17:00:31 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 72sm44462738pgd.86.2020.03.12.17.00.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 17:00:30 -0700 (PDT)
Date: Thu, 12 Mar 2020 17:00:29 -0700
From: Kees Cook <keescook@chromium.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v9 12/13] mm: smaps: Report arm64 guarded pages in smaps
Message-ID: <202003121700.C10E9E5@keescook>
References: <20200311192608.40095-1-broonie@kernel.org>
 <20200311192608.40095-13-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311192608.40095-13-broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_170032_023794_3356DE76 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Andrew Jones <drjones@redhat.com>,
 Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Daniel Kiss <daniel.kiss@arm.com>, linux-arch@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Eugene Syromiatnikov <esyr@redhat.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, "H . J . Lu " <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 07:26:07PM +0000, Mark Brown wrote:
> From: Daniel Kiss <daniel.kiss@arm.com>
> 
> The arm64 Branch Target Identification support is activated by marking
> executable pages as guarded pages.  Report pages mapped this way in
> smaps to aid diagnostics.
> 
> Signed-off-by: Daniel Kiss <daniel.kiss@arm.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  Documentation/filesystems/proc.txt | 1 +
>  fs/proc/task_mmu.c                 | 3 +++
>  2 files changed, 4 insertions(+)
> 
> diff --git a/Documentation/filesystems/proc.txt b/Documentation/filesystems/proc.txt
> index 99ca040e3f90..ed5465d0f435 100644
> --- a/Documentation/filesystems/proc.txt
> +++ b/Documentation/filesystems/proc.txt
> @@ -519,6 +519,7 @@ manner. The codes are the following:
>      hg  - huge page advise flag
>      nh  - no-huge page advise flag
>      mg  - mergable advise flag
> +    bt  - arm64 BTI guarded page
>  
>  Note that there is no guarantee that every flag and associated mnemonic will
>  be present in all further kernel releases. Things get changed, the flags may
> diff --git a/fs/proc/task_mmu.c b/fs/proc/task_mmu.c
> index 3ba9ae83bff5..1e3409c484d1 100644
> --- a/fs/proc/task_mmu.c
> +++ b/fs/proc/task_mmu.c
> @@ -668,6 +668,9 @@ static void show_smap_vma_flags(struct seq_file *m, struct vm_area_struct *vma)
>  		[ilog2(VM_ARCH_1)]	= "ar",
>  		[ilog2(VM_WIPEONFORK)]	= "wf",
>  		[ilog2(VM_DONTDUMP)]	= "dd",
> +#ifdef CONFIG_ARM64_BTI
> +		[ilog2(VM_ARM64_BTI)]	= "bt",
> +#endif
>  #ifdef CONFIG_MEM_SOFT_DIRTY
>  		[ilog2(VM_SOFTDIRTY)]	= "sd",
>  #endif
> -- 
> 2.20.1
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
