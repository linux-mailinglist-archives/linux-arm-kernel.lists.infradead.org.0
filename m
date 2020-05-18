Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C2F1D7FCC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 19:13:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q3miw9sRLYhelzHSaDaseg64JtEzGE8j0bMhOX2fKcg=; b=N2jQ42xStWlAzQ
	Z7l+AdPWuZ56r1ngsZZyL+fqONOSFB+AB3QRP3hyUsctSJbGYt7aERX1Pgj4b4cSaH5mzoGiTrJYp
	zgmYPVJWa7Rx2vh9yKrTIdBIKb1XtIHLxeYWYFMx9XXSG1KNaqh2Z8r/Hghs7CUeDOSli0L2tSEDH
	rQ4sptg0ReNHXgQerSBAzb29PkjwHUmO1gBFQaSX4F87cFjbxBMeUWYGkyOvgXF24Yrdb6HpD0Qsu
	NfZHRUYqYfIJes434AtTBExQAo8PnzHvyg1wbabD96gh4z2oTLwZBg6GeGBEdMLtXb4jH1bYaWB1p
	ZBAbrkec7D/JFWrCBd1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jajKd-0000kJ-2Y; Mon, 18 May 2020 17:13:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jajKO-0000jA-7C
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 17:13:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 00012106F;
 Mon, 18 May 2020 10:13:21 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6C9C13F305;
 Mon, 18 May 2020 10:13:20 -0700 (PDT)
Date: Mon, 18 May 2020 18:13:18 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v3 23/23] arm64: mte: Add Memory Tagging Extension
 documentation
Message-ID: <20200518171317.GK9862@gaia>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-24-catalin.marinas@arm.com>
 <20200429164705.GF30377@arm.com> <20200430162316.GJ2717@gaia>
 <20200504164617.GK30377@arm.com> <20200511164018.GC19176@gaia>
 <20200513154845.GT21779@arm.com> <20200514113722.GA1907@gaia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200514113722.GA1907@gaia>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_101327_605384_439B21F5 
X-CRM114-Status: GOOD (  30.19  )
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
 Will Deacon <will@kernel.org>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 12:37:22PM +0100, Catalin Marinas wrote:
> On Wed, May 13, 2020 at 04:48:46PM +0100, Dave P Martin wrote:
> > On Mon, May 11, 2020 at 05:40:19PM +0100, Catalin Marinas wrote:
> > > On Mon, May 04, 2020 at 05:46:17PM +0100, Dave P Martin wrote:
> > > > On Thu, Apr 30, 2020 at 05:23:17PM +0100, Catalin Marinas wrote:
> > > > > On Wed, Apr 29, 2020 at 05:47:05PM +0100, Dave P Martin wrote:
> > > > > > On Tue, Apr 21, 2020 at 03:26:03PM +0100, Catalin Marinas wrote:
> > > > > > > +excludes all tags other than 0. A user thread can enable specific tags
> > > > > > > +in the randomly generated set using the ``prctl(PR_SET_TAGGED_ADDR_CTRL,
> > > > > > > +flags, 0, 0, 0)`` system call where ``flags`` contains the tags bitmap
> > > > > > > +in the ``PR_MTE_TAG_MASK`` bit-field.
> > > > > > > +
> > > > > > > +**Note**: The hardware uses an exclude mask but the ``prctl()``
> > > > > > > +interface provides an include mask. An include mask of ``0`` (exclusion
> > > > > > > +mask ``0xffff``) results in the CPU always generating tag ``0``.
> > > > > > 
> > > > > > Is there no way to make this default to 1 rather than having a magic
> > > > > > meaning for 0?
> > > > > 
> > > > > We follow the hardware behaviour where 0xffff and 0xfffe give the same
> > > > > result.
> > > > 
> > > > Exposing this through a purely software interface seems a bit odd:
> > > > because the exclude mask is privileged-access-only, the architecture
> > > > could amend it to assign a different meaning to 0xffff, providing this
> > > > was an opt-in change.  Then we'd have to make a mess here.
> > > 
> > > You have a point. An include mask of 0 translates to an exclude mask of
> > > 0xffff as per the current patches. If the hardware gains support for one
> > > more bit (32 colours), old software running on new hardware may run into
> > > unexpected results with an exclude mask of 0xffff.
> > > 
> > > > Can't we just forbid the nonsense value 0 here, or are there other
> > > > reasons why that's problematic?
> > > 
> > > It was just easier to start with a default. I wonder whether we should
> > > actually switch back to the exclude mask, as per the hardware
> > > definition. This way 0 would mean all tags allowed. We can still
> > > disallow 0xffff as an exclude mask.
> [...]
> > The only configuration that doesn't make sense is "no tags allowed", so
> > I'd argue for explicity blocking that, even if the architeture aliases
> > that encoding to something else.
> > 
> > If we prefer 0 as a default value so that init inherits the correct
> > value from the kernel without any special acrobatics, then we make it an
> > exclude mask, with the semantics that the hardware is allowed to
> > generate any of these tags, but does not have to be capable of
> > generating all of them.
> 
> That's more of a question to the libc people and their preference.
> We have two options with suboptions:
> 
> 1. prctl() gets an exclude mask with 0xffff illegal even though the
>    hardware accepts it:
>    a) default exclude mask 0, allowing all tags to be generated by IRG
>    b) default exclude mask of 0xfffe so that only tag 0 is generated
> 
> 2. prctl() gets an include mask with 0 illegal:
>    a) default include mask is 0xffff, allowing all tags to be generated
>    b) default include mask 0f 0x0001 so that only tag 0 is generated
> 
> We currently have (2) with mask 0 but could be changed to (2.b). If we
> are to follow the hardware description (which makes more sense to me but
> I don't write the C library), (1.a) is the most appropriate.

As Peter pointed out on Friday (call), 2.b doesn't work as it breaks the
existing prctl() for turning on the tagged address ABI. So we have to
accept 0 as the tag mask field.

Dave, if you feel strongly about avoiding the exclude mask confusion
with 0xffff equivalent to 0xfffe, I'll go for 1.a. I have not changed
this in the v4 series of the patches (no ABI change in there apart from
some minor ptrace tweaks).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
