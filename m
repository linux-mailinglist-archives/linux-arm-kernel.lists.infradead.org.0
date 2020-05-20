Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED001DBBB5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 19:40:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TVSx6ORGeV5nqB6pLiJOTfi46DBdpBxsxjjtkeF+Ddw=; b=A8yxD43lzUWSp9
	gJzmhqSSPIadk8MWeZvf86PIvK8atUu2e65R54oO0WMqw760s8gZWQbTfXy4+G7ycreo4Ygj+2GEB
	jch5THCa2kJEl3+3LonimkYW1SvSGE9R7JWsCBleSIqjucll6pGxKD78IDKRCq+sTZSBx1YrnKxJK
	R9dSMeezUPAJvjCeNOQ0KyPDAxWF+HFjIlxy2xBu5vAEvDqYyXbrdviA1d6WYTMEDhwfMIfuYii5c
	G+d5nyeg9PGYYLwZG3dnTVYCpQ8UUiQl+jbJqBGOjJaxoQupW6o/fh+6VPFgo4U1UAEPraIvroFNd
	0UjFMOCqXPVQ3cNdwEMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbShX-0004PC-CV; Wed, 20 May 2020 17:40:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbShC-0004Om-KA
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 17:39:59 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E74BA2075F;
 Wed, 20 May 2020 17:39:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589996398;
 bh=dERhy1cVIOn/6h748BVlmDC9dX7ACeMBsQGjJZhXqIM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zty+BQ7zbhCHFe1nFd2ZcRTOkVrTaNPEvw2wfo9naH4EQuluD/fVWs6kF7dscCMTe
 IoBGpQJ1ah1trxZ2Qu94YjFT71AfNYvCtoyKSv33xRVxeL3XClIit17cYyWvMKjNQz
 GE1yd2dj5/PiZawkS8GcN6vr19Rx5fZM6/He3zPE=
Date: Wed, 20 May 2020 18:39:53 +0100
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH] arm64/cpufeature: Move BUG_ON() inside get_arm64_ftr_reg()
Message-ID: <20200520173953.GA27629@willie-the-truck>
References: <1589937774-20479-1-git-send-email-anshuman.khandual@arm.com>
 <20200520122012.GA25815@willie-the-truck>
 <20200520154711.GD18302@gaia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520154711.GD18302@gaia>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_103958_695455_3A3C59EC 
X-CRM114-Status: GOOD (  25.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 04:47:11PM +0100, Catalin Marinas wrote:
> On Wed, May 20, 2020 at 01:20:13PM +0100, Will Deacon wrote:
> > On Wed, May 20, 2020 at 06:52:54AM +0530, Anshuman Khandual wrote:
> > > There is no way to proceed when requested register could not be searched in
> > > arm64_ftr_reg[]. Requesting for a non present register would be an error as
> > > well. Hence lets just BUG_ON() when the search fails in get_arm64_ftr_reg()
> > > rather than checking for return value and doing the same in some individual
> > > callers.
> > > 
> > > But there are some callers that dont BUG_ON() upon search failure. It adds
> > > an argument 'failsafe' that provides required switch between callers based
> > > on whether they could proceed or not.
> > > 
> > > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > > Cc: Will Deacon <will@kernel.org>
> > > Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> > > Cc: Mark Brown <broonie@kernel.org>
> > > Cc: linux-arm-kernel@lists.infradead.org
> > > Cc: linux-kernel@vger.kernel.org
> > > 
> > > Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> > > ---
> > > Applies on next-20200518 that has recent cpufeature changes from Will.
> > > 
> > >  arch/arm64/kernel/cpufeature.c | 26 +++++++++++++-------------
> > >  1 file changed, 13 insertions(+), 13 deletions(-)
> > > 
> > > diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> > > index bc5048f152c1..62767cc540c3 100644
> > > --- a/arch/arm64/kernel/cpufeature.c
> > > +++ b/arch/arm64/kernel/cpufeature.c
> > > @@ -557,7 +557,7 @@ static int search_cmp_ftr_reg(const void *id, const void *regp)
> > >   *         - NULL on failure. It is upto the caller to decide
> > >   *	     the impact of a failure.
> > >   */
> > > -static struct arm64_ftr_reg *get_arm64_ftr_reg(u32 sys_id)
> > > +static struct arm64_ftr_reg *get_arm64_ftr_reg(u32 sys_id, bool failsafe)
> > 
> > Generally, I'm not a big fan of boolean arguments because they are really
> > opaque at the callsite. It also seems bogus to me that we don't trust the
> > caller to pass a valid sys_id, but we trust it to get "failsafe" right,
> > which seems to mean "I promise to check the result isn't NULL before
> > dereferencing it."
> > 
> > So I don't see how this patch improves anything. I'd actually be more
> > inclined to stick a WARN() in get_arm64_ftr_reg() when it returns NULL and
> > have the callers handle NULL by returning early, getting rid of all the
> > BUG_ONs in here. Sure, the system might end up in a funny state, but we
> > WARN()d about it and tried to keep going (and Linus has some strong opinions
> > on this too).
> 
> Such WARN can be triggered by the user via emulate_sys_reg(), so we
> can't really have it in get_arm64_ftr_reg() without a 'failsafe' option.

Ah yes, that would be bad. In which case, I don't think the existing code
should change.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
