Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3017DAECD9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 16:21:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yk5qKGWY/gyUnTz3kr2BqJ+4/0pWjX6IfSFWDwPn8JI=; b=AOMqEzjoHE0QJj
	Xmw5XqWvkVC+g13A9vDW1kDwHIu6NBdNuJ0L10uChkqmdZ5LIFM+5zYbORBn61LWH4Eb4wVe2rE+B
	ARiKD6m+ZoIfZuC9kwnGnq1ORNf6cUbQSHqJjwgRfICAJqe5DvxJHNKtNWF1xqUSUVWnp3DqlCKG0
	AxTRtSIZBITmTRF8YD8PiiZ3EwHX+6++uvGhI4+3lpGsnhGPKshVpKv4vZlxGMR7rsONkYI4Ay7MG
	oiNuKCKMJSpp1HC1/3WFat5tYvUYgrAPT+3YJ9MAKi6UCvbtcTGu/ZoYp6yu8K10ijbl/pITiMclR
	bNDyflEMvxQLxE0qtBNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7h1T-0002zo-JK; Tue, 10 Sep 2019 14:21:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7h1J-0002z2-5m
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 14:21:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9925828;
 Tue, 10 Sep 2019 07:21:23 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 10C1E3F71F;
 Tue, 10 Sep 2019 07:21:22 -0700 (PDT)
Date: Tue, 10 Sep 2019 15:21:21 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: fix unreachable code issue with cmpxchg
Message-ID: <20190910142120.GM9720@e119886-lin.cambridge.arm.com>
References: <20190909202153.144970-1-arnd@arndb.de>
 <20190910074606.45k5m2pkztlpj4nj@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190910074606.45k5m2pkztlpj4nj@willie-the-truck>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_072125_261822_ABF5928A 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 08:46:07AM +0100, Will Deacon wrote:
> On Mon, Sep 09, 2019 at 10:21:35PM +0200, Arnd Bergmann wrote:
> > On arm64 build with clang, sometimes the __cmpxchg_mb is not inlined
> > when CONFIG_OPTIMIZE_INLINING is set.
> 
> Hmm. Given that CONFIG_OPTIMIZE_INLINING has also been shown to break
> assignment of local 'register' variables on GCC, perhaps we should just
> disable that option for arm64 (at least) since we don't have any toolchains
> that seem to like it very much! I'd certainly prefer that over playing
> whack-a-mole with __always_inline.

I assume we're referring to stuff such as the following?

https://www.spinics.net/lists/arm-kernel/msg730329.html

Are these breakages limited to the out-of-line hacks made for LL/SC
atomics, or were there other breakages elsewhere?

Now that the out-of-line hacks have gone, I wonder if this is actually
still a problem anymore. In any case isn't the right thing to do there
to add the __always_inline to functions that use the register keyword
in a function currently annotated inline?

I'm happy to look into this if there is likely to be some benefit in
turning on CONFIG_OPTIMIZE_INLINING.

Thanks,

Andrew Murray

> 
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
