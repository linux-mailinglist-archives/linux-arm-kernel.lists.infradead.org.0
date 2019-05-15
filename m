Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 681941F46A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 14:29:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=otNv8+eCiKysUb31cT4mZrf+erWbrPdrqpdKnid6mJE=; b=tu3+JFCaX44XzM
	f7/hIWRj2XC506n2r2YEh24/XxyJlWwVShHY3mjJDJ4XaNemx+JKRZjcFbkSOyVysdIalPD7Ilmds
	/+LH5JhIYDJPBFWmGiOHY1aNsSZPPKjVNTFF3/+9+ldPacZlM7huiXGJz8av8AtZuI5WLwRLlbCGM
	avzlBPwmR6sCYnsXoI2znSJ7QE2oscIfLsiv9gnutYP1VvUy6DglPxNbiNyQ20w8n27mhwzQDbeAs
	kusFM5uSEW432glVFSjYvsmiA0XZ7RxQaWhqdMjfee9avGe92Div2vqBVnTE9HpihDGEZUUPwteVb
	Jhl0InB1UOhuEk68eITA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQt2M-0008Fb-K6; Wed, 15 May 2019 12:29:34 +0000
Received: from mail-vs1-f67.google.com ([209.85.217.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQt2F-0008F6-6u
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 12:29:28 +0000
Received: by mail-vs1-f67.google.com with SMTP id z11so1549840vsq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 05:29:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cgdsZEIH2W5eTMf3uaLx4q/hdk2jHzw6fNgJE2/Ss+k=;
 b=blmEvL6PFbvo5G5v64MbGUph7CEDPIgAwWNUAe2zmmwoVb0Lir049UxE+NeQjCQ1XI
 JorTs4zmZ+Kf7zO6tnTSmCzGJZ7KPXKOFZRlTNdgmdcwaGJ/x6isTzRcK0a3fSf8uagI
 P8cHFNxIBCajy9YWkXuIkFfAHK/UEfR5x+KqYMDWHZ0QZ9gPfbyZ3btYgLpF+Rn3kkP6
 kMzgBbsSvWh20FnbBkbQxhmqx/xRsCoxeyENvvbGkcbTTERTjfFi+x2ovuJA3tmhGyu0
 1GDaZaEmrflUUJzmdJde/vUwrnyJsDdoR4G5PT3bF5WfEV5hFbz4CZSo0WZb+hMvYWcm
 Khfw==
X-Gm-Message-State: APjAAAV7GT6hrLMdPFxlLudY1ZxU/RwHOy/mHd2K25o9AzdRq2QjsxEb
 Pgq89IMsrQ0fafweg5ERnhBjyKLbNF3AZRxPym4=
X-Google-Smtp-Source: APXvYqzDAJzfhabDwTYAYFXSOnY37iC0IXZoLvq4QwE8CVpdlrcgi5gg8xMkv97L4kuyL6Wc28Zhp7a2DMatRjdZeGY=
X-Received: by 2002:a67:8e03:: with SMTP id q3mr20471095vsd.152.1557923365973; 
 Wed, 15 May 2019 05:29:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190515100400.3450-1-christian@brauner.io>
In-Reply-To: <20190515100400.3450-1-christian@brauner.io>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 15 May 2019 14:29:14 +0200
Message-ID: <CAMuHMdUKJOP2H4cVy0Na5hjn2-HUbfvE_zbctS4L9d-h9Oru4Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] pid: add pidfd_open()
To: Christian Brauner <christian@brauner.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_052927_452776_5EFE9BF7 
X-CRM114-Status: GOOD (  17.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.67 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
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
Cc: "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>,
 Linux-sh list <linux-sh@vger.kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 David Howells <dhowells@redhat.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 sparclinux <sparclinux@vger.kernel.org>, elena.reshetova@intel.com,
 Linux-Arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Parisc List <linux-parisc@vger.kernel.org>, cyphar@cyphar.com,
 Linux API <linux-api@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andy Lutomirski <luto@amacapital.net>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 alpha <linux-alpha@vger.kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 "torvalds@linux-foundation.org" <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 12:04 PM Christian Brauner <christian@brauner.io> wrote:
> This adds the pidfd_open() syscall. It allows a caller to retrieve pollable
> pidfds for a process which did not get created via CLONE_PIDFD, i.e. for a
> process that is created via traditional fork()/clone() calls that is only
> referenced by a PID:
>
> int pidfd = pidfd_open(1234, 0);
> ret = pidfd_send_signal(pidfd, SIGSTOP, NULL, 0);
>
> With the introduction of pidfds through CLONE_PIDFD it is possible to
> created pidfds at process creation time.
> However, a lot of processes get created with traditional PID-based calls
> such as fork() or clone() (without CLONE_PIDFD). For these processes a
> caller can currently not create a pollable pidfd. This is a huge problem
> for Android's low memory killer (LMK) and service managers such as systemd.
> Both are examples of tools that want to make use of pidfds to get reliable
> notification of process exit for non-parents (pidfd polling) and race-free
> signal sending (pidfd_send_signal()). They intend to switch to this API for
> process supervision/management as soon as possible. Having no way to get
> pollable pidfds from PID-only processes is one of the biggest blockers for
> them in adopting this api. With pidfd_open() making it possible to retrieve
> pidfd for PID-based processes we enable them to adopt this api.
>
> In line with Arnd's recent changes to consolidate syscall numbers across
> architectures, I have added the pidfd_open() syscall to all architectures
> at the same time.
>
> Signed-off-by: Christian Brauner <christian@brauner.io>

>  arch/m68k/kernel/syscalls/syscall.tbl       |  1 +

Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
