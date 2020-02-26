Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCC816FC05
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 11:24:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rEdI2w0x0OX81l+gqh+UejSsgR7ZmnmphfMyUX1ZhCo=; b=fQ5Jkw9hUL6OPh
	MuVM6R4SbLWftPaSQiUZrnANz8PTaaR9da1ZZanivA6lA35ECExr3yKzz3S48kGtqc+n+O5cEiZWT
	E440fpgl12zW1uAmSUrPJIo3pe5iOjaVv99hWs7c7XSkK0/fAgSw1m+yoVMg7nybunRLTtUGJh2eX
	m1znxrCevSonxz2vzIgJXcUF1yeA4cITqj7pXCYcWJBmS9C4qtzHhVwQUOPI+cqKZMyxItYSaCoj0
	UqwyrbPurTgvOx2y7H1EeP5zaa6GXqn0QrhD6yMZ+b/KrbVafXiS9+W8dGeDqR7bAtzm8+ZymguCN
	G/GCzBXYECJ6ULDopdQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6trt-0005W9-I7; Wed, 26 Feb 2020 10:24:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6tri-0005VJ-Tt
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 10:24:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A94731FB;
 Wed, 26 Feb 2020 02:24:28 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 96F7B3F9E6;
 Wed, 26 Feb 2020 02:24:27 -0800 (PST)
Date: Wed, 26 Feb 2020 10:24:22 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 tytso@mit.edu
Subject: Re: [PATCH 0/4] random/arm64: enable RANDOM_TRUST_CPU for arm64
Message-ID: <20200226102422.GA21484@lakrids.cambridge.arm.com>
References: <20200210130015.17664-1-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200210130015.17664-1-mark.rutland@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_022431_004228_F70EC139 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: catalin.marinas@arm.com, broonie@kernel.org, richard.henderson@linaro.org,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ted, sorry to ping, but do you have any thoughts on this series?

I'm happy to rework this, or drop it if you think it's completely wrong,
but if you're not too concerned it would be nice to be able to queue
this soon.

Thanks,
Mark.

On Mon, Feb 10, 2020 at 01:00:11PM +0000, Mark Rutland wrote:
> On arm64 systems some CPUs may have RNG instructions while others do
> not, and consequently we cannot generally enable the use of RNG
> instructions until all CPUs have been booted (as otherwise we'd have
> problems with preemption, etc). This prevents us from seeding the
> primary CRNG using the RNG, as this occurs before secondary CPUs are
> onlined.
> 
> These patches rework the core CRNG intialization code so that the arch
> code can (optionally) distinguish boot-time usage from runtime usage of
> the arch_get_random_*() functions. This allows arm64 to use the boot
> CPU's RNG to seed the primary CRNG, regardless of whether secondary CPUs
> support the RNG instructions. Other architectures should see no
> functional change as a result of this patches.
> 
> Thanks,
> Mark.
> 
> Mark Rutland (3):
>   random: split primary/secondary crng init paths
>   random: add arch_get_random_*long_early()
>   arm64: add credited/trusted RNG support
> 
> Richard Henderson (1):
>   random: Make RANDOM_TRUST_CPU depend on ARCH_RANDOM
> 
>  arch/arm64/include/asm/archrandom.h | 14 ++++++++++
>  drivers/char/Kconfig                |  2 +-
>  drivers/char/random.c               | 52 ++++++++++++++++++++++++++++---------
>  include/linux/random.h              | 22 ++++++++++++++++
>  4 files changed, 77 insertions(+), 13 deletions(-)
> 
> -- 
> 2.11.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
