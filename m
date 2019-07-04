Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEAED5FDF4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 22:53:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m5TFw3hentDEQ1JLjwXguOGl0TXySIwr3jW7etwq8ac=; b=qeTktUfQHiul+E
	h45NzDkbNJwWm9UpLbg59bafGfdzbQzfko7LUgIBIyV8TJvLqsJKlY8wVKjTkVcE+C9lkGsrUnhQ3
	c7ZG4/UhC8jQ8FQz9dPpvAsDObGdGICwYk5EyaMFrfdOF1oH2+vEYFUp55lJurRzMlU+eWfe+yGY2
	+7fgbPjWiXQHcvwaGPylUrwoSfkAToTPQORsvJXkimiG4CfzI9weH2iuqCfe+fjVmitqztuYhffyZ
	/5GnOZbVHwZ1iHTr465auH7JsQFMPLY1ovyrVYZcLErMauQJHmbQmV2Kqf740ZJtM+xY8gv1h8UJ1
	6Jr+YCblmtUY0waceMGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj8jm-0005ec-UT; Thu, 04 Jul 2019 20:53:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj8ja-0005dT-LQ
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 20:53:40 +0000
Received: from localhost.localdomain (c-73-223-200-170.hsd1.ca.comcast.net
 [73.223.200.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6D2C02083B;
 Thu,  4 Jul 2019 20:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562273613;
 bh=fHB5OlE7wI5HD4vTrIqKCfUtCNsXUfIwuF85zxThTaM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=OQmQWxaH1tJEFpi4jbH2I0D8Oz0s8ym/oz7j+tkYDL6g7uXejsiAtUfU38+BcV/zG
 WtCh68hjwLBB9taaYo4e3bDMPmWrR9i+UT4qpOtAdX2eFfSmQP9IMd9eq3skgpik5y
 k6rJVQlxs70evg6Q6C0OlifqVvpdw/5LksGoBaQQ=
Date: Thu, 4 Jul 2019 13:53:32 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Jason Gunthorpe <jgg@mellanox.com>
Subject: Re: [PATCH v3 0/4] Devmap cleanups + arm64 support
Message-Id: <20190704135332.234891ac6ce641bf29913d06@linux-foundation.org>
In-Reply-To: <20190704195934.GA23542@mellanox.com>
References: <cover.1558547956.git.robin.murphy@arm.com>
 <20190626073533.GA24199@infradead.org>
 <20190626123139.GB20635@lakrids.cambridge.arm.com>
 <20190626153829.GA22138@infradead.org>
 <20190626154532.GA3088@mellanox.com>
 <20190626203551.4612e12be27be3458801703b@linux-foundation.org>
 <20190704115324.c9780d01ef6938ab41403bf9@linux-foundation.org>
 <20190704195934.GA23542@mellanox.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_135338_726973_DD9959CE 
X-CRM114-Status: GOOD (  21.28  )
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
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Dan Williams <dan.j.williams@intel.com>, Robin Murphy <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 4 Jul 2019 19:59:38 +0000 Jason Gunthorpe <jgg@mellanox.com> wrote:

> On Thu, Jul 04, 2019 at 11:53:24AM -0700, Andrew Morton wrote:
> > On Wed, 26 Jun 2019 20:35:51 -0700 Andrew Morton <akpm@linux-foundation.org> wrote:
> > 
> > > > Let me know and I can help orchestate this.
> > > 
> > > Well.  Whatever works.  In this situation I'd stage the patches after
> > > linux-next and would merge them up after the prereq patches have been
> > > merged into mainline.  Easy.
> > 
> > All right, what the hell just happened? 
> 
> Christoph's patch series for the devmap & hmm rework finally made it
> into linux-next

We're talking about "dev_pagemap related cleanups v4", yes?

I note that linux-next contains "mm: remove the HMM config option"
which was present in Christoph's v3 series but wasn't present in v4. 
Perhaps something has gone wrong here.

> sorry, it took quite a few iterations on the list to
> get all the reviews and tests, and figure out how to resolve some
> other conflicting things. So it just made it this week.
> 
> Recall, this is the patch series I asked you about routing a few weeks
> ago, as it really exceeded the small area that hmm.git was supposed to
> cover. I think we are both caught off guard how big the conflict is!

I guess I was distracted - I should have taken a look to see how
mergable it all was.

It's a large patchset and it appears to be mainly (entirely?) code
cleanups.  I don't think such material would be appropriate for a late
-rc7 merge even if it didn't conflict with lots of other higher
priority pending functional changes and fixes!


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
