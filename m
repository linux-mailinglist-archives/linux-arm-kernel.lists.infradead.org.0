Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C345CAC6A5
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 14:41:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kzPX35EWL6N2R5priNhrQJhfsD8z4sp8nbcDQnkfwsw=; b=reTMZHxKcWq5aM
	nU+ODdyb646nTUB3/goyO1OV7MUd5iQC79UDNq8vRNkciRt9h+9mWLLMWMiydGwCCxjNei4QA8+06
	RHwrMt4jUQy10uWoxZRC6GuYGAC3GMnoETMvljbYKpfc3WnWOfwMQhbp8aWD7AmnfrlxHAZpDWDT9
	XUiVOsPujsKWvQnq3aOfbTzu8+KxjU+Hvzd1wsH9byDlM8wgeP0m0i+MDWbpJ/SNonU4NZk5v46Ll
	8Hj5DKE1So0V6AIpxYjttzdh6Ita0mlgtgl8ZWreRKO7UVtzMNxk2xikIIZGdCJVJxB+wIi4EkBGK
	KhRr3oHlgI1y5mkSSt7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6a1q-0005cb-GD; Sat, 07 Sep 2019 12:41:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6a1Q-0005br-Eu
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 12:40:58 +0000
Received: from tleilax.poochiereds.net
 (68-20-15-154.lightspeed.rlghnc.sbcglobal.net [68.20.15.154])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6CE4A21871;
 Sat,  7 Sep 2019 12:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567860051;
 bh=8CdC9s2J+EXRB9t2P5assmBfzpxHrY6X7806hW2vZbI=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=BMvFV1UX5X6Uy9Wv1qL/PSUiseB7R2rehCkF1jManrfGr8YI9PSHDWUn9L+S2pFuv
 RCN9fVNO1dVgQYKSzjsx39Mxn3GBmfn+uxlg8EP9mU5AYcsQNbkdlUXvr6YJL1XW0i
 aq/hmJ23hyXTE39ZyvTfy0uteQUqAjbcN+eR3HO4=
Message-ID: <7236f382d72130f2afbbe8940e72cc67e5c6dce0.camel@kernel.org>
Subject: Re: [PATCH v12 11/12] open: openat2(2) syscall
From: Jeff Layton <jlayton@kernel.org>
To: Aleksa Sarai <cyphar@cyphar.com>, Al Viro <viro@zeniv.linux.org.uk>, "J.
 Bruce Fields" <bfields@fieldses.org>, Arnd Bergmann <arnd@arndb.de>, David
 Howells <dhowells@redhat.com>,  Shuah Khan <shuah@kernel.org>, Shuah Khan
 <skhan@linuxfoundation.org>, Ingo Molnar <mingo@redhat.com>,  Peter
 Zijlstra <peterz@infradead.org>, Christian Brauner <christian@brauner.io>
Date: Sat, 07 Sep 2019 08:40:47 -0400
In-Reply-To: <20190904201933.10736-12-cyphar@cyphar.com>
References: <20190904201933.10736-1-cyphar@cyphar.com>
 <20190904201933.10736-12-cyphar@cyphar.com>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_054056_544492_7D73FEBC 
