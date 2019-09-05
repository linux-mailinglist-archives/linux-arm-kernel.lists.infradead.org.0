Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B114A9D62
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 10:44:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d/OZqezoR23HHmCcTi0A6GDNjIHwVUUPR4DZIGjUERA=; b=VTsyoBhrlRAFdA
	SJtg/37Y7R2bvXLHJ6P/kNsn+Cgrp4ZAJGjLQz3fGjVT1UaZRkX5tutiCyleZ9nbVO5kR1DeSig2Q
	AHDUDcKz1STQdEQv6wbUAmx+dIcXwWimkxkAeWDSVz782UbdKTZ0MGfE9BlAyhyM1LMXfm6QueFOr
	Wd3Sc7nUOYQKYnRrZBX2LQfIdANhx64y3nvrjFk5cG4Ugk2EXNc58aqp0SPQAMCbdAn2vgFNB2gGN
	Zygy+ioIjrT1V12uAR7ESFW8pVneE/0B/jWLbAwRHCIJkbbeP0ogIxMijp8d96u2UnANjk9QB0pvP
	lyZ0eZkghdNXr+XTw6TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5nNC-0003Fp-M0; Thu, 05 Sep 2019 08:44:10 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5nN0-0003EY-3y
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 08:44:00 +0000
Received: by mail-lj1-x243.google.com with SMTP id y23so1220690ljn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 01:43:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=NBuoXU/CsvpEfHDk6v7qAee7rwiMK16vCU2UCK4nqCQ=;
 b=N6IVzoEohl3Ii8OgzeM6vAo9dY5+J6qYVU5h5ZRS7mowRtkkYIOgOVnCpVVmpMuP4M
 JnwE+sy/QoDSWwTWRo6bHTZUWVmRUdVAAthZM02dIMNYyiwdhWwEDXgYyipiWXEyubVf
 ef+6I5cJONBZQkYxa9wFQDCcEfEWCsqK9Ws1g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NBuoXU/CsvpEfHDk6v7qAee7rwiMK16vCU2UCK4nqCQ=;
 b=GnjpWgtWyDIko84jrGBz+PZkWK2gucjYN0R0PqZe0/tuBZXD3M9+n5lDIAQBh2fYAC
 y+uF9VfAeiw/Y9/jgg4cWGfY+MV/JQQXO8XWKpntl6U5hWLalnrWa9X7ixWDI3MSnBtf
 ZgxKhIy7e9K8sMt56YM726OYbcBqv+GXlF2V5+LxXxNZX6XK02n/71SyCLv25+Az9dxo
 boUM01VQZtrffyrwLH8OwC3KvmXGwCugySVyLc7JLDvJWqBJLPbOAWMXxlTehyR4DutR
 20Sdmtb7e9rl/It09AtnA2SFXmnS3XN1P6MOdMuLmnU8TBhu/fZ1KslIlkddH9EmdjM7
 vOVA==
X-Gm-Message-State: APjAAAWB7EyUElpF414BwXvsNg4skFHfmYUEooGyw7LR8HvvOUaf6Mni
 H6U8DSZWIVAF0XAqpTTWku/0RA==
X-Google-Smtp-Source: APXvYqytSckEtF1ynO/D0dH8NXuZW7wdO2pDnnfImuEUflVZ+2h5sNxfU5qE5h9/+CC+5M7TGsxbSA==
X-Received: by 2002:a05:651c:1023:: with SMTP id
 w3mr1206160ljm.94.1567673035658; 
 Thu, 05 Sep 2019 01:43:55 -0700 (PDT)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id k7sm249936lji.68.2019.09.05.01.43.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 01:43:54 -0700 (PDT)
Subject: Re: [PATCH v12 01/12] lib: introduce copy_struct_{to,from}_user
 helpers
To: Aleksa Sarai <cyphar@cyphar.com>, Al Viro <viro@zeniv.linux.org.uk>,
 Jeff Layton <jlayton@kernel.org>, "J. Bruce Fields" <bfields@fieldses.org>,
 Arnd Bergmann <arnd@arndb.de>, David Howells <dhowells@redhat.com>,
 Shuah Khan <shuah@kernel.org>, Shuah Khan <skhan@linuxfoundation.org>,
 Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Christian Brauner <christian@brauner.io>
References: <20190904201933.10736-1-cyphar@cyphar.com>
 <20190904201933.10736-2-cyphar@cyphar.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <57ba3752-c4a6-d2a4-1a4d-a0e13bccd473@rasmusvillemoes.dk>
