Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C141058C1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 18:40:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mh1mAaT2ybA8ledKQGy7nIiqpCF31WlG0M1yRvzMfd4=; b=hgwPdqwjO6gCED
	fSI7sHrnEP1MtbTWD65jHbC8F21Q1fmha/SQwYJWWSHzQMaVaXigb+KCCLcwzwaIXvJsTGjIMFNZy
	jAlLx93uWwCRh92nQ/e+5FtFy48VKo7osLa9ql0TO90avbO+ysiVOV2vl9wVEgi4gyLOOeEuV6RcK
	upVMi8FoYi/1HuhUHmXqwifnNrFraI1HthjeK9Ad/ZMVgXD9NhPg6yEsX8L5kCj+NxwtUOLz2QyYE
	KXVH7D0Ov7i+qGD1XhHjkxJ+BNuoO7gQ+dqbebQwXpr8ApfvHPidtmXzIUbb5BUWTwKkSxAcPa2NR
	P8cqz0O+syAt7mh6DpOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXqRE-0001li-2w; Thu, 21 Nov 2019 17:40:16 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXqQz-0001Sx-AJ
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 17:40:02 +0000
Received: by mail-wr1-x441.google.com with SMTP id z10so5433923wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 09:40:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6yHweLAm3X5tmzUvXr1Og43BVx4rWWT0Ca2y98OZCMw=;
 b=toto5QbrBSKspASSm1WBYS8wO5+3KkuL2tqCfyqC5MQTEbYi5X1q61Ieos6MYpBTZx
 rRDRguJQzYzuUIdkAZ0h7nLIL2D/C9fF07nF2kdxgAe/O0WaEudmMDaPQH4tNc9Xo5zM
 UOEXCtpl7WBn9N9BX6ZrWXn0w73N8VbmgOdWZ7i7ikmYD7TADgY7peWeuBbc3nTotLgs
 TdaS+TDsLm6JBSHpQB6s4A4Pef33rdXN2++DOuBSaTALmY+g2qWsnT4lAE4EXhCvpCdw
 JdJojNWBdGYm0Pq2hPFi6/5POvAH/ed8fhOxWot8rnrOUe+sa8WW2rJ+i8ySpCfrX1S8
 Y6rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6yHweLAm3X5tmzUvXr1Og43BVx4rWWT0Ca2y98OZCMw=;
 b=L5y3jaMesPIr5iR5e8FKBSA34xgDqN194WmjgN4Qk9+gIkeYcl5ElqRvrKL/ZEVcGb
 CnmgEMRhtQ7EKjVJ0QAs22f0MbIdW2mhQvQxz2QQXJVKPztd9av69Q0F+2V1xv8HK5eq
 TmRxdNP/x5EhU6waATiqY1zMAven4hyt9ItJuwz7cxoSnUN+QOisdep00D0rmqoiGChh
 4v55ksz1Oj3nrel4NBvM2BDKNDcriQeMEoStodMQA8KBDVQ0x6Dxi+UiS2rYtZrkKDEK
 rcJkyLWRj+4/LeiO2FCw+M54MBuYFkEY4aZCgACKyexkhh0n4zmGkjC25GrhM7yh8a72
 LC7Q==
X-Gm-Message-State: APjAAAW92S6i9gTIc4MkHorGRsYDUmt5dWqRG0ui8h/uCkGuWcZvQHvI
 MZK8nX84vF6ZqY3ucoX/teESctm1diSISJsLtPbr3Q==
X-Google-Smtp-Source: APXvYqzBA6yG/ofsRLBEwqqGEdomsV7pZjLe9JFM7MbPV1pl4Aa5GkBlbTmNOv2rOUS0+mvJOe1vh8XsssT/RCzwttY=
X-Received: by 2002:adf:ef45:: with SMTP id c5mr4335555wrp.200.1574357999317; 
 Thu, 21 Nov 2019 09:39:59 -0800 (PST)
MIME-Version: 1.0
References: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
 <1574166746-27197-15-git-send-email-amit.kachhap@arm.com>
