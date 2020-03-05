Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D01B17AFB9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 21:30:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uwEUuCltstju352omM67c1Qm8pNDlpQuxVPJRRZasEc=; b=CqXNEbM6nMNo7U
	cFOXFetib0TINfjSvLMxD/wuQTpqhwcX69+Qq5ensaeKO6JsZmGHMcKAKPOHkPnvaQ1n5OzdHqEZl
	cRVLoMTJCCxESWMtcLTFzVc/veaTFut2PMUR3fYyAeBzXXywiYo0qvK0fB/8DOn64b0/IfGlIamy8
	MiRGawOjLHUVl1lexQtW1CSNG3Md+1N7KPUsJiHzIXRZ/h2Rk+5ECrVE4mrf3XA0Q5HPOy4mcPpB3
	KLLw55rBHeZ35HQzwluee1ZiovGKPRrEuAveu8JPX0TEwnvy66Heaqov7hh4+xs2IWVtG6MbKoe0x
	5XRoeRUClXQT9Nqt/VIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9x8c-00006Y-1x; Thu, 05 Mar 2020 20:30:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9x8X-00005N-3O
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 20:30:30 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ED451207FD;
 Thu,  5 Mar 2020 20:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583440225;
 bh=gt/le5mO5Xx1BfHObBoqvmbUMLMKT8Q0XK7Pu9v9giM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=x19KiQKqY1X1+7kf1D81rS5DbRwJtIuzhyAipxD6PRmdNJWI4hFTrw769XrdCnI8S
 YMBwlil2x3oNO/cG5Tc5EihKx2lcNz47jeu1sHJRQkAmsh8YnfhyRa92JND6d1nMq8
 PFefMILxla0/vm6nqCMvCqVAf4AhDbepZRRH3BMw=
Date: Thu, 5 Mar 2020 20:30:21 +0000
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: entry: unmask IRQ in el0_sp()
Message-ID: <20200305203021.GA29446@willie-the-truck>
References: <20200228145942.10675-1-mark.rutland@arm.com>
 <2680f3b0-a457-ba9f-322c-2c6e9f079e87@arm.com>
 <20200228160809.GK36089@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228160809.GK36089@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_123029_166084_115DCC07 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 04:08:09PM +0000, Mark Rutland wrote:
> On Fri, Feb 28, 2020 at 03:37:46PM +0000, James Morse wrote:
> > On 28/02/2020 14:59, Mark Rutland wrote:
> > > Let's do so now, and make it interruptible as with most other
> > > synchronous exception handlers.
> > 
> > I think you want:
> > Fixes: bfe298745afc9548 ("arm64: entry-common: don't touch daif before bp-hardening")
> > 
> > on this as, bfe298745afc9548 changed the behaviour: local_daif_restore(DAIF_PROCCTX) was
> > called before arm64_notify_die(), now its not.
> > 
> > With that,
> > Reviewed-by: James Morse <james.morse@arm.com>
> 
> Ah; I missed that subtlety.
> 
> I assume that Catalin can fold those in when applying. Otherwise I'll
> add them for a v2.

If you want v2 to go in as a fix, please can you explain why this is a
problem (beyond disabling interrupts for longer than necessary) in the
commit message?

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