X-CRM114-Status: GOOD (  28.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
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

On Thu, 2019-09-05 at 06:19 +1000, Aleksa Sarai wrote:
> The most obvious syscall to add support for the new LOOKUP_* scoping
> flags would be openat(2). However, there are a few reasons why this is
> not the best course of action:
> 
>  * The new LOOKUP_* flags are intended to be security features, and
>    openat(2) will silently ignore all unknown flags. This means that
>    users would need to avoid foot-gunning themselves constantly when
>    using this interface if it were part of openat(2). This can be fixed
>    by having userspace libraries handle this for users[1], but should be
>    avoided if possible.
> 
>  * Resolution scoping feels like a different operation to the existing
>    O_* flags. And since openat(2) has limited flag space, it seems to be
>    quite wasteful to clutter it with 5 flags that are all
>    resolution-related. Arguably O_NOFOLLOW is also a resolution flag but
>    its entire purpose is to error out if you encounter a trailing
>    symlink -- not to scope resolution.
> 
>  * Other systems would be able to reimplement this syscall allowing for
>    cross-OS standardisation rather than being hidden amongst O_* flags
>    which may result in it not being used by all the parties that might
>    want to use it (file servers, web servers, container runtimes, etc).
> 
>  * It gives us the opportunity to iterate on the O_PATH interface. In
>    particular, the new @how->upgrade_mask field for fd re-opening is
>    only possible because we have a clean slate without needing to re-use
>    the ACC_MODE flag design nor the existing openat(2) @mode semantics.
> 
> To this end, we introduce the openat2(2) syscall. It provides all of the
> features of openat(2) through the @how->flags argument, but also
> also provides a new @how->resolve argument which exposes RESOLVE_* flags
> that map to our new LOOKUP_* flags. It also eliminates the long-standing
> ugliness of variadic-open(2) by embedding it in a struct.
> 
> In order to allow for userspace to lock down their usage of file
> descriptor re-opening, openat2(2) has the ability for users to disallow
> certain re-opening modes through @how->upgrade_mask. At the moment,
> there is no UPGRADE_NOEXEC.
> 
> [1]: https://github.com/openSUSE/libpathrs
> 
> Suggested-by: Christian Brauner <christian@brauner.io>
> Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
> ---
>  arch/alpha/kernel/syscalls/syscall.tbl      |  1 +
>  arch/arm/tools/syscall.tbl                  |  1 +
>  arch/arm64/include/asm/unistd.h             |  2 +-
>  arch/arm64/include/asm/unistd32.h           |  2 +
>  arch/ia64/kernel/syscalls/syscall.tbl       |  1 +
>  arch/m68k/kernel/syscalls/syscall.tbl       |  1 +
>  arch/microblaze/kernel/syscalls/syscall.tbl |  1 +
>  arch/mips/kernel/syscalls/syscall_n32.tbl   |  1 +
>  arch/mips/kernel/syscalls/syscall_n64.tbl   |  1 +
>  arch/mips/kernel/syscalls/syscall_o32.tbl   |  1 +
>  arch/parisc/kernel/syscalls/syscall.tbl     |  1 +
>  arch/powerpc/kernel/syscalls/syscall.tbl    |  1 +
>  arch/s390/kernel/syscalls/syscall.tbl       |  1 +
>  arch/sh/kernel/syscalls/syscall.tbl         |  1 +
>  arch/sparc/kernel/syscalls/syscall.tbl      |  1 +
>  arch/x86/entry/syscalls/syscall_32.tbl      |  1 +
>  arch/x86/entry/syscalls/syscall_64.tbl      |  1 +
>  arch/xtensa/kernel/syscalls/syscall.tbl     |  1 +
>  fs/open.c                                   | 94 ++++++++++++++++-----
>  include/linux/fcntl.h                       | 19 ++++-
>  include/linux/fs.h                          |  4 +-
>  include/linux/syscalls.h                    | 14 ++-
>  include/uapi/asm-generic/unistd.h           |  5 +-
>  include/uapi/linux/fcntl.h                  | 42 +++++++++
>  24 files changed, 168 insertions(+), 30 deletions(-)
> 

[...]

> diff --git a/include/uapi/linux/fcntl.h b/include/uapi/linux/fcntl.h
> index 1d338357df8a..479baf2da10e 100644
> --- a/include/uapi/linux/fcntl.h
> +++ b/include/uapi/linux/fcntl.h
> @@ -93,5 +93,47 @@
>  
>  #define AT_RECURSIVE		0x8000	/* Apply to the entire subtree */
>  
> +/**
> + * Arguments for how openat2(2) should open the target path. If @resolve is
> + * zero, then openat2(2) operates identically to openat(2).
> + *
> + * However, unlike openat(2), unknown bits in @flags result in -EINVAL rather
> + * than being silently ignored. In addition, @mode (or @upgrade_mask) must be
> + * zero unless one of {O_CREAT, O_TMPFILE, O_PATH} are set.
> + *

After thinking about this a bit, I wonder if we might be better served
with a new set of OA2_* flags instead of repurposing the O_* flags?

Yes, those flags are familiar, but this is an entirely new syscall. We
have a chance to make a fresh start. Does something like O_LARGEFILE
have any real place in openat2? I'd argue no.

Also, once you want to add a new flag, then we get into the mess of how
to document whether open/openat also support it. It'd be good to freeze
changes on those syscalls and aim to only introduce new functionality in
openat2.

That would also allow us to drop some flags from openat2 that we really
don't need, and maybe expand the flag space to 64 bits initially, to
allow for expansion into the future.

Thoughts?

> + * @flags: O_* flags.
> + * @mode: O_CREAT/O_TMPFILE file mode.
> + * @upgrade_mask: UPGRADE_* flags (to restrict O_PATH re-opening).
> + * @resolve: RESOLVE_* flags.
> + */
> +struct open_how {
> +	__u32 flags;
> +	union {
> +		__u16 mode;
> +		__u16 upgrade_mask;
> +	};
> +	__u16 resolve;
> +};
> +
> +#define OPEN_HOW_SIZE_VER0	8 /* sizeof first published struct */
> +

Hmm, there is no version field. When you want to expand this in the
future, what is the plan? Add a new flag to indicate that it's some
length?


> +/* how->resolve flags for openat2(2). */
> +#define RESOLVE_NO_XDEV		0x01 /* Block mount-point crossings
> +					(includes bind-mounts). */
> +#define RESOLVE_NO_MAGICLINKS	0x02 /* Block traversal through procfs-style
> +					"magic-links". */
> +#define RESOLVE_NO_SYMLINKS	0x04 /* Block traversal through all symlinks
> +					(implies OEXT_NO_MAGICLINKS) */
> +#define RESOLVE_BENEATH		0x08 /* Block "lexical" trickery like
> +					"..", symlinks, and absolute
> +					paths which escape the dirfd. */
> +#define RESOLVE_IN_ROOT		0x10 /* Make all jumps to "/" and ".."
> +					be scoped inside the dirfd
> +					(similar to chroot(2)). */
> +
> +/* how->upgrade flags for openat2(2). */
> +/* First bit is reserved for a future UPGRADE_NOEXEC flag. */
> +#define UPGRADE_NOREAD		0x02 /* Block re-opening with MAY_READ. */
> +#define UPGRADE_NOWRITE		0x04 /* Block re-opening with MAY_WRITE. */
>  
>  #endif /* _UAPI_LINUX_FCNTL_H */

-- 
Jeff Layton <jlayton@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
