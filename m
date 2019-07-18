Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 762F86D672
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 23:30:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/rQyxQHcyOdDurAZPduy1RrYg4WQ5ugy6OZT6t0hm0=; b=aawYfQ5c4sFr+K
	lDSaJFbRrkggGSZ0wx19rKehSQhmAbY7c8MEePEfud7lnHweGyECb49ZvTEMgu2U2QeNETNVFxWqU
	Cwi7ivT6wCk1wA5j+FICeGuYDpuItbtxvQrMOjBlP6o4KJAGajZJ4YoYJPc8mnijLVTXInwUhp7Mf
	E4oTFFPr+Ws+zxbIR4pWPiHgZp7a8Z4VFSJHSdGBbuLGzcKpjQb8xpMtls+RUJO9fUjmUqgs7fTU1
	AL3g+diW33pZJS29Ocb3/CRKMIzORtKBtEflXm8APsM+efrBwyHFcQm4ciUihEVyVTnONhu+8PC15
	jsFmTRf+d8l1lGlpOs4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoDyq-0004Ib-8s; Thu, 18 Jul 2019 21:30:24 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoDya-0004DK-D1
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 21:30:09 +0000
Received: by mail-qk1-f193.google.com with SMTP id r6so21714478qkc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 14:30:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gXA3fCzwUc7S8+pRMyyFoXYQ6Lxj2094nm3NP6Me1pg=;
 b=XqKvJ0VLhcfvwm3h/k/UIV+xHvb711Ne77+VFM+zYGOZRDqhjY2/QQoKVGTE/w5JaE
 FQeBTi3ovSt7WDGlPbA7L32TOH+uPu6daCx6q58C+TmSfX2CSFz9piKHGd1IRGuTnRnq
 2QDVn0clxcctpcMVp5pWPxiwZpgQT17pwlu4JKjgcXZpnm+YQ1SdG+F9rFnrFROJkgxw
 7JXPz0xTVriH05DQ9qitubgWDAFhCHkD5DvO+UVoC5VSE2bGFMN+WsEBWaaM97jncBiL
 fqh3sMIYp7LO47rRGZtVdM8km2rVFgwyCHclJFXy87k+/Bsk9diNqGLjCIFEWYsTlT/s
 06uQ==
X-Gm-Message-State: APjAAAXGWr8wqMv+fawyvGq9mQmP0ki+UPht65ZaJCkQSEpsrXzgPi1i
 XzkV/E0buarHq5PAYtf9BKqIzJvmlTbuItdaRfE=
X-Google-Smtp-Source: APXvYqwAnwmqNY3PBxWPuNJix5kLy4PEG765j1QyxyCKOemfTtTG+YSbK8sHn1TSB6/emkF2O/3aVUhdKFw2Cxuzrg4=
X-Received: by 2002:a37:5f45:: with SMTP id t66mr32747316qkb.286.1563485406992; 
 Thu, 18 Jul 2019 14:30:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190706145737.5299-1-cyphar@cyphar.com>
 <20190706145737.5299-9-cyphar@cyphar.com>
 <CAK8P3a33rGhPDFfRBAQyLTMG_WoEgX_toDgWR2O7rSwxKsZG+w@mail.gmail.com>
 <20190718161231.xcno272nvqpln3wj@yavin>
In-Reply-To: <20190718161231.xcno272nvqpln3wj@yavin>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 18 Jul 2019 23:29:50 +0200
Message-ID: <CAK8P3a3MiYK4bJiA3G_m5H-TpfN5__--b+=szsJBhG7_it+NQg@mail.gmail.com>
Subject: Re: [PATCH v9 08/10] open: openat2(2) syscall
To: Aleksa Sarai <cyphar@cyphar.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_143008_447731_0819D197 
X-CRM114-Status: GOOD (  24.26  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
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

On Thu, Jul 18, 2019 at 6:12 PM Aleksa Sarai <cyphar@cyphar.com> wrote:
> On 2019-07-18, Arnd Bergmann <arnd@arndb.de> wrote:
> > On Sat, Jul 6, 2019 at 5:00 PM Aleksa Sarai <cyphar@cyphar.com> wrote:
> >
> > In fact, that seems similar enough to the existing openat() that I think
> > you could also just add the fifth argument to the existing call when
> > a newly defined flag is set, similarly to how we only use the 'mode'
> > argument when O_CREAT or O_TMPFILE are set.
>
> I considered doing this (and even had a preliminary version of it), but
> I discovered that I was not in favour of this idea -- once I started to
> write tests using it -- for a few reasons:
>
>   1. It doesn't really allow for clean extension for a future 6th
>          argument (because you are using up O_* flags to signify "use the
>          next argument", and O_* flags don't give -EINVAL if they're
>          unknown). Now, yes you can do the on-start runtime check that
>          everyone does -- but I've never really liked having to do it.
>
>          Having reserved padding for later extensions (that is actually
>          checked and gives -EINVAL) matches more modern syscall designs.
>
>   2. I really was hoping that the variadic openat(2) could be done away
>      using this union setup (Linus said he didn't like it, and suggested
>          using something like 'struct stat' as an argument for openat(2) --
>          though personally I am not sure I would personally like to use an
>          interface like that).
>
>   3. In order to avoid wasting a syscall argument for mode/mask you need
>          to either have something like your suggested mode_mask (which makes
>          the syscall arguments less consistent) or have some sort of
>          mode-like argument that is treated specially (which is really awful
>          on multiple levels -- this one I also tried and even wrote my
>          original tests using). And in both cases, the shims for
>          open{,at}(2) are somewhat less clean.

These are all good reasons, thanks for providing the background.

> All of that being said, I'd be happy to switch to whatever you think
> makes the most sense. As long as it's possible to get an O_PATH with
> RESOLVE_IN_ROOT set, I'm happy.

I don't feel I should be in charge of making the decision. I'd still
prefer avoiding the indirect argument structure because

4. it's inconsistent with most other syscalls

5. you get the same problem with seccomp and strace that
   clone3() has -- these and others only track the register
   arguments by default.

6. copying the structure adds a small overhead compared to
   passing registers

7. the calling conventions may be inconvenient for  a user space
   library, so you end up with different prototypes for the low-level
   syscall and the libc abstraction.

I don't see any of the above seven points as a showstopper
either way, so I hope someone else has a strong opinion
and can make the decision easier for you.

In the meantime just keep what you have, so you don't have
to change it multiple times.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
