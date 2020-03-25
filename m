Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 626FA1926A0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 12:05:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F8By2qTJFInsT1mwiWNrgZ3D6g84VP4mCYN5DbrpZT8=; b=Ys6QfFXldexfrx
	AbVj1tUFUt4dVNOZZ1RQHlmhlu89zkDpYnG2bWt1KzPK4fe/ua1vlFyBqFh5jGUzlvnX+iwZMWCBn
	3tYnMqjg+Aq6rIIHqxAXKNUNlP+BCtdhSjTdn3NQWWbiXhvSD8Poo7y+Gl1Djc7+Jr6MHpwo4X1ZR
	CaO6UpKqP7EnhrsUfJKZWQ9ZobSIMRKx79BnfrqOTSYkYpDfw7Y3SQgEHJpej5y+DhCAe973/6DRY
	QCC7IDi5IkIxNfC6vElx+AGyEnTYFeNBVyLoI7O4C81cdxAUQY58Tf5c333Jmo+0sp8Q92rZykm1H
	3/fHVp0hYmIJ0xBKdifA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH3qb-0001MJ-7q; Wed, 25 Mar 2020 11:05:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH3qP-0001Lq-LZ
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 11:05:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4C88331B;
 Wed, 25 Mar 2020 04:05:08 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 754EC3F71F;
 Wed, 25 Mar 2020 04:05:07 -0700 (PDT)
Date: Wed, 25 Mar 2020 11:05:04 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH 1/2] arm64: lib: Use .arch_extension
Message-ID: <20200325110504.GK3901@mbp>
References: <20200323191807.3864-1-broonie@kernel.org>
 <CAKv+Gu_UW6KV4My9GSDCHmvqm44Krg+B4efjK_ta2MQ+A2cJNg@mail.gmail.com>
 <20200324185847.GJ7039@sirena.org.uk>
 <CAKv+Gu-wPyPufNah5FJ2VrKA5MUNZTDpJrWu+1oXEmrQwqDDdQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu-wPyPufNah5FJ2VrKA5MUNZTDpJrWu+1oXEmrQwqDDdQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_040509_762411_F7851B9A 
X-CRM114-Status: GOOD (  19.25  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Brown <broonie@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Eric Biggers <ebiggers@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 11:17:05PM +0100, Ard Biesheuvel wrote:
> On Tue, 24 Mar 2020 at 19:58, Mark Brown <broonie@kernel.org> wrote:
> >
> > On Tue, Mar 24, 2020 at 07:19:17PM +0100, Ard Biesheuvel wrote:
> > > On Mon, 23 Mar 2020 at 20:18, Mark Brown <broonie@kernel.org> wrote:
> >
> > > > order to generate BTI landing pads.  We did this due to a lack of
> > > > support for the .arch_extension gas feature in older versions of the
> > > > clang built in assembler but since current versions of clang now have
> > > > support for .arch_extension we can use that.
> >
> > > This is not 100% accurate. Support for .arch_extension was added to
> > > GAS/aarch64 much later, so we should at least double check that it
> > > works on the oldest binutils that we do support.
> >
> > Ah, OK - the information I figured out from history was misleading
> > sorry.
> >
> > We've already got quite a lot of usages of .arch_extension in the kernel
> > for arm and a couple for arm64 (one in TF and another for LSE).
> 
> ARM had support for this way before it was added to AArch64 as well.
> In the LSE case, it doesn't matter since LSE itself was not
> implemented by the assembler before that. For other things, we should
> really avoid .arch_extension as long as we still support binutils <
> 2.26

Good point. So we can add .arch_extension for new features which are
already dependent on newer gas options.

I'll drop this patch for now but we should try to find a solution
because of the overriding effect of .arch. In self-contained .S files
(like crypto) that's not an issue but once we start adding more
architecture feature in a single file, things will get more complicated.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
