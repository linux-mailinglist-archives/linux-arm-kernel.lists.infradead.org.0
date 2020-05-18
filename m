Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9FE1D7EE1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 18:44:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TCzgPrCc2SnKd4Souai0l81+ucHt0gEr7/TScqfHPWo=; b=BIV2RkIemeK1Iy
	vB1gq1bjsK1iz3SGb4vYas3LBd29s3vpyk8REAHuKQL0RIW+QZHqjKMuIm02yECDgeUPij78h4kJL
	rDEtErkANPi55b6FWSjvY8ti5dc7n6wolFrkhNhWWuHIHm7oaoy5Oy8FE/kU6ueuTtV7oqU+gpyLU
	NyBkvIl0qqQJQUXR0niDRgFLVAgBpVRDZ8HJMdq4fiGoFKWnfWK9oKLkLFEP03EvFRCqQyc70ave2
	x8i/IaTiyp0WZdUm9K9VchaUYE3UYrvw7w34ajih82qx3/rd7ijpU8q9kqkLxivSFd1RxSlR6M+2K
	rlyHIpDhc0EEBzdsv9oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jais9-00020w-US; Mon, 18 May 2020 16:44:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jais1-0001zu-Ls
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 16:44:06 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 74C4620809;
 Mon, 18 May 2020 16:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589820245;
 bh=Ru5daAPvYMUtBQ4maN6kK+37JBdLU14AaRx0g9PrqZ8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=theqyDgFVl5bFmNcFXgQZicSZ6Z2380vxQ5nm1wFr9KS/LDPa9VFUQ6w67VYLiqMV
 iI82AhyjYi4bUTlsDEpdSwxtwWB7PGx17GFYGv/TVl6SMlPW6MJ2e01qxRmXTJoZc2
 Zu3/OUoEWjBZZfOKQM30rLEB074F3IgmiavbiAvo=
Date: Mon, 18 May 2020 17:44:00 +0100
From: Will Deacon <will@kernel.org>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 4/6] scs: Move scs_overflow_check() out of architecture
 code
Message-ID: <20200518164359.GQ32394@willie-the-truck>
References: <20200515172756.27185-1-will@kernel.org>
 <20200515172756.27185-5-will@kernel.org>
 <20200518121210.GD1957@C02TD0UTHF1T.local>
 <20200518132346.GD32394@willie-the-truck>
 <20200518133231.GC2787@C02TD0UTHF1T.local>
 <202005180823.A9C8925ED@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202005180823.A9C8925ED@keescook>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_094405_735700_73E29AB9 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jann Horn <jannh@google.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Mark Rutland <mark.rutland@am.com>, Sami Tolvanen <samitolvanen@google.com>,
 kernel-team@android.com, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 08:31:49AM -0700, Kees Cook wrote:
> On Mon, May 18, 2020 at 02:32:31PM +0100, Mark Rutland wrote:
> > On Mon, May 18, 2020 at 02:23:47PM +0100, Will Deacon wrote:
> > > This is something I would like to revisit, but we need more
> > > information from Sami about why Android rejected the larger allocation
> > > size, since I don't think there's an awful lot of point merging this
> > > series if Android doesn't pick it up.
> > 
> > Indeed. I'd certainly prefer the robustness of a VMAP'd SCS if we can do
> > that.
> 
> For smaller devices, the memory overhead was too high. (i.e. 4x more
> memory allocated to kernel stacks -- 4k vs 1k per thread.)

I just don't see an extra 3k per thread as being a real issue (the main
stack is 16k already). Even just the CPU register state is around 1k.

But I'd be very keen to see numbers/performance data that proves me wrong.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
