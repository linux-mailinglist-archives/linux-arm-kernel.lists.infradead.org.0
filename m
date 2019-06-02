Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E474322BB
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Jun 2019 10:37:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gTHSkVCz0SdnSHBfz1NTDW8yTfGOuFH9z+3+w4BUtQQ=; b=RygK1nRYnMWLIv
	+ALvgpB8V5VW4j+RLAtEoFbFBCMnDN+2+fMWhdOgwcOke9l6zSqvCfmnI4EaDmvzFnlhr5boNaxRe
	GfAEE2bla1L2av+pOb8NtPwadlJXuLx2DxDopTWcOf6dDFqbB2QJXrp58pH3cHNt0nztanU54pt5L
	YRJZvJ4QInIAoJzdz2cg2nbt09Gj9hqufvfJInuYRedWXFIz6DJ/9px3Y47Y4RkZG5DhBC+TlZJP0
	vKEnX6lTeEBmonWjmRqtOin4OMh5zxSJndUGTvogmatptpXO4UivObFUIFns/3o243FUaTTYrPdSv
	vVs8d7n54hxpRa0idnSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXLzG-0005eG-Ug; Sun, 02 Jun 2019 08:37:06 +0000
Received: from [176.110.122.116] (helo=ocean.emcraft.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXLz9-0005d5-F7
 for linux-arm-kernel@lists.infradead.org; Sun, 02 Jun 2019 08:37:01 +0000
Received: from [10.8.0.10] (helo=mehome.localdomain)
 by ocean.emcraft.com with esmtps (TLSv1:AES256-SHA:256) (Exim 4.76)
 (envelope-from <sposelenov@emcraft.com>)
 id 1hXKoA-0002FG-S7; Sun, 02 Jun 2019 10:21:37 +0300
Message-ID: <34079b6a34abbad5ab13925dc004e397f70524e3.camel@emcraft.com>
Subject: Re: [PATCH] binfmt_flat: make load_flat_shared_library() work
From: Sergei Poselenov <sposelenov@emcraft.com>
To: Arnd Bergmann <arnd@arndb.de>, Greg Ungerer <gerg@linux-m68k.org>
Date: Sun, 02 Jun 2019 10:21:33 +0300
In-Reply-To: <CAK8P3a0b7MBn+84jh0Y2zhFLLAqZ2tMvFDFF9Kw=breRLH4Utg@mail.gmail.com>
References: <20190524201817.16509-1-jannh@google.com>
 <20190525144304.e2b9475a18a1f78a964c5640@linux-foundation.org>
 <CAG48ez36xJ9UA8gWef3+1rHQwob5nb8WP3RqnbT8GEOV9Z38jA@mail.gmail.com>
 <6956cfe5-90d4-aad4-48e3-66b0ece91fed@linux-m68k.org>
 <CAK8P3a0b7MBn+84jh0Y2zhFLLAqZ2tMvFDFF9Kw=breRLH4Utg@mail.gmail.com>
Organization: Emcraft Systems
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_013659_883058_E18E405D 
X-CRM114-Status: GOOD (  28.28  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Nicolas Pitre <nicolas.pitre@linaro.org>, arch@emcraft.com,
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

Hello Arnd, all,

On Wed, 2019-05-29 at 14:05 +0200, Arnd Bergmann wrote:
> On Tue, May 28, 2019 at 12:56 PM Greg Ungerer <gerg@linux-m68k.org>
> wrote:
> > On 27/5/19 11:38 pm, Jann Horn wrote:
> > > On Sat, May 25, 2019 at 11:43 PM Andrew Morton
> > > <akpm@linux-foundation.org> wrote:
> > > > On Fri, 24 May 2019 22:18:17 +0200 Jann Horn <jannh@google.com>
> > > > wrote:
> > > > > load_flat_shared_library() is broken: It only calls
> > > > > load_flat_file() if
> > > > > prepare_binprm() returns zero, but prepare_binprm() returns
> > > > > the number of
> > > > > bytes read - so this only happens if the file is empty.
> > > > 
> > > > ouch.
> > > > 
> > > > > Instead, call into load_flat_file() if the number of bytes
> > > > > read is
> > > > > non-negative. (Even if the number of bytes is zero - in that
> > > > > case,
> > > > > load_flat_file() will see nullbytes and return a nice
> > > > > -ENOEXEC.)
> > > > > 
> > > > > In addition, remove the code related to bprm creds and stop
> > > > > using
> > > > > prepare_binprm() - this code is loading a library, not a main
> > > > > executable,
> > > > > and it only actually uses the members "buf", "file" and
> > > > > "filename" of the
> > > > > linux_binprm struct. Instead, call kernel_read() directly.
> > > > > 
> > > > > Cc: stable@vger.kernel.org
> > > > > Fixes: 287980e49ffc ("remove lots of IS_ERR_VALUE abuses")
> > > > > Signed-off-by: Jann Horn <jannh@google.com>
> > > > > ---
> > > > > I only found the bug by looking at the code, I have not
> > > > > verified its
> > > > > existence at runtime.
> > > > > Also, this patch is compile-tested only.
> > > > > It would be nice if someone who works with nommu Linux could
> > > > > have a
> > > > > look at this patch.
> > > > 
> > > > 287980e49ffc was three years ago!  Has it really been broken
> > > > for all
> > > > that time?  If so, it seems a good source of freed disk
> > > > space...
> > > 
> > > Maybe... but I didn't want to rip it out without having one of
> > > the
> > > maintainers confirm that this really isn't likely to be used
> > > anymore.
> > 
> > I have not used shared libraries on m68k non-mmu setups for
> > a very long time. At least 10 years I would think.
> 
> I think Emcraft have a significant customer base running ARM NOMMU
> Linux, I wonder whether they would have run into this (adding
> Sergei to Cc).
> My suspicion is that they use only binfmt-elf-fdpic, not binfmt-flat.
> 

We use both, acutally, but all-static. We don't support shared
libraries with bFLT or ELF FDPIC.

Kind regards,
Sergei
> The only architectures I see that enable binfmt-flat are sh, xtensa
> and h8300, but only arch/sh uses CONFIG_BINFMT_SHARED_FLAT
> for a few machine specific configurations, and I'm in turn fairly
> sure
> those machines have not run a recent kernel in many years.
> 
> The one SH nommu platform likely to have users is j2, and that is
> probably always used with musl-libc with elf-fdpic (given that
> Rich Felker maintains both the kernel port and the library).
> 
>       Arnd
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
