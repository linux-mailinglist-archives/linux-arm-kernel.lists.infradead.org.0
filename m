Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 612FF134979
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 18:39:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bPZ8vZ++Y48GHHRsMfD+nK6o/FItgEzGSpj3hgxprIo=; b=YeBAuty2RkVfFM
	O9neZE9gCekkYoqnLCrlK1VNoUaEBl28X2kw79FETJ33P4xuZxf0wbW2Rq9i3itMplERmxlCGzLit
	9/DHsPTSh1U9NmxljC2+IfgbTuBJS+pHU4lEgwQlY0WS+QbS00kmMFVvwo56kUAsatQKAylekFDE9
	DOG1OgRpZPcMy6omTz+BEUh1puXzqXueWuC8/skH/DBka4S1WMqUZR/vhPqnkYfk5AvzDE4msY/CA
	3KfxvjSJ/ChpdZPafu8cyAmjgzA0KvDAkNF/wfrJSzwl3izS4RULywhyxQI8PPo5EV3hCPEg2PoGV
	Vbs2oZn/Xk2/EKIOKNlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipFIU-0000bA-BY; Wed, 08 Jan 2020 17:39:10 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipFIL-0000ao-2W
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 17:39:02 +0000
Received: by mail-wm1-x341.google.com with SMTP id b19so3400146wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 09:39:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bBxFvxCoAh8l0Z98FBrlyytypYEDv8SPnKwcWHDa8Es=;
 b=yjNl2Wu8dKhMmGTNlqqPsCzv6inqDqWP5D7Cxh4rpnIJcGW19Ec6OrsEX7LLylyf1+
 R6xu/p2+5KhOll981LnHYSKlQTZI/cqBjjamJ4qPGaL0wLt8FGtpPCoV6q7ZkCxnX1G8
 fINHdMPfsvDy+bg48F8E5QlMriwJstBHdjoNKOi1HKoePOmHmhx75WJ4m/hfC8EU2EYG
 mlMSPn5848nj4AhDlSpCtNXIITdspmXHBRMrf4ibIqnsHmK24+9ZBjHvIAu33kABR38M
 J9ifr0ytZNkV19ZW0Y20tytwrFqXc4MapnPzd7kqbh0PXR2RbMVs+ZaGEELzJMeR2S9R
 7hSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bBxFvxCoAh8l0Z98FBrlyytypYEDv8SPnKwcWHDa8Es=;
 b=Za8zLHkS+kqifmsZVooj41L37U0PuISRE/kTH5UvNHY5IaQ+2o8/uRIM454ronVeYv
 jxrRo6+WsU2RIJMQZnWAg1HemLAKgvrHCyo05ZBXYwJn8uBZqp2Ii7Cozhf+ihBSLoH6
 KPHGkBJrjqqUCA9aNgKI+NNKjZe+z6DqOaCpyWj4ZVCr+TVv2zFrCv5SOwz0D0EVBbu5
 AnAAvpBYZZuoBM/9C9A5nvuRu9NR5FsDOWsXArR4JhL9ja3sr3vVkp0Dvqf5wbp5DU3T
 tL/qy4gwbthRj7MvtT3AfZLQM51St3ihhYUPxDnj6hfDBxL+PQEJ7yJdCgsDokX2ze+m
 bTYA==
X-Gm-Message-State: APjAAAX4L3axdl8huRNkxSutSyN2ehkYznT3qr6Dnc790XszgIs04OMr
 QgAP8k2PvKygIq7afJtTw4F08RHqnNSJ26uTPdDKHA==
X-Google-Smtp-Source: APXvYqyr6Pa9BfRWdebN7rQCUlGkh+8tXT+34IXtbKzvxQh+2PCAUXpMdq97CGTVhqY1AzC8tQPpTZCtoHP9VGAbLAU=
X-Received: by 2002:a1c:3dc3:: with SMTP id k186mr5059016wma.95.1578505139613; 
 Wed, 08 Jan 2020 09:38:59 -0800 (PST)
MIME-Version: 1.0
References: <20200107183540.54794-1-broonie@kernel.org>
 <20200107183540.54794-4-broonie@kernel.org>
In-Reply-To: <20200107183540.54794-4-broonie@kernel.org>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 8 Jan 2020 18:38:48 +0100
Message-ID: <CAKv+Gu9265OuGrkdH=Mp_Ef+6h5Y8mdvATd-TrTXN_wUawsUBA@mail.gmail.com>
Subject: Re: [PATCH v8 3/3] arm64: Use v8.5-RNG entropy for KASLR seed
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_093901_121826_4198A8E4 
X-CRM114-Status: GOOD (  20.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 7 Jan 2020 at 19:38, Mark Brown <broonie@kernel.org> wrote:
>
> When seeding KALSR on a system where we have architecture level random
> number generation make use of that entropy, mixing it in with the seed
> passed by the bootloader. Since this is run very early in init before
> feature detection is complete we open code rather than use archrandom.h.
>
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  arch/arm64/kernel/kaslr.c | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/kernel/kaslr.c b/arch/arm64/kernel/kaslr.c
> index 2a11a962e571..fc38c4c25eb6 100644
> --- a/arch/arm64/kernel/kaslr.c
> +++ b/arch/arm64/kernel/kaslr.c
> @@ -81,7 +81,8 @@ static __init const u8 *kaslr_get_cmdline(void *fdt)
>  u64 __init kaslr_early_init(u64 dt_phys)
>  {
>         void *fdt;
> -       u64 seed, offset, mask, module_range;
> +       u64 seed, offset, mask, module_range, ftr;
> +       unsigned long raw;
>         const u8 *cmdline, *str;
>         int size;
>
> @@ -120,6 +121,18 @@ u64 __init kaslr_early_init(u64 dt_phys)
>                 return 0;
>         }
>
> +       /*
> +        * Mix in any entropy obtainable architecturally, open coded
> +        * since this runs extremely early.
> +        */
> +       if (IS_ENABLED(CONFIG_ARCH_RANDOM)) {
> +               ftr = read_sysreg_s(SYS_ID_AA64ISAR0_EL1);
> +               if ((ftr >> ID_AA64ISAR0_RNDR_SHIFT) & 0xf) {
> +                       if (__arm64_rndr(&raw))
> +                               seed += raw;

Using addition rather than xor to combine seeds is slightly
unidiomatic, so if you are doing this for a specific reason, it would
be good to mention it.

On a system that implements these instructions, the existing seed is
likely to come from the same source, but the ZF flag should catch any
cases where the output is stale (which unfortunately is a thing that
the spec does not ban). So using add instead of xor to mitigate
against correlated seeds seems both unnecessary and insufficient at
the same time, if that was the intention.


> +               }
> +       }
> +
>         if (!seed) {
>                 kaslr_status = KASLR_DISABLED_NO_SEED;
>                 return 0;
> --
> 2.20.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
