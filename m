Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2310D1058C7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 18:42:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VOQfmpnN0GxZ6tb0smWXPe31BG/vBgO5hOuSqs/rIds=; b=NA4pRQrRhDXsnN
	fOXbuEfg4iyr+ajmoNXIdcoU1ALHMNjaj88hu4CzxEZEE906LZh1fVLfXDwKfaolz+tpCldC90ayB
	6AalYEbnx+Hmns+ye1oM2ZExKRBgVAAgeWnpIJjjBfH+fgDbjp7E5JuHO252H/Y3tqVYQvALsQMPr
	OkBpZIHLiN9TgEaBhl8yJpQYNtkGPbULlh3qsoMksz/P/C/qpgmLgBKiXPJA7KaQe+r/aXAysXzAO
	iefrfZtt8+a4BkBRVA1MuU1p6FpTj1taBN9qdMjnRvtkQXxzqAd/sUCPzLq/0yV1EsPtKK4Kyi4Qg
	YoFrkUmK5rJjxNdUlMvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXqTh-00035G-Og; Thu, 21 Nov 2019 17:42:49 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXqTY-00034d-Jd
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 17:42:42 +0000
Received: by mail-wm1-x344.google.com with SMTP id y5so4699318wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 09:42:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pIBYFzvNKC+WJDkNKoohHwOi2Vu9bIJaqAf1nCfm+Cc=;
 b=u2l0/88yBcyPgK47gFqpPlMEsSlbQGl3ANnFXCaL1F4V85U209GXoJQiBv4dJ5A8dg
 vn3i81qzLep+dZO5r9Wcj7eOwH4oj59NjSV4S41hWR25RbRILwih/UsjWtuzT13teCmn
 jsVMXFk3ollCrp0UGC3jCh3zj/EvN6wghziq5XSrGdko31cFm9vwS1uoYYjEjb6wiVuF
 kWEMl+2AC/bgjmqNBvH/4+zf8jeQ7jvm06lKcLhLDNQ7OJM9i6Kl5wTeBlGjAcxMttog
 tHKPDv2f4hKk/EqgvwAzmOc8Vz7z9VDg6xe6r5yGQZXybco4gXIPb86OWKFRNVWiqR5L
 UrMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pIBYFzvNKC+WJDkNKoohHwOi2Vu9bIJaqAf1nCfm+Cc=;
 b=NvaFbMv0TXNjdobsIjDnlhLkT6t8pVeBMhobeCvx+6PXQ8H6Qj4hjLdcThaZEjrUPf
 jz5O5mj8wEtPNTunj/qr2x+nBSX5daJa1pJZxInO1zE/CkHNd1lRsrCGmH/vH+LEHGNB
 vnDQ+vK9HBY8BIEbj/0UKc0fEl4RzvlKE8L/e1m8hajYR+3LrGNUqOedZ8l+cRCulVqi
 RvJukeNYB9rVAcpIgA/w9hYfmxtQfLTo5cbRa5DPJOpi9IBRblQTkMiRSY4AsrxNEq8D
 WDcGsTQN0auSjLjPXxylg7ptMW8ykfvCegOJVBYifC73KXChh7Iccq5B7NtASjUdF3Or
 +40Q==
X-Gm-Message-State: APjAAAW28wfx6Aio+AffY2R53O+LfSoNfChgjm3Tl9ywLK7tRh4esxQV
 JBgVExiIp5xHlXggQcNQ77qvKOX2/XJRVMHkXXOD9w==
X-Google-Smtp-Source: APXvYqxdwU167Fs1GrtNewGlg8ANeod3+AiosGp7InrZ8GuS/7AnksFKguWPtCiAZuSb6hpzLln086bDWrOKbqHgo9Q=
X-Received: by 2002:a7b:c392:: with SMTP id s18mr10516319wmj.61.1574358158680; 
 Thu, 21 Nov 2019 09:42:38 -0800 (PST)
MIME-Version: 1.0
References: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
 <1574166746-27197-9-git-send-email-amit.kachhap@arm.com>
In-Reply-To: <1574166746-27197-9-git-send-email-amit.kachhap@arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 21 Nov 2019 18:42:27 +0100
Message-ID: <CAKv+Gu_U37kfCOT4ko-pK6b80aQ2uCe88WfHPwwzjrZ4frndmw@mail.gmail.com>
Subject: Re: [PATCH v2 08/14] arm64: mask PAC bits of __builtin_return_address
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_094240_658634_855A3D6D 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
> This patch redefines __builtin_return_address to mask pac bits
> when Pointer Authentication is enabled. As __builtin_return_address
> is used mostly used to refer to the caller function symbol address
> so masking runtime generated pac bits will help to find the match.
>
> This change fixes the utilities like cat /proc/vmallocinfo to now
> show the correct logs.
>
> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> ---
> Change since last version:
>  * Comment modified.
>
>  arch/arm64/Kconfig                |  1 +
>  arch/arm64/include/asm/compiler.h | 17 +++++++++++++++++
>  2 files changed, 18 insertions(+)
>  create mode 100644 arch/arm64/include/asm/compiler.h
>
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 998248e..c1844de 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -117,6 +117,7 @@ config ARM64
>         select HAVE_ALIGNED_STRUCT_PAGE if SLUB
>         select HAVE_ARCH_AUDITSYSCALL
>         select HAVE_ARCH_BITREVERSE
> +       select HAVE_ARCH_COMPILER_H
>         select HAVE_ARCH_HUGE_VMAP
>         select HAVE_ARCH_JUMP_LABEL
>         select HAVE_ARCH_JUMP_LABEL_RELATIVE
> diff --git a/arch/arm64/include/asm/compiler.h b/arch/arm64/include/asm/compiler.h
> new file mode 100644
> index 0000000..5efe310
> --- /dev/null
> +++ b/arch/arm64/include/asm/compiler.h
> @@ -0,0 +1,17 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef __ASM_ARM_COMPILER_H
> +#define __ASM_ARM_COMPILER_H
> +
> +#ifndef __ASSEMBLY__
> +
> +#if defined(CONFIG_ARM64_PTR_AUTH)
> +
> +/* As TBI1 is disabled currently, so bits 63:56 also has PAC */
> +#define __builtin_return_address(val)                          \
> +       (void *)((unsigned long)__builtin_return_address(val) | \
> +       (GENMASK_ULL(63, 56) | GENMASK_ULL(54, VA_BITS)))
> +#endif
> +
> +#endif
> +
> +#endif /* __ASM_ARM_COMPILER_H */

It seems to me like we are accumulating a lot of cruft for khwasan as
well as PAC to convert address into their untagged format.

Are there are untagging helpers we can already reuse? If not, can we
introduce something that can be shared between all these use cases?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
