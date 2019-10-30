Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F78EA20A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 17:48:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tgic5/3ndOeETot9IdltgwKVq3ufrhQ/jTl7W+1iguE=; b=ZycqvKr41kI+on
	6R180exZ5aZ2l8W8ZYYJnny4TUf6oS56T+TXpypzM9tvWOUIJ8y4lUeYVzDIAaaMgSIiBA9UFeB9w
	yr1ollLQGWeqwZMDMgYltB5STsz6xwXw67m2f27qvj/T8ANzH0mt3P4dz9vfM5W4rYgE6SYXZlmIF
	X3D08V2nd8Y+qIV0S7f2w1mdnHIa82wVuFbENSdxJS5KjQdBv3RDW2Pp9NzZLaZuB4BciND9n0U9/
	VqgRMaY3vgMJfvjD/fotSJXZOkXWxvvRh9vz9mPn+gsUnUJeOdWUcn1epfzJrYhMuyo/+JTexiORr
	hzhw/z0OpJBrwvl0rClA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPr91-0002wP-8R; Wed, 30 Oct 2019 16:48:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPr8s-0002vz-OC
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 16:48:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2D50E31F;
 Wed, 30 Oct 2019 09:48:18 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 B27D93F6C4; Wed, 30 Oct 2019 09:48:15 -0700 (PDT)
Date: Wed, 30 Oct 2019 16:48:13 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v14 19/22] mm: Add generic ptdump
Message-ID: <20191030164812.GD13309@arrakis.emea.arm.com>
References: <20191028135910.33253-1-steven.price@arm.com>
 <20191028135910.33253-20-steven.price@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028135910.33253-20-steven.price@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_094818_831411_06EFB03C 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, x86@kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, "Liang, Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 01:59:07PM +0000, Steven Price wrote:
> +struct ptdump_state {
> +	void (*note_page)(struct ptdump_state *st, unsigned long addr,
> +			  int level, unsigned long val);
> +	const struct ptdump_range *range;
> +};

It would be nice to have a comment above note_page about what 'level'
actually means...

[...]
> +static int ptdump_hole(unsigned long addr, unsigned long next,
> +		       int depth, struct mm_walk *walk)
> +{
> +	struct ptdump_state *st = walk->private;
> +
> +	st->note_page(st, addr, depth + 1, 0);

... as it took me a while to figure out why you 'depth + 1' here.

But see my other reply on the arm64 patch. Is it possible to align depth
and level here to have the same range?

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