Date: Thu, 5 Sep 2019 10:43:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190904201933.10736-2-cyphar@cyphar.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_014359_116571_88380F8D 
X-CRM114-Status: GOOD (  35.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 linux-kselftest@vger.kernel.org, sparclinux@vger.kernel.org,
 Jiri Olsa <jolsa@redhat.com>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Tycho Andersen <tycho@tycho.ws>,
 Aleksa Sarai <asarai@suse.de>, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, linuxppc-dev@lists.ozlabs.org,
 linux-m68k@lists.linux-m68k.org, Andy Lutomirski <luto@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, David Drysdale <drysdale@google.com>,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 linux-api@vger.kernel.org, Chanho Min <chanho.min@lge.com>,
 Oleg Nesterov <oleg@redhat.com>, Eric Biederman <ebiederm@xmission.com>,
 linux-alpha@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/09/2019 22.19, Aleksa Sarai wrote:
> A common pattern for syscall extensions is increasing the size of a
> struct passed from userspace, such that the zero-value of the new fields
> result in the old kernel behaviour (allowing for a mix of userspace and
> kernel vintages to operate on one another in most cases). This is done
> in both directions -- hence two helpers -- though it's more common to
> have to copy user space structs into kernel space.
> 
> Previously there was no common lib/ function that implemented
> the necessary extension-checking semantics (and different syscalls
> implemented them slightly differently or incompletely[1]). A future
> patch replaces all of the common uses of this pattern to use the new
> copy_struct_{to,from}_user() helpers.
> 
> [1]: For instance {sched_setattr,perf_event_open,clone3}(2) all do do
>      similar checks to copy_struct_from_user() while rt_sigprocmask(2)
>      always rejects differently-sized struct arguments.
> 
> Suggested-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
> ---
> diff --git a/lib/struct_user.c b/lib/struct_user.c
> new file mode 100644
> index 000000000000..7301ab1bbe98
> --- /dev/null
> +++ b/lib/struct_user.c
> @@ -0,0 +1,182 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (C) 2019 SUSE LLC
> + * Copyright (C) 2019 Aleksa Sarai <cyphar@cyphar.com>
> + */
> +
> +#include <linux/types.h>
> +#include <linux/export.h>
> +#include <linux/uaccess.h>
> +#include <linux/kernel.h>
> +#include <linux/string.h>
> +
> +#define BUFFER_SIZE 64
> +
> +/*
> + * "memset(p, 0, size)" but for user space buffers. Caller must have already
> + * checked access_ok(p, size).
> + */

Isn't this __clear_user() exactly (perhaps except for the return value)?
Perhaps not every arch has that?

> +static int __memzero_user(void __user *p, size_t s)
> +{
> +	const char zeros[BUFFER_SIZE] = {};
> +	while (s > 0) {
> +		size_t n = min(s, sizeof(zeros));
> +
> +		if (__copy_to_user(p, zeros, n))
> +			return -EFAULT;
> +
> +		p += n;
> +		s -= n;
> +	}
> +	return 0;
> +}
> +
> +/**
> + * copy_struct_to_user: copy a struct to user space
> + * @dst:   Destination address, in user space.
> + * @usize: Size of @dst struct.
> + * @src:   Source address, in kernel space.
> + * @ksize: Size of @src struct.
> + *
> + * Returns (in all cases, some data may have been copied):
> + *  * -EFBIG:  (@usize < @ksize) and there are non-zero trailing bytes in @src.
> + *  * -EFAULT: access to user space failed.
> + */
> +int copy_struct_to_user(void __user *dst, size_t usize,
> +			const void *src, size_t ksize)
> +{
> +	size_t size = min(ksize, usize);
> +	size_t rest = abs(ksize - usize);

Eh, I'd avoid abs() here due to the funkiness of the implicit type
conversions - ksize-usize has type size_t, then that's coerced to an int
(or a long maybe?), the abs is applied which return an int/long (or
unsigned versions?). Something like "rest = max(ksize, usize) - size;"
is more obviously correct and doesn't fall into any
narrowing/widening/sign extending traps.

> +	if (unlikely(usize > PAGE_SIZE))
> +		return -EFAULT;

Please don't. That is a restriction on all future extensions - once a
kernel is shipped with a syscall using this helper with that arbitrary
restriction in place, that syscall is forever prevented from extending
its arg struct beyond PAGE_SIZE (which is arch-dependent anyway). Sure,
it's hard to imagine, but who'd have thought 32 O_* or CLONE_* bits
weren't enough for everybody?

This is only for future compatibility, and if someone runs an app
compiled against 7.3 headers on a 5.4 kernel, they probably don't care
about performance, but they would like their app to run.

[If we ever create such a large ABI struct that doesn't fit on stack,
we'd have to extend our API a little to create a dup_struct_from_user()
that does the kmalloc() for us and then calls copy_struct_from_user() -
but we might want that long before we hit PAGE_SIZE structs].

> +	if (unlikely(!access_ok(dst, usize)))
> +		return -EFAULT;
> +
> +	/* Deal with trailing bytes. */
> +	if (usize < ksize) {
> +		if (memchr_inv(src + size, 0, rest))
> +			return -EFBIG;
> +	} else if (usize > ksize) {
> +		if (__memzero_user(dst + size, rest))
> +			return -EFAULT;

I think that could simply be __clear_user().

> +	}
> +	/* Copy the interoperable parts of the struct. */
> +	if (__copy_to_user(dst, src, size))
> +		return -EFAULT;

I think I understand why you put this last instead of handling the
buffer in the "natural" order. However,
I'm wondering whether we should actually do this copy before checking
that the extra kernel bytes are 0 - the user will still be told that
there was some extra information via the -EFBIG/-E2BIG return, but maybe
in some cases the part he understands is good enough. But I also guess
we have to look to existing users to see whether that would prevent them
from being converted to using this helper.

linux-api folks, WDYT?

> +	return 0;

Maybe more useful to "return size;", some users might want to know/pass
on how much was actually copied.

> +}
> +EXPORT_SYMBOL(copy_struct_to_user);

Can't we wait with this until a modular user shows up? The primary users
are syscalls, which can't be modular AFAIK.

> +/**
> + * copy_struct_from_user: copy a struct from user space
> + * @dst:   Destination address, in kernel space. This buffer must be @ksize
> + *         bytes long.
> + * @ksize: Size of @dst struct.
> + * @src:   Source address, in user space.
> + * @usize: (Alleged) size of @src struct.
> + *
> + * Copies a struct from user space to kernel space, in a way that guarantees
> + * backwards-compatibility for struct syscall arguments (as long as future
> + * struct extensions are made such that all new fields are *appended* to the
> + * old struct, and zeroed-out new fields have the same meaning as the old
> + * struct).
> + *
> + * @ksize is just sizeof(*dst), and @usize should've been passed by user space.
> + * The recommended usage is something like the following:
> + *
> + *   SYSCALL_DEFINE2(foobar, const struct foo __user *, uarg, size_t, usize)
> + *   {
> + *      int err;
> + *      struct foo karg = {};
> + *
> + *      err = copy_struct_from_user(&karg, sizeof(karg), uarg, size);
> + *      if (err)
> + *        return err;
> + *
> + *      // ...
> + *   }
> + *
> + * There are three cases to consider:
> + *  * If @usize == @ksize, then it's copied verbatim.
> + *  * If @usize < @ksize, then the user space has passed an old struct to a
> + *    newer kernel. The rest of the trailing bytes in @dst (@ksize - @usize)
> + *    are to be zero-filled.
> + *  * If @usize > @ksize, then the user space has passed a new struct to an
> + *    older kernel. The trailing bytes unknown to the kernel (@usize - @ksize)
> + *    are checked to ensure they are zeroed, otherwise -E2BIG is returned.
> + *
> + * Returns (in all cases, some data may have been copied):
> + *  * -E2BIG:  (@usize > @ksize) and there are non-zero trailing bytes in @src.
> + *  * -E2BIG:  @usize is "too big" (at time of writing, >PAGE_SIZE).
> + *  * -EFAULT: access to user space failed.
> + */
> +int copy_struct_from_user(void *dst, size_t ksize,
> +			  const void __user *src, size_t usize)
> +{
> +	size_t size = min(ksize, usize);
> +	size_t rest = abs(ksize - usize);

As above.

> +	if (unlikely(usize > PAGE_SIZE))
> +		return -EFAULT;

As above.

> +	if (unlikely(!access_ok(src, usize)))
> +		return -EFAULT;
> +
> +	/* Deal with trailing bytes. */
> +	if (usize < ksize)
> +		memset(dst + size, 0, rest);
> +	else if (usize > ksize) {
> +		const void __user *addr = src + size;
> +		char buffer[BUFFER_SIZE] = {};
> +
> +		while (rest > 0) {
> +			size_t bufsize = min(rest, sizeof(buffer));
> +
> +			if (__copy_from_user(buffer, addr, bufsize))
> +				return -EFAULT;
> +			if (memchr_inv(buffer, 0, bufsize))
> +				return -E2BIG;
> +
> +			addr += bufsize;
> +			rest -= bufsize;
> +		}

I'd create a __user_is_zero() helper for this - that way the two
branches in the two helpers become nicely symmetric, each just calling a
single helper that deals appropriately with the tail. And we can discuss
how to implement __user_is_zero() in another bikeshed.

> +	}
> +	/* Copy the interoperable parts of the struct. */
> +	if (__copy_from_user(dst, src, size))
> +		return -EFAULT;

If you do move up the __copy_to_user(), please move this as well - on
the kernel side, we certainly don't care that we copied some bytes to a
local buffer which we then ignore because the user had a non-zero tail.
But if __copy_to_user() is kept last in copy_struct_to_user(), this
should stay for symmetry.

> +	return 0;

As above.

> +}
> +EXPORT_SYMBOL(copy_struct_from_user);

As above.

Rasmus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
