Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA6F1CF38A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 13:43:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VJ18L6cBcnvZboQccONg/0jfbioTnZrobuUPCszOm2s=; b=cpX9I8ewiXyqDh
	U2+H9mNuaHztO7i87iGCYt0IAu0K/V8TrhYsDn760i4+YdcFupKEGQVvZniTZq3gLe2t1FyWB+SMF
	abW7DDLj97blvBaBZJGKkoG/+J5lHLKY3axqJ2ybfC2w77aZ2Fk7CeE08HlXVZZyYqqmLa2oFEuat
	p6apfbpGsx1QPmzY3gSA0sbxypojVA9jKO0erbhNLzksQw+kfjA3Kp35NKL1JG6jpAuWg8SAPe2Y2
	/LKWQzfW7GLg0y7GKvBD/RLRWUxAusBndPteaPLanb1ncHAafxnYIZr8XL+D0yXm1/hGQeT3B/xxg
	PXm7kN93veKl6nyk+lbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYTJH-0003ST-VQ; Tue, 12 May 2020 11:42:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYTJA-0003S6-Uo
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 11:42:50 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E265220674;
 Tue, 12 May 2020 11:42:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589283768;
 bh=+9R9sgZfh2fvfKd9M6UBXaeYwcsbhjlX1p9x7dsPUTA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jK/mSF2gVJW2+UnH077SgLQYBkQKqU2SdybYB+n1MZyXuvYHyVoIr2XxY2cCCsKDb
 dbpoV6Zy2acMo9+k9x5nvP7vAKho0Ekc3IxUp6c3ZRoMMiVt8OuOrUWzdrEUnj4VgN
 sLSmvZu4yhl1HLLcAyFi5EFzQOZ2LHh0dgfjfnwQ=
Date: Tue, 12 May 2020 12:42:44 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] arm64: bti: Fix support for userspace only BTI
Message-ID: <20200512114243.GC3021@willie-the-truck>
References: <20200512092155.56931-1-broonie@kernel.org>
 <20200512103908.GB3021@willie-the-truck>
 <20200512110502.GC5110@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512110502.GC5110@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_044249_010448_E5D4B79C 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On Tue, May 12, 2020 at 12:05:02PM +0100, Mark Brown wrote:
> On Tue, May 12, 2020 at 11:39:09AM +0100, Will Deacon wrote:
> 
> > Might be worth a comment here in case somebody tries to "clean this up"
> > later on!
> 
> > > +#ifdef CONFIG_ARM64_BTI_KERNEL
> > >  #define PTE_MAYBE_GP		(system_supports_bti() ? PTE_GP : 0)
> > > +#else
> > > +#define PTE_MAYBE_GP		0
> > > +#endif
> 
> Sure.
> 
> > I also notice we have a funny check in the vdso code:
> 
> >   if (IS_ENABLED(CONFIG_ARM64_BTI_KERNEL) && system_supports_bti())
> 
> > but why do we care about CONFIG_ARM64_BTI_KERNEL for the vdso pages?
> 
> To enable BTI for the vDSO we need the vDSO to be built with BTI
> annotations.  Currently the CFLAGS are the same for the vDSO and the
> kernel, we could arrange to allow them to differ but since the most
> likely reason why the user has userspace but not kernel BTI is that
> their compiler isn't suitable it seemed like disproportionate effort
> for a most likely small audience.

I was thinking of using CC_HAS_BRANCH_PROT_PAC_RET_BTI instead, but I'd
forgotten about that GCC bug. Oh well.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
