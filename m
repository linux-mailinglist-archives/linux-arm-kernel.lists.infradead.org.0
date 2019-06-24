Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 322D750F84
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 17:02:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h+VDzdO/bHbH4PI/k9vv4zCNai165bFY5TZkS7yRrls=; b=n9IdgnzxIsaY9G
	ii9B/Ky3IkGfi5iAjWtbZs34wlTQdz/RewpbPa1ReuYKvLCsHGAqjTX3PpvQTXDRVa/+qbQw/3/JZ
	M2J2gQQyS3shwpbaqC53qPoSqj6iA5ffw3H8CNu+eHaHh6IQXXotRsuSwnNGwyoDR/C3cD+7gSPRk
	4bXUP4NUToZuerQfp9hFmgTzQdT4nZhJG6KkdZHy3rmMdgH/gklWdAj1GV/IBKWPGGs/jx9I5Scs/
	V3z/1XHJaSgCi3uLJQCjwSwIbV07yPg2nXSppuU8wuPCMADDUSWNXnYkt7n8ZoM3Z4loQG+jUrL2P
	3VwYJFq0zME5VPdHZ3rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQUN-00011y-Or; Mon, 24 Jun 2019 15:02:35 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQU9-00010A-Mp
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 15:02:23 +0000
Received: by mail-pl1-x643.google.com with SMTP id t7so7031665plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 08:02:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=GtAdqPjW6ZZZnXrgGtz9dHnmmTnu4keB507Xrm18218=;
 b=ChnBbYYcZq0gQP/sJ3UOuMWBE4sFOJb179x3KxiYoIf9mz01hnbxknC2HoJWZ+GnKo
 I/gVcZavG+bqjHfCSPjI903PM2pF2P+rKnbbNQBP7YiqUkuVedhF+Zt+0nrsisSgO62h
 w1puy7E9AYi+Gooou5JDhG3yaU4cjhKpyOEpU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=GtAdqPjW6ZZZnXrgGtz9dHnmmTnu4keB507Xrm18218=;
 b=BTciZn2GR/4wCQ15niQ6iDNTV5mGPTxPNcUb2EXRerwFE8BO3Z+IJxp2E6w7MODSS8
 ptSH7w0dU0sEVVVHiw7lozrr+udqZ5jj642KNx81v4Zu127MFHBiOPiI1ctWbElAKEZn
 5J9+SWzD53BYOx/Kpt/jQd5igyThJRS389A1HGmtBQmy/7DENtPzlsgFgVTl3Q+7sdbH
 pI/LKlYgRJO3/6m4j0LeaB3UmR9PfqiSDk8PEGb41/BpyceFVOxghA4C2aYkqHOsL0S1
 zqk2WWcVWUjrcXStF0LZWc+OKEgRhdje4bcKm4f77NrWzhfkujByXnPFe65L14OXcc1c
 AO/Q==
X-Gm-Message-State: APjAAAVhomta5iVBi/YXDL5kmrJOpgrdYngoblZJcj1YwBll6G/Vqzwb
 zHAKxmo7DcHmPX133oxHGpR2Yw==
X-Google-Smtp-Source: APXvYqw9zabTal+i8jDaBfZR0QmoB7d+QTrClEOLwXBQMsgoLsFLEgEQhYNwi/8CLPRMNc9iVSjF6A==
X-Received: by 2002:a17:902:7687:: with SMTP id
 m7mr67127539pll.310.1561388541281; 
 Mon, 24 Jun 2019 08:02:21 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id e189sm5063967pfh.50.2019.06.24.08.02.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 24 Jun 2019 08:02:20 -0700 (PDT)
Date: Mon, 24 Jun 2019 08:02:19 -0700
From: Kees Cook <keescook@chromium.org>
To: Andrey Konovalov <andreyknvl@google.com>
Subject: Re: [PATCH v18 15/15] selftests, arm64: add a selftest for passing
 tagged pointers to kernel
