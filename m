Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B45931C6E4E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 12:23:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WbVWFh0UXr3GaQBG4hfpVLvNSj7iU2VtxxQ50EEMx88=; b=cwEXAHq32sVLrN
	lk7QIAvB+KD/H68kYtagZE6O68hBRxCX5Tnz05wo6zcVMkv1+inDsLUA55TuL0g2COQOh1f5Gt/gI
	NIbwPgXLTmpcCU8Zvve5k4fvTOPZ4YfPmiJZCMSCl1oqATSUXH3p2R5QyKr0OqfH1O1784NsXxhw7
	3HuHTar+C+0pJXckh9MUGlLeIsBx/wW0bgHoifB++Huy57BPmRE29P8PamrzOZ3qUjWwA1z7KfVmO
	Jdj6NQ0nJd9oJN5kDtAv7hgXUfH9lBfFq56w3fS/3/Ufvh9UQ1kxTm5oKk3jP/gfCTamBmVsXMHQw
	Blz/0k7J4atw8RcOrNEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWHD7-0003O0-CJ; Wed, 06 May 2020 10:23:29 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWHCw-0003N1-7P
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 10:23:22 +0000
Received: from mail-qt1-f170.google.com ([209.85.160.170]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MRTEr-1jkuLG2v6D-00NPiE for <linux-arm-kernel@lists.infradead.org>; Wed,
 06 May 2020 12:23:15 +0200
Received: by mail-qt1-f170.google.com with SMTP id k12so868892qtm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 03:23:15 -0700 (PDT)
X-Gm-Message-State: AGi0PuaKjrDAlyYvWs+XRf8yqD+m8nKZPd6TxcuruLEGP30CEtGLFEml
 GqN/uDKSzyP6EGPogu8G6fq/tCKwowUj2mHObP4=
X-Google-Smtp-Source: APiQypJEVCAJL0nnBQR+WXzvg/lecWv1dnYBKyRgMwq6Opxqks7AT+sOQGN1GWfSzNLaMViCqUCLAgMB9LCAPAS5gWY=
X-Received: by 2002:ac8:2bce:: with SMTP id n14mr7247646qtn.18.1588760594548; 
 Wed, 06 May 2020 03:23:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200505141257.707945-1-arnd@arndb.de>
 <20200505142556.GF82823@C02TD0UTHF1T.local>
 <20200505194243.5bfc6ec6@blackhole>
 <20200506034523.GA564255@ubuntu-s3-xlarge-x86>
In-Reply-To: <20200506034523.GA564255@ubuntu-s3-xlarge-x86>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 6 May 2020 12:22:58 +0200
X-Gmail-Original-Message-ID: <CAK8P3a24EiEvGAenL0FdgGakmwWi=giReOJuiisnzkgC_SuhZg@mail.gmail.com>
Message-ID: <CAK8P3a24EiEvGAenL0FdgGakmwWi=giReOJuiisnzkgC_SuhZg@mail.gmail.com>
Subject: Re: [PATCH] arm64: disable patchable function entry on big-endian
 clang builds
To: Nathan Chancellor <natechancellor@gmail.com>
X-Provags-ID: V03:K1:RhJ/9Cxgv6jbkYyZf6b/Lkq83dkfNKPaZOwljSVIR3KQhxc//xn
 21qpVelUnlHx4UI7biygr+avgytXgUPNlM12fBLcKB9yyX/tt90yWNR0P18g146urLVP87c
 AwA8UQ8EmA0kakm0NlGthH+Snh6ggrvz0KECQ1xX2wl4gUwpb0aG2gxOWUtMjWWHCtO6DKY
 +90L8wHMdFYJruH50Wgfg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:uEj4YiLp23s=:gY/46IyLqWgNGHzJNkyANj
 yyD04RE+0etpJ0jA04IKxGrVWEnp6maJQY9bn23a0PNK4sBwzm3mjCriqJgXWC1rYLRRhNBf+
 p2MtE8ccSdNe+Ai6BJMUNq3/+xaC+/ZQtRTiEPLNoeyqxIg1ShaNh0YpbKDCOzBHOfrfgqav4
 MeAALLAbDU9rm0Pmodr10Af5tm2HYOAE7oo5q10ntflLqrGyOOSmVoSe9wHevHYSHbGKBppWy
 10lkFMf+pPlb8QZpaJhukp4A110+i7ZmyV/ZSVu1eAfYW3b6uLiNhW9W7m26RAx7DtrHsbJg/
 fIvxCt/FWRl466xIU3WnmqYu19FD6fn6ymiiG8zvml0iHyYDsXcZfaWFojtTI0vmiBDxsyj1u
 LbDbLkjBXph2QgHvGBCPm7Ky+Ed013nBOn0zUIgJchBr61GZlHE4Jx2WJOS9fRfWLPIk51sje
 eHiddY6mUkEYbRsnFPXHOwuZVS09IvbWBM7lOnzjRRJuDOfBWMk+noebAcd6vqaSUWcIasW7z
 Y4KlbvDCowAimN3jK8ZRCKg94Y34DRYCYztkQ4IPuMhzBepms9NQSuVX3BRDCdvtghscOcX0C
 ikj55taz5Wr7dPyTySLd3X+tnt/SzOgnPG5Py2nfH9CGk/ap++FCkH7knmpOjjvMlYIj+WtZn
 nMh2oaV6I39rG0jfXc/AbxK9RmeCVxHF6HVe95YTjIz9PhsiqCPv9cMamqTvafgYclfhMydso
 ZfYkFci7tpfA2iTMmKMv1CELhhFg9yPnp255niHIAeZsBSrVSixXo981UqolqJCRAuTTqTeOW
 Ee/yPAVXm8CPm3teThkUfc26fNbCOoL87YBSLl040ImTuECGTE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_032320_169007_CFAE8C47 
X-CRM114-Status: GOOD (  22.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [212.227.126.134 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, Fangrui Song <maskray@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Marc Zyngier <maz@kernel.org>, AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Kees Cook <keescook@chromium.org>, Torsten Duwe <duwe@suse.de>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Julien Thierry <jthierry@redhat.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Steve Capper <steve.capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Torsten Duwe <duwe@lst.de>, Andrew Morton <akpm@linux-foundation.org>,
 Ionela Voinescu <ionela.voinescu@arm.com>, Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 6, 2020 at 5:45 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
> On Tue, May 05, 2020 at 07:42:43PM +0200, Torsten Duwe wrote:
> > On Tue, 5 May 2020 15:25:56 +0100 Mark Rutland <mark.rutland@arm.com> wrote:
> > > On Tue, May 05, 2020 at 04:12:36PM +0200, Arnd Bergmann wrote:
> > > This practically rules out a BE distro kernel with things like PAC,
> > > which isn't ideal.
>
> To be fair, are there big endian AArch64 distros?
>
> https://wiki.debian.org/Arm64Port: "There is also a big-endian version
> of the architecture/ABI: aarch64_be-linux-gnu but we're not supporting
> that in Debian (so there is no corresponding Debian architecture name)
> and hopefully will never have to. Nevertheless you might want to check
> for this by way of completeness in upstream code."
>
> OpenSUSE and Fedora don't appear to have support for big endian.

I don't think any of the binary distros ship big endian ARM64. There are
a couple of users that tend to build everything from source using Yocto
or similar embedded distros, but as far as I can tell this is getting less
common over time as applications get ported to be compatible with
big-endian, or get phased out and replaced by code running on regular
little-endian systems.

The users we see today are likely in telco, military or aerospace
settings (While earth is mostly little-endian these days, space is
definitely big-endian) that got ported from big-endian hardware, but
often with a high degree of customization and long service life.

My policy for Arm specific kernel code submissions is generally that
it should be written so it can work on either big-endian or little-endian
using the available abstractions (just like any architecture independent
code), but I don't normally expect it to be tested on big endian.

There are some important examples of code that just doesn't work
on big-endian because it's far too hard, e.g. the UEFI runtime services.
That is also ok, if anyone really needs it, they can do the work.

> > I suggest to get a quote from clang folks first about their schedule and
> > regarded importance of patchable-function-entries on BE, and leave it as
> > is: broken on certain clang configurations. It's not the kernel's fault.
>
> We can file an upstream PR (https://bugs.llvm.org) to talk about this
> (although I've CC'd Fangrui) but you would rather the kernel fail to
> work properly than prevent the user from being able to select that
> option? Why even have the "select" or "depends on" keyword then?

I definitely want all randconfig kernels to build without warnings,
and I agree with you that making it just fail at build time is not
a good solution.

> That said, I do think we should hold off on this patch until we hear
> from the LLVM developers.

+1

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
