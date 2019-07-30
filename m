Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 036237A213
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 09:19:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DP/rf3x1EpudZBPLbCtUzL4HWAIVdubivewv1aleTbQ=; b=MgYED7RsgJzGgL
	M5LyOwcxchd2+qB/kAUJKpmH0pyRYIjUkPJAWTbMhCf2iWJhXVLqRPrRJBe34ZeE/LFsIz3yL4bjn
	KmOv2q2ykRQfNcxAVfyac/pKix2KL1jTVNmFf+jCwXHZOunz5ChhCdgboG/00mZ3EYoZ4y5sHqWDn
	H9KtlFU5hccyx5t1Zz78oNDiUuMgaX0DoIQE6trgEJy6XW/oN/dx78Rq/mmK+9GHFegAQ74gciOn+
	SXQxInLtI61TCSaS1+UkbksQ28h3uhY9kaTEkZ6HctTB6ln07KpGOtYmPqSZ7/SHG+Qz1qSFPHjha
	g8FcDvCG6empn56G2G1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsMQI-0001tF-Gs; Tue, 30 Jul 2019 07:19:50 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsMPd-0001su-FO
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 07:19:11 +0000
Received: by mail-wm1-x344.google.com with SMTP id s3so56006399wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 00:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DZt6vkvXDTCmaHGGjiNswfodyAXn9IWa9yBxuOiSg1E=;
 b=FsYufJjwqp5VVH/4FN9Vk3nxH0jNCRjcDIlpadgiX4rTPO6+sk8keBlw/LFdyAcjp5
 NDvCAVT3mzGk58TuXvRvIZ6CMU0VEq7LqOIDeve6Enk46ld+tcmETsr9j/JZJm7Jq+FV
 ygvQGhKpT6oAfQNv4FnR3hNx5i+KUYUy2CIhJIo8X06pp6L2lOLIH/BHAjVrcRzYzK3e
 Msy9r8B+PoEoGZyD/082UTR/9FckdXu3oAjDYka6KgzdV5mndvvYsSHwDaLFX9eQkU0G
 rs40dOuvUIl11Lm6ifPyuqmFU3fq5ENRCCIwACRr/t4KmINhB/oLr8P0DWgGQ1O2Mozh
 Y2/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DZt6vkvXDTCmaHGGjiNswfodyAXn9IWa9yBxuOiSg1E=;
 b=LD9bBB0Nbqr1DKapGfvl8l86ZiCJ00F7DyBw6SThhPxK86jegh+H0sc5vdEHUldC3e
 5ermfkQ5TjQUschpF1WN4TQlW4s3bHUsQyA6RxYxOhonhJtB1964xJ/x3/AMgdgl1qQh
 Gogd3orX8khdsazgp/Bje5phvZ9zxeb1LU5yAmNlCD1kXKpJF9hz4SkuxcuirMZOGvXq
 xUAXCOyEFVy4cTM+vAQpYAhyBhpUv0FiN3XrMmMD7RNMCnnYj537y1h3EKAf6ZIBb1Eg
 W4dt8sGJTJ5BtIozHRnrke6BF0Ol1sXXwVNBHeHZLU/MplMUKOO8BFNuFv1Ti/d/Jy5X
 JLNw==
X-Gm-Message-State: APjAAAVTY68QvbLOhsApyeaqjBjBzQqltQrR/7jMg28+HEmmecMOq7OQ
 FToesiYhrmcRbh684IXl4xeJn87GkevhwtuSOW8=
X-Google-Smtp-Source: APXvYqy7X+m5nMBdYWJvObDm1/TffZatcBrS6OcX+i57wYVXzbjHVSZEO5NsRhWXZuMJ+wNmsJ3vWnw8+4uEdeTAPNw=
X-Received: by 2002:a1c:9c8a:: with SMTP id
 f132mr103653071wme.29.1564471147596; 
 Tue, 30 Jul 2019 00:19:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190722071122.22434-1-zhang.lyra@gmail.com>
 <20190722071419.22535-1-zhang.lyra@gmail.com>
In-Reply-To: <20190722071419.22535-1-zhang.lyra@gmail.com>
From: Chunyan Zhang <zhang.lyra@gmail.com>
Date: Tue, 30 Jul 2019 15:18:31 +0800
Message-ID: <CAAfSe-tPVsMjmu0CoUATGRGevCpgqk999-rpfMuXqZ-V9ft7gg@mail.gmail.com>
Subject: Re: [PATCH] ARM: check stmfd instruction using right shift
To: Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_001909_543874_1B7DF79D 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zhang.lyra[at]gmail.com)
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
Cc: Lvqiang Huang <lvqiang.huang@unisoc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Gentle ping

probably this patch was missed or entered into spam?

On Mon, 22 Jul 2019 at 15:14, Chunyan Zhang <zhang.lyra@gmail.com> wrote:
>
> From: Lvqiang Huang <Lvqiang.Huang@unisoc.com>
>
> In the commit ef41b5c92498 ("ARM: make kernel oops easier to read"),
> -               .word   0xe92d0000 >> 10        @ stmfd sp!, {}
> +               .word   0xe92d0000 >> 11        @ stmfd sp!, {}
> then the shift need to change to 11.
>
> Fixes: ef41b5c92498 ("ARM: make kernel oops easier to read")
> Signed-off-by: Lvqiang Huang <Lvqiang.Huang@unisoc.com>
> Signed-off-by: Chunyan Zhang <zhang.lyra@gmail.com>
> ---
>  arch/arm/lib/backtrace.S |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/lib/backtrace.S b/arch/arm/lib/backtrace.S
> index 7d7952e..926851b 100644
> --- a/arch/arm/lib/backtrace.S
> +++ b/arch/arm/lib/backtrace.S
> @@ -70,7 +70,7 @@ for_each_frame:       tst     frame, mask             @ Check for address exceptions
>
>  1003:          ldr     r2, [sv_pc, #-4]        @ if stmfd sp!, {args} exists,
>                 ldr     r3, .Ldsi+4             @ adjust saved 'pc' back one
> -               teq     r3, r2, lsr #10         @ instruction
> +               teq     r3, r2, lsr #11         @ instruction
>                 subne   r0, sv_pc, #4           @ allow for mov
>                 subeq   r0, sv_pc, #8           @ allow for mov + stmia
>
> --
> 1.7.9.5
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
