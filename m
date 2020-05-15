Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45DBF1D4D88
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 14:14:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8w3OZSfR4w3pjJAdn0TheHBJq/NA/zCl2QwzPTTuIqQ=; b=m271LPADDBcqAf
	pq91m4TbOEnvLWAduR+3VBP1NpujmtPU5xXQl/HedFEC/MN/pc6UwRWd6slPIS0ntZo0D9z/OnbMm
	WL8LHXP6Ano8ahgM7xZ/KoxtmL2VLehnEq6QO2Vgmo4H1boBXlhupusQmJklEPOk6yUPac+eJFP9S
	kDvIkFZ2FnF50zWqJreU7e+QCatEoq+0zctyj53Adg+GQ2lc1c9GTYKQcwpD6VRyrh8svurtPQBV+
	1hdYp33IHJ/ogmA8erj8qLm11qLQIK5YmD0FcoWB4B7Zu2tX4pjWmu8+TE0Syz9mqQRCS0CVScNH1
	4ux888K5MItORmLYkitw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZZEH-0008S3-IR; Fri, 15 May 2020 12:14:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZZDt-0008Ke-LA
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 12:13:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 019C11042;
 Fri, 15 May 2020 05:13:52 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 56B4B3F305;
 Fri, 15 May 2020 05:13:50 -0700 (PDT)
Date: Fri, 15 May 2020 13:13:44 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Szabolcs Nagy <szabolcs.nagy@arm.com>
Subject: Re: [PATCH v3 23/23] arm64: mte: Add Memory Tagging Extension
 documentation
Message-ID: <20200515121343.GC22393@gaia>
References: <20200429164705.GF30377@arm.com> <20200430162316.GJ2717@gaia>
 <20200504164617.GK30377@arm.com> <20200511164018.GC19176@gaia>
 <20200513154845.GT21779@arm.com> <20200514113722.GA1907@gaia>
 <20200515103839.GA22393@gaia> <20200515111359.GC27289@arm.com>
 <20200515112740.GB22393@gaia> <20200515120433.GE27289@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515120433.GE27289@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_051353_731215_B9E33AA4 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
 nd@arm.com, Will Deacon <will@kernel.org>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 01:04:33PM +0100, Szabolcs Nagy wrote:
> The 05/15/2020 12:27, Catalin Marinas wrote:
> > Thanks Szabolcs. While we are at this, no-one so far asked for the
> > GCR_EL1.RRND to be exposed to user (and this implies RGSR_EL1.SEED).
> > Since RRND=1 guarantees a distribution "no worse" than that of RRND=0, I
> > thought there isn't much point in exposing this configuration to the
> > user. The only advantage of RRND=0 I see is that the kernel can change
> 
> it seems RRND=1 is the impl specific algorithm.

Yes, that's the implementation specific algorithm which shouldn't be
worse than the standard one.

> > the seed randomly but, with only 4 bits per tag, it really doesn't
> > matter much.
> > 
> > Anyway, mentioning it here in case anyone is surprised later about the
> > lack of RRND configurability.
> 
> i'm not familiar with how irg works.

It generates a random tag based on some algorithm.

> is the seed per process state that's set up at process startup in some
> way? or shared (and thus effectively irg is non-deterministic in
> userspace)?

The seed is only relevant if the standard algorithm is used (RRND=0).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
