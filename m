Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C41C15FE13
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 23:14:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/+/yRT01CdTAGMXn67bLbylDRA5+aDYHqLFCIhb4Nyo=; b=tnatedsdFUev58
	U5EPFXja/7wF6R6riZexhQBAVzlINrFyQ1SjSGazP34cX1spz1mCBM347NiPrDzGpaQb+/iOOec3X
	g56JGxrsK4j6WMby47ylyLiLYm/DIFGDcBkUFKrJWccUSOnU6H59AQ6ct9x89CFbVJvkAytkg43vS
	oHDIoOcqgzzzYBBNx5YYA0rUbxxO+amcn58eHYO0f2pKBqKtf6444GmtiVSxIKkYSWWgSDQGL/iKn
	hibi5XrbqO7YgAtSWY658HczCBSsTt7tYw2nkYwvkya57MEdBK/6pesTuN3sfBqeFRFHS/95vQ3mO
	RClvA7nC227/nh551Irw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj93V-0004jo-1h; Thu, 04 Jul 2019 21:14:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj93I-0004jR-C0
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 21:14:01 +0000
Received: from localhost.localdomain (c-73-223-200-170.hsd1.ca.comcast.net
 [73.223.200.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 11C3021850;
 Thu,  4 Jul 2019 21:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562274839;
 bh=L5uTJJm8cS0jNeSEyq9UQDrpRWA/RzoGfVSTvhzwtI0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=L+QKnk1QjgZhVbE+BLtQhirvztvvdNVrrXLB8pJs5cNBFXmtAcyrr2FU/Gr6TYhFG
 a4RrGuNX9zgnsXHc3yAQk9TvTV7v0/u6KWK1iH3Hr8SvUC+EhKoU6ibelBN/fTzBCf
 3Yyp+elIXhTbmdvHshxgTH40BD/iCrymubuF9R5g=
Date: Thu, 4 Jul 2019 14:13:58 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v3 0/4] Devmap cleanups + arm64 support
Message-Id: <20190704141358.495791a385f7dd762cb749c2@linux-foundation.org>
In-Reply-To: <de2286d9-6f5c-a79c-dcee-de4225aca58a@arm.com>
References: <cover.1558547956.git.robin.murphy@arm.com>
 <20190626073533.GA24199@infradead.org>
 <20190626123139.GB20635@lakrids.cambridge.arm.com>
 <20190626153829.GA22138@infradead.org>
 <20190626154532.GA3088@mellanox.com>
 <20190626203551.4612e12be27be3458801703b@linux-foundation.org>
 <20190704115324.c9780d01ef6938ab41403bf9@linux-foundation.org>
 <20190704195934.GA23542@mellanox.com>
 <de2286d9-6f5c-a79c-dcee-de4225aca58a@arm.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_141400_427161_50086D27 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Michal Hocko <mhocko@suse.com>,
 "anshuman.khandual@arm.com" <anshuman.khandual@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>, Jason Gunthorpe <jgg@mellanox.com>,
 Dan Williams <dan.j.williams@intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 4 Jul 2019 21:54:36 +0100 Robin Murphy <robin.murphy@arm.com> wrote:

> >> mm-clean-up-is_device__page-definitions.patch
> >> mm-introduce-arch_has_pte_devmap.patch
> >> arm64-mm-implement-pte_devmap-support.patch
> >> arm64-mm-implement-pte_devmap-support-fix.patch
> > 
> > This one we discussed, and I thought we agreed would go to your 'stage
> > after linux-next' flow (see above). I think the conflict was minor
> > here.
> 
> I can rebase and resend tomorrow if there's an agreement on what exactly 
> to base it on - I'd really like to get this ticked off for 5.3 if at all 
> possible.

I took another look.  Yes, it looks like the repairs were simple.

Let me now try to compile all this...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
