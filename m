Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BADE134574
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 15:56:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RwYp2016/SLge6p96IQt1GTmR/qSQ9kBNuMDMNad12A=; b=s2F8YO6h2NgZK8
	hXA+s5dcK1e5azX/BQN98z3H1OAccNenAtRhjRhZu6935FQO4gCLbQM4/SKqHuso0J6UWXebTgn/Y
	CJMexCut2/390SnmeO8EUFmMENdnr/MwRwPY2ay2zFgbigJDtIATg/cnEU85WoAKr7+lnjWTRvC6s
	L3tnuBPMQH0eMv9825R2VfsgOyJNZN5ToBRj4cJukFl0jgcdX6RgOtfTE3/fdPsHneEYTTCj+Ixvq
	Tby90Su1HUeTTDigYf7eJhrdukqqAp60UIy4TMQugEyXdchYq913tdR2rYUW4pOuwBtnoKHGEAitZ
	vxPe8x6+K3uTnz+11iTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipClN-0004JS-98; Wed, 08 Jan 2020 14:56:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipClG-0004Iw-H9
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 14:56:43 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 10C49206F0;
 Wed,  8 Jan 2020 14:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578495401;
 bh=g9qJlb6twwDyx0IgE9XqpslJ8BM6Uk+SEjDEW7fjvXI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nm5vIl0Wje/AtwHPwyZmjUtLI5PrhuhB8ecBkmlYM3gcf5fOdZvcHsax3aCrshAlL
 Q4Ne4a8qa6SO/wfO6r3U0rJdXowEhoE3jDkbCff6rVKZFSmqokoJqnIYvOTnyr3iz/
 174PMzLYjfFFUE9hN3y4980VE3UhB+c2hyundhz4=
Date: Wed, 8 Jan 2020 14:56:32 +0000
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 3/3] arm64: mm: Use modern annotations for assembly
 functions
Message-ID: <20200108145632.GA18453@willie-the-truck>
References: <20200106195818.56351-1-broonie@kernel.org>
 <20200106195818.56351-4-broonie@kernel.org>
 <20200107144357.GA29001@willie-the-truck>
 <20200107164234.GE4877@sirena.org.uk>
 <20200108121717.GA16398@willie-the-truck>
 <20200108135059.GC3817@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200108135059.GC3817@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_065642_591709_E1E32AE7 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 08, 2020 at 01:50:59PM +0000, Mark Brown wrote:
> On Wed, Jan 08, 2020 at 12:17:17PM +0000, Will Deacon wrote:
> > On Tue, Jan 07, 2020 at 04:42:34PM +0000, Mark Brown wrote:
> 
> > > We can eventually, there's more stuff coming (very soon) for kernel/ and
> > > kvm/ - once those are in I've got a patch sitting ready to remove
> > > ENDPIPROC.  That's basically the only patch for any of this stuff with
> > > any interdependencies so I'm sending stuff as it's ready.
> 
> > Hmm, but with this series applied I don't see any remaining users of
> > ENDPIPROC. Or are you saying that there are new users in the pipeline?
> 
> Ah, you're right - I seem to have confused myself about what bit went
> where in the series.  I've got the patch deleting them, I can send that
> if these get applied or include it in the next posting.

I've pushed the current bits here:

https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/asm-annotations

so please feel free to send stuff on top!

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
