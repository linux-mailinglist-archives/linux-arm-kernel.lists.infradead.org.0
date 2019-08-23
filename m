Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 720D89AD92
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 12:47:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aUwvfWghYIV5VCJW2sDtJUctOTnFvmN//bmYT9niQDE=; b=hj3u2qqtcBM8UI
	3pv6LuLq1NtYCBAmUXGlh+X/zoPJcIeruOenGJGR0oT3leMfxDFdZx7ritdrdc2V0EZCt9rWV6Jcw
	+ySy8kCuHBPGskxNyhQe98wGIFYKvfWtwvgZ/UJhDhHDrh6SNYCfqI3D6gm1Z3EvCyK/Hxkd8i/qh
	h64UWuVMKL6QE/BHSKnmqwuQ7+Jlb7GaRBYk0YDhRRG7PpQ9Zl7RpPH6Eh+wmkGFK7KyxjhyfKfta
	EtmeHxJy/5qLe6lGlrdLjQNRHXP9mP7L7R2spyDfomgQf4SA7IywTgfXN0DKhEkQ9RJB8dTw7FVo/
	jWNXGYtvdAPIjuOWpZoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i175u-00059n-Tg; Fri, 23 Aug 2019 10:46:58 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i175l-00058m-Pi
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 10:46:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fTnjvJjKhCTch2+e+s4C+1ah7tCrVFGr9EdjhwXZqls=; b=hs3EkrXPt9WeCNkIRiOmuAtXu
 LCi1Y4DcuIPxchYsgg3mvuf6dXptSKJUr4sakinSQbarSbn/04029HH+7nvn251FaAOntApDC8qU6
 qw5qa+6NrknJSm20CTx9tvf28KsCtuifmhepWFX3nbLpf9V4LHr71oiF0dI4544EAEeLTTNYJ6DVl
 zeedSXn8wGRq457v+wB+WsMuWgC8J7lSuHEMXsBiQHYv4vfCfX5sNi3bu2vE/0vPb8yGpSWlrsZJJ
 czL/A+phe5KOIRMxIRNZ5s095a66iRR8WYJdHfZgvIpdETGb0SqIudAakDUFI7JUGDuJQmR3s2w/G
 0b++5iJ+g==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:48398)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i175S-00049Z-LJ; Fri, 23 Aug 2019 11:46:30 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i175J-0000Ay-5M; Fri, 23 Aug 2019 11:46:21 +0100
Date: Fri, 23 Aug 2019 11:46:21 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: Re: [PATCH v9 1/8] ARM: aurora-l2: add prefix to MAX_RANGE_SIZE
Message-ID: <20190823104621.GY13294@shell.armlinux.org.uk>
References: <20190712034904.5747-1-chris.packham@alliedtelesis.co.nz>
 <20190712034904.5747-2-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712034904.5747-2-chris.packham@alliedtelesis.co.nz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_034649_836576_171BA7F6 
X-CRM114-Status: GOOD (  17.06  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jlu@pengutronix.de,
 linux-edac@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 james.morse@arm.com, Gregory CLEMENT <gregory.clement@free-electrons.com>,
 bp@alien8.de, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 patches@armlinux.org.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 03:48:57PM +1200, Chris Packham wrote:
> From: Jan Luebbe <jlu@pengutronix.de>
> 
> The macro name is too generic, so add a AURORA_ prefix.
> 
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> Reviewed-by: Gregory CLEMENT <gregory.clement@free-electrons.com>
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> ---
>  arch/arm/include/asm/hardware/cache-aurora-l2.h | 2 +-

I can't apply this series - this file does not exist in my tree, and
from what git tells me, it never has existed.  Maybe it's in someone
elses tree?

>  arch/arm/mm/cache-l2x0.c                        | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/include/asm/hardware/cache-aurora-l2.h b/arch/arm/include/asm/hardware/cache-aurora-l2.h
> index c86124769831..dc5c479ec4c3 100644
> --- a/arch/arm/include/asm/hardware/cache-aurora-l2.h
> +++ b/arch/arm/include/asm/hardware/cache-aurora-l2.h
> @@ -41,7 +41,7 @@
>  #define AURORA_ACR_FORCE_WRITE_THRO_POLICY	\
>  	(2 << AURORA_ACR_FORCE_WRITE_POLICY_OFFSET)
>  
> -#define MAX_RANGE_SIZE		1024
> +#define AURORA_MAX_RANGE_SIZE	1024
>  
>  #define AURORA_WAY_SIZE_SHIFT	2
>  
> diff --git a/arch/arm/mm/cache-l2x0.c b/arch/arm/mm/cache-l2x0.c
> index 428d08718107..83b733a1f1e6 100644
> --- a/arch/arm/mm/cache-l2x0.c
> +++ b/arch/arm/mm/cache-l2x0.c
> @@ -1352,8 +1352,8 @@ static unsigned long aurora_range_end(unsigned long start, unsigned long end)
>  	 * since cache range operations stall the CPU pipeline
>  	 * until completion.
>  	 */
> -	if (end > start + MAX_RANGE_SIZE)
> -		end = start + MAX_RANGE_SIZE;
> +	if (end > start + AURORA_MAX_RANGE_SIZE)
> +		end = start + AURORA_MAX_RANGE_SIZE;
>  
>  	/*
>  	 * Cache range operations can't straddle a page boundary.
> -- 
> 2.22.0
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