In-Reply-To: <1574166746-27197-15-git-send-email-amit.kachhap@arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 21 Nov 2019 18:39:48 +0100
Message-ID: <CAKv+Gu9wYhbtWDpXPBox-Yr-RD2P9dF8O+PRub0ECh=My_OfOg@mail.gmail.com>
Subject: Re: [PATCH v2 14/14] lkdtm: arm64: test kernel pointer authentication
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_094001_385897_C002501D 
X-CRM114-Status: GOOD (  20.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 19 Nov 2019 at 13:33, Amit Daniel Kachhap <amit.kachhap@arm.com> wrote:
>
> This test is specific for arm64. When in-kernel Pointer Authentication
> config is enabled, the return address stored in the stack is signed. This
> feature helps in ROP kind of attack. If the matching signature is corrupted
> then this will fail in authentication and lead to abort.
>
> e.g.
> echo CORRUPT_PAC > /sys/kernel/debug/provoke-crash/DIRECT
>
> [   13.118166] lkdtm: Performing direct entry CORRUPT_PAC
> [   13.118298] lkdtm: Clearing PAC from the return address
> [   13.118466] Unable to handle kernel paging request at virtual address bfff8000108648ec
> [   13.118626] Mem abort info:
> [   13.118666]   ESR = 0x86000004
> [   13.118866]   EC = 0x21: IABT (current EL), IL = 32 bits
> [   13.118966]   SET = 0, FnV = 0
> [   13.119117]   EA = 0, S1PTW = 0
>
> Cc: Kees Cook <keescook@chromium.org>
> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> ---
> Change since last version:
>  * New patch
>
>  drivers/misc/lkdtm/bugs.c  | 17 +++++++++++++++++
>  drivers/misc/lkdtm/core.c  |  1 +
>  drivers/misc/lkdtm/lkdtm.h |  1 +
>  3 files changed, 19 insertions(+)
>
> diff --git a/drivers/misc/lkdtm/bugs.c b/drivers/misc/lkdtm/bugs.c
> index 7284a22..c9bb493 100644
> --- a/drivers/misc/lkdtm/bugs.c
> +++ b/drivers/misc/lkdtm/bugs.c
> @@ -337,3 +337,20 @@ void lkdtm_UNSET_SMEP(void)
>         pr_err("FAIL: this test is x86_64-only\n");
>  #endif
>  }
> +
> +void lkdtm_CORRUPT_PAC(void)
> +{
> +#if IS_ENABLED(CONFIG_ARM64_PTR_AUTH)
> +       u64 ret;
> +
> +       pr_info("Clearing PAC from the return address\n");
> +       /*
> +        * __builtin_return_address masks the PAC bits of return
> +        * address, so set the same again.
> +        */
> +       ret = (u64)__builtin_return_address(0);
> +       asm volatile("str %0, [sp, 8]" : : "r" (ret) : "memory");

This looks a bit fragile to me. You are making assumptions about the
location of the return address in the stack frame which are not
guaranteed to hold.

Couldn't you do this test simply by changing the key?

> +#else
> +       pr_err("FAIL: For arm64 pointer authentication capable systems only\n");
> +#endif
> +}
> diff --git a/drivers/misc/lkdtm/core.c b/drivers/misc/lkdtm/core.c
> index cbc4c90..b9c9927 100644
> --- a/drivers/misc/lkdtm/core.c
> +++ b/drivers/misc/lkdtm/core.c
> @@ -116,6 +116,7 @@ static const struct crashtype crashtypes[] = {
>         CRASHTYPE(STACK_GUARD_PAGE_LEADING),
>         CRASHTYPE(STACK_GUARD_PAGE_TRAILING),
>         CRASHTYPE(UNSET_SMEP),
> +       CRASHTYPE(CORRUPT_PAC),
>         CRASHTYPE(UNALIGNED_LOAD_STORE_WRITE),
>         CRASHTYPE(OVERWRITE_ALLOCATION),
>         CRASHTYPE(WRITE_AFTER_FREE),
> diff --git a/drivers/misc/lkdtm/lkdtm.h b/drivers/misc/lkdtm/lkdtm.h
> index ab446e0..bf12b68 100644
> --- a/drivers/misc/lkdtm/lkdtm.h
> +++ b/drivers/misc/lkdtm/lkdtm.h
> @@ -28,6 +28,7 @@ void lkdtm_CORRUPT_USER_DS(void);
>  void lkdtm_STACK_GUARD_PAGE_LEADING(void);
>  void lkdtm_STACK_GUARD_PAGE_TRAILING(void);
>  void lkdtm_UNSET_SMEP(void);
> +void lkdtm_CORRUPT_PAC(void);
>
>  /* lkdtm_heap.c */
>  void __init lkdtm_heap_init(void);
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
