Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7F539A90
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 05:56:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OHD0koyls46FJOWp6HPPYJ4SwCBgtrGq3wJ3kYqDi9I=; b=EkMES4+wbOqfpk
	yhwEarqXsZCiokqNMRO1vDLMG8FiFFJqJDesh8WZUJUiwXJpSU9w2lTIifRKXGCQRSwkZbQuYdXWH
	6WqQAOVV/PDgL9Em5ouOaOlHSVizb4DFu/eh5c+mEaVm/VURDbFL1lNMBHkVmKkiftRvtDMFKlAp1
	ahBVnj5tm9lyN8v8eGReG3j+HI/lIaiT+EyKmN+yLNDpWBynAhY6NLA0xfeJM8cdYK/WYlj12uxju
	SbD64P78id3Mx24NS0XP53TibBce5HiSLBt1guxE8tzjLd5XeSn3i11u3CntpnI8+XhCNs7aJdfmc
	RDtaIEPS9v8eACs023Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZST6-0002yx-MV; Sat, 08 Jun 2019 03:56:36 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZSSw-0002yO-Mi
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 03:56:28 +0000
Received: by mail-pl1-x642.google.com with SMTP id bi6so1137431plb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 20:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Sg8hZnfRQyshVayh9AfBUaCUwYP0fG+PoifVRoQ1/2U=;
 b=dA3axcy3OSjQBllR3jO2rSL28yV4HEUJp/aPnDeszFXA+QJykqsQIUJ72CJFJfYEfw
 wdg907Km6KiqXC2789/OeRpcFlLBSZiEqKz1cQEJwy/XIHhLz8qR/HqqVrGp+0QeTjJc
 WftaB+rnktSZBXZ74MuozosAkMHfiOKMwo6jY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Sg8hZnfRQyshVayh9AfBUaCUwYP0fG+PoifVRoQ1/2U=;
 b=q8HkECxH8sjyFO+8mob3D0cmT2m+n9Db5CTrIYGSO2m+GC87pSkiZcC1Q0LQ8kZm9V
 f3cu+A8ud3R3E2pTjJRbgifDlvubP4s8uLTI6UAa09yoylP88clsQWyfBnEdrEc+bxqz
 Er74a3UZrbOsZV+/8b5Q5PtWditGIBA5GyNoNRuAZcWJwvZpbWH8+fP1RCylfb2MpDeJ
 qCv12W2l3PrbfFqsnbQoY1Qlo7le20wyBZ90sVgZfF9zO1/S525boCcoVE6A0rQsg4XW
 CGU84CPX5r2i9dkw3dBqWaRJPWyZlbjqhLgQ+hYE1aI+Qh3ZfsbjY49zc4e4KIfDSom9
 3eUw==
X-Gm-Message-State: APjAAAUOkKzY/QgjjLRiwoPfYzsK87ifbUPVHhJbNaO+cMgV+lvGmMYS
 mdpm2QUeaIg4/BHSHGC6iPaDYQ==
X-Google-Smtp-Source: APXvYqxOa+LbIfSKzO98kP7ZimZglTjC5TFvL11aIkaQBz55ZFGw6dQUA6lPd2PVhnyZkGPHF3XY8g==
X-Received: by 2002:a17:902:6948:: with SMTP id
 k8mr59073078plt.81.1559966186036; 
 Fri, 07 Jun 2019 20:56:26 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id c6sm6781898pfm.163.2019.06.07.20.56.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 Jun 2019 20:56:25 -0700 (PDT)
Date: Fri, 7 Jun 2019 20:56:24 -0700
From: Kees Cook <keescook@chromium.org>
To: Andrey Konovalov <andreyknvl@google.com>
Subject: Re: [PATCH v16 16/16] selftests, arm64: add a selftest for passing
 tagged pointers to kernel
Message-ID: <201906072055.7DFED7B@keescook>
References: <cover.1559580831.git.andreyknvl@google.com>
 <9e1b5998a28f82b16076fc85ab4f88af5381cf74.1559580831.git.andreyknvl@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9e1b5998a28f82b16076fc85ab4f88af5381cf74.1559580831.git.andreyknvl@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_205626_789426_8F8D6AD7 
