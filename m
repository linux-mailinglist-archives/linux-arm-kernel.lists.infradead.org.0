Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA14F3BBA2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 20:07:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VAPffCQ7+cwdMiYZDVBb9yMSH50dJ92vd05Hl5XJvCM=; b=L1eIVr7htVRSUu
	cDPg4+/zAXTTPQFo9/QW2sVRZL2scfxTJ4rlKM0Ij08vuT8yWfCvaXU8cksRY4PC3zHbCOM6ZBlri
	hS0d1C+TVmKMLhiY0aKxMzXC+9ewr5KNvPLRHETnyouumYByJz5pbIzYzW46VIrG1ByC2IAi8mRZO
	DLzVtA5bM18uxYZ6hBoCkhB4oYHJ29LNEbokX6V7o7t3ffBXT4skaBQGEQ5jTh99O7gWvM3umaM5Z
	7qAUu9jaQDKfEVcY95tZwsZzmyQ5rc0bAE+dnGjKITwcHtKOvX4qQhTQfSP+1wjO8wMxNS9pfrYtB
	jc7hEucsbmGdDI+vnhyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haOhk-0004YZ-7Q; Mon, 10 Jun 2019 18:07:36 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haOhH-0004XY-B6
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 18:07:08 +0000
Received: by mail-pf1-x441.google.com with SMTP id d126so5762419pfd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 11:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Qk1teTE+M+IujpCJ4fnOYjeYPWGwjvW8JXrxo/yH0Jc=;
 b=bS38Kka2lRnznRWhG8/qOGDxKjllgWQ6UMeG3F2amaGnqe8pK0xiGk3vZdBB3YxIb3
 SWpAwEtE9q/WxIcVXvPngtzttAwOIVkoldUG9+Ng+5o+FvKdQZW1HjakB3VBQBFOd4GH
 8QDt5M3wpL9e9LGdgrn8sofUH/zfBbAJ6Uge8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Qk1teTE+M+IujpCJ4fnOYjeYPWGwjvW8JXrxo/yH0Jc=;
 b=iFK4A8wGtD19+B4ii7PF5/0MIsdo/AB/XEAxl3kICwVgXRSnfy2OvifofMvQ8TUhE0
 oXI5erd15wStGR79jC8nT+zafrVVg+nDCOsQnC5m09OIw+5avMLQfqIV1Fm70jocYc39
 5qIH5shTM7aqIpfJP2ZEQP2M48bmW9v9VaJH7lRoLT9z5B/g5RuvFOS0k+CByAFz/lY3
 gx8fJL/Td7BKhKswlvoQPl0Rfe7Em1D2Us/C8quEurfiBrCyMiCGmHjezGSL9YMwf4Mh
 rJHlB/g4HfzzkLq4j/U4bx/nskX2KbKFYbeBAShD98Z+eIY7z4CAKrVpAx8CdEzRZ/0B
 BTaQ==
X-Gm-Message-State: APjAAAXcslCx1KbSvT+yIFlL04xT50M93ZntH2Qdr1r0nArOzQx2Z9Pq
 Zn+3EicRB88hHtVxTOaz7m/hgw==
X-Google-Smtp-Source: APXvYqwpdKpmgyrcHoPqfm2kAKseftWNyRK4QJdbz1OaJAD6dgVCG3NHvWUoe0J25QMfVAkrE6hAGQ==
X-Received: by 2002:a65:6104:: with SMTP id z4mr16749806pgu.319.1560190025622; 
 Mon, 10 Jun 2019 11:07:05 -0700 (PDT)
Received: from www.outflux.net
 (173-164-112-133-Oregon.hfc.comcastbusiness.net. [173.164.112.133])
 by smtp.gmail.com with ESMTPSA id x7sm11154611pfm.82.2019.06.10.11.07.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 10 Jun 2019 11:07:04 -0700 (PDT)
Date: Mon, 10 Jun 2019 11:07:03 -0700
From: Kees Cook <keescook@chromium.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v16 02/16] arm64: untag user pointers in access_ok and
 __uaccess_mask_ptr
Message-ID: <201906101106.3CA50745E3@keescook>
References: <cover.1559580831.git.andreyknvl@google.com>
 <4327b260fb17c4776a1e3c844f388e4948cfb747.1559580831.git.andreyknvl@google.com>
 <20190610175326.GC25803@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610175326.GC25803@arrakis.emea.arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_110707_437113_5EB5ABFB 
