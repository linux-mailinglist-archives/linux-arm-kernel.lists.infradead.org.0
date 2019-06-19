Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2354B4B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 11:12:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jTZlRzMXQKEqHQ+RrbzH7ghxTyRgdoo+u6TKvGjEJMA=; b=XGiufIpuHvo904
	PEbr+x37CE0jYLe1TlP6VAGIwviN4T5DRin5eeyUbQ3mgAEORJUOT8wpkDbCDSNsrsCGYL6cmf+rq
	9WuFpuDv+t0o6LnCBt1uoBjxX+QbjHQAKE50NLGsYcRDG3dbge2gTbLlcgoYteGjNV6kbKpCeOAXW
	lGJd6xPtA6H2CUHUQZBHhi61LCGN+D8zwx/7ZzNs53LFl7/9VSyO2k/XqGDR45Am5A17S46wkxDxa
	szq/DNoMh08ytqjDkWwB58YqsMxqd1aCIFaf732GeXkO7kgVEUk20yAYOBt0ehMKLFadzSeep++0h
	fbTkJPrRK4CyiVc08X+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdWe9-0005Mi-3L; Wed, 19 Jun 2019 09:12:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdWdl-0005EQ-Fk; Wed, 19 Jun 2019 09:12:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C1292344;
 Wed, 19 Jun 2019 02:12:23 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 523053F738;
 Wed, 19 Jun 2019 02:12:21 -0700 (PDT)
Date: Wed, 19 Jun 2019 10:12:19 +0100
From: Will Deacon <will.deacon@arm.com>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: [PATCH RFC 11/14] arm64: Move the ASID allocator code in a
 separate file
Message-ID: <20190619091219.GB7767@fuggles.cambridge.arm.com>
References: <20190321163623.20219-1-julien.grall@arm.com>
 <20190321163623.20219-12-julien.grall@arm.com>
 <0dfe120b-066a-2ac8-13bc-3f5a29e2caa3@arm.com>
 <CAJF2gTTXHHgDboaexdHA284y6kNZVSjLis5-Q2rDnXCxr4RSmA@mail.gmail.com>
 <c871a5ae-914f-a8bb-9474-1dcfec5d45bf@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c871a5ae-914f-a8bb-9474-1dcfec5d45bf@arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_021225_592039_8E770D6A 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: julien.thierry@arm.com, aou@eecs.berkeley.edu, james.morse@arm.com,
 suzuki.poulose@arm.com, Marc Zyngier <marc.zyngier@arm.com>,
 catalin.marinas@arm.com, Anup Patel <anup.Patel@wdc.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 rppt@linux.ibm.com, hch@infradead.org, Atish.Patra@wdc.com,
 Guo Ren <guoren@kernel.org>, gary@garyguo.net, paul.walmsley@sifive.com,
 christoffer.dall@arm.com, linux-riscv@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 09:54:21AM +0100, Julien Grall wrote:
> On 6/19/19 9:07 AM, Guo Ren wrote:
> > You forgot CCing C-SKY folks :P
> 
> I wasn't aware you could be interested :).
> 
> > Move arm asid allocator code in a generic one is a agood idea, I've
> > made a patchset for C-SKY and test is on processing, See:
> > https://lore.kernel.org/linux-csky/1560930553-26502-1-git-send-email-guoren@kernel.org/
> > 
> > If you plan to seperate it into generic one, I could co-work with you.
> 
> Was the ASID allocator work out of box on C-Sky? If so, I can easily move
> the code in a generic place (maybe lib/asid.c).

This is one place where I'd actually prefer not to go down the route of
making the code generic. Context-switching and low-level TLB management
is deeply architecture-specific and I worry that by trying to make this
code common, we run the real risk of introducing subtle bugs on some
architecture every time it is changed. Furthermore, the algorithm we use
on arm64 is designed to scale to large systems using DVM and may well be
too complex and/or sub-optimal for architectures with different system
topologies or TLB invalidation mechanisms.

It's not a lot of code, so I don't see that it's a big deal to keep it
under arch/arm64.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
