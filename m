Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 355A65B8D1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 12:15:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uN16pX3EpJj2tPaOIT45Bw89QU6ub+OQPhyF4Jqfc8k=; b=ePqGzEvsTC4Wj9
	6s074oN2VetoGEsoJu+wcgMc6LVCK/+3uYp1gH26QUhQrK82LotgekdzXGDMThYmm/RFDOzdsr/yC
	2Xq3okDLioxp+lVS+9gwG6sOM2lHSz1o3UyBcFvGcweShEGJ8hY5KmEMnKp9stukXTshm3ti4ARHC
	bm9wzCgetsnntwq9sRIYePOhf+N+rA1EzxLmN/+FHBjCe2h+T3ryfruS8ocyJqREeIGNAUcfI9jyG
	unbDi4VFYcuVpanQ3ZBcqwT3OrbB+Fma1iiW0Wf44JhXfXk7/NRt6qMfJQbbL6ZUQeVEoTNKTRSgd
	TJaUkG18/Wsrzxty3NKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhtLN-00033u-QG; Mon, 01 Jul 2019 10:15:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhtLA-00033G-Iy
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 10:15:17 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E4D9B2089F;
 Mon,  1 Jul 2019 10:15:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561976116;
 bh=BmE0pK+B/9WbeNo5hd8jhUkYwvz6tMUWGRtqHWxTqgc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sP19+PAprJCKT1vB2Suu5r3ulKn8GQeG57tpiJg4Kq6zGPN+/cs009iqz4lq9XT8P
 aS/2Xw+qDBagxlS3Sg9TyU3BpqemUimAwUvQ74vmxYe9LmJI/U6wQXOt9has6j0+4+
 jlBkGuGr5Sr7XbAj39iTiIYD3i4UfJv49TwVkpuU=
Date: Mon, 1 Jul 2019 11:15:10 +0100
From: Will Deacon <will@kernel.org>
To: Steven Price <steven.price@arm.com>
Subject: Re: Re: [PATCH 1/3] arm64: mm: Add p?d_large() definitions
Message-ID: <20190701101510.qup3nd6vm6cbdgjv@willie-the-truck>
References: <20190623094446.28722-1-npiggin@gmail.com>
 <20190623094446.28722-2-npiggin@gmail.com>
 <20190701092756.s4u5rdjr7gazvu66@willie-the-truck>
 <3d002af8-d8cd-f750-132e-12109e1e3039@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3d002af8-d8cd-f750-132e-12109e1e3039@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_031516_639701_96A45204 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Mark Rutland <mark.rutland@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Nicholas Piggin <npiggin@gmail.com>, linux-mm@kvack.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 01, 2019 at 11:03:51AM +0100, Steven Price wrote:
> On 01/07/2019 10:27, Will Deacon wrote:
> > On Sun, Jun 23, 2019 at 07:44:44PM +1000, Nicholas Piggin wrote:
> >> walk_page_range() is going to be allowed to walk page tables other than
> >> those of user space. For this it needs to know when it has reached a
> >> 'leaf' entry in the page tables. This information will be provided by the
> >> p?d_large() functions/macros.
> > 
> > I can't remember whether or not I asked this before, but why not call
> > this macro p?d_leaf() if that's what it's identifying? "Large" and "huge"
> > are usually synonymous, so I find this naming needlessly confusing based
> > on this patch in isolation.
> 
> You replied to my posting of this patch before[1], to which you said:
> 
> > I've have thought p?d_leaf() might match better with your description
> > above, but I'm not going to quibble on naming.

That explains the sense of deja vu.

> Have you changed your mind about quibbling? ;)

Ha, I suppose I have! If it's not loads of effort to use p?d_leaf() instead
of p?d_large, then I'd certainly prefer that.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