X-CRM114-Status: GOOD (  21.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Khalid Aziz <khalid.aziz@oracle.com>, linux-kselftest@vger.kernel.org,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Shuah Khan <shuah@kernel.org>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
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

On Mon, Jun 03, 2019 at 06:55:18PM +0200, Andrey Konovalov wrote:
> This patch is a part of a series that extends arm64 kernel ABI to allow to
> pass tagged user pointers (with the top byte set to something else other
> than 0x00) as syscall arguments.
> 
> This patch adds a simple test, that calls the uname syscall with a
> tagged user pointer as an argument. Without the kernel accepting tagged
> user pointers the test fails with EFAULT.
> 
> Signed-off-by: Andrey Konovalov <andreyknvl@google.com>

I'm adding Shuah to CC in case she has some suggestions about the new
selftest.

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  tools/testing/selftests/arm64/.gitignore      |  1 +
>  tools/testing/selftests/arm64/Makefile        | 22 ++++++++++
>  .../testing/selftests/arm64/run_tags_test.sh  | 12 ++++++
>  tools/testing/selftests/arm64/tags_lib.c      | 42 +++++++++++++++++++
>  tools/testing/selftests/arm64/tags_test.c     | 18 ++++++++
>  5 files changed, 95 insertions(+)
>  create mode 100644 tools/testing/selftests/arm64/.gitignore
>  create mode 100644 tools/testing/selftests/arm64/Makefile
>  create mode 100755 tools/testing/selftests/arm64/run_tags_test.sh
>  create mode 100644 tools/testing/selftests/arm64/tags_lib.c
>  create mode 100644 tools/testing/selftests/arm64/tags_test.c
> 
> diff --git a/tools/testing/selftests/arm64/.gitignore b/tools/testing/selftests/arm64/.gitignore
> new file mode 100644
> index 000000000000..e8fae8d61ed6
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/.gitignore
> @@ -0,0 +1 @@
> +tags_test
> diff --git a/tools/testing/selftests/arm64/Makefile b/tools/testing/selftests/arm64/Makefile
> new file mode 100644
> index 000000000000..9dee18727923
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/Makefile
> @@ -0,0 +1,22 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +include ../lib.mk
> +
> +# ARCH can be overridden by the user for cross compiling
> +ARCH ?= $(shell uname -m 2>/dev/null || echo not)
> +
> +ifneq (,$(filter $(ARCH),aarch64 arm64))
> +
> +TEST_CUSTOM_PROGS := $(OUTPUT)/tags_test
> +
> +$(OUTPUT)/tags_test: tags_test.c $(OUTPUT)/tags_lib.so
> +	$(CC) -o $@ $(CFLAGS) $(LDFLAGS) $<
> +
> +$(OUTPUT)/tags_lib.so: tags_lib.c
> +	$(CC) -o $@ -shared $(CFLAGS) $(LDFLAGS) $^
> +
> +TEST_PROGS := run_tags_test.sh
> +
> +all: $(TEST_CUSTOM_PROGS)
> +
> +endif
> diff --git a/tools/testing/selftests/arm64/run_tags_test.sh b/tools/testing/selftests/arm64/run_tags_test.sh
> new file mode 100755
> index 000000000000..2bbe0cd4220b
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/run_tags_test.sh
> @@ -0,0 +1,12 @@
> +#!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0
> +
> +echo "--------------------"
> +echo "running tags test"
> +echo "--------------------"
> +LD_PRELOAD=./tags_lib.so ./tags_test
> +if [ $? -ne 0 ]; then
> +	echo "[FAIL]"
> +else
> +	echo "[PASS]"
> +fi
> diff --git a/tools/testing/selftests/arm64/tags_lib.c b/tools/testing/selftests/arm64/tags_lib.c
> new file mode 100644
> index 000000000000..8a674509216e
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/tags_lib.c
> @@ -0,0 +1,42 @@
> +#include <stdlib.h>
> +
> +#define TAG_SHIFT	(56)
> +#define TAG_MASK	(0xffUL << TAG_SHIFT)
> +
> +void *__libc_malloc(size_t size);
> +void __libc_free(void *ptr);
> +void *__libc_realloc(void *ptr, size_t size);
> +void *__libc_calloc(size_t nmemb, size_t size);
> +
> +static void *tag_ptr(void *ptr)
> +{
> +	unsigned long tag = rand() & 0xff;
> +	if (!ptr)
> +		return ptr;
> +	return (void *)((unsigned long)ptr | (tag << TAG_SHIFT));
> +}
> +
> +static void *untag_ptr(void *ptr)
> +{
> +	return (void *)((unsigned long)ptr & ~TAG_MASK);
> +}
> +
> +void *malloc(size_t size)
> +{
> +	return tag_ptr(__libc_malloc(size));
> +}
> +
> +void free(void *ptr)
> +{
> +	__libc_free(untag_ptr(ptr));
> +}
> +
> +void *realloc(void *ptr, size_t size)
> +{
> +	return tag_ptr(__libc_realloc(untag_ptr(ptr), size));
> +}
> +
> +void *calloc(size_t nmemb, size_t size)
> +{
> +	return tag_ptr(__libc_calloc(nmemb, size));
> +}
> diff --git a/tools/testing/selftests/arm64/tags_test.c b/tools/testing/selftests/arm64/tags_test.c
> new file mode 100644
> index 000000000000..263b302874ed
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/tags_test.c
> @@ -0,0 +1,18 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <unistd.h>
> +#include <stdint.h>
> +#include <sys/utsname.h>
> +
> +int main(void)
> +{
> +	struct utsname *ptr;
> +	int err;
> +
> +	ptr = (struct utsname *)malloc(sizeof(*ptr));
> +	err = uname(ptr);
> +	free(ptr);
> +	return err;
> +}
> -- 
> 2.22.0.rc1.311.g5d7573a151-goog
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
