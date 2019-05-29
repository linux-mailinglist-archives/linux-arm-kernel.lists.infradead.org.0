Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A267E2DEAE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 15:42:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u3FEyld3cL1vx2iKKw0flH4dJipTo5Zfu/i3bn2FFCo=; b=nhH7a/zHcv6onh
	dGiV3fCmMGAAwZyPYoHpjMAUbsJSYulf4TS8lUM6Uk5rgcj3T0wLT2O5Hp7BQHBkQpuAxNyO2GolN
	Qny3dYfWNSofBZSEXLLaQmQt1DfWW3p6UOWNy1cXNy77Y8eZ0H964OVtZtTWlJgsycS1P3pX3P2+y
	Yr6CgVyx1SNDqGFfOwHL8BbQZ/37ihOrU0/H1ej7Uop1vFRcPt+/NnONlgkUxs3aEINay3jiItZnO
	4xfz0c4ulGUa5paqLYctckUhbClCf1bOYv1u/2dFKbiKCI9r8M2AU+UuDhSXfJmh5yNN3M4Bmub1p
	9hpf8sxh45Kd55K/ZmPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVyq5-0002Bo-Da; Wed, 29 May 2019 13:41:57 +0000
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVypx-0002BR-C4
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 13:41:50 +0000
Received: by mail-qk1-f196.google.com with SMTP id j1so1421644qkk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 06:41:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B4Hu2BykjV2XUgQjXYreykG9CRGtaQihhtWlraD16NE=;
 b=IlIqRoBNRb31bQr8Inf78ZHK1i2QsrS1zfOS3nc3Xu9kJsXHPieLxRhMGddL+vrHOj
 BguE8AplZ3bugW3mvsuQhaAJ6UN8cEBEPU1JCotmQaazeOu/ktZJIEJ18EHLhmlon2er
 NYIO+/im3vc6CMQYnYp8giDLdA2DWZxMlciu6HxzM1kE4om+2qsqjk1kslwDsX0445mX
 Vexc+mez12cO1Oq5tRgsFq+ztPi3E2ppmy8uNqrD8VfNChB9HPEwsrQwIByYRKISJVgx
 d5f6wAS1C15PLQZ3kd41W4DePeNNF7OA/1e1H/27tpA6AK3LZra3YWcGEerXotxRXihJ
 92hQ==
X-Gm-Message-State: APjAAAXPSm7BRJWYHbYg3/lU90/dEXnYbnkZRsQSXUwDoUdrohsId662
 VmULc7NG8NTS5U/GZZ4DUa/t+1Ru5DQg02jamIE=
X-Google-Smtp-Source: APXvYqwI32DYHBzUvKVuPe+aOANmgUoQBTNNnfm9jjZUjMGmB4YKECE25ibchquT1Q2cVjHAmLwbc+ySXwB2JGCPHNI=
X-Received: by 2002:a05:620a:1085:: with SMTP id
 g5mr80895478qkk.182.1559137308118; 
 Wed, 29 May 2019 06:41:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190524201817.16509-1-jannh@google.com>
 <20190525144304.e2b9475a18a1f78a964c5640@linux-foundation.org>
 <CAG48ez36xJ9UA8gWef3+1rHQwob5nb8WP3RqnbT8GEOV9Z38jA@mail.gmail.com>
 <6956cfe5-90d4-aad4-48e3-66b0ece91fed@linux-m68k.org>
 <CAK8P3a0b7MBn+84jh0Y2zhFLLAqZ2tMvFDFF9Kw=breRLH4Utg@mail.gmail.com>
 <889fc718-b662-8235-5d60-9d330e77cf18@linux-m68k.org>
In-Reply-To: <889fc718-b662-8235-5d60-9d330e77cf18@linux-m68k.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 29 May 2019 15:41:31 +0200
Message-ID: <CAK8P3a0zj126XSGjMbiDJDkY8sF+6JNWH0VsJEUAga6OGHV0vg@mail.gmail.com>
Subject: Re: [PATCH] binfmt_flat: make load_flat_shared_library() work
To: Greg Ungerer <gregungerer00@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_064149_412171_6B324C22 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
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

On Wed, May 29, 2019 at 2:29 PM Greg Ungerer <gregungerer00@gmail.com> wrote:
> On 29/5/19 10:05 pm, Arnd Bergmann wrote:
> > On Tue, May 28, 2019 at 12:56 PM Greg Ungerer <gerg@linux-m68k.org> wrote:
> >> On 27/5/19 11:38 pm, Jann Horn wrote:
> >>> On Sat, May 25, 2019 at 11:43 PM Andrew Morton
> >>> <akpm@linux-foundation.org> wrote:
> >>> Maybe... but I didn't want to rip it out without having one of the
> >>> maintainers confirm that this really isn't likely to be used anymore.
> >>
> >> I have not used shared libraries on m68k non-mmu setups for
> >> a very long time. At least 10 years I would think.
> >
> > I think Emcraft have a significant customer base running ARM NOMMU
> > Linux, I wonder whether they would have run into this (adding
> > Sergei to Cc).
> > My suspicion is that they use only binfmt-elf-fdpic, not binfmt-flat.
> >
> > The only architectures I see that enable binfmt-flat are sh, xtensa
> > and h8300, but only arch/sh uses CONFIG_BINFMT_SHARED_FLAT
>
> m68k uses enables it too. It is the only binary format supported
> when running no-mmu on m68k. (You can use it with MMU enabled too
> if you really want too).

My mistake, I meant to write 'the only architectures /other than m68k/",
which you had already mentioned above.

    Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
