Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 108DD6D0C4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 17:11:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rugDMczO2G+tJeTgveZBzhb019/Fn0IBCf2NlWk9QK8=; b=bj5RDUhCJHdzGD
	4Op0xamKfndOJjRyyf6hWjgeofZCBQzFN4/VxD+557i/pCZxHI8v/Hg0qFzc+wap2PWJG7+pHmkst
	0a3Y7rNglOo1fx6WM4MSVAlDlPvz2WZpaaf/Hagletns8kq155q8BviMKkBy05BxZjhM4FaJ/83YX
	Mk71rPV28shEpcvglMjxWGxeyzeeFZLZbUHeLIyXsi8gz4+F2PkukrJbkG1VeQd+OJnBTxMFEKPZY
	OLSfkg5Z2cpUSa7oD0GUnD5vVIP9k4fWpmCVCIA2Yyisx+NBw0Dy3gQyvQinKn973ZjUqmrF6XHLU
	siih2sjcqafnB2usIu+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho849-0003i0-CC; Thu, 18 Jul 2019 15:11:29 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho83L-0003hg-LQ
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 15:10:41 +0000
Received: by mail-qk1-f194.google.com with SMTP id r6so20747966qkc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 08:10:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1XVWuLALNboPCBpMHvtA7g3CoUrKrF0vBnrtFanWPT4=;
 b=bF4wLTodFMUTupZTEIQh5o610eqTGvAa9Il2AI31aYukkHBg9Dq9xFyJgTwgmLWUpZ
 9LKLaz/IGs3VCGIm1Bqlu8lKfMM9yrMo+rRg6MPHoag/IYY9qB7eldzubM0NKMCUAph7
 EYG/V4HuhyOekcHlVbTKGaFNTPNzToMnUgHAws7dfsPGAixrITetdzK2/q1Ow5TvXOWY
 jLgp+gEp1y9LWyLVCZgdZ4lNHcndbfcyHJbOYiGEEC41vbmIDCLqDFZ8oJbBtqaYRjc6
 jQOxxVs5H9j8OUG0Q9XshAbFlTb6GF5+u0wFpTl/X6rlhCs+S5dfhmQY1dyGZ4KW4ug0
 Vlqw==
X-Gm-Message-State: APjAAAXYyEw6N/ebEAzeXJfQBTmjOQD74oS5THGgV4elOHUVC39T8X+g
 nIga8yU4Hf5haTK9l5r9RduXtcKAfmIe/JE/8rM=
X-Google-Smtp-Source: APXvYqz91qO2K9L71FiuX0Gt08O/27FhYjsXqzcDsg9SyRt3LsdEPpT+LHh0f5YfOz5Tbuae6UqhheF6pLTx7yCHlYU=
X-Received: by 2002:a37:ad12:: with SMTP id f18mr30435448qkm.3.1563462638194; 
 Thu, 18 Jul 2019 08:10:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190706145737.5299-1-cyphar@cyphar.com>
 <20190706145737.5299-9-cyphar@cyphar.com>
In-Reply-To: <20190706145737.5299-9-cyphar@cyphar.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 18 Jul 2019 17:10:21 +0200
Message-ID: <CAK8P3a33rGhPDFfRBAQyLTMG_WoEgX_toDgWR2O7rSwxKsZG+w@mail.gmail.com>
Subject: Re: [PATCH v9 08/10] open: openat2(2) syscall
To: Aleksa Sarai <cyphar@cyphar.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_081039_700205_4B0B92F4 
X-CRM114-Status: GOOD (  17.72  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-ia64@vger.kernel.org, Linux-sh list <linux-sh@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 sparclinux <sparclinux@vger.kernel.org>, Shuah Khan <shuah@kernel.org>,
 linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Tycho Andersen <tycho@tycho.ws>,
 Aleksa Sarai <asarai@suse.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, David Drysdale <drysdale@google.com>,
 Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>,
 Parisc List <linux-parisc@vger.kernel.org>,
 Linux API <linux-api@vger.kernel.org>, Chanho Min <chanho.min@lge.com>,
 Jeff Layton <jlayton@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Eric Biederman <ebiederm@xmission.com>, alpha <linux-alpha@vger.kernel.org>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jul 6, 2019 at 5:00 PM Aleksa Sarai <cyphar@cyphar.com> wrote:

> diff --git a/arch/alpha/kernel/syscalls/syscall.tbl b/arch/alpha/kernel/syscalls/syscall.tbl
> index 9e7704e44f6d..1703d048c141 100644
> --- a/arch/alpha/kernel/syscalls/syscall.tbl
> +++ b/arch/alpha/kernel/syscalls/syscall.tbl
> @@ -461,6 +461,7 @@
>  530    common  getegid                         sys_getegid
>  531    common  geteuid                         sys_geteuid
>  532    common  getppid                         sys_getppid
> +533    common  openat2                         sys_openat2
>  # all other architectures have common numbers for new syscall, alpha
>  # is the exception.
>  534    common  pidfd_send_signal               sys_pidfd_send_signal

My plan here was to add new syscalls in the same order as everwhere else,
just with the number 110 higher. In the long run, I hope we can automate
this.

> diff --git a/arch/arm/tools/syscall.tbl b/arch/arm/tools/syscall.tbl
> index aaf479a9e92d..4ad262698396 100644
> --- a/arch/arm/tools/syscall.tbl
> +++ b/arch/arm/tools/syscall.tbl
> @@ -447,3 +447,4 @@
>  431    common  fsconfig                        sys_fsconfig
>  432    common  fsmount                         sys_fsmount
>  433    common  fspick                          sys_fspick
> +434    common  openat2                         sys_openat2

434 is already used in linux-next, I suggest you use 437 (Palmer
just submitted fchmodat4, which could become 436).

> +/**
> + * Arguments for how openat2(2) should open the target path. If @extra is zero,
> + * then openat2(2) is identical to openat(2).
> + *
> + * @flags: O_* flags (unknown flags ignored).
> + * @mode: O_CREAT file mode (ignored otherwise).
> + * @upgrade_mask: restrict how the O_PATH may be re-opened (ignored otherwise).
> + * @resolve: RESOLVE_* flags (-EINVAL on unknown flags).
> + * @reserved: reserved for future extensions, must be zeroed.
> + */
> +struct open_how {
> +       __u32 flags;
> +       union {
> +               __u16 mode;
> +               __u16 upgrade_mask;
> +       };
> +       __u16 resolve;
> +       __u64 reserved[7]; /* must be zeroed */
> +};

We can have system calls with up to six arguments on all architectures, so
this could still be done more conventionally without the indirection: like

long openat2(int dfd, const char __user * filename, int flags, mode_t
mode_mask, __u16 resolve);

In fact, that seems similar enough to the existing openat() that I think
you could also just add the fifth argument to the existing call when
a newly defined flag is set, similarly to how we only use the 'mode'
argument when O_CREAT or O_TMPFILE are set.

> --- a/include/linux/syscalls.h
> +++ b/include/linux/syscalls.h

This file seems to lack a declaration for the system call, which means it
will cause a build failure on some architectures, e.g. arch/arc/kernel/sys.c:

#define __SYSCALL(nr, call) [nr] = (call),
void *sys_call_table[NR_syscalls] = {
        [0 ... NR_syscalls-1] = sys_ni_syscall,
#include <asm/unistd.h>
};

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
