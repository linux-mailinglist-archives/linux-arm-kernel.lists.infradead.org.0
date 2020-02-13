Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8445615CAA2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 19:45:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IWtFJH+4ce62xSlMRLcxJGvI+DR5yPcD+s2GMJXphSg=; b=rlmqy9IFn9Covk
	RDDCsWdlIXpRhzvAKQZoWibM2HSdiCWyf9vX6Aqkx9oaeXRO5cFpkSwxo5q0zywyB7HIlGaAJd98G
	JDK+eNYCmeENamLknv7WBPa8ihVg7q/Ew3Lg+lKCEy2t194lcxqdSJSGUAePMrr/xBEi2fW7UL7JA
	+QmM1/mihUTs3vZc/vcvXA+QeqNsMnXRqOF1DgVqNLdpA7b+Fa55vml1gbshA/bSLJg8VaL9qhEhD
	NY3sdcxg/ex5WGxAiTUhiDbhBrtcQeIpXIrnsugHl+RFcWSLLSiW/ZxQLud/cp98TPOarHpt7MFj3
	fwVP6eHUl6Lq2qTeG9LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2JU9-0006uO-2q; Thu, 13 Feb 2020 18:45:13 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2JTt-0006u3-TW
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 18:44:59 +0000
Received: by mail-oi1-x242.google.com with SMTP id a22so6795149oid.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 10:44:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=VMfn8PswbJmJdlO37QEJbyEduZmdzRHRACLwl4PEk8k=;
 b=rXsK2+iVg+xAfKgvi8EJ+xRiZDZt0bawe08UY4AzUK/QxcpXAUmYzPuw5Qe7XCMnPS
 tZmzuVkVUVXxEupPwU/YXXodbsdKtthv4T+BBBq8URGrUJ1o7hAfIh0Sd9dohGvv5EIQ
 f53iQUD4rXqVzeH6ddG3CL1x4L51BMbJzNbBLADFJYxR4/0bW/ybjDX/REtyW/700YaR
 5oseD972Bfj3ZCtTInx+MQVCKJbE8Hka8ka9o7uuUqI5tAlVmhZ/zt5x5KcBppLqgUBF
 U6UrSKM3wIKl8sXU0LUGs+T/ABgd9EWNoteBxkwYi/Wo3FlcS8spkr8gU1uTDGoDHDgc
 O3jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VMfn8PswbJmJdlO37QEJbyEduZmdzRHRACLwl4PEk8k=;
 b=uCwCrYZ/xBpYlGMFHfDdJO1JV6X/u32BJKeLYrJjfWSpPFQZh/blzmoYPwvdClY6Fx
 mdADJMjHaoAPHZDU9GtQDyrALLsOR7apCvALEq+QSEsDDW+zOGpF1syez0QYs2B6a4t9
 9maWZ7I39lbd0RHxmY6+tQAEAOPOi0k/TWgO1GbVNNbiYg/HX+b/UN/BuhM1eJhoug6h
 E0jNxjy+9d9Fj6otmCmC8AdpOPHqdEGaEi3EWfp8aEwdqjPryxZZbTVFTae4udj/wMrY
 qvHM902siWMtk5ys9FG2jguiNrYdAqsklYWCNME9+/k+evBhsZHexRPwTt6z7KwjIQzd
 n61g==
X-Gm-Message-State: APjAAAXGQK/vQacfswNu9WqfPo0fOH0MBaV6DyPPCx2aS1svb/m3TbYj
 V8GpNodld05VJziyy5q5mHE=
X-Google-Smtp-Source: APXvYqynTIfheT81Tmv6YGZbDN/SxN5IZ1aShJnYqGSRbGS5am4J0OAyqhZh6lHjOP9ROpiUTekYoA==
X-Received: by 2002:a05:6808:218:: with SMTP id
 l24mr3689993oie.108.1581619496475; 
 Thu, 13 Feb 2020 10:44:56 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id q5sm951383oia.21.2020.02.13.10.44.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 13 Feb 2020 10:44:56 -0800 (PST)
Date: Thu, 13 Feb 2020 11:44:54 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH 19/19] arm64: vdso32: Enable Clang Compilation
Message-ID: <20200213184454.GA4663@ubuntu-m2-xlarge-x86>
References: <20200213161614.23246-1-vincenzo.frascino@arm.com>
 <20200213161614.23246-20-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213161614.23246-20-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_104457_952337_E5B3CFB7 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, ndesaulniers@google.com, 0x7f454c46@gmail.com,
 avagin@openvz.org, arnd@arndb.de, sboyd@kernel.org, catalin.marinas@arm.com,
 x86@kernel.org, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, clang-built-linux@googlegroups.com,
 paul.burton@mips.com, mingo@redhat.com, bp@alien8.de, luto@kernel.org,
 linux@armlinux.org.uk, tglx@linutronix.de, salyzyn@android.com, pcc@google.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 04:16:14PM +0000, Vincenzo Frascino wrote:
> Enable Clang Compilation for the vdso32 library.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---
>  arch/arm64/kernel/vdso32/Makefile | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
> index 04df57b43cb1..209639101044 100644
> --- a/arch/arm64/kernel/vdso32/Makefile
> +++ b/arch/arm64/kernel/vdso32/Makefile
> @@ -11,8 +11,10 @@ include $(srctree)/lib/vdso/Makefile
>  # Same as cc-*option, but using CC_COMPAT instead of CC
>  ifeq ($(CONFIG_CC_IS_CLANG), y)
>  CC_COMPAT ?= $(CC)
> +LD_COMPAT ?= $(CROSS_COMPILE_COMPAT)gcc

Well this is unfortunate :/

It looks like adding the --target flag to VDSO_LDFLAGS allows
clang to link the vDSO just fine although it does warn that -nostdinc
is unused:

clang-11: warning: argument unused during compilation: '-nostdinc'
[-Wunused-command-line-argument]

It would be nice if the logic of commit fe00e50b2db8 ("ARM: 8858/1:
vdso: use $(LD) instead of $(CC) to link VDSO") could be adopted here
but I get that this Makefile is its own beast :) at the very least, I
think that the --target flag should be added to VDSO_LDFLAGS so that gcc
is not a requirement for this but I am curious if you tried that already
and noticed any issues with it.

Cheers,
Nathan

>  else
>  CC_COMPAT ?= $(CROSS_COMPILE_COMPAT)gcc
> +LD_COMPAT ?= $(CC_COMPAT)
>  endif
>  
>  cc32-option = $(call try-run,\
> @@ -171,7 +173,7 @@ quiet_cmd_vdsold_and_vdso_check = LD32    $@
>        cmd_vdsold_and_vdso_check = $(cmd_vdsold); $(cmd_vdso_check)
>  
>  quiet_cmd_vdsold = LD32    $@
> -      cmd_vdsold = $(CC_COMPAT) -Wp,-MD,$(depfile) $(VDSO_LDFLAGS) \
> +      cmd_vdsold = $(LD_COMPAT) -Wp,-MD,$(depfile) $(VDSO_LDFLAGS) \
>                     -Wl,-T $(filter %.lds,$^) $(filter %.o,$^) -o $@
>  quiet_cmd_vdsocc = CC32    $@
>        cmd_vdsocc = $(CC_COMPAT) -Wp,-MD,$(depfile) $(VDSO_CFLAGS) -c -o $@ $<
> -- 
> 2.25.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
