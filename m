Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A599176E17
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 05:33:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y2mBDYPRxUAgbqgrgGN9r+ldBsXv6k8g0+uJydnUH5s=; b=tAZSJT6enKSxQm
	0vrYNOGmQzkzeWy6ncE9YTphmjPLC+duF18KtVdqBtjX4106wnEp2lDvyh9jnb8RvsEhA2mvtnMV5
	DWYEq3hiuNthSI2kI7l8SKcY772Kgq0B1cDVU0x8pPQA4JvgTz4HqoZvLIHg5CcVvYTAB6O+9xLEC
	B/7cyEQpWAqxOcw5v3rKnthyYnNCoHfebe/b0qUzCEwGpX/9s6FU3F6IzNNB5dNaCAKl1TIcfY6UU
	ThPphiYy9Gz29iziNbEjUla2aqujhBZp8KixjfMm/LnTAeH70fGu0/Emz0w8rrVgNGTsfqKbS6at7
	/hw2hI8owLMWbDRdHLPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8zEr-0003s0-Az; Tue, 03 Mar 2020 04:33:01 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8zEk-0003qt-8V
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 04:32:55 +0000
Received: by mail-pj1-x1043.google.com with SMTP id d7so756632pjw.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 20:32:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=PAeuIw+hEri4xfaGtdCge6RjFwR9k/M6VeehKKOz2Zg=;
 b=ZO61SxyiPLNPpW1EXlXI4x/HWOeu8rffpoS2+/Bt7b2ua54SalZEEkqudi6diZIkXh
 cHuWJrfIFBFUMQECEu4k0LXTwfeayiwHTSI1Fd//oRS+ft8IegW8BxZ6m+yG/+KLbXEF
 rCmTGOMC5dQjrfF/eviJrA/wJr34l+fzh5k2I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PAeuIw+hEri4xfaGtdCge6RjFwR9k/M6VeehKKOz2Zg=;
 b=P3hzOWkq2Nl9KOdhLyJLzgTh9B6xFdSKvoVPp0JuSDTUpl6dt1svsFtJhbTGo807xg
 XV04PBqxtry5q3l7nhenWY7TgsuY+Q7tAR96tI+rvJtuqtTeO2lyFPNXbd1aYHv1BsJt
 GX5wjDw66LMhxX0A11kM9vtvFnl18Y27uwfN1zzcCi9QkiAQYF6OcoW6HdVfNi1hZop7
 HDlOHGwmCP9+Vv3T1IkseaFcFRZFv3D35Si+C3VIKMLe77fKLukQogTyybNx1ojUjatw
 A6ZjnC+JChg0eNbgS7KuRBfi+YizkwTIWee7DAb8PyRva86HA5A2i+jgnqQbxvz6BzMY
 GVIg==
X-Gm-Message-State: ANhLgQ1FaeyNUNXxjoQDdstJC1ARY9SM6fT3hLu/pLnoS9laeaWubLlb
 X6diri6GEQKhbY3kmzXWGvkojQ==
X-Google-Smtp-Source: ADFU+vuu87r1SlcNGnctFE2kHHSUxB6qWqCEisCd/TiEgwd8JkcqMCC9rIaYFVZCii+GL+ZBtK9QSw==
X-Received: by 2002:a17:90a:be04:: with SMTP id
 a4mr2011764pjs.73.1583209973125; 
 Mon, 02 Mar 2020 20:32:53 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id f127sm23298618pfa.112.2020.03.02.20.32.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 20:32:52 -0800 (PST)
Date: Mon, 2 Mar 2020 20:32:51 -0800
From: Kees Cook <keescook@chromium.org>
To: Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH 0/9] Enable orphan section warning
Message-ID: <202003022029.B549AA3@keescook>
References: <20200228002244.15240-1-keescook@chromium.org>
 <CA+icZUVRnjOWKZynAGDniXD_H9KRccONmeKHs25DPPU1c8ZcGg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+icZUVRnjOWKZynAGDniXD_H9KRccONmeKHs25DPPU1c8ZcGg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_203254_325706_330CAD4B 
