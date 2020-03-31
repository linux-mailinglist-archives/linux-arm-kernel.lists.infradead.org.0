Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54AA6199B71
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:28:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m2xfbE+qPjzHQ4TZIrxyeIhEXsb8AYDVt6SFg+vP5bk=; b=JNuiYCHS73Ndxo
	snRhgb9khu02Pvi4wrJN9GrIWyjNdFILfQjKJza/oOewpoKkUcCk3P/WJyhgWCz1IGFxLO+a0rBfL
	34AZO3hSljCnULV868ba1cyyzQWZ9izWjsrimYziLlfQNH1ekBGSlPmleCo8e4p5oi70nUnydWGRz
	iYEpH1E+ZP0wXMdIzpg45LlD4hKgxnDgzPTHCJe7YhwaMJvxLImTyIcUE8lo78uNJqhNlTcV/597D
	PdohL6W6etEF93QtZbzSFavVhj35aruVYlUxKpUVcix6X+/hxlSO2noyxTTolqfhMNqwHWpaeKZE5
	em5hNWbP58Y0jjKD6ciA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJk2-0007XX-Hw; Tue, 31 Mar 2020 16:27:54 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJjD-000751-Ss
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 16:27:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=zWR4v1Y/PT9AoMNC7fg0rgrQ2zY2gV7PSXBqhFyk+kA=; b=AOU6rQD9Yv7aYRPp1ZYFzTAHT8
 Pd+6yXZfUlGGS5eQ9oJ1uV96r1JF/LejsiubmejQJVX6L+9RvQVwOt5K0YKEm5F8aUOYSUTE0ayLS
 LmcyS8B1HngfdUkiUfN5JDHOF2q88ss62hIUIO5MWXxp8iVG+EPBp8vs0672VmL8pDeZW5wwzD3PY
 3/vKnstByR7FjakLfiLEaLMwAPv2R0VrJ5F6rt+T9xoEHGvw2LohX7dr6K1hAO5ceSpzR/8tOoEdA
 7aIBT8l5smQ61mSvuJpZF7ifpIISh5K3viuvpLoy6g6oT6Q2Lwj9auPDpGqU9z1rFGY/f/obpSs3i
 gTe+P+Sw==;
Received: from foss.arm.com ([217.140.110.172])
 by casper.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJjA-00077Y-5O
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 16:27:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2BAB330E;
 Tue, 31 Mar 2020 09:26:54 -0700 (PDT)
Received: from C02TD0UTHF1T.local (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E3F903F71E;
 Tue, 31 Mar 2020 09:26:52 -0700 (PDT)
Date: Tue, 31 Mar 2020 17:26:50 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: George Spelvin <lkml@SDF.ORG>
Subject: Re: [RFC PATCH v1 44/50] arm64: ptr auth: Use get_random_u64 instead
 of _bytes
Message-ID: <20200331162650.GB4400@C02TD0UTHF1T.local>
References: <202003281643.02SGhOi3016886@sdf.org>
 <20200330105745.GA1309@C02TD0UTHF1T.local>
 <20200330193237.GC9199@SDF.ORG>
 <20200331101412.GA1490@C02TD0UTHF1T.local>
 <20200331144915.GA4303@SDF.ORG>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331144915.GA4303@SDF.ORG>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_172700_456296_C47E8129 
X-CRM114-Status: GOOD (  28.10  )
X-Spam-Score: -4.2 (----)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-4.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 02:49:15PM +0000, George Spelvin wrote:
> On Tue, Mar 31, 2020 at 11:14:12AM +0100, Mark Rutland wrote:
> > On Mon, Mar 30, 2020 at 07:32:37PM +0000, George Spelvin wrote:
> >> On Mon, Mar 30, 2020 at 11:57:45AM +0100, Mark Rutland wrote:
> >> Because get_random_bytes() implements anti-backtracking, it's a minimum 
> >> of one global lock and one ChaCha20 operation per call.  Even though 
> >> chacha_block_generic() returns 64 bytes, for anti-backtracking we use 
> >> 32 of them to generate a new key and discard the remainder.
> >> 
> >> get_random_u64() uses the exact same generator, but amortizes the cost by 
> >> storing the output in a per-CPU buffer which it only has to refill every 
> >> 64 bytes generated.  7/8 of the time, it's just a fetch from a per-CPU 
> >> data structure.
> > 
> > I see; thanks for this explanation. It would be helpful to mention the
> > backtracking distinction explicitly in the commit message, since it
> > currently only alludes to it in the first sentence.
> 
> Easily done, but I need to find a centralized place to say it, or
> I'd be repeating myself a *lot* in the series.

Sure, but in the interests of optimizing for review, it's worth doing a
copy+paste of the key detail into each commit. That way, even if the
reviewer only looks at the patch in isolation they have all the
necessary context, and you don't have to reply to the same question on
each patch.

> > It's worth noting that the key values *can* be exposed to userspace when
> > CONFIG_CHECKPOINT_RESTORE is selected. On such kernels, a user could
> > regenerate and read the keys an arbitrary number of times on a CPU of
> > their choice. From my limited understanding I presume backtracking may
> > be a concern there?
> 
> No.  Backtracking is an issue if the keys must remain secret *after*
> they are wiped from kernel memory.  This applies to session
> *encryption* keys (assuming the plaintext should remain secret
> after the session is over), and to any long-lived keys which are
> stored encrypted or otherwise inaccessible (e.g. in dedicated
> hardware).  The latter includes most asymmetric private keys.

> Basically, do you need to wipe the key (with memzero_explicit) when
> you are done with it?  If that is important, you also want to
> know that the key cannot be reconstructed from the CRNG state.

I see, thanks for the explanation. I had misunderstood the what
backtracking was in this context.

> A modified patch will follow.  Thanks for your patience.

I've given that an Ack as it looked sound to me.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
