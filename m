Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5347E95851
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 09:28:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sKS1+fNnuz4JR9ueEXPH/4ZeucoiBdcvut+19dZ0PkQ=; b=eMXAJWgF+ynDte
	R2vKJA+0BzE8z72UxaduiPEi6JvUzZiMp1FHUkkRYz9rbHnKOnFjfz7x+tKJmbCcwM0/nB255VN+j
	O+uudRymQabzCcX6som3THseksCAsij2NL5VlI9ihegFxT8PJtc7Pf8oJcswtNnTkNa1JQ21a1Nut
	gxQ/mjlM63dRDj5HzCDWZZxCIQ4ZRtwfnhCB3DSzY0G5kLw5ljP4yFabgZK5fDNtMG7tBSYBVtDRd
	GbOjpy0zODmf+umo+fhcthMMltj3rWesAylWFLfdhtfn/GMSxVT8WWIKu/rqY4aQZR8QwFnPnD58e
	KPHDXmCLBisL63COjbiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzyZA-000653-7U; Tue, 20 Aug 2019 07:28:28 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzyYw-00064i-0I
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 07:28:15 +0000
Received: by mail-wr1-x444.google.com with SMTP id t16so11226025wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 00:28:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=STCVugaalN31QOAqpmu8JBsQHyEheYIMWoFlG13Ws1k=;
 b=axdyS4o+41ZLsyyoqW/OiBsMqhJKhwsW5ug9wfTGyKHCIqsSeMk6W6gg8dXdWq04M/
 k15aqUvkbiyo6wA8H36CQJKj+AeKJ3E6gab5VgTFyeWzIXoHP/v19ICfQpdhrX20VgAl
 vJCKGPddLJjJUvn9Fx1TdSsg6PBAznKt67bPaPnmbWTwMiYlJvBLHQr6gyZ6MKZYG5R/
 1ds31uM8RE4GwQDDStxo4p4imzGQDml2nT83Tya71BcWP1AbSzh9clcgN2/fzIhFv0Kq
 17ksKvBwhgLqqigzx/M57NB1dfqcbOFtqmgqtWHNmXFhEFVWUxfXAJTB+PSPoSaa3Q1B
 ONzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=STCVugaalN31QOAqpmu8JBsQHyEheYIMWoFlG13Ws1k=;
 b=VU9CFTRN1MWYzv7xreGxYQ0FO6uYhEX7zeHxTDu+sLGcchusMKOMjyD6dvwqm4dIqY
 tiTPwESM/9Ok2SkglPIBXrpRTNe8T28xQAb+TVu3UIdTe1UJCwlzKsjrMAkWkZaC0sio
 g+Qgjg3hCWH/iyk0h1oN6MEtTENFho1v2/JXycGmgfK4PlGawH2mperkOlZ7c6gARCRe
 VPhYQqngD6yVmNtG3TWOKfBL8J0wii0qL+mb3lJ0loV1ogJrHL0HuBHA2peevupzpw7M
 +c1ggHEAZz4968YiE5GxixBAUEnsdsVmpFE9nqa4K3XFK1lry+VKHgtuUkBbzzAY9yEI
 52pg==
X-Gm-Message-State: APjAAAVjsApM16GreJ0fpOTLmUWOI+ULW2WMU9awp3/0nR+y06X77962
 N/i875jlHy4jMgN+vOWPopE=
X-Google-Smtp-Source: APXvYqzZkyccKTB9sO8aQYAF760a8z9N5u/eZKPl0+WKU6C8cBEm4b/Vo0X+hI2wwpnyPXrkeJQ4Bw==
X-Received: by 2002:adf:f3c1:: with SMTP id g1mr32406227wrp.203.1566286091940; 
 Tue, 20 Aug 2019 00:28:11 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id i5sm17557544wrn.48.2019.08.20.00.28.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 00:28:11 -0700 (PDT)
