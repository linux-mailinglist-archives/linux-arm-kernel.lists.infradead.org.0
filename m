Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4E71D4C91
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 13:28:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5f7vLH66fw1OEPmYT0iDinaU+nrMRwFxMWL19sw2rOo=; b=pjZb1IcH4wBX7r
	2Dfy9yBjoIx4mT9yBrvQFvcdSNLaiNO1TZLGYPYlQZaKDw8V11njlk7LEHVRNJ8ZpRM/pxaZDDJo5
	Ib+Boqn9PRvmCTvkfWKX4K7uvGka8oyIiMQZXYXQeUViUnlY2AFeE/m3qzH577QkhfHSvDnZCg2CY
	XFvbfFRoHqJZpSX3V5Ziw62WEiJQvj71iveyqv6K+b1Y4Q5wmfTCgyqxjyevYB7bZBp6I63B8KUKP
	4ZeF0EcTzgmU4PAq9Rd4YJf7C11HATAseesC3aJIcYhKj0uDQHvlMaaLfYMlMzJUl4b4/HJlHVRd6
	QWIoD0YamBIonS/x/69Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZYVR-0005pW-U0; Fri, 15 May 2020 11:27:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZYVJ-0005oz-BO
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 11:27:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 56834D6E;
 Fri, 15 May 2020 04:27:48 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AD4733F305;
 Fri, 15 May 2020 04:27:46 -0700 (PDT)
Date: Fri, 15 May 2020 12:27:40 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Szabolcs Nagy <szabolcs.nagy@arm.com>
Subject: Re: [PATCH v3 23/23] arm64: mte: Add Memory Tagging Extension
 documentation
Message-ID: <20200515112740.GB22393@gaia>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-24-catalin.marinas@arm.com>
 <20200429164705.GF30377@arm.com> <20200430162316.GJ2717@gaia>
 <20200504164617.GK30377@arm.com> <20200511164018.GC19176@gaia>
 <20200513154845.GT21779@arm.com> <20200514113722.GA1907@gaia>
 <20200515103839.GA22393@gaia> <20200515111359.GC27289@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515111359.GC27289@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_042749_433030_639EE72C 
X-CRM114-Status: GOOD (  22.09  )
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 nd@arm.com, Will Deacon <will@kernel.org>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 12:14:00PM +0100, Szabolcs Nagy wrote:
> The 05/15/2020 11:38, Catalin Marinas wrote:
> > On Thu, May 14, 2020 at 12:37:22PM +0100, Catalin Marinas wrote:
> > > We have two options with suboptions:
> > > 
> > > 1. prctl() gets an exclude mask with 0xffff illegal even though the
> > >    hardware accepts it:
> > >    a) default exclude mask 0, allowing all tags to be generated by IRG
> > >    b) default exclude mask of 0xfffe so that only tag 0 is generated
> > > 
> > > 2. prctl() gets an include mask with 0 illegal:
> > >    a) default include mask is 0xffff, allowing all tags to be generated
> > >    b) default include mask 0f 0x0001 so that only tag 0 is generated
> > > 
> > > We currently have (2) with mask 0 but could be changed to (2.b). If we
> > > are to follow the hardware description (which makes more sense to me but
> > > I don't write the C library), (1.a) is the most appropriate.
> > 
> > Thinking some more about this, as we are to expose the GCR_EL1.Excl via
> > a ptrace interface as a regset, it makes more sense to move back to an
> > exclude mask here with default 0. That would be option 1.a above.
> 
> i think the libc has to do a prctl call to set
> mte up and at that point it will use whatever
> arguments necessary, so 1.a should work (just
> like the other options).
> 
> likely libc will disable 0 for irg and possibly
> one or two other fixed colors (which will have
> specific use).
> 
> the difference i see between 1 vs 2 is forward
> compatibility if the architecture changes (e.g.
> adding more tag bits) but then likely new prctl
> flag will be needed for handling that so it's
> probably not an issue.

Thanks Szabolcs. While we are at this, no-one so far asked for the
GCR_EL1.RRND to be exposed to user (and this implies RGSR_EL1.SEED).
Since RRND=1 guarantees a distribution "no worse" than that of RRND=0, I
thought there isn't much point in exposing this configuration to the
user. The only advantage of RRND=0 I see is that the kernel can change
the seed randomly but, with only 4 bits per tag, it really doesn't
matter much.

Anyway, mentioning it here in case anyone is surprised later about the
lack of RRND configurability.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
