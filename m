Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E20144405
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 19:07:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=55C1Jl6zhR9EZC85yJoBfooEZmofRKoxPqGj0TVY+3M=; b=V7eqQQtXYCC5qg
	AfgoWhcHlg9q9E40PuOjj0gu9+pfslhjyuMlfD+PipJc6Z1KwqGBDNUcKoKB0urWBZ5cQZZZOb+6+
	UTc1RLWE06Qbb7lZAceIchBcxISpj6AwkVEjH0CDNAc6W57vwv7gjlJm6Oz7eMrRPcGTwWlfKg8xm
	/URfAeMLsm4YFfX2I9A4rZlWULPAfCgRDDpVQsgwnTWTKaicV0hbswgOflR/5/mEblWJCpAXcRb9u
	yPqLf1OS9ndSTRGbW0D48ruH7RH7giWxKC/BrhF6u2hmRDGQKHFD4mOoUz308g2+3VoScihB+mpcZ
	crRuZIZJR2878PvpmDog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itxvT-0005iZ-D0; Tue, 21 Jan 2020 18:06:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itxvD-0005fo-Ua
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 18:06:45 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8E08622522;
 Tue, 21 Jan 2020 18:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579629999;
 bh=h8gel9+ZWFI2KSlFXQlpEwZFOgZtFp2KVYnNAC0U2o8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PM5WHoDBv54h3MGiQW20dJ1ybQfHW8zwo+pvOYn/uL+C4NA9y4LrlTFIJ4MK6v4Q1
 0yhc4cUeQXFU6N7qgJWi6TR1LZCsbZwJ0LExBXT/bzFaceBw9ZVoIJy0MSj9ADP4Iu
 HWnCah0wdkJ0WMr9Ri5owCsQjGH9/VqIBIdgyETc=
Date: Tue, 21 Jan 2020 18:06:34 +0000
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [RFC v5 00/57] objtool: Add support for arm64
Message-ID: <20200121180632.GA13592@willie-the-truck>
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200112084258.GA44004@ubuntu-x2-xlarge-x86>
 <d5bf34f0-22cc-ba46-41b4-96a52d7acfa4@redhat.com>
 <20200121103101.GE11154@willie-the-truck>
 <CAKwvOd=_PqQWUvd_WZRpEr+T==3w6LpsHKBz3E9ybaQ0javVkw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOd=_PqQWUvd_WZRpEr+T==3w6LpsHKBz3E9ybaQ0javVkw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_100640_030183_3CC694AC 
X-CRM114-Status: GOOD (  24.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Julien Thierry <jthierry@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>, raphael.gault@arm.com,
 Josh Poimboeuf <jpoimboe@redhat.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 09:08:29AM -0800, Nick Desaulniers wrote:
> On Tue, Jan 21, 2020 at 2:31 AM Will Deacon <will@kernel.org> wrote:
> >
> > On Mon, Jan 13, 2020 at 07:57:48AM +0000, Julien Thierry wrote:
> > > On 1/12/20 8:42 AM, Nathan Chancellor wrote:
> > > > The 0day bot reported a couple of issues with clang with this series;
> > > > the full report is available here (clang reports are only sent to our
> > > > mailing lists for manual triage for the time being):
> > > >
> > > > https://groups.google.com/d/msg/clang-built-linux/MJbl_xPxawg/mWjgDgZgBwAJ
> > > >
> > >
> > > Thanks, I'll have a look at those.
> > >
> > > > The first obvious issue is that this series appears to depend on a GCC
> > > > plugin? I'll be quite honest, objtool and everything it does is rather
> > > > over my head but I see this warning during configuration (allyesconfig):
> > > >
> > > > WARNING: unmet direct dependencies detected for GCC_PLUGIN_SWITCH_TABLES
> > > >    Depends on [n]: GCC_PLUGINS [=n] && ARM64 [=y]
> > > >      Selected by [y]:
> > > >        - ARM64 [=y] && STACK_VALIDATION [=y]
> > > >
> > > > Followed by the actual error:
> > > >
> > > > error: unable to load plugin
> > > > './scripts/gcc-plugins/arm64_switch_table_detection_plugin.so':
> > > > './scripts/gcc-plugins/arm64_switch_table_detection_plugin.so: cannot
> > > > open shared object file: No such file or directory'
> > > >
> > > > If this plugin is absolutely necessary and can't be implemented in
> > > > another way so that clang can be used, seems like STACK_VALIDATION
> > > > should only be selected on ARM64 when CONFIG_CC_IS_GCC is not zero.
> > > >
> > >
> > > So currently the plugin is necessary for proper validation. One option can
> > > be to just let objtool output false positives on files containing jump
> > > tables when the plugin cannot be used. But overall I guess it makes more
> > > sense to disable stack validation for non-gcc builds, for now.
> >
> > Alternatively, could we add '-fno-jump-tables' to the KBUILD_CFLAGS if
> > STACK_VALIDATION is selected but we're not using GCC? Is that sufficient
> > to prevent generation of these things?
> 
> Surely we wouldn't want to replace jump tables with long chains of
> comparisons just because objtool couldn't validate jump tables without
> a GCC plugin for aarch64 for some reason, right?  objtool validation
> is valuable, but tying runtime performance to a GCC plugin used for
> validation seems bad.

I'm only suggesting it if STACK_VALIDATION is selected. It's off by default,
and lives in Kconfig.debug. I'd prefer that to "cross your fingers are do
nothing differently", which is what the other option seems to be.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
