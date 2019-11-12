Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FA9F9B4C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 21:55:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=11bqSu4JaxqT47IqejLf/MXyu5FkNUbMSUtXca4M0kY=; b=E5kjyX6N9fziqC
	5mzg0ir1sOxOeypsTeihVSlswj7t6vG7GciI/AyUWpQkskk1h5HA79uVJjyMU92DYRXAxtiycDGCU
	lOWTv3MOklzNs3T2Fy+um5r8du4kI2gZ9+8mZJ2nVZGca/4+/g6eltz8MMO6Uds13AIx2KfDl3538
	70UPJDDb396JjPsbRylReAGLdgA/hhH5z5MqpYRKy8xbjo0uAQd293bAsu5jCnEQ5RA+ytZJoFTSt
	cNWu4dMu1204oO/pkxuD6dGU6O1WbufUfozmluXrNavyA99lHIEDmeuIrY2gKrZeWpf4y345WmJCP
	g48UTmrM7zpbPjJfshlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUdCD-0007Fp-S4; Tue, 12 Nov 2019 20:55:29 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUdBw-0006Nf-To
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 20:55:14 +0000
Received: by mail-pf1-x443.google.com with SMTP id c13so14199386pfp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 12:55:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=p3sGAQxZSRJH4UZHNpIdLrEGYPs7j+wXkkL7B23DozY=;
 b=jzJxHJOhBgrxXGo+3hwTEULMtqhW32uUMjkXF6xooOB4YLF0fDp9kjF2ZcEXOqjPmZ
 wb3eB6O717UcTt+tyAbO8B80zA3u9jbuMXSpdMqJOUrOIw/6tlJouhIZBM+a5PnCN1vj
 lat++UKcoOXZLI/EBlS4RFvn1FgV/ybJGuQ4A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=p3sGAQxZSRJH4UZHNpIdLrEGYPs7j+wXkkL7B23DozY=;
 b=n4Ds+ATovn5UMoD6cZOzcE+UoJyGEGKwTdbI5eBoTaVHZaYbWMzbNnRoRl1uqvsh+R
 zsyPSaDi432vxF/HrKcG2Lz3idrST9y4E17EKrl8xIjsU4RikiHJXf2Gjn1/6ILb3mG5
 lfk8R+Do5g/DD9uatv0DoDYWu1XLKyAzaGNF3/vY5+IIUf9IdbRKFpt5SvguOd6x3cpm
 ya07Vwn7GPS0nnOPk54tax2Tmcv+FLuccoKthbdLOy6cUL9BNHMEIPRxqKIm1CgsWOLl
 JV07yUi5IbawdLMHoFHENRo6Mejo6WY28uqnOFc6eVNDJZo8t2zXx1n7U67W2s25ywP+
 5FxQ==
X-Gm-Message-State: APjAAAW2XuFGN3Ksp1aoHZqQ6ncnSIJ4uYUH4Sw35F3cKQ4t3jOTnzWZ
 q5HMSC+948C/2W5c7kuczry++w==
X-Google-Smtp-Source: APXvYqwhpXomPvDY55lP5tiV27rDluqLmojMV7DK9uMTENiwD2XDmRYC37Ogc+dw1yE3QtfbhDL3ZQ==
X-Received: by 2002:a17:90a:cd03:: with SMTP id
 d3mr9056375pju.137.1573592111764; 
 Tue, 12 Nov 2019 12:55:11 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id l74sm11993pje.29.2019.11.12.12.55.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 12:55:10 -0800 (PST)
Date: Tue, 12 Nov 2019 12:55:09 -0800
From: Kees Cook <keescook@chromium.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v2 11/29] vmlinux.lds.h: Replace RODATA with RO_DATA
Message-ID: <201911121252.25720DC6@keescook>
References: <20191011000609.29728-1-keescook@chromium.org>
 <20191011000609.29728-12-keescook@chromium.org>
 <CAMuHMdXfPyti1wFBb0hhf3CeDSQ=zVv7cV-taeYCmDswMQkXPQ@mail.gmail.com>
 <201911110922.17A2112B0@keescook>
 <CAMuHMdUJ8QPvqf51nVmOg1Zm20SNT7pXR72z=qmco=ecwawZ7A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdUJ8QPvqf51nVmOg1Zm20SNT7pXR72z=qmco=ecwawZ7A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_125513_017801_F1883690 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux-Arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Michal Simek <monstr@monstr.eu>,
 the arch/x86 maintainers <x86@kernel.org>,
 "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>,
 linux-c6x-dev@linux-c6x.org, Arnd Bergmann <arnd@arndb.de>,
 linux-xtensa@linux-xtensa.org, Michael Ellerman <mpe@ellerman.id.au>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Borislav Petkov <bp@alien8.de>,
 Parisc List <linux-parisc@vger.kernel.org>, Andy Lutomirski <luto@kernel.org>,
 alpha <linux-alpha@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rick Edgecombe <rick.p.edgecombe@intel.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 07:08:51PM +0100, Geert Uytterhoeven wrote:
> Hi Kees,
> 
> On Mon, Nov 11, 2019 at 6:23 PM Kees Cook <keescook@chromium.org> wrote:
> > On Mon, Nov 11, 2019 at 05:58:06PM +0100, Geert Uytterhoeven wrote:
> > > On Fri, Oct 11, 2019 at 2:07 AM Kees Cook <keescook@chromium.org> wrote:
> > > > There's no reason to keep the RODATA macro: replace the callers with
> > > > the expected RO_DATA macro.
> > > >
> > > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > > ---
> > > >  arch/alpha/kernel/vmlinux.lds.S      | 2 +-
> > > >  arch/ia64/kernel/vmlinux.lds.S       | 2 +-
> > > >  arch/microblaze/kernel/vmlinux.lds.S | 2 +-
> > > >  arch/mips/kernel/vmlinux.lds.S       | 2 +-
> > > >  arch/um/include/asm/common.lds.S     | 2 +-
> > > >  arch/xtensa/kernel/vmlinux.lds.S     | 2 +-
> > > >  include/asm-generic/vmlinux.lds.h    | 4 +---
> > > >  7 files changed, 7 insertions(+), 9 deletions(-)
> > >
> > > Somehow you missed:
> > >
> > >     arch/m68k/kernel/vmlinux-std.lds:  RODATA
> > >     arch/m68k/kernel/vmlinux-sun3.lds:      RODATA
> >
> > Argh. I've sent a patch; sorry and thanks for catching this. For my own
> > cross-build testing, which defconfig targets will hit these two linker
> > scripts?
> 
> vmlinux-sun3.lds: sun3_defconfig
> vmlinux-std.lds: All other classic 680x0 targets with an MMU, e.g. plain
>                  defconfig aka multi_defconfig.

Excellent, thank you; I've updated my multi-arch build list. :)

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
