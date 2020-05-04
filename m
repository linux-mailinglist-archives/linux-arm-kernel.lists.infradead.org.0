Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 883E11C3408
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 10:07:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r4cYE0eueMvtNc8QpajjDN4ZGaFSNwiJtYeI6+mCk4A=; b=PUFBYOHRiOhhLP
	MD/+kDyCPsxb6ZOV5N4Brf2UssDpgDlFgSsBAKH4U2u6taEFxHiE8mlz79yoUi9P06KrHvdVSvr0y
	CQmJQYyPZXfBTWFUGntpvOQZvOWIpD1GXhhc0MiLcINKp9NlDb9IqpWFrSIEwYxsxUiY6Tx7DZvh+
	5sluSJTABdc10MUylGD7jYdKhaPvKqkHhRLAtsNfC5FPF8ToTG4FVZ29mFOmHcbgBd+I1VV2HnSAK
	N4z5d11s+CdWG9H3EpiovlJTty1L65JcIbKm8THPaYnT0/4et4eXqPH+y6/RiIqeA08aHFp1/FScH
	+H9BeyuH5gnWu7bm5yJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVW7z-0005te-6K; Mon, 04 May 2020 08:07:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVW7t-0005sr-Cu
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 08:06:58 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5D2C820643;
 Mon,  4 May 2020 08:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588579616;
 bh=KgviiHqJtQABngYsmhCiq91FZpqHvsAXcKF9Kb/EwCM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jb1at5d1Qv8MMYWePegEsCXL7rZtgdRj05fhGJtZaZmRZYIIspbjIMPHtedVpdygU
 HQQ1kD02SGdgoVMXAEmzPqc7U07gVYZs+t7JIYVm8iQmz9kD7yUwn+cSfFRCcKR8at
 JkElzRrlbPloa/HIxhpbkzKevFMpvXXi3UNuVsX4=
Date: Mon, 4 May 2020 09:06:51 +0100
From: Will Deacon <will@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v2 1/2] init/kconfig: Add LD_VERSION Kconfig
Message-ID: <20200504080651.GA2621@willie-the-truck>
References: <1585568499-21585-1-git-send-email-amit.kachhap@arm.com>
 <CAMuHMdWxTtFxgpabeK3L4Ev4zgZ6r=_c+5MBVYd7ZAHbNYxm=Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdWxTtFxgpabeK3L4Ev4zgZ6r=_c+5MBVYd7ZAHbNYxm=Q@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_010657_454584_8223815D 
X-CRM114-Status: GOOD (  16.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 04, 2020 at 09:11:12AM +0200, Geert Uytterhoeven wrote:
> On Mon, Mar 30, 2020 at 1:42 PM Amit Daniel Kachhap
> <amit.kachhap@arm.com> wrote:
> > This option can be used in Kconfig files to compare the ld version
> > and enable/disable incompatible config options if required.
> >
> > This option is used in the subsequent patch along with GCC_VERSION to
> > filter out an incompatible feature.
> >
> > Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> 
> > --- a/init/Kconfig
> > +++ b/init/Kconfig
> > @@ -17,6 +17,10 @@ config GCC_VERSION
> >         default $(shell,$(srctree)/scripts/gcc-version.sh $(CC)) if CC_IS_GCC
> >         default 0
> >
> > +config LD_VERSION
> > +       int
> > +       default $(shell,$(LD) --version | $(srctree)/scripts/ld-version.sh)
> > +
> >  config CC_IS_CLANG
> >         def_bool $(success,$(CC) --version | head -n 1 | grep -q clang)
> 
> .config: warning: symbol value '2.01827e+11' invalid for LD_VERSION
> 
> Seen with the or32 compiler on kisskb, e.g.
> http://kisskb.ellerman.id.au/kisskb/buildresult/14226173/

Hmm. The binutils version there is '2.26.20160125', but I think
scripts/ld-version.sh is expecting that to be '2.26.0.20160125' as it would
then ignore the date suffix as of commit 0d61ed17dd30 ("ld-version: Drop
the 4th and 5th version components"). On a 32-bit host architecture, the
awk expression ends up printing the version using exponential notation,
but even on a 64-bit arch the number would still be bogus.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
