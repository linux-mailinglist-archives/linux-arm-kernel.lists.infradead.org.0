Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED22123400
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 18:56:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OP8sprhz4BPPuvKL0RykgHYjixq5IkmuAcqRTJgNNM0=; b=Ue7hRuw8XqoRZC
	RtiOUHmSFWv+WwJeur/mzLBI+I4nkCTHz8Uks0GY3hrvbOvCY6Tp7mePB/anwgFieYKjHoUD9/9vA
	J8tPu0uJj4WmlshnNtW1Ha2BcOIw54DiMEe2Y9nNL0ifztXaKkbHdpiYRVECRUOVSz+zc8TWQrbP3
	N4jNRaQpelGtD+JF7PfrGdfJtwDYMMBae5H5RJ16JOdKWq84CPXAjDJr9aU5IhZIlpyPiD58niR9W
	ny3qh935u0bqwcUGf0EWV9hSelw4VqBkUsJ/WkgABj+SvmCAW4hTgY+dCdgCLb4veYFrIDqzFKQka
	DsuPbnAsyxxl0vNs9ipQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihH58-0001dJ-B2; Tue, 17 Dec 2019 17:56:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihH4x-0001ci-Fy
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 17:56:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BC65230E;
 Tue, 17 Dec 2019 09:56:14 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 37C283F67D; Tue, 17 Dec 2019 09:56:13 -0800 (PST)
Date: Tue, 17 Dec 2019 17:56:11 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Peter Collingbourne <pcc@google.com>
Subject: Re: [PATCH 20/22] arm64: mte: Allow user control of the excluded
 tags via prctl()
Message-ID: <20191217175610.GN5624@arrakis.emea.arm.com>
References: <20191211184027.20130-1-catalin.marinas@arm.com>
 <20191211184027.20130-21-catalin.marinas@arm.com>
 <ef61bbc6-76d6-531d-2156-b57efc070da4@arm.com>
 <CAMn1gO6KGbeSkuEJB_j+WG8DAjbn81OdfA6DQQ+FFA5F6dcsVQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMn1gO6KGbeSkuEJB_j+WG8DAjbn81OdfA6DQQ+FFA5F6dcsVQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_095615_579666_9203EA5D 
X-CRM114-Status: GOOD (  21.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
 Branislav Rankov <Branislav.Rankov@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Marc Zyngier <maz@kernel.org>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 09:30:36AM -0800, Peter Collingbourne wrote:
> On Mon, Dec 16, 2019 at 6:20 AM Kevin Brodsky <kevin.brodsky@arm.com> wrote:
> > In this patch, the default exclusion mask remains 0 (i.e. all tags can be generated).
> > After some more discussions, Branislav and I think that it would be better to start
> > with the reverse, i.e. all tags but 0 excluded (mask = 0xfe or 0xff).

So with mask 0xff, IRG generates only tag 0? This seems to be the case
reading the pseudocode in the ARM ARM.

> > This should simplify the MTE setup in the early C runtime quite a bit. Indeed, if all
> > tags can be generated, doing any heap or stack tagging before the
> > PR_SET_TAGGED_ADDR_CTRL prctl() is issued can cause problems, notably because tagged
> > addresses could end up being passed to syscalls. Conversely, if IRG and ADDG never
> > set the top byte by default, then tagging operations should be no-ops until the
> > prctl() is issued. This would be particularly useful given that it may not be
> > straightforward for the C runtime to issue the prctl() before doing anything else.
> >
> > Additionally, since the default tag checking mode is PR_MTE_TCF_NONE, it would make
> > perfect sense not to generate tags by default.
> >
> > Any thoughts?
> 
> This would indeed allow the early C runtime startup code to pass
> tagged addresses to syscalls, but I don't think it would entirely free
> the code from the burden of worrying about stack tagging. Either way,
> any stack frames that are active at the point when the prctl() is
> issued would need to be compiled without stack tagging, because
> otherwise those stack frames may use ADDG to rematerialize a stack
> object address, which may produce a different address post-prctl.
> Setting the exclude mask to 0xffff would at least make it more likely
> for this problem to be detected, though.
> 
> If we change the default in this way, maybe it would be worth
> considering flipping the meaning of the tag mask and have it be a mask
> of tags to allow. That would be consistent with the existing behaviour
> where userspace sets bits in tagged_addr_ctrl in order to enable
> tagging features.

Either option works for me. It's really for the libc people to decide
what they need. I think an "include" rather than "exclude" mask makes
sense with the default 0 meaning only generate tag 0.

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