Message-ID: <201906240802.29EB80F@keescook>
References: <cover.1561386715.git.andreyknvl@google.com>
 <0999c80cd639b78ae27c0674069d552833227564.1561386715.git.andreyknvl@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0999c80cd639b78ae27c0674069d552833227564.1561386715.git.andreyknvl@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_080221_745621_DEE76595 
X-CRM114-Status: GOOD (  21.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
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

On Mon, Jun 24, 2019 at 04:33:00PM +0200, Andrey Konovalov wrote:
> This patch is a part of a series that extends kernel ABI to allow to pass
> tagged user pointers (with the top byte set to something else other than
> 0x00) as syscall arguments.
> 
> This patch adds a simple test, that calls the uname syscall with a
> tagged user pointer as an argument. Without the kernel accepting tagged
> user pointers the test fails with EFAULT.
> 
> Signed-off-by: Andrey Konovalov <andreyknvl@google.com>

Acked-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  tools/testing/selftests/arm64/.gitignore      |  1 +
>  tools/testing/selftests/arm64/Makefile        | 11 +++++++
>  .../testing/selftests/arm64/run_tags_test.sh  | 12 ++++++++
>  tools/testing/selftests/arm64/tags_test.c     | 29 +++++++++++++++++++
>  4 files changed, 53 insertions(+)
>  create mode 100644 tools/testing/selftests/arm64/.gitignore
>  create mode 100644 tools/testing/selftests/arm64/Makefile
>  create mode 100755 tools/testing/selftests/arm64/run_tags_test.sh
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
> index 000000000000..a61b2e743e99
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/Makefile
> @@ -0,0 +1,11 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +# ARCH can be overridden by the user for cross compiling
> +ARCH ?= $(shell uname -m 2>/dev/null || echo not)
> +
> +ifneq (,$(filter $(ARCH),aarch64 arm64))
> +TEST_GEN_PROGS := tags_test
> +TEST_PROGS := run_tags_test.sh
> +endif
> +
> +include ../lib.mk
> diff --git a/tools/testing/selftests/arm64/run_tags_test.sh b/tools/testing/selftests/arm64/run_tags_test.sh
> new file mode 100755
> index 000000000000..745f11379930
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/run_tags_test.sh
> @@ -0,0 +1,12 @@
> +#!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0
> +
> +echo "--------------------"
> +echo "running tags test"
> +echo "--------------------"
> +./tags_test
> +if [ $? -ne 0 ]; then
> +	echo "[FAIL]"
> +else
> +	echo "[PASS]"
> +fi
> diff --git a/tools/testing/selftests/arm64/tags_test.c b/tools/testing/selftests/arm64/tags_test.c
> new file mode 100644
> index 000000000000..22a1b266e373
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/tags_test.c
> @@ -0,0 +1,29 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <unistd.h>
> +#include <stdint.h>
> +#include <sys/prctl.h>
> +#include <sys/utsname.h>
> +
> +#define SHIFT_TAG(tag)		((uint64_t)(tag) << 56)
> +#define SET_TAG(ptr, tag)	(((uint64_t)(ptr) & ~SHIFT_TAG(0xff)) | \
> +					SHIFT_TAG(tag))
> +
> +int main(void)
> +{
> +	static int tbi_enabled = 0;
> +	struct utsname *ptr, *tagged_ptr;
> +	int err;
> +
> +	if (prctl(PR_SET_TAGGED_ADDR_CTRL, PR_TAGGED_ADDR_ENABLE, 0, 0, 0) == 0)
> +		tbi_enabled = 1;
> +	ptr = (struct utsname *)malloc(sizeof(*ptr));
> +	if (tbi_enabled)
> +		tagged_ptr = (struct utsname *)SET_TAG(ptr, 0x42);
> +	err = uname(tagged_ptr);
> +	free(ptr);
> +
> +	return err;
> +}
> -- 
> 2.22.0.410.gd8fdbe21b5-goog
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
