Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA002DD31
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 14:33:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fBT/6R55iCdM5TNq/B4mAEhvkkIrQJw+1/EoGeeQsNw=; b=H5xzMtSTmus4OC
	sJIPZ9xMxIKAoa3ZbV+ETNBpEBbRFABBT7EDe4NJLqwM/4DNPhqtwGN6wATKP5qHlFriXhpnqTAGY
	PHYUtJSKltReFhl3iq4j2KOjZEBEBAhmdJ1ouVsE55OO+fpvkX1dVb99PT044y0mXB4U1PLddO9dk
	Cw80KR79c5Wx7VPzkl2kiFXbQQ+D6sK+cUHZZ2UwqbYp8DMaFr1xoCkctCyRvf8iMvO9dNfMHLflL
	Yk033I72swMduSFLPRYPsze4nzTYhR6BbZswYDoyzXEg4gEqtd44IMQusY/j6smFW99MS8Wm4p3xD
	10CVcZcNn6tdWwuuDh3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVxlT-0007Eo-4s; Wed, 29 May 2019 12:33:07 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVxlN-0007EV-Fn
 for linux-arm-kernel@bombadil.infradead.org; Wed, 29 May 2019 12:33:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g4ryd9Nzcm7kUpTsMCBskfr2zjZGmv4ARSA21OChxfQ=; b=D63S5V8OyIbUAB7eEEGPP8Q3/7
 KGfP52FNIMKG5CPK9MAfXkp4KoS8g4/onwWItYKxjbfPLWzUSUcKzA7BrqPkVETgxfsMr0RfB8k/p
 3XwcFORrty85MFGzJBxXdqzssL3NI1/98D/uCGT74WXhlhYUT8BX2kYjOhQUlgUb9WMy0S2XRjeYx
 GZNQqwj3O/Hnp3LvWuYymfThISWuwvFF6PH+/N7ak9RrwEc8pnIlPR6QwK66eU4oXaaXtKh143Lzk
 KbCyxjQZnzp+56OkG7pF1wsXadxWGvLh1QdHKWUsnP9zNdn4olg3gP+PUA55lMPF5QlL7C0Whbbqc
 +3/2qjmQ==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVxlK-0004Xo-1g; Wed, 29 May 2019 12:32:58 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 508EB201DA64E; Wed, 29 May 2019 14:32:56 +0200 (CEST)
Date: Wed, 29 May 2019 14:32:56 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Raphael Gault <raphael.gault@arm.com>
Subject: Re: [RFC 4/7] arm64: pmu: Add function implementation to update
 event index in userpage.
Message-ID: <20190529123256.GT2623@hirez.programming.kicks-ass.net>
References: <20190528150320.25953-1-raphael.gault@arm.com>
 <20190528150320.25953-5-raphael.gault@arm.com>
 <20190529094659.GK2623@hirez.programming.kicks-ass.net>
 <42a937dd-5cf6-6738-6f69-005fce64138f@arm.com>
 <d6f40c6c-6a73-bd7f-e384-050bd9428631@arm.com>
 <0100f2bd-7940-0b81-4c03-205b295a048f@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0100f2bd-7940-0b81-4c03-205b295a048f@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, acme@kernel.org, mingo@redhat.com,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 01:25:46PM +0100, Raphael Gault wrote:
> Hi Robin, Hi Peter,
> =

> On 5/29/19 11:50 AM, Robin Murphy wrote:
> > On 29/05/2019 11:46, Raphael Gault wrote:
> > > Hi Peter,
> > > =

> > > On 5/29/19 10:46 AM, Peter Zijlstra wrote:
> > > > On Tue, May 28, 2019 at 04:03:17PM +0100, Raphael Gault wrote:
> > > > > +static int armv8pmu_access_event_idx(struct perf_event *event)
> > > > > +{
> > > > > +=A0=A0=A0 if (!(event->hw.flags & ARMPMU_EL0_RD_CNTR))
> > > > > +=A0=A0=A0=A0=A0=A0=A0 return 0;
> > > > > +
> > > > > +=A0=A0=A0 /*
> > > > > +=A0=A0=A0=A0 * We remap the cycle counter index to 32 to
> > > > > +=A0=A0=A0=A0 * match the offset applied to the rest of
> > > > > +=A0=A0=A0=A0 * the counter indeces.
> > > > > +=A0=A0=A0=A0 */
> > > > > +=A0=A0=A0 if (event->hw.idx =3D=3D ARMV8_IDX_CYCLE_COUNTER)
> > > > > +=A0=A0=A0=A0=A0=A0=A0 return 32;
> > > > > +
> > > > > +=A0=A0=A0 return event->hw.idx;
> > > > =

> > > > Is there a guarantee event->hw.idx is never 0? Or should you, just =
like
> > > > x86, use +1 here?
> > > > =

> > > =

> > > You are right, I should use +1 here. Thanks for pointing that out.
> > =

> > Isn't that already the case though, since we reserve index 0 for the
> > cycle counter? I'm looking at ARMV8_IDX_TO_COUNTER() here...
> > =

> =

> Well the current behaviour is correct and takes care of the zero case with
> the ARMV8_IDX_CYCLE_COUNTER check. But using ARMV8_IDX_TO_COUNTER() and a=
dd
> 1 would also work. However this seems indeed redundant with the current
> value held in event->hw.idx.

Note that whatever you pick now will become ABI. Also note that the
comment/pseudo-code in perf_event_mmap_page suggests to use idx-1 for
the actual hardware access.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
