Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E96794B1D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 19:00:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zjq9W9ambvzj4mWG6okYxNzsQ1aKAH/fWjI005rEzHw=; b=BOTi64TEFK4/3C
	kFF4L9xA2MvchW6zAr2MjpTkM6NnyYMOWpDmw3nK2q8pdU1G8Hps+yqDnb+tIEJDdsfdJ3rZTt9gj
	R1IEFlumN8lafCpQ6ffUPTO1KvVlLdIOKajX3yAlCEz857X8jRVEllkiFiooANjbonWelJCY0thYq
	fQdeP+N2vChZoQHZTyVQwDjDBTClpVydV60jvyFzJ/M3dIkzLkC01nKUIFoeDYH9EYqIohO8eLNtH
	e1cxbqtAgbGsIUvTkc3vpuOdD0rxf0J96RJqvMAkiO4c03Bf/bJ6jTFAdeaNZAYwYqtmC63zha/yh
	eIOK0GRvO90EvrgO3MsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzl0s-0007lY-JS; Mon, 19 Aug 2019 17:00:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzl0f-0007kr-U6
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 16:59:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 14C1F360;
 Mon, 19 Aug 2019 09:59:54 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 472E53F718;
 Mon, 19 Aug 2019 09:59:53 -0700 (PDT)
Date: Mon, 19 Aug 2019 17:59:48 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 clang-built-linux@googlegroups.com
Subject: Enabling UBSAN breaks KCOV in clang (8.0.*) on arm64
Message-ID: <20190819165947.GA30292@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_095958_062164_14E23F82 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I found that when I enable both KCOV and UBSAN on arm64, clang fails to
emit any __sanitizer_cov_trace_*() calls in the resulting binary,
rendering KCOV useless.

For example, when building v5.3-rc3's arch/arm64/kernel/setup.o:

* With defconfig + CONFIG KCOV:

  clang -Wp,-MD,arch/arm64/kernel/.setup.o.d  -nostdinc -isystem
  /mnt/data/opt/toolchain/llvm/8.0.0/clang+llvm-8.0.0-x86_64-linux-sles11.3/lib/clang/8.0.0/include
  -I./arch/arm64/include -I./arch/arm64/include/generated  -I./include
  -I./arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi
  -I./include/uapi -I./include/generated/uapi -include
  ./include/linux/kconfig.h -include ./include/linux/compiler_types.h
  -D__KERNEL__ -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT=3
  -Qunused-arguments -Wall -Wundef -Werror=strict-prototypes
  -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -fno-PIE
  -Werror=implicit-function-declaration -Werror=implicit-int
  -Wno-format-security -std=gnu89 --target=aarch64-linux
  --prefix=/mnt/data/opt/toolchain/kernel-org-crosstool/gcc-8.1.0-nolibc/aarch64-linux/bin/
  --gcc-toolchain=/mnt/data/opt/toolchain/kernel-org-crosstool/gcc-8.1.0-nolibc/aarch64-linux
  -no-integrated-as -Werror=unknown-warning-option -mgeneral-regs-only
  -DCONFIG_AS_LSE=1 -fno-asynchronous-unwind-tables
  -DKASAN_SHADOW_SCALE_SHIFT=3 -fno-delete-null-pointer-checks
  -Wno-address-of-packed-member -O2 -Wframe-larger-than=2048
  -fstack-protector-strong -Wno-format-invalid-specifier -Wno-gnu
  -Wno-tautological-compare -mno-global-merge -Wno-unused-const-variable
  -fno-omit-frame-pointer -fno-optimize-sibling-calls -g
  -Wdeclaration-after-statement -Wvla -Wno-pointer-sign
  -fno-strict-overflow -fno-merge-all-constants -fno-stack-check
  -Werror=date-time -Werror=incompatible-pointer-types
  -Wno-initializer-overrides -Wno-format -Wno-sign-compare
  -Wno-format-zero-length  -fsanitize-coverage=trace-pc
  -DKBUILD_BASENAME='"setup"' -DKBUILD_MODNAME='"setup"' -c -o
  arch/arm64/kernel/setup.o arch/arm64/kernel/setup.c

  ... and there are 44 calls to __sanitizer_cov_trace_pc in the
  resulting setup.o

* with defconfig + CONFIG_KCOV + CONFIG_UBSAN:

  clang -Wp,-MD,arch/arm64/kernel/.setup.o.d  -nostdinc -isystem
  /mnt/data/opt/toolchain/llvm/8.0.0/clang+llvm-8.0.0-x86_64-linux-sles11.3/lib/clang/8.0.0/include
  -I./arch/arm64/include -I./arch/arm64/include/generated  -I./include
  -I./arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi
  -I./include/uapi -I./include/generated/uapi -include
  ./include/linux/kconfig.h -include ./include/linux/compiler_types.h
  -D__KERNEL__ -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT=3
  -Qunused-arguments -Wall -Wundef -Werror=strict-prototypes
  -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -fno-PIE
  -Werror=implicit-function-declaration -Werror=implicit-int
  -Wno-format-security -std=gnu89 --target=aarch64-linux
  --prefix=/mnt/data/opt/toolchain/kernel-org-crosstool/gcc-8.1.0-nolibc/aarch64-linux/bin/
  --gcc-toolchain=/mnt/data/opt/toolchain/kernel-org-crosstool/gcc-8.1.0-nolibc/aarch64-linux
  -no-integrated-as -Werror=unknown-warning-option -mgeneral-regs-only
  -DCONFIG_AS_LSE=1 -fno-asynchronous-unwind-tables
  -DKASAN_SHADOW_SCALE_SHIFT=3 -fno-delete-null-pointer-checks
  -Wno-address-of-packed-member -O2 -Wframe-larger-than=2048
  -fstack-protector-strong -Wno-format-invalid-specifier -Wno-gnu
  -Wno-tautological-compare -mno-global-merge -Wno-unused-const-variable
  -fno-omit-frame-pointer -fno-optimize-sibling-calls -g
  -Wdeclaration-after-statement -Wvla -Wno-pointer-sign
  -fno-strict-overflow -fno-merge-all-constants -fno-stack-check
  -Werror=date-time -Werror=incompatible-pointer-types
  -Wno-initializer-overrides -Wno-format -Wno-sign-compare
  -Wno-format-zero-length    -fsanitize=shift
  -fsanitize=integer-divide-by-zero  -fsanitize=unreachable
  -fsanitize=signed-integer-overflow  -fsanitize=bounds
  -fsanitize=object-size  -fsanitize=bool  -fsanitize=enum
  -fsanitize-coverage=trace-pc    -DKBUILD_BASENAME='"setup"'
  -DKBUILD_MODNAME='"setup"' -c -o arch/arm64/kernel/setup.o
  arch/arm64/kernel/setup.c

  ... and there are 0 calls to __sanitizer_cov_trace_pc in the resulting
  setup.o, even though -fsanitize-coverage=trace-pc was passed to clang.

If I remove -fsanitize=bounds, there are 121 calls to
__sanitizer_cov_trace_pc in setup.o. Removing the other options enabled
by UBSAN didn't have any effect on setup.o.

I'm using the llvm.org 8.0.{0,1} binaries [1,2], along with the
kernel.org crosstool 8.1.0 binaries [3].

Any ideas as to what's going on?

Thanks,
Mark.

[1] http://releases.llvm.org/download.html#8.0.0
[2] http://releases.llvm.org/download.html#8.0.1
[3] https://mirrors.edge.kernel.org/pub/tools/crosstool/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
