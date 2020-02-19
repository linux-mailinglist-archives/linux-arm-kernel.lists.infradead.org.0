Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACAC7163E00
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 08:41:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4KufoJ5tGeFTBMZ7EFbhs434CTI3TGg6u+WudZvIVcg=; b=bTexDfvy8MtXC1
	ba19ROoytB7uA+w/xrlwFsWF6Yh8rzZtnOwubhZ9t7qdGBTSQ8KFyVHyC0UO8P5lZ3IVPyQlIhz6Y
	7o+scxt2OQTqjceXEFGwt/QxkQJiOuHs+SM5kf8Sq2FBNv2dQE38JDSvlw7kFk5DJCsal3mHun102
	nP4H+kH3JAcY62P6wPCaJVhwRG0BBdxYmLOd0rfMeJManYAfyDCwMfYW8dARfkqTch1LF+HCxlq7T
	XFaJBAEf1jVps8RmdGmU5t3gSYK0rG7i+LTVUlTnvgEf/3QNeE4lYzvt4XDWxQH5c9L2yIvj+eFG5
	lAO8OzGqTsaeGJaWvJUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Jyp-00071B-Kj; Wed, 19 Feb 2020 07:41:11 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Jyg-00070d-Ne
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 07:41:04 +0000
Received: by mail-wr1-x441.google.com with SMTP id m16so26902663wrx.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 23:41:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+GRLqrD8FueaUCHAoE5W7lTJg+Amhm25j14mDfWmjkA=;
 b=kTNAFKeNi58a6U94aPNyk90UBSKG8JCWjWNuMiUHZEtRSl6WJsZaJcDG0H0NH/MESj
 CjnehUs+Mw5wnTTjyRcxVTT8DDO3TYKY0i49PAel3wB79hMGCm8kP6wc5AXe7RhLv4MG
 +BJtU+G3G+qHz0vhZxG2POr56LNKq9ITudB6s0ZRvs8mXQa3vl+MuBIH+nb5viJeO9EE
 WuqgXiODR0hhXK6X737HDKvNJ93MQgCsXeD80gmkLYPXyPNM4g+yhccOAZXmHVgNNDt/
 S9dtWANw0xDedARfY27ZmjbXLcmfUtUmkx35qyMjHNcc57H5Bs3W8aBX9QwmS7EiVRsL
 6sIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+GRLqrD8FueaUCHAoE5W7lTJg+Amhm25j14mDfWmjkA=;
 b=gPZI7ol7oBX9P1bqS9iazjQ51eoV/1xsR11+bYcTmFDfApTQ2okWCX+CoESfeMDYyn
 rPXsoXqORz/blOjw++tX0DyAX+HWxXUmi7Ls4E0JCcagNKSCCNt3n+s2Dj8fu7m14qZo
 8REO8Fiyl83ysy/gqOTTaux4Kpq4sV/2HeK3fC0kZ/2dUTLLz4zhPJD/5GocfyNQ3Cgb
 LIg/4Kx/BIptAj7s2duTb8M91kYYMSf2ZMoqgrCeV9Q1TWS+jo3O7zmJzUwdZGl6DJiK
 dUh4inRmXzNVsRCp5QM6w1QFhHKFDlA3ppDKUuGst4P0FeU78EHxZgVQ+2cNM5qYEikU
 uBMg==
X-Gm-Message-State: APjAAAXvleClWT2Ct1OyRbvlkMQNqI8JQlEmFI/sRN6WmVswq/R6ABoO
 JdN++whX0Q9wINJ4e1vq5mTWTpAkxEY3Bu0TM/M3QQ==
X-Google-Smtp-Source: APXvYqwCy2jqrGLYe7fHN/XM0e6FNRRUyJj1Go/h3HngUYGMwgnjHkeOth6L5p2FLRI+tlLg9m6uzOIAHQ0dkTFKCQ4=
X-Received: by 2002:a5d:5188:: with SMTP id k8mr34117209wrv.151.1582098060684; 
 Tue, 18 Feb 2020 23:41:00 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200219000817.195049-1-samitolvanen@google.com>
 <20200219000817.195049-13-samitolvanen@google.com>
In-Reply-To: <20200219000817.195049-13-samitolvanen@google.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 19 Feb 2020 08:40:47 +0100
Message-ID: <CAKv+Gu9HpKBO-r+Ker47sPxvHBWLa6NAHe4P71x=K4Wiy2ybwQ@mail.gmail.com>
Subject: Re: [PATCH v8 12/12] efi/libstub: disable SCS
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_234102_800737_55DC10E7 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Laura Abbott <labbott@redhat.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 19 Feb 2020 at 01:09, Sami Tolvanen <samitolvanen@google.com> wrote:
>
> Disable SCS for the EFI stub and allow x18 to be used.
>
> Suggested-by: James Morse <james.morse@arm.com>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  drivers/firmware/efi/libstub/Makefile | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> index 98a81576213d..dff9fa5a3f1c 100644
> --- a/drivers/firmware/efi/libstub/Makefile
> +++ b/drivers/firmware/efi/libstub/Makefile
> @@ -30,6 +30,9 @@ KBUILD_CFLAGS                 := $(cflags-y) -DDISABLE_BRANCH_PROFILING \
>                                    $(call cc-option,-fno-stack-protector) \
>                                    -D__DISABLE_EXPORTS
>
> +#  remove SCS flags from all objects in this directory
> +KBUILD_CFLAGS := $(filter-out -ffixed-x18 $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
> +

I don't see why you'd need to remove -ffixed-x18 again here. Not using
x18 anywhere in the kernel is a much more maintainable approach.

In fact, now that I think of it, the EFI AArch64 platform binding
forbids the use of x18, so it would be better to add the -ffixed-x18
unconditionally for arm64 (even though the reason it forbids it is to
ensure compatibility with an OS using it as a platform register, and
so nothing is actually broken atm).

>  GCOV_PROFILE                   := n
>  KASAN_SANITIZE                 := n
>  UBSAN_SANITIZE                 := n
> --
> 2.25.0.265.gbab2e86ba0-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