X-CRM114-Status: GOOD (  20.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, "H.J. Lu" <hjl.tools@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-kbuild@vger.kernel.org,
 Peter Collingbourne <pcc@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
 James Morse <james.morse@arm.com>, linux-arch@vger.kernel.org,
 Borislav Petkov <bp@suse.de>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 07:51:21AM +0100, Sedat Dilek wrote:
> On Fri, Feb 28, 2020 at 1:22 AM Kees Cook <keescook@chromium.org> wrote:
> > This series depends on tip/x86/boot (where recent .eh_frame fixes[3]
> > landed), and has a minor conflict[4] with the ARM tree (related to
> > the earlier mentioned bug). As it uses refactorings in the asm-generic
> > linker script, and makes changes to kbuild, I think the cleanest place
> > for this series to land would also be through -tip. Once again (like
> > my READ_IMPLIES_EXEC series), I'm looking to get maintainer Acks so
> > this can go all together with the least disruption. Splitting it up by
> > architecture seems needlessly difficult.
> 
> Hi Kees,
> 
> is this an updated version of what you have in your
> kees/linux.git#linker/orphans/x86-arm Git branch?

Hi; yes indeed.

> Especially, I saw a difference in [2] and "[PATCH 4/9] x86/boot: Warn
> on orphan section placement"
> 
> [ arch/x86/boot/compressed/Makefile ]
> 
> +KBUILD_LDFLAGS += --no-ld-generated-unwind-info
> 
> Can you comment on why this KBUILD_LDFLAGS was added/needed?

It looks like the linker decided to add .eh_frame sections even when all
the .o files lacked it. Adding this flag solved it (which I prefer over
adding it to DISCARD).

> I like when people offer their work in a Git branch.
> Do you plan to do that?

Since it was based on a -tip sub-branch I didn't push a
copy, but since you asked here it is:
https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=orphans/tip/x86/boot

And this email can serve as a "ping" to the arch maintainers too...
does this all look okay to you? I think it'd be a nice improvement. :)

Thanks!

-Kees

> Thanks.
> 
> Regards,
> - Sedat -
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=linker/orphans/x86-arm
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/commit/?h=linker/orphans/x86-arm&id=e43aa77956c40b9b6db0b37b3780423aa2e661ad
> 
> 
> 
> > H.J. Lu (1):
> >   Add RUNTIME_DISCARD_EXIT to generic DISCARDS
> >
> > Kees Cook (8):
> >   scripts/link-vmlinux.sh: Delay orphan handling warnings until final
> >     link
> >   vmlinux.lds.h: Add .gnu.version* to DISCARDS
> >   x86/build: Warn on orphan section placement
> >   x86/boot: Warn on orphan section placement
> >   arm64/build: Use common DISCARDS in linker script
> >   arm64/build: Warn on orphan section placement
> >   arm/build: Warn on orphan section placement
> >   arm/boot: Warn on orphan section placement
> >
> >  arch/arm/Makefile                             |  4 ++++
> >  arch/arm/boot/compressed/Makefile             |  2 ++
> >  arch/arm/boot/compressed/vmlinux.lds.S        | 17 ++++++--------
> >  .../arm/{kernel => include/asm}/vmlinux.lds.h | 22 ++++++++++++++-----
> >  arch/arm/kernel/vmlinux-xip.lds.S             |  5 ++---
> >  arch/arm/kernel/vmlinux.lds.S                 |  5 ++---
> >  arch/arm64/Makefile                           |  4 ++++
> >  arch/arm64/kernel/vmlinux.lds.S               | 13 +++++------
> >  arch/x86/Makefile                             |  4 ++++
> >  arch/x86/boot/compressed/Makefile             |  3 ++-
> >  arch/x86/boot/compressed/vmlinux.lds.S        | 13 +++++++++++
> >  arch/x86/kernel/vmlinux.lds.S                 |  7 ++++++
> >  include/asm-generic/vmlinux.lds.h             | 11 ++++++++--
> >  scripts/link-vmlinux.sh                       |  6 +++++
> >  14 files changed, 85 insertions(+), 31 deletions(-)
> >  rename arch/arm/{kernel => include/asm}/vmlinux.lds.h (92%)

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
