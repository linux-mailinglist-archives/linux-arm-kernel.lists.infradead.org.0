Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A34411D79C6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 15:26:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sQY8Tv/Oi6/58FMbZ43YLs6Rbw3ftQe/sdZ6+QVpuho=; b=CV3UBL795iYVfx
	EN0AwEVJu5yoBwYzqiwznjUH6acng3QwjRV0wzrzHiaaFHi84bCYhgA8uoLJkETOL+iB9wXGss0MW
	RVu6fIoHQYws+otrNA+XtpMyvtoD509xAl6ua/LF8O6uQvAIFuuLZEvmN15QMTJjH2o25DvpJ9jQx
	IN/Mw+UbB+npvElNvuX77DtAuLqdEg3xU8ZvleUGKyPXZ8dwPlUfCXtgm+ljyDz1lKCGB80vljnxb
	WCqx/bOgqGc3mCzmn2KiOtcj+YZXjziHGkjVt73HlMMlM52hvoAQ00mGn1m+c+mp3FOvNnq4Z54aN
	UGTGyztJg3K2HG4PWWNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jafml-00036q-2d; Mon, 18 May 2020 13:26:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jafmb-000364-Mc
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 13:26:18 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8ACAC2065F;
 Mon, 18 May 2020 13:26:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589808377;
 bh=5FskDrF8oq9/EOjCgVOotNcKcTYNqGcjbricPQEpQ/Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zCIecnvOcI+Vv5YVVR2Vajh2t4wob/ajUjiBgaLdFcuXc67GUl5guvg/ISR7QpnJo
 GUdEcyGNpNOkZr8060IV1Ew1pllcMUBppBLiQYwySYxMwQtthT8j3dL6PWc4LxGj4l
 T3ALbIiilt8cEiOsfCdv/qmTTkXhhlXJXjSAPOzI=
Date: Mon, 18 May 2020 14:26:12 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 6/6] scs: Move DEFINE_SCS macro into core code
Message-ID: <20200518132612.GE32394@willie-the-truck>
References: <20200515172756.27185-1-will@kernel.org>
 <20200515172756.27185-7-will@kernel.org>
 <20200518121441.GE1957@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518121441.GE1957@C02TD0UTHF1T.local>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_062617_755708_C5B36726 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Mark Rutland <mark.rutland@am.com>, Sami Tolvanen <samitolvanen@google.com>,
 kernel-team@android.com, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 01:14:41PM +0100, Mark Rutland wrote:
> On Fri, May 15, 2020 at 06:27:56PM +0100, Will Deacon wrote:
> > Defining static shadow call stacks is not architecture-specific, so move
> > the DEFINE_SCS() macro into the core header file.
> > 
> > Signed-off-by: Will Deacon <will@kernel.org>
> 
> I think that we'll have to pull this back into arch code if/when we deal
> with VMAP'd stacks, so I'm not sure this is worthwhile given the
> diffstat is balanced.

I dunno, if another architecture wants to use this then having the stuff
in the core code makes sense to me. I also want to kill asm/scs.h entirely
and move our asm macros somewhere else where they're not mixed up with the
C headers.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
