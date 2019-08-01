Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE3B7DC27
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 15:06:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qyKowRPngvHR1R0eKXlWdenPpkFpVphJzkw+fTzd8Tc=; b=cROoUq6n0ybX5D
	bkSGuqGKNHkHbA6s9/QRdC2/sMtXWZF6BYG7qQV0Q4ZevrqwU/z2R0/oZHzmGm64qIxOQwj290eQ1
	yQYMsnJlAiZUt7RT9bzCaUsJZVJ0i0VdsAgY9ojo+PUYwiLBOHDfwwbzu91E1TX8Xotnun3u1m05R
	GgJC+uw8HOJGEzA78Y3rUAeKwP9rSLU/emlSE2TYSNPcXF+7S3OX8pojlzFJSuVTKcy3GHbjH+q4S
	lhOuGnerHj0nBoPdUsbw9hOPqLyVH9yxNlcwD1WpxI63gV2RR9pkKG71QgntTQxHyfZOH7RCXQuyV
	I36mJhWDK6I25Dg3qhvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htAnJ-0006gw-38; Thu, 01 Aug 2019 13:06:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htAn7-0006gZ-TS
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 13:06:47 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 804E3214DA;
 Thu,  1 Aug 2019 13:06:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564664805;
 bh=UZYqllW5hJzJlfomEeYmVL3rm/BOL++6ECSjp+9JL1o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ToNiRD5IFSkie37/8RZClW29mtuzgmJz6awgm6iWa4dYuBEK0hfu8GLVvG6kSKzbv
 TRylHL9rbtlkjtSRw7ZsjaImiiSYJ3zSew1zgrPUxFTISssWm3aw+3cosoF7c4Cqgx
 MmMd7ca4c2uSXHMk8iXQmh7p9CGbDsBr92BxHJeA=
Date: Thu, 1 Aug 2019 14:06:40 +0100
From: Will Deacon <will@kernel.org>
To: Julien Thierry <julien.thierry@arm.com>
Subject: Re: [PATCH v4 4/9] arm: perf: Remove Remove PMU locking
Message-ID: <20190801130640.4ed5bcy2rdgdtztq@willie-the-truck>
References: <1563351432-55652-1-git-send-email-julien.thierry@arm.com>
 <1563351432-55652-5-git-send-email-julien.thierry@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563351432-55652-5-git-send-email-julien.thierry@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_060645_964127_24439403 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, peterz@infradead.org, liwei391@huawei.com,
 will.deacon@arm.com, Russell King <linux@armlinux.org.uk>, acme@kernel.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, namhyung@kernel.org,
 sthotton@marvell.com, jolsa@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[extra 'Remove' in subject]

On Wed, Jul 17, 2019 at 09:17:07AM +0100, Julien Thierry wrote:
> Since the PMU interrupt saves and restores the value of the selector
> register, there is no need to serialize register accesses against the
> interrupt contexts.
> 
> For operations that can be called with interrupts enabled, preemption
> still needs to be disabled to ensure the programming of the PMU is
> done on the expected CPU and not migrated mid-programming.
> 
> Signed-off-by: Julien Thierry <julien.thierry@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
> Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
> Cc: Jiri Olsa <jolsa@redhat.com>
> Cc: Namhyung Kim <namhyung@kernel.org>
> Cc: Russell King <linux@armlinux.org.uk>
> ---
>  arch/arm/kernel/perf_event_v7.c | 54 ++---------------------------------------
>  1 file changed, 2 insertions(+), 52 deletions(-)

I'm struggling to see why this patch is needed or, if it is, why we're not
doing something similar for v6 and xscale.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
