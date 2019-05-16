Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B9620A4C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 16:56:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T3TRGEQ6hkyNtLF2SM4U6b7BJitou5vcyhVwgSU2rTM=; b=dHmzlACR1FPki3
	YB9+uO7wZGhP/VP9T0QWxctBwkGlo5gH5RTccFUVzK0TlFc9cQ3icpzv7u+Pxh8FzwFfLyqwHAe4t
	rn0m4Iv55eD8OdmHqb9Lvy5C7ivOn0t41ab9g9J7US/zr8XMPyQAzMOWiNHe/P3D++vcVJ6d9R3Bb
	GXNQ+3HHQnMZBXzcCTkQcHr6gZViul0Ax3+qnGgKpjPsGo993O2cAZcJtd/Yk/JHY1u8eAjld+Mbp
	RSNVPT9RjpnzLLi7iWTow/ry290Oskb40qbz7kD5ni2Bw5pZ7z+uVExaKMiDodmnZhzo+EKOMSNU/
	2oFDxhWojjdGuuzcLI7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHo6-0006bw-Hc; Thu, 16 May 2019 14:56:30 +0000
Received: from mail-vk1-f194.google.com ([209.85.221.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHny-0006bO-Mf
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 14:56:24 +0000
Received: by mail-vk1-f194.google.com with SMTP id u131so1100922vke.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 07:56:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=05GCtpont9YEywFzf84z1q9MwrqOSiu52jwQOd14/zs=;
 b=qtUETAHRGh2LdomqY23rYjlSIV0Rr8bsYn1cjqHqjxnhgPFVd210YPL8n8NinmUY9p
 McTXP+dTirZPCk1V4DyFj444yQhLROrW710sE5LhwB9XQs0Q+OvQr81CPPGbhsIYvUxN
 kXdQZFOzq2boUQEZOmAV/cgGO40ZvIva2DY9Jw/W8eyCUeRAPxe/mH9l/hLkX+ed9Z9q
 yb4Z27XaqzeLxwAQBuVXICsUiQWjEWd6FMp4hNOdFvFSg3xekF7kUjaBPLvJei3E4lS3
 bz1Tgsov1rzphYxwZWdorecyeAQYwCZA9Utenqagb1PL7hSIzwbIHIgG+D8OdZXZdeMw
 JM/A==
X-Gm-Message-State: APjAAAWflGHAlA+Tk87YlNaPKO9zin/uwX9sentgnU4ZeJow8BcxN1zf
 H7xTyj/Mxbc0ixt3MYZ8YWbR3aMTl2dJwqFH7ko=
X-Google-Smtp-Source: APXvYqwJkEyDq3zOtk8OfRAodMj5uaJzILWIRnCKOk3dtxYk7GsdMRXLOna8zNuSkRyU4hilGsRAQgTc6aWaoZtw994=
X-Received: by 2002:a1f:c2c1:: with SMTP id s184mr23362067vkf.65.1558018580810; 
 Thu, 16 May 2019 07:56:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190516135944.7205-1-christian@brauner.io>
In-Reply-To: <20190516135944.7205-1-christian@brauner.io>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 16 May 2019 16:56:08 +0200
Message-ID: <CAMuHMdVbUJ0+28Lc2wHPah8UUk8Ou9m81KzLvhrcMsJzz2bX2A@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] pid: add pidfd_open()
To: Christian Brauner <christian@brauner.io>,
 David Howells <dhowells@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_075622_742223_08B9E02A 
X-CRM114-Status: GOOD (  16.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.194 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Joel Fernandes <joel@joelfernandes.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 sparclinux <sparclinux@vger.kernel.org>, elena.reshetova@intel.com,
 Linux-Arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Daniel Colascione <dancol@google.com>,
 linux-mips@vger.kernel.org, "Serge E. Hallyn" <serge@hallyn.com>,
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

Hi Christian, David,

On Thu, May 16, 2019 at 4:00 PM Christian Brauner <christian@brauner.io> wrote:
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

> +428    common  pidfd_open                      sys_pidfd_open

This number conflicts with "[PATCH 4/4] uapi: Wire up the mount API
syscalls on non-x86 arches", which is requested to be included before
rc1.

Note that none of this is part of linux-next.

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
