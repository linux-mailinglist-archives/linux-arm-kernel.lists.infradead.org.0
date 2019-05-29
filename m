Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7BA32DC69
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 14:05:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cCpredNDUw7cBGA5ftfN05B37CQxbXkOpYSn8P1C9eE=; b=dKrOa5v2saZfP1
	WBci88klWjroA3hMI8UXqDyJ/xUBfj17QMAavJdEhQthLO2PECO9Iz58fNrC6ImYmjlkia7VNhwi5
	FbuDBLuIN2eoHUT+z2wiZA4ktJ1M8poETc4u0vKa2t1dI07+E6NC7FBo1RaYWjI/8CZIai3HBjNGR
	djzgyyqpxkoqZTCgLHHKK4XWKXNA5rKqqiLpIIPDRgKrPBtXgCy4Ob7CuuFw5q1ZTsQxlhDuOvCuZ
	fb/z8ufepPM2/npl8IPLbwCgTvPZATTJXtuYM/8/jWkvoLxDz3dqYnW7W4EonAyP5U4MQRcqI2HPB
	KLKszHG/tqDgdWwXyqPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVxL0-0005qq-DV; Wed, 29 May 2019 12:05:46 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVxKs-0005qW-Tx
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 12:05:40 +0000
Received: by mail-qk1-f195.google.com with SMTP id b18so1211411qkc.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 05:05:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uptjHgaBaplGgf+wVSZU2eUIoKk2cN8EqiU/ukCqtno=;
 b=ewM4aq9Qci/stT5watkohp1JeR9V1j0TcX2Xe8jUlejXK2s6B//BZ6hl6WUxn6F40C
 1exBqnceT3K8ABBTezLT6qy900vwFZjcRRPwMKXXX/7dwkdnh6kC7AePC2ElClPPXHPW
 HL3sROAAcKY1Kbwb9dz2Lww2YFZTJ5jq3j+DHB4IRjXrDFNVEoE7FIf1eZEZ9M0SW5rm
 /DIBPWzUWQrF7nvAIFTAg7OX3D7QXt9JzgGZKSG2HUXwlvHMNPhJShCuDkKUNjswrorh
 +N4Gi4bZYfj0YRms4/UFhA9FpT40ysrMn+oIAqXZ8aItazlY0bX5OzDl7GSYB7v2T+YV
 +LDQ==
X-Gm-Message-State: APjAAAWx1IxP1pVlZqUpJgTQOLi4JV142HKW9RMEDEjKvJfhDmn+7xyA
 zkY3Uttpkl25Ez0OewM0F/jYTr+1JpWM2XIUEj4giXcmb4c=
X-Google-Smtp-Source: APXvYqyekV82e1W5v+9f5Zmh22yFEE89mido7w9iaejsZbo7/EiB96l90U3/3zjongBQz+oYmXVaIj2lHXggVe4sbas=
X-Received: by 2002:a05:620a:1085:: with SMTP id
 g5mr80432085qkk.182.1559131537731; 
 Wed, 29 May 2019 05:05:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190524201817.16509-1-jannh@google.com>
 <20190525144304.e2b9475a18a1f78a964c5640@linux-foundation.org>
 <CAG48ez36xJ9UA8gWef3+1rHQwob5nb8WP3RqnbT8GEOV9Z38jA@mail.gmail.com>
 <6956cfe5-90d4-aad4-48e3-66b0ece91fed@linux-m68k.org>
In-Reply-To: <6956cfe5-90d4-aad4-48e3-66b0ece91fed@linux-m68k.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 29 May 2019 14:05:21 +0200
Message-ID: <CAK8P3a0b7MBn+84jh0Y2zhFLLAqZ2tMvFDFF9Kw=breRLH4Utg@mail.gmail.com>
Subject: Re: [PATCH] binfmt_flat: make load_flat_shared_library() work
To: Greg Ungerer <gerg@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_050538_966919_CBF6997F 
X-CRM114-Status: GOOD (  23.47  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Nicolas Pitre <nicolas.pitre@linaro.org>,
 Sergei Poselenov <sposelenov@emcraft.com>,
 Linux/m68k <linux-m68k@vger.kernel.org>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, kernel list <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 12:56 PM Greg Ungerer <gerg@linux-m68k.org> wrote:
> On 27/5/19 11:38 pm, Jann Horn wrote:
> > On Sat, May 25, 2019 at 11:43 PM Andrew Morton
> > <akpm@linux-foundation.org> wrote:
> >> On Fri, 24 May 2019 22:18:17 +0200 Jann Horn <jannh@google.com> wrote:
> >>> load_flat_shared_library() is broken: It only calls load_flat_file() if
> >>> prepare_binprm() returns zero, but prepare_binprm() returns the number of
> >>> bytes read - so this only happens if the file is empty.
> >>
> >> ouch.
> >>
> >>> Instead, call into load_flat_file() if the number of bytes read is
> >>> non-negative. (Even if the number of bytes is zero - in that case,
> >>> load_flat_file() will see nullbytes and return a nice -ENOEXEC.)
> >>>
> >>> In addition, remove the code related to bprm creds and stop using
> >>> prepare_binprm() - this code is loading a library, not a main executable,
> >>> and it only actually uses the members "buf", "file" and "filename" of the
> >>> linux_binprm struct. Instead, call kernel_read() directly.
> >>>
> >>> Cc: stable@vger.kernel.org
> >>> Fixes: 287980e49ffc ("remove lots of IS_ERR_VALUE abuses")
> >>> Signed-off-by: Jann Horn <jannh@google.com>
> >>> ---
> >>> I only found the bug by looking at the code, I have not verified its
> >>> existence at runtime.
> >>> Also, this patch is compile-tested only.
> >>> It would be nice if someone who works with nommu Linux could have a
> >>> look at this patch.
> >>
> >> 287980e49ffc was three years ago!  Has it really been broken for all
> >> that time?  If so, it seems a good source of freed disk space...
> >
> > Maybe... but I didn't want to rip it out without having one of the
> > maintainers confirm that this really isn't likely to be used anymore.
>
> I have not used shared libraries on m68k non-mmu setups for
> a very long time. At least 10 years I would think.

I think Emcraft have a significant customer base running ARM NOMMU
Linux, I wonder whether they would have run into this (adding
Sergei to Cc).
My suspicion is that they use only binfmt-elf-fdpic, not binfmt-flat.

The only architectures I see that enable binfmt-flat are sh, xtensa
and h8300, but only arch/sh uses CONFIG_BINFMT_SHARED_FLAT
for a few machine specific configurations, and I'm in turn fairly sure
those machines have not run a recent kernel in many years.

The one SH nommu platform likely to have users is j2, and that is
probably always used with musl-libc with elf-fdpic (given that
Rich Felker maintains both the kernel port and the library).

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
