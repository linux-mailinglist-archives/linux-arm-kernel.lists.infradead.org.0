Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 040732391E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:01:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HSMIJlIZc6ziB0rkhSRFOpu25EL3Ok3AyETr/Ej18OE=; b=pHfV15nTrp/MQW
	VWcKCByi9ebD/3BhEnprjVuIjAGVv9LhnslKfq0qN1+njsJ2Qok9g4QO2BrK22R8Xu8/HQG28NcXp
	qV9Irdn76zSXMGWj82KnSxXgeGV/vFEERW56aD5Q7YU4rPjpdhnN6YExlo3qNAAhYCSNOPp90jtuD
	u0KOJs9/xLnxcFRcXlK/0bVcilhb9j8oHeyNp/SMp4H8yj5FEUsmjzZ74FeHYdLvrt3R7nfpZo4hl
	38YtN+F1z80mAtdQ82mJmaJX9WDhlMtOHkUUx88wO/zk0L4u2nVwHvOn4EtNle4fJOTo/tpNFxgik
	nqFuLv9D11CBpIfFQJPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSir7-0001Y8-UQ; Mon, 20 May 2019 14:01:33 +0000
Received: from mail-lf1-f65.google.com ([209.85.167.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSiqz-0001Wn-Ec
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:01:27 +0000
Received: by mail-lf1-f65.google.com with SMTP id h13so10416546lfc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:01:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k5M5HG3kl0pUgSauCfNvkeVzL85t6u8JUUHdn9mhx04=;
 b=Hd0xO2LSEKxjRAdYyiCeIuA0OM8yiO81PvtoAaL4VxPdqs/sus3qw1Y0DlTUwAWZ8F
 3Hv/5oO9TolI6YmQMtiZKuIrizqeQIv3F5Q6teZr5FtjHMe2zVJ0kzDLlhMpBBWe2Uzz
 R93LgkDHYQlE7O5JWKOkx1N0qAxsdHDnX0cnw85+W0oJyVrFq1KNZ1PH9bPVmx1ON9fL
 C2Y7bZdd+3NpEMCfb3MzbPu72AubWCq2zL6qrXhX7IB9jfY2bc5oL00WNGg/bk03M8GM
 00hPdHA8baf8dZWXV7Yl/Hvt3bziaFIyKWr6v0nNLygHBGqyR2oDootD1e6oe4K9jOu2
 lCiA==
X-Gm-Message-State: APjAAAUycuRowHLGZgaeZz268BJkZfdaXX2Za6E4ZPSYAJeSKbKAzYRl
 5EVzAeTULPBiO5CPaZ1bYwFf8rY44Zl6d4p1boo=
X-Google-Smtp-Source: APXvYqzBXH0Bn12gU+O/WKysSzgvfoDb4ZQdIiC8js/Lv4/NzbFVAIlWC//CHbjkYuLxxyAwqyeGdyzFagcgQl6QGI8=
X-Received: by 2002:a19:a887:: with SMTP id r129mr1920861lfe.16.1558360883054; 
 Mon, 20 May 2019 07:01:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190520134605.29116-1-christian@brauner.io>
In-Reply-To: <20190520134605.29116-1-christian@brauner.io>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 20 May 2019 16:00:44 +0200
Message-ID: <CAMuHMdVfy-fWVGzd8orLHbC=pOmUH-ocvhjj2DCZdEQRxctYQA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] pid: add pidfd_open()
To: Christian Brauner <christian@brauner.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_070125_484982_E1EE0E61 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.65 listed in wl.mailspike.net]
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
 David Howells <dhowells@redhat.com>, Joel Fernandes <joel@joelfernandes.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 sparclinux <sparclinux@vger.kernel.org>, elena.reshetova@intel.com,
 Linux-Arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Daniel Colascione <dancol@google.com>,
 linux-mips@vger.kernel.org, Android Kernel Team <kernel-team@android.com>,
 "Serge E. Hallyn" <serge@hallyn.com>, linux-xtensa@linux-xtensa.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, surenb@google.com,
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

On Mon, May 20, 2019 at 3:46 PM Christian Brauner <christian@brauner.io> wrote:
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
> caller can currently not create a pollable pidfd. This is a problem for
> Android's low memory killer (LMK) and service managers such as systemd.
> Both are examples of tools that want to make use of pidfds to get reliable
> notification of process exit for non-parents (pidfd polling) and race-free
> signal sending (pidfd_send_signal()). They intend to switch to this API for
> process supervision/management as soon as possible. Having no way to get
> pollable pidfds from PID-only processes is one of the biggest blockers for
> them in adopting this api. With pidfd_open() making it possible to retrieve
> pidfds for PID-based processes we enable them to adopt this api.
>
> In line with Arnd's recent changes to consolidate syscall numbers across
> architectures, I have added the pidfd_open() syscall to all architectures
> at the same time.
>
> Signed-off-by: Christian Brauner <christian@brauner.io>
> Reviewed-by: Oleg Nesterov <oleg@redhat.com>

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
