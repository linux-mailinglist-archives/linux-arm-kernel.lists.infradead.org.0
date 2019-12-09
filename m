Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 761151172EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 18:38:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8PTq+0g7jfP0FE+dRw3EvsP4TnOEGBS2LyXfvGX6ilk=; b=S59SgHm1HKvBhy
	gbkYcmpGVgFk/P8afqp4kH6eorPDOIhQi5EAWAgzH0x3syWMovNqbz0bxAWXsw1pVyBfXKvBQrtl2
	mzDpjZ8dUI6NNaWlcIdMu82AHWGvYkXshnGPyKin0wdjcy3j4hSCQrwoZb/ML3xk/rUCAOYT9L/Ux
	jK053ddIlDoZMkBvIKnW4rNRHyZCpoXQaEP79cef49lCH4GM+gA+ufFqWFJewAW0ZRvJKmjGkDyfW
	q1x6J6q1rpiYhjHszXLEpHoPflJFwuJVbCOeIugcvlkpoBZUlc176s05BE2wur5lO3D1gACg8D8d+
	24ARhlVAJmv1KDnUtkxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieMzD-0006lq-Cs; Mon, 09 Dec 2019 17:38:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieMz4-0006kx-SX
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 17:38:12 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C097D2077B;
 Mon,  9 Dec 2019 17:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575913090;
 bh=DNOt7YwfijzafvFTDJTNGfZwwC8DEvzIY///7gEWRzM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kxJjnrwcNDybdXxgvdWPzL0DUNMjXPbzxO4kT38PmL/Q4M42VSaeqvK7nh2ZEmiQw
 4VN/tHoAFQ3rQlEqIFFLOTWabOGmqsdqbHlBtThVfh8ij4STFaIAuyuHSNNMT6WCj4
 /8HFlnX27hhdPrwbaQRWU/d88y14Tdt1g7BxA1YQ=
Date: Mon, 9 Dec 2019 17:38:05 +0000
From: Will Deacon <will@kernel.org>
To: Thomas Renninger <trenn@suse.de>
Subject: Re: [PATCH 3/3] arm64 cpuinfo: implement sysfs nodes for arm64
Message-ID: <20191209173804.GD7489@willie-the-truck>
References: <20191206162421.15050-1-trenn@suse.de>
 <20191206162421.15050-4-trenn@suse.de>
 <20191209103110.GB3306@willie-the-truck>
 <25032400.G9DUGnJgnc@skinner.arch.suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <25032400.G9DUGnJgnc@skinner.arch.suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_093810_971952_CA46E9EB 
X-CRM114-Status: GOOD (  25.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, Felix Schnizlein <fschnizlein@suse.de>,
 Felix Schnizlein <fschnizlein@suse.com>, gregkh@linuxfoundation.org,
 x86@kernel.org, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 linux@armlinux.org.uk, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 09, 2019 at 12:28:44PM +0100, Thomas Renninger wrote:
> On Monday, December 9, 2019 11:31:11 AM CET Will Deacon wrote:
> > On Fri, Dec 06, 2019 at 05:24:21PM +0100, Thomas Renninger wrote:
> > > From: Felix Schnizlein <fschnizlein@suse.de>
> > > 
> > > Export all information from /proc/cpuinfo to sysfs:
> > > implementer, architecture, variant, part, revision,
> > > bogomips and flags are exported.
> > > 
> > > Example:
> > > /sys/devices/system/cpu/cpu1/info/:[0]# head *
> 
> ...
> 
> > > ==> flags <==
> > > fp asimd evtstrm aes pmull sha1 sha2 crc32 cpuid asimdrdm
>  
> ...
> 
> > I don't understand why we need this on arm64
> 
> The first intention of these patches is to port x86 /proc/cpuinfo.

That doesn't answer my question. Why do we want a port of x86 /proc/cpuinfo
on arm64? Or do you mean something else?

> Because of the divergence of /proc/cpuinfo and the totally different
> info exported there across architectures,
> therefore it is also tried to get a unified interface across architectures 
> where possible.

But as you say, the information is totally different, so I think the scope
for a unified interface is somewhat questionable. Can you give some examples
of when a piece of architecture-agnostic software can sensibly benefit from
this interface in a way that couldn't be achieved already using a userspace
library, please?

> So for flags and bugs this may work out, right?

We don't have a 'bugs' entry on arm64, so I don't understand why you're
mentioning that as an example of something that works well here. The flags
thing is a set of architecture-specific strings, so why is having a common
interface at all useful there? Even if we exposed them via sysfs, existing
software will continue to grep them out of /proc/cpuinfo because it's more
reliable and new software would still be encouraged to use either the HWCAPs
directly or, even better, our CPUID (MRS) emulation.

> For the rest, it looks like people again only had their CPU in mind and
> exported to userspace what currently was needed...

Cool story: we tried to tidy up our /proc/cpuinfo format for arm64 because
we were aware that it was an ABI nightmare that wasn't fully understood, so
we played it very cautiously. Unfortunately, it turned out that real
applications got in the way and we basically had to follow an arm32-like
format to avoid breaking userspace. But it is what it is and I don't really
fancy exposing more stuff without decent rationale...

> > and why it's an improvement
> > over all the other schemes we already support for identifying CPU features.
> 
> Sigh...

... which this isn't. :/

> > Given the pain we've endured over the years exposing this sort of stuff to
> > userspace, I'm relucant to add more just for the fun of it.
> 
> If there should ever be something like a string describing the CPU...
> In x86 it comes from the CPU itself.
> Maybe we get a model description at some point as well...
> 
> Or any other entity which may also get exported on other archs..

Not sure who this is aimed at tbh.

> Please remember this interface and watch out whether you could export
> things under the same name as done on other architectures.
> 
> I'll revert everything but flags for ARM now.

Please revert the whole lot for arm64, I don't even want to see the iCPU
feature flags exposed like this without a good justification.

> But this is the best example for the need of a generic interface:
> 
> x86 -   /proc/cpuinfo:
> flags           : ...
> arm64 - /proc/cpuinfo:
> Features        : ...
> 
> even it is exactly the same kernel interface, even x86 flags are used 
> according to arch/arm64/include/asm/cpufeature.h:
> 
>   * We use arm64_cpu_capabilities to represent system features, errata work
> 
> But it is named differently in /proc/cpuinfo.

As I said earlier, that's the least of your worries. The *contents of the
string* is entirely different based on the architecture. Here's a quiz
for you:

	arm32 Feature    arm64 Feature    x86 flag    Same thing?
	"vfp"            "fp"		  "fpu"
	"idivt"          "cpuid"          "cpuid"
	"edsp"           "sve2"           "sse2"
        "aes"            "ssbs"           "ssbd"
        "swp"            "sb"             "ss"

So it's all well and good having everybody call these either "Features"
or "flags", but I think you're missing the real issue which is that the
values themselves are meaningless without architecture-specific knowledge,
at which point you can parse /proc/cpuinfo accordingly.

Unless I missed it, you also don't seem to handle compat tasks at all in
your patch.

> This should not happen again in /sys/...

I wish I could believe you.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
