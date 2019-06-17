Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D36F48B7F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 20:11:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+P3sxHpPR8frWyJONQ77+D7OtJg+SGy5IwP3K9pxo4=; b=Cut73FuBtS2IMq
	YFcK+tt3N0/BIxbjWy4TtqDAWVf/NLBbjF8/4dc+h1b5c+jILAw2M+WN81MCEGpisSJn/l6Ra5gFq
	rIYSG9wir8fRQD4k0h87tEoJ8L7SoPiYZxfDkRbidJ0AAIt1lCf2rv9V5VAJyrnI6TSkqD3tYWK8G
	84TzaQiAh8ba49Grgv1gx6calm92Xf9W3/X7+094Qom6UhZ9wWvfd49E3l2YjZhKNACcKL3cCQRqD
	igEqECbIFfcO4Kp0r4sBiAeDZrAPopRs4hjyLgd26sLwFTlX4K3Hn672Iyan2F4vpND1Mj5UvWg/F
	nsq3YLRE5roT9y1//OvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcw5t-0000xm-Q3; Mon, 17 Jun 2019 18:11:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcw5i-0000xB-AC
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 18:10:51 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7D42B208C0;
 Mon, 17 Jun 2019 18:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560795049;
 bh=FUMyawJcKwbgBq1KBzfgBo/OSPZ3Ne48mCmHGmTnYa8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jcI1FxBBGA3pU+DeRfee97d7nwghNbUJ6glZCY9nO2A6deGImGozosVBQuYy2Zyib
 /Y+MS2INO9y8v/NC+3rITV+N5RU/Sk/Wwq4E0EcQOtX8bBHgj2aWC3Qf7ZiPH+rQQD
 y0J4qJyt6ukMIvBjxb0fTHJe3Wa81NjhSgw9XkyY=
Date: Mon, 17 Jun 2019 19:10:45 +0100
From: Will Deacon <will@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH] arm64: Allow user selection of ARM64_MODULE_PLTS
Message-ID: <20190617181045.fekodnky6un4i723@willie-the-truck>
References: <20190614025932.533-1-f.fainelli@gmail.com>
 <20190617173241.GM30800@fuggles.cambridge.arm.com>
 <2624ce8b-0206-a217-8793-c1223178246c@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2624ce8b-0206-a217-8793-c1223178246c@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_111050_388506_8240E944 
X-CRM114-Status: GOOD (  22.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: ard.biesheuvel@linaro.org, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, open list <linux-kernel@vger.kernel.org>,
 bcm-kernel-feedback-list@Broadcom.com, linux-arm-kernel@vger.kernel.org,
 "moderated list:ARM64 PORT \(AARCH64 ARCHITECTURE\)"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 11:03:28AM -0700, Florian Fainelli wrote:
> On 6/17/19 10:32 AM, Will Deacon wrote:
> > On Thu, Jun 13, 2019 at 07:59:32PM -0700, Florian Fainelli wrote:
> >> Make ARM64_MODULE_PLTS a selectable Kconfig symbol, since some people
> >> might have very big modules spilling out of the dedicated module area
> >> into vmalloc. Help text is copied from the ARM 32-bit counterpart.
> >>
> >> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> >> ---
> >>  arch/arm64/Kconfig | 14 +++++++++++++-
> >>  1 file changed, 13 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> >> index 697ea0510729..36befe987b73 100644
> >> --- a/arch/arm64/Kconfig
> >> +++ b/arch/arm64/Kconfig
> >> @@ -1418,8 +1418,20 @@ config ARM64_SVE
> >>  	  KVM in the same kernel image.
> >>  
> >>  config ARM64_MODULE_PLTS
> >> -	bool
> >> +	bool "Use PLTs to allow module memory to spill over into vmalloc area"
> >>  	select HAVE_MOD_ARCH_SPECIFIC
> >> +	help
> >> +	  Allocate PLTs when loading modules so that jumps and calls whose
> >> +	  targets are too far away for their relative offsets to be encoded
> >> +	  in the instructions themselves can be bounced via veneers in the
> >> +	  module's PLT. This allows modules to be allocated in the generic
> >> +	  vmalloc area after the dedicated module memory area has been
> >> +	  exhausted. The modules will use slightly more memory, but after
> >> +	  rounding up to page size, the actual memory footprint is usually
> >> +	  the same.
> > 
> > Isn't the worry really about the runtime performance overhead introduced
> > by the veneers, as opposed to the memory usage of the module?
> 
> The main concern is indeed runtime performance (both added veneers and
> possibly increased cache trashing) and second could be the increased
> vmalloc usage. Do you want me to rephrase that part, or drop it?

Whichever you prefer.

> > 
> >> +	  Disabling this is usually safe for small single-platform
> >> +	  configurations. If unsure, say y.
> > 
> > So should this be on by default?
> 
> It is turned on under certain conditions that require it (v2 makes that
> clearer, based on Ard's feedback), having it turned off by default at
> least makes people realize (or rather can be used as argument) that the
> modules are possibly too big.
> 
> Under certain build configurations like test/manufacturing, you might
> have a set of large modules that should still load, hence this patch.

I'm fine with leaving it default off, but then let's not say "If unsure, say
y". In fact, you can remove that whole "disabling this is usually safe" part
I reckon.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
