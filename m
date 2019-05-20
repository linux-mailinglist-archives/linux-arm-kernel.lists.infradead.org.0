Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC37023B71
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:59:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TtYUGnVBzNGa9OiR+l+u8SFvdv75/EK3nd7zBfoUdYM=; b=n8nT7/tx9+cRDz
	NYW7qRB7PANk7w8wxisunds87eVY9kt2VxQmP6M/QLF63NPLGrfcHUpU3x0uecba5BAaQRL85LTJR
	JlNM470OaBK6XbnJC5iEHoA87dMV6t4EKq6v7zbdyBCPCOpJw7RVMqbM+bbWj0BhDwUvrPtuYDykV
	yHk4Wf9U4bNAqXSu//7XTpPytx/rAYtRqWiBBnwGcFLm+XogcN5wXzre0CvIHcNwfBY27bAadRzWE
	EmvYvV8sQFhXcAEngm9QB6fH4tSG1BJ92tJbSjJIf63Uzk2JHKI3g1ctmUgfEqu0TJFXHbm1cOdXK
	1DbMWvMgh0kKRqp2mPcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjlO-0007TD-Br; Mon, 20 May 2019 14:59:42 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjlG-0007SR-GO
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:59:35 +0000
Received: by mail-qt1-f193.google.com with SMTP id o7so16671021qtp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:59:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iH7q7ju5ViVE2L49uUn5QLFQ5DZ8FjITgD5GKa2X2Zo=;
 b=SHq7rZd7f1T6JIWm65Sq3JTeOtxOepMmDcjXgc+y8aXGbGybLS/cdN2n3TPTPIaoOG
 XkhIyhRGIbAwgjBbj1Lc4fAuGGFoyZYx3cwg3NtzIebhgVIJJsUfvvzkI+as1xOSRxY8
 gaxqWI4mliR97UnwbSdeOOTmPlQmiN78Kdgro9hTGA9dLYQnFdgTPO1oRYKJlolc2y9Z
 HpOohp4nAfyKppYrmyn20VO1ViJazd3Khb8wqFrc/rAnhFEPNMmkNDCYjo60TraXgtGg
 XSU8USFm9wz0u9rh9SV+Xrd97i4I0/nl2xM/7VxMCQ1MJ+I0KCqAGS4dsqGDOEmw7xb5
 j48g==
X-Gm-Message-State: APjAAAWUUIOvE3H+zjLG17OsVvlIhVevV/jF0Ru8vAjYoYhS8N7i1o4b
 D/0wTmp6MG3oHGk3aoN0k/Gs4b3yLZ9Fc2gHGAk=
X-Google-Smtp-Source: APXvYqwOT7nfn0Ec9lVwVForvy74QSNQH5ELZWBScMVTNkQThEwunqzpps+HxqPvYzZryhqp4taHn31cUSXBj95IN0s=
X-Received: by 2002:ac8:2a05:: with SMTP id k5mr46480681qtk.304.1558364372377; 
 Mon, 20 May 2019 07:59:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190520134605.29116-1-christian@brauner.io>
 <CAK8P3a1cZZ6SQe5mGjhga=MgTvCGF6OKyjvosR8J6z6EpH+rVA@mail.gmail.com>
 <20190520144822.xfaifawi65jus6ng@brauner.io>
In-Reply-To: <20190520144822.xfaifawi65jus6ng@brauner.io>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 20 May 2019 16:59:16 +0200
Message-ID: <CAK8P3a2u2gftAuzTfspAUCvWPPE0YVNOATFPN__tEQoO4GXg-g@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] pid: add pidfd_open()
To: Christian Brauner <christian@brauner.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_075934_538915_94DB83E4 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>, Joel Fernandes <joel@joelfernandes.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 sparclinux <sparclinux@vger.kernel.org>, Linux API <linux-api@vger.kernel.org>,
 "Reshetova, Elena" <elena.reshetova@intel.com>,
 linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Daniel Colascione <dancol@google.com>,
 Android Kernel Team <kernel-team@android.com>,
 "Serge E. Hallyn" <serge@hallyn.com>, linux-xtensa@linux-xtensa.org,
 Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Suren Baghdasaryan <surenb@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Parisc List <linux-parisc@vger.kernel.org>, cyphar@cyphar.com,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-mips@vger.kernel.org,
 Andy Lutomirski <luto@amacapital.net>,
 "Eric W . Biederman" <ebiederm@xmission.com>,
 alpha <linux-alpha@vger.kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 4:48 PM Christian Brauner <christian@brauner.io> wrote:
>
> On Mon, May 20, 2019 at 04:37:03PM +0200, Arnd Bergmann wrote:
> > On Mon, May 20, 2019 at 3:46 PM Christian Brauner <christian@brauner.io> wrote:
> > >
> > > In line with Arnd's recent changes to consolidate syscall numbers across
> > > architectures, I have added the pidfd_open() syscall to all architectures
> > > at the same time.
> >
> > Thanks! I've checked that the ones you have added are all
> > done correctly. However, double-checking that you got all of them,
> > I noticed that you missed mips-o32 and mips-n64. With those added:
> >
> > Acked-by: Arnd Bergmann <arnd@arndb.de>
>
> Perfect, will plumb mips-o32 and mips-n64 and resend once more with your
> ack added.
> Sidenote: You plan on merging the common syscall tables or will there be
> a script to do this work per-arch in the future?

David Howells also asked about this. I think having a common table will
be best in the long run, patches welcome.

As you noticed, there are still a few minor differences between the files
on mips, arm, x86, alpha and s390, and we are missing the .tbl files
for arm-compat and asm-generic, as well as an architecture independent
script.

Once that is all taken care of, we can move the entries for syscall
403 and higher into a common file, and change the script to pick
up the contents from there in addition to the architecture specific
file.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