Date: Tue, 20 Aug 2019 00:28:09 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: Enabling UBSAN breaks KCOV in clang (8.0.*) on arm64
Message-ID: <20190820072809.GA62296@archlinux-threadripper>
References: <20190819165947.GA30292@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819165947.GA30292@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_002814_074898_86418BC6 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: clang-built-linux@googlegroups.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 05:59:48PM +0100, Mark Rutland wrote:
> Hi,
> 
> I found that when I enable both KCOV and UBSAN on arm64, clang fails to
> emit any __sanitizer_cov_trace_*() calls in the resulting binary,
> rendering KCOV useless.
> 
> For example, when building v5.3-rc3's arch/arm64/kernel/setup.o:
> 
> * With defconfig + CONFIG KCOV:
> 
>   clang -Wp,-MD,arch/arm64/kernel/.setup.o.d  -nostdinc -isystem
>   /mnt/data/opt/toolchain/llvm/8.0.0/clang+llvm-8.0.0-x86_64-linux-sles11.3/lib/clang/8.0.0/include
>   -I./arch/arm64/include -I./arch/arm64/include/generated  -I./include
>   -I./arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi
>   -I./include/uapi -I./include/generated/uapi -include
>   ./include/linux/kconfig.h -include ./include/linux/compiler_types.h
>   -D__KERNEL__ -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT=3
>   -Qunused-arguments -Wall -Wundef -Werror=strict-prototypes
>   -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -fno-PIE
>   -Werror=implicit-function-declaration -Werror=implicit-int
>   -Wno-format-security -std=gnu89 --target=aarch64-linux
>   --prefix=/mnt/data/opt/toolchain/kernel-org-crosstool/gcc-8.1.0-nolibc/aarch64-linux/bin/
>   --gcc-toolchain=/mnt/data/opt/toolchain/kernel-org-crosstool/gcc-8.1.0-nolibc/aarch64-linux
>   -no-integrated-as -Werror=unknown-warning-option -mgeneral-regs-only
>   -DCONFIG_AS_LSE=1 -fno-asynchronous-unwind-tables
>   -DKASAN_SHADOW_SCALE_SHIFT=3 -fno-delete-null-pointer-checks
>   -Wno-address-of-packed-member -O2 -Wframe-larger-than=2048
>   -fstack-protector-strong -Wno-format-invalid-specifier -Wno-gnu
>   -Wno-tautological-compare -mno-global-merge -Wno-unused-const-variable
>   -fno-omit-frame-pointer -fno-optimize-sibling-calls -g
>   -Wdeclaration-after-statement -Wvla -Wno-pointer-sign
>   -fno-strict-overflow -fno-merge-all-constants -fno-stack-check
>   -Werror=date-time -Werror=incompatible-pointer-types
>   -Wno-initializer-overrides -Wno-format -Wno-sign-compare
>   -Wno-format-zero-length  -fsanitize-coverage=trace-pc
>   -DKBUILD_BASENAME='"setup"' -DKBUILD_MODNAME='"setup"' -c -o
>   arch/arm64/kernel/setup.o arch/arm64/kernel/setup.c
> 
>   ... and there are 44 calls to __sanitizer_cov_trace_pc in the
>   resulting setup.o
> 
> * with defconfig + CONFIG_KCOV + CONFIG_UBSAN:
> 
>   clang -Wp,-MD,arch/arm64/kernel/.setup.o.d  -nostdinc -isystem
>   /mnt/data/opt/toolchain/llvm/8.0.0/clang+llvm-8.0.0-x86_64-linux-sles11.3/lib/clang/8.0.0/include
>   -I./arch/arm64/include -I./arch/arm64/include/generated  -I./include
>   -I./arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi
>   -I./include/uapi -I./include/generated/uapi -include
>   ./include/linux/kconfig.h -include ./include/linux/compiler_types.h
>   -D__KERNEL__ -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT=3
>   -Qunused-arguments -Wall -Wundef -Werror=strict-prototypes
>   -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -fno-PIE
>   -Werror=implicit-function-declaration -Werror=implicit-int
>   -Wno-format-security -std=gnu89 --target=aarch64-linux
>   --prefix=/mnt/data/opt/toolchain/kernel-org-crosstool/gcc-8.1.0-nolibc/aarch64-linux/bin/
>   --gcc-toolchain=/mnt/data/opt/toolchain/kernel-org-crosstool/gcc-8.1.0-nolibc/aarch64-linux
>   -no-integrated-as -Werror=unknown-warning-option -mgeneral-regs-only
>   -DCONFIG_AS_LSE=1 -fno-asynchronous-unwind-tables
>   -DKASAN_SHADOW_SCALE_SHIFT=3 -fno-delete-null-pointer-checks
>   -Wno-address-of-packed-member -O2 -Wframe-larger-than=2048
>   -fstack-protector-strong -Wno-format-invalid-specifier -Wno-gnu
>   -Wno-tautological-compare -mno-global-merge -Wno-unused-const-variable
>   -fno-omit-frame-pointer -fno-optimize-sibling-calls -g
>   -Wdeclaration-after-statement -Wvla -Wno-pointer-sign
>   -fno-strict-overflow -fno-merge-all-constants -fno-stack-check
>   -Werror=date-time -Werror=incompatible-pointer-types
>   -Wno-initializer-overrides -Wno-format -Wno-sign-compare
>   -Wno-format-zero-length    -fsanitize=shift
>   -fsanitize=integer-divide-by-zero  -fsanitize=unreachable
>   -fsanitize=signed-integer-overflow  -fsanitize=bounds
>   -fsanitize=object-size  -fsanitize=bool  -fsanitize=enum
>   -fsanitize-coverage=trace-pc    -DKBUILD_BASENAME='"setup"'
>   -DKBUILD_MODNAME='"setup"' -c -o arch/arm64/kernel/setup.o
>   arch/arm64/kernel/setup.c
> 
>   ... and there are 0 calls to __sanitizer_cov_trace_pc in the resulting
>   setup.o, even though -fsanitize-coverage=trace-pc was passed to clang.
> 
> If I remove -fsanitize=bounds, there are 121 calls to
> __sanitizer_cov_trace_pc in setup.o. Removing the other options enabled
> by UBSAN didn't have any effect on setup.o.
> 
> I'm using the llvm.org 8.0.{0,1} binaries [1,2], along with the
> kernel.org crosstool 8.1.0 binaries [3].
> 
> Any ideas as to what's going on?
> 
> Thanks,
> Mark.
> 
> [1] http://releases.llvm.org/download.html#8.0.0
> [2] http://releases.llvm.org/download.html#8.0.1
> [3] https://mirrors.edge.kernel.org/pub/tools/crosstool/

Hi Mark,

I've narrowed it down further; it seems that the combination of
-fsanitize-coverage=trace-pc and -fsanitize=local-bounds prevents the
emission of __sanitizer_cov_trace_pc. -fsanitize=bounds is the same as
-fsanitize=local-bounds and -fsanitize=array-bounds, the latter of which
has no issues.

https://godbolt.org/z/YdF-he

This reproducer was taken from a somewhat related bug report in April.

https://bugs.llvm.org/show_bug.cgi?id=41387

What's also interesting is when you remove -Qunused-arguments from the
clang command, the following warning appears (also visible in the
godbolt link):

clang-10: warning: argument unused during compilation:
'-fsanitize-coverage=trace-pc' [-Wunused-command-line-argument]

I have no idea why this combination is special, I've been searching the
source trying to see what I can find and I am currently not coming up
with anything (I'm sure a good night's rest will give me a fresh set of
eyes).

This is still an issue on Clang trunk.

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
