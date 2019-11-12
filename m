Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16893F9717
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 18:28:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HsBVYAIJdnhkqMm2k95Tyr6JWh2dtIPagIHJeLYzfyo=; b=DD5j1bBeYX0sUe
	2Isx31k0Al0v8mLr/+YZbJTDFnpsXyT19wQqgMWQskYojL8aw80E2MnA2q+sHF3Y7zqP5p8+r/vG9
	B5Gfg+lzZn1tCjYWyVeEodSmtgwwSuroMWCdUoX+dhIlIj6AYeEfDm8FAyj/TrZ1FzTZG0u+ulpem
	E2GLUFbz+XBhlvSKaXyjiSSiZeI4bGCu8U/iH3p9CprvQJAXcyRkC59hwToIs7VVovIg6Dw2TjEGe
	WN1V/da5nN3Vq8CQg4qinKKtj45ynVsrZLyFUN/bmR8ZW9d8SEDcKSIidk5lRsMhmi9Di9+1s93C/
	jFkgV96B7BwqewtNLTeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUZxa-0005Wg-6o; Tue, 12 Nov 2019 17:28:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUZxR-0005W2-5Z
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 17:28:02 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2FC1E2084E;
 Tue, 12 Nov 2019 17:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573579679;
 bh=l3SuH1oTbu7Dtm62dAEfptJKeIljcJanzu2UAes3Jgc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=05ZxocR8A5mWUXm+BIyO9KKWckdD0JaMcD/BUjA+HQDW0dlPAvkf+oY2/MCoMkxTK
 HVPUStjK0Pun33usyrN9gKhEv6RRnoGWL8botbhBOvwGsmC7JnD0eQHuuFL6Tmg6II
 oExKVXPYUr5vchSwVX1xxiCTisbkgHk+Do3R+VDQ=
Date: Tue, 12 Nov 2019 17:27:54 +0000
From: Will Deacon <will@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH] arm64: Kconfig: add a choice for endianess
Message-ID: <20191112172754.GA19889@willie-the-truck>
References: <20191112160144.8357-1-anders.roxell@linaro.org>
 <e44db1ec-e562-18c4-ca6f-96e4279564ed@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e44db1ec-e562-18c4-ca6f-96e4279564ed@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_092801_229718_1D754335 
X-CRM114-Status: GOOD (  19.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: catalin.marinas@arm.com, Anders Roxell <anders.roxell@linaro.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 04:24:31PM +0000, John Garry wrote:
> On 12/11/2019 16:01, Anders Roxell wrote:
> > When building allmodconfig KCONFIG_ALLCONFIG=$(pwd)/arch/arm64/configs/defconfig
> > CONFIG_CPU_BIG_ENDIAN gets enabled. Which tends not to be what most
> > people wants. Another concern that thas come up is that ACPI in't built
> 
> /s/wants/want/, s/thas/has/, s/in't/isn't/
> 
> > for an allmodconfig kernel today since that also depends on !CPU_BIG_ENDIAN.
> > 
> > Rework so that we introduce a 'choice' and default the choice to
> > CPU_LITTLE_ENDIAN. That means that when we build an allmodconfig kernel
> > it will default to CPU_LITTLE_ENDIAN that most people tends to want.
> > 
> > Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
> 
> FWIW, apart from spelling mistakes:
> 
> Reviewed-by: John Garry <john.garry@huawei.com>
> 
> > ---
> >   arch/arm64/Kconfig | 13 +++++++++++++
> >   1 file changed, 13 insertions(+)
> > 
> > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > index 64764ca92fca..62f83c234a61 100644
> > --- a/arch/arm64/Kconfig
> > +++ b/arch/arm64/Kconfig
> > @@ -877,11 +877,24 @@ config ARM64_PA_BITS
> >   	default 48 if ARM64_PA_BITS_48
> >   	default 52 if ARM64_PA_BITS_52
> > +choice
> > +	prompt "Endianess"
> 
> Should this be "Endianness"?
> 
> > +	default CPU_LITTLE_ENDIAN
> > +	help
> > +	  Choose what mode you plan on running your kernel in.

While we're at it, I'd avoid the use of "mode" here since that has a
different meaning in the architecture, although I see we already use that
terminology for CPU_BIG_ENDIAN. How about:

  "Select the endianness of data accesses performed by the CPU. Userspace
   applications will need to be compiled and linked for the endianness
   that is selected here.

   Little-endian is compatible with x86, but big-endian is faster."

(ok, maybe drop that last sentence ;)

> >   config CPU_BIG_ENDIAN
> >          bool "Build big-endian kernel"
> >          help
> >            Say Y if you plan on running a kernel in big-endian mode.

Then this can be:

  "Say Y if you plan on running a kernel with a big-endian userspace."

> > +config CPU_LITTLE_ENDIAN
> > +	bool "Build little-endian kernel"
> > +	help
> > +	  Say Y if you plan on running a kernel in little-endian mode.


  "Say Y if you plan on running a kernel with a little-endian userspace.
   This is usually the case for distributions targetting arm64."

I think it's userspace that people really care about, so wording it in
terms of that makes most sense to me.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
