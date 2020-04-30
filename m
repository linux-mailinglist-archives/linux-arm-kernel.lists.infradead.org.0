Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8289E1C03BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 19:20:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eLKNRvubVOr5/zFhXWe1tLNT3usI1PrkDevryQaujJA=; b=ii0E3vj4wOHYHy
	CGTCwZV9ETSz74M1WYVVXnIjzhB3rrO8ye8WTx2wq+jklbd65GkZTU3+zNMxBv57LL2rwxw0LsQpi
	CZVAkPNZRM8QH+sK6KIndYuoWf+yYKSv5qhHJ9IASgD7JgUpZiFgobyOgzOeZk2VpsOAw9MpOI4rT
	5ETJ6pka5W2F6Yr3bobffRw2GiFCfnHH3OkA6SKMwJjLm3tjoLn6esQnqbsnfHa+tPSMP8XhxAxYY
	DnkwgtnX55fztUl3tnoYkXNJoLE9QloCGxBQg+YVsGiiwqSbpSiVcsdO6re2sAMRuujtlaxSjf3rg
	odUt5btaBGp0Bx4ObjVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUCrl-00064I-8G; Thu, 30 Apr 2020 17:20:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUCrc-00063I-AS
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 17:20:45 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 44CF120787;
 Thu, 30 Apr 2020 17:20:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588267244;
 bh=dsXBNKPwdOjWJPqWjrwst/wex2YLJsK/QSGfrcpF/U8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HOw3MhlxNgUfezDgy35haX9L1GEyrBxVCk7YhJz9FwZKEYHy3bdqm+psDMPudnA7B
 uEoQO1JoN1Fsuo+oBga0g/n/vGh2BG4n2glxNeGui5yGtVOIKfE/pdyRf91EOsPm/d
 e6LeO3nULD0yZ0xR5OJccFiafxF+7aX9w3LFnrc0=
Date: Thu, 30 Apr 2020 18:20:40 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 3/3] arm64: insn: Report PAC and BTI instructions as
 NOPs
Message-ID: <20200430172039.GJ25258@willie-the-truck>
References: <20200428172433.48830-1-broonie@kernel.org>
 <20200428172433.48830-4-broonie@kernel.org>
 <20200430160928.GD25258@willie-the-truck>
 <20200430171645.GG4633@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430171645.GG4633@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_102044_382172_664F0B9D 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 06:16:45PM +0100, Mark Brown wrote:
> On Thu, Apr 30, 2020 at 05:09:29PM +0100, Will Deacon wrote:
> > On Tue, Apr 28, 2020 at 06:24:33PM +0100, Mark Brown wrote:
> 
> > > +	/*
> > > +	 * The PAC and BTI instructons are not strictly NOPs but until
> > > +	 * better support is added we can treat them as such.
> > > +	 */
> > >  	switch (insn & 0xFE0) {
> 
> > Are you deliberately omitting XPACLRI? If so, maybe add a comment to say
> > why, since it looks a bit weird without it.
> 
> Not deliberately, no - I'm not sure I'd heard of it before and it's one
> of those cases where the spec doesn't call out the instruction as being
> in the hint space.

Hmm, so I only spotted it because of "Decode" pseudocode for HINT on p.929
of rev F.a of the Arm ARM (the one with the AUTHASP typo).

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
