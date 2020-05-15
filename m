Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18AD71D4B24
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 12:39:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ANxoVZgzHj8gzAl/k0C6wLJdqgwlylbTysL9tyzjA5A=; b=XyZ5B26EEFn1+o
	/4RxOS9psdr9lvRbefvIsGpEyMmpcT2GOzu5INRUxzxmttA+San8KFSk7VvpsFs6IKgVFOt9w/AnB
	qGL9pxq606ld8T0ThhHdnnt7r3hEVC3+ZgyCP7j0oqjoTxTmd7p+sGUwzvF7vhMt6WIxazmGRQLV1
	Bhn+/8jdipNnEJL3b/VF4nEoHNTd5/jmpiG+Yz8gPDs2Z1oSEBfozXnzREg8M3cbFd+7iHeGkRqh4
	GisTv29StqW7hDP3l3ZYwrA4c9T+OCWFDFRqpbE45T11KPEccTQZlXD4MF0l1nywqAimtsbHkqbgW
	kM1B62F6J2WbWdTsVMCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZXk6-0001Lt-UH; Fri, 15 May 2020 10:39:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZXjv-0001LR-4W
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 10:38:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BF24B2F;
 Fri, 15 May 2020 03:38:47 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3B4033F71E;
 Fri, 15 May 2020 03:38:46 -0700 (PDT)
Date: Fri, 15 May 2020 11:38:40 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v3 23/23] arm64: mte: Add Memory Tagging Extension
 documentation
Message-ID: <20200515103839.GA22393@gaia>
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
X-CRM114-CacheID: sfid-20200515_033851_223716_2EF3E34C 
X-CRM114-Status: GOOD (  22.65  )
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

Thinking some more about this, as we are to expose the GCR_EL1.Excl via
a ptrace interface as a regset, it makes more sense to move back to an
exclude mask here with default 0. That would be option 1.a above.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
