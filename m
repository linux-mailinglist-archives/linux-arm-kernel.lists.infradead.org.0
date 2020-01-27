Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6A614AC5A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 00:01:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0cLAVQD5zq+jn4hxmP9bYflDySgNrDQ3t2Kf4cRaKu0=; b=s2SrPNTd1Q+LWO
	Gus1KBt3/bBz9Ag/eOt0vzN09eeQGGj5YHhsVb43VhC1W+zFAiNPoRzHp1HTqIdKXV4IXkQ8Nb6wf
	vrkxH6D3NycgN5BXuj7He1nHXx5qHk1mLEdp1+4xk02hyyYn8QP9nDMUqXv6J5SmHm9eu8QZQv+P+
	dqYFAmdekfqM4f6GfMoON72gV4Jd/AQ1LhUg62GyIqToxlnjGnDdrADUefH/qSUHX8oX0yX57+cik
	5w/gG7ue0GAQjJo467ZW4N0QWoiLnhjWGpKwOf4glxC3kXzdNeR1B7VatzNA7e2BaJGfzXE6DPTBG
	jop47DtZC7SfVU9aiPIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwDNP-00055b-Cz; Mon, 27 Jan 2020 23:01:03 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwDNG-00055B-CK
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 23:00:55 +0000
Received: by mail-pf1-x442.google.com with SMTP id q10so5612757pfs.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Jan 2020 15:00:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=3XYXDRS6rff+xqvMUjIWyfeeh9Hwr5l2ndqqBulKhHA=;
 b=NWL3azGAUBaIdZeps7OrM5jRi3oCULuCnUOPVs5y43YM6IFXok7A3ZOxymsDR1R6jk
 bzqMZEzOFXlxPyEox8TIO+nm9E+FvDLZQvaYd0HE0Kkbs8ZO8XyJmNw/Bnh0tCKAWWEu
 WvhQgtXvbyZ+VJyZjXkoTl0z8MR2h2ylqi77M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=3XYXDRS6rff+xqvMUjIWyfeeh9Hwr5l2ndqqBulKhHA=;
 b=sMkwRoFhTxsxedA4Jro39xOGqRNoUwgzMB64r/Xm+rU3JnZv1KSTwZ3Fhie9L1bOHJ
 jGvNqbIPmusT7yNl447lV5jNIBonqNS3+s3vtxQjxYnKFp4/akI2fOEBaiqboss1AVm/
 R5LueE2py939CK6dZl9HpIS/nhl6k8Uio6SDRiiNhr6/UfOpPavsc9C7gI/9GJZIHiqP
 IWdO+n7Rh8Ap9XDhE9bc5+ME8WK0ZaX3A32C12DRlEHNiTZZdf667Ao8mPXi4SphZl51
 XmcM0OnWy9pMrG+nox+Fmi7TS9WBzZAE8yOrnkfuCBROH6PKwAs1fLqWEC4zwD0Hz4vU
 vRPg==
X-Gm-Message-State: APjAAAUSrzNQ6XnErHvqld0zJ36G5IX+tMTWz9M/EglymswWKtr/mzLg
 NaWs0gRQ7ud+39lELXz/xh9YX4CpwSQ=
X-Google-Smtp-Source: APXvYqxaih8meIw7677nvR1MdtKeSFhrPQ0b72OAkH6UAdCl6kHH/yGIGyBzuKNtU/AsYJeoy2pfWQ==
X-Received: by 2002:aa7:8299:: with SMTP id s25mr871178pfm.261.1580166053102; 
 Mon, 27 Jan 2020 15:00:53 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id r66sm17881241pfc.74.2020.01.27.15.00.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 15:00:51 -0800 (PST)
Date: Mon, 27 Jan 2020 15:00:50 -0800
From: Kees Cook <keescook@chromium.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 11/17] stackleak: allow C to call stackleak_erase()
Message-ID: <202001271500.7BAC2447@keescook>
References: <20200108185634.1163-1-mark.rutland@arm.com>
 <20200108185634.1163-12-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200108185634.1163-12-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_150054_444184_BA3F705E 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: catalin.marinas@arm.com, robin.murphy@arm.com, broonie@kernel.org,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, maz@kernel.org,
 labbott@redhat.com, will@kernel.org, linux-arm-kernel@lists.infradead.org,
 alex.popov@linux.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 08, 2020 at 06:56:28PM +0000, Mark Rutland wrote:
> Currently, stackleak_erase() has no prototype in a header file, and has
> to be called directly from low-level architecture entry assembly code.
> This necessitates ifdeffery and complicates the entry assembly.
> 
> To ameliorate matters, let's provide a prototype so that architecture
> can call stackleak_erase() from slightly higher level C code used as
> part of the entry flow. This makes things easier to read and maintain.
> 
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>

Acked-by: Kees Cook <keescook@chromium.org>

-Kees

> Cc: Alexander Popov <alex.popov@linux.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Kees Cook <keescook@chromium.org>
> Cc: Laura Abbott <labbott@redhat.com>
> Cc: Will Deacon <will@kernel.org>
> ---
>  include/linux/stackleak.h | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/include/linux/stackleak.h b/include/linux/stackleak.h
> index 3d5c3271a9a8..2b09d3759c76 100644
> --- a/include/linux/stackleak.h
> +++ b/include/linux/stackleak.h
> @@ -15,6 +15,8 @@
>  #ifdef CONFIG_GCC_PLUGIN_STACKLEAK
>  #include <asm/stacktrace.h>
>  
> +asmlinkage void notrace stackleak_erase(void);
> +
>  static inline void stackleak_task_init(struct task_struct *t)
>  {
>  	t->lowest_stack = (unsigned long)end_of_stack(t) + sizeof(unsigned long);
> @@ -30,6 +32,7 @@ int stack_erasing_sysctl(struct ctl_table *table, int write,
>  
>  #else /* !CONFIG_GCC_PLUGIN_STACKLEAK */
>  static inline void stackleak_task_init(struct task_struct *t) { }
> +static inline void stackleak_erase(void) { }
>  #endif
>  
>  #endif
> -- 
> 2.11.0
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
