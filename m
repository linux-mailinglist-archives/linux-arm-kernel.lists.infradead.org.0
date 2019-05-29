Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 093C62D95E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 11:47:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+nWuvKMKj/X5wIFYBzq7YdkloIWk90ZZfTTuON9Jj0A=; b=qHv2xxYNgPSpyy
	/0XJCfssNsBkNk3fKj++kMCETlnzI0TmVkxnIV3SAs2DDFWsSoVFE6+DBk06SHlIfrkhgqA+RZnnR
	Wr+mhU7jCu98+ZnuO+X2fpHVvZfm0lqQ4gY/870uqfvKJORHzHxqxkPBUzNiCVyAxwlQ4VQbp4rGc
	GCVyVhJDquwHwq5cUSaaAvzk5ysupS0Sx07XPmkVVryUtm7zWrUJPsqinVTWHMSFLaxdqZSGzRUwQ
	ddfFAx5yGvM/ObHhvnaD4GjeNh5e98FHXGG1/D4EfkJuF+EU2MGKYkTi4boBqikWRcowmB09FyJTO
	zA5blmH5VvAkCcp1ECvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVvAv-0006xi-R9; Wed, 29 May 2019 09:47:13 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVvAo-0006xM-Kn
 for linux-arm-kernel@bombadil.infradead.org; Wed, 29 May 2019 09:47:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UKyuDAkPKwwSacsWVLKxWWxL9wOlFAut+2qC4adY+g4=; b=OSsvfdXoF+PKP3Ps79Tocy7ZF
 0NxLVYGDnDwqwOnRMnQgZKSLNAO3uPwcCV7wvnvIEbGlkpbS6BFpA1i3qGsWFq1EMlLbgG2Bqb21F
 UsiBSXwQOWQ63zCkfquOdf1UpQLXmHGnuKsAlyM5ziWogY05bTf04/tJuEKkXJ/KjXFEAEgAFuBBC
 4wptVKi0WRDAEZ7/HrenNxIk9WhNwRQtUOZT/vEJeexx8784DYbvGikfyHQhWek8MbhJ47d3r/DKm
 iHiofNg4NDTIQd4+O9WGrbSpUlfQNPtHr0b7nre2swHdpMwICPsCSdsHgszNGje4a82P6stlW5QyC
 vdNZ5WMsw==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVvAj-00036F-S6; Wed, 29 May 2019 09:47:02 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 7F5A4201A7E42; Wed, 29 May 2019 11:46:59 +0200 (CEST)
Date: Wed, 29 May 2019 11:46:59 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Raphael Gault <raphael.gault@arm.com>
Subject: Re: [RFC 4/7] arm64: pmu: Add function implementation to update
 event index in userpage.
Message-ID: <20190529094659.GK2623@hirez.programming.kicks-ass.net>
References: <20190528150320.25953-1-raphael.gault@arm.com>
 <20190528150320.25953-5-raphael.gault@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528150320.25953-5-raphael.gault@arm.com>
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 04:03:17PM +0100, Raphael Gault wrote:
> +static int armv8pmu_access_event_idx(struct perf_event *event)
> +{
> +	if (!(event->hw.flags & ARMPMU_EL0_RD_CNTR))
> +		return 0;
> +
> +	/*
> +	 * We remap the cycle counter index to 32 to
> +	 * match the offset applied to the rest of
> +	 * the counter indeces.
> +	 */
> +	if (event->hw.idx == ARMV8_IDX_CYCLE_COUNTER)
> +		return 32;
> +
> +	return event->hw.idx;

Is there a guarantee event->hw.idx is never 0? Or should you, just like
x86, use +1 here?

> +}

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