X-CRM114-Status: GOOD (  22.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
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
 Andrey Konovalov <andreyknvl@google.com>,
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

On Mon, Jun 10, 2019 at 06:53:27PM +0100, Catalin Marinas wrote:
> On Mon, Jun 03, 2019 at 06:55:04PM +0200, Andrey Konovalov wrote:
> > diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
> > index e5d5f31c6d36..9164ecb5feca 100644
> > --- a/arch/arm64/include/asm/uaccess.h
> > +++ b/arch/arm64/include/asm/uaccess.h
> > @@ -94,7 +94,7 @@ static inline unsigned long __range_ok(const void __user *addr, unsigned long si
> >  	return ret;
> >  }
> >  
> > -#define access_ok(addr, size)	__range_ok(addr, size)
> > +#define access_ok(addr, size)	__range_ok(untagged_addr(addr), size)
> 
> I'm going to propose an opt-in method here (RFC for now). We can't have
> a check in untagged_addr() since this is already used throughout the
> kernel for both user and kernel addresses (khwasan) but we can add one
> in __range_ok(). The same prctl() option will be used for controlling
> the precise/imprecise mode of MTE later on. We can use a TIF_ flag here
> assuming that this will be called early on and any cloned thread will
> inherit this.
> 
> Anyway, it's easier to paste some diff than explain but Vincenzo can
> fold them into his ABI patches that should really go together with
> these. I added a couple of MTE definitions for prctl() as an example,
> not used currently:
> 
> ------------------8<---------------------------------------------
> diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
> index fcd0e691b1ea..2d4cb7e4edab 100644
> --- a/arch/arm64/include/asm/processor.h
> +++ b/arch/arm64/include/asm/processor.h
> @@ -307,6 +307,10 @@ extern void __init minsigstksz_setup(void);
>  /* PR_PAC_RESET_KEYS prctl */
>  #define PAC_RESET_KEYS(tsk, arg)	ptrauth_prctl_reset_keys(tsk, arg)
>  
> +/* PR_UNTAGGED_UADDR prctl */
> +int untagged_uaddr_set_mode(unsigned long arg);
> +#define SET_UNTAGGED_UADDR_MODE(arg)	untagged_uaddr_set_mode(arg)
> +
>  /*
>   * For CONFIG_GCC_PLUGIN_STACKLEAK
>   *
> diff --git a/arch/arm64/include/asm/thread_info.h b/arch/arm64/include/asm/thread_info.h
> index c285d1ce7186..89ce77773c49 100644
> --- a/arch/arm64/include/asm/thread_info.h
> +++ b/arch/arm64/include/asm/thread_info.h
> @@ -101,6 +101,7 @@ void arch_release_task_struct(struct task_struct *tsk);
>  #define TIF_SVE			23	/* Scalable Vector Extension in use */
>  #define TIF_SVE_VL_INHERIT	24	/* Inherit sve_vl_onexec across exec */
>  #define TIF_SSBD		25	/* Wants SSB mitigation */
> +#define TIF_UNTAGGED_UADDR	26
>  
>  #define _TIF_SIGPENDING		(1 << TIF_SIGPENDING)
>  #define _TIF_NEED_RESCHED	(1 << TIF_NEED_RESCHED)
> @@ -116,6 +117,7 @@ void arch_release_task_struct(struct task_struct *tsk);
>  #define _TIF_FSCHECK		(1 << TIF_FSCHECK)
>  #define _TIF_32BIT		(1 << TIF_32BIT)
>  #define _TIF_SVE		(1 << TIF_SVE)
> +#define _TIF_UNTAGGED_UADDR	(1 << TIF_UNTAGGED_UADDR)
>  
>  #define _TIF_WORK_MASK		(_TIF_NEED_RESCHED | _TIF_SIGPENDING | \
>  				 _TIF_NOTIFY_RESUME | _TIF_FOREIGN_FPSTATE | \
> diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
> index 9164ecb5feca..54f5bbaebbc4 100644
> --- a/arch/arm64/include/asm/uaccess.h
> +++ b/arch/arm64/include/asm/uaccess.h
> @@ -73,6 +73,9 @@ static inline unsigned long __range_ok(const void __user *addr, unsigned long si
>  {
>  	unsigned long ret, limit = current_thread_info()->addr_limit;
>  
> +	if (test_thread_flag(TIF_UNTAGGED_UADDR))
> +		addr = untagged_addr(addr);
> +
>  	__chk_user_ptr(addr);
>  	asm volatile(
>  	// A + B <= C + 1 for all A,B,C, in four easy steps:
> @@ -94,7 +97,7 @@ static inline unsigned long __range_ok(const void __user *addr, unsigned long si
>  	return ret;
>  }
>  
> -#define access_ok(addr, size)	__range_ok(untagged_addr(addr), size)
> +#define access_ok(addr, size)	__range_ok(addr, size)
>  #define user_addr_max			get_fs
>  
>  #define _ASM_EXTABLE(from, to)						\
> diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> index 3767fb21a5b8..fd191c5b92aa 100644
> --- a/arch/arm64/kernel/process.c
> +++ b/arch/arm64/kernel/process.c
> @@ -552,3 +552,18 @@ void arch_setup_new_exec(void)
>  
>  	ptrauth_thread_init_user(current);
>  }
> +
> +/*
> + * Enable the relaxed ABI allowing tagged user addresses into the kernel.
> + */
> +int untagged_uaddr_set_mode(unsigned long arg)
> +{
> +	if (is_compat_task())
> +		return -ENOTSUPP;
> +	if (arg)
> +		return -EINVAL;
> +
> +	set_thread_flag(TIF_UNTAGGED_UADDR);
> +
> +	return 0;
> +}

I think this should be paired with a flag clearing in copy_thread(),
yes? (i.e. each binary needs to opt in)

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
