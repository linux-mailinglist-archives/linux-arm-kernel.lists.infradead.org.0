Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0838D45A8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 18:43:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JJ/31Xwted1dmbOohrb/8teUlLeP9ftmWX9Fkv15p5c=; b=ofSjddMGS3Cekt
	40G2JdKeDi2tKqwvCAsbseQkCitBmMlTwVNWg+QpRBNlBpfJYY3ppZvYv1fxDnrlwoH1uvKKZthFg
	F+lUbUjcU8bHZ5SyMYKAmFoN39gJzvInPoicFsXi99ZwSuwLVX0kEtScEEF3yoNS5T+YFkUM6fyZD
	94RpBjt3T6wWnME5CAKW3ei1OaJK0OzC6tEcOlKdxH9xgON97JUyR+TVgDDQpHdllDUJ17q321aNy
	mUjBviKJewxhqH4KsP6DozgVodmnzgFQsIWZaz19Y/H6fyIZgLpTiIUFwMTCNPQuX2Ttdtm1h6TNm
	vyUYgfg9cJjE3o+cmpJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIy0s-0004dA-1T; Fri, 11 Oct 2019 16:43:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIy0h-0004ce-Mg
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 16:43:25 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 610472089F;
 Fri, 11 Oct 2019 16:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570812203;
 bh=1h3qain3eXPpQepsaq86h8dH0WgBOqiHsC+GQUWU3jc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0rPAFv32q98S+p+CmnLkOALxiZP1+SlhBCy+I+SkWhavMqNH84K4tjmsx4QkfJw+D
 b7p2m9sNPQWBUgAryIILE3xViIl5r435daf8r71mJqrhYtyw1f0WEpr+Uielm5wFD3
 j1RLsVFnG25MXv1aeen53pwgmKOQQMXtbZI0Dmss=
Date: Fri, 11 Oct 2019 17:43:19 +0100
From: Will Deacon <will@kernel.org>
To: wangxu <wangxu72@huawei.com>
Subject: Re: [PATCH] ARM/hw_breakpoint: modify dead code for
 breakpoint_handler()
Message-ID: <20191011164319.2on7snv65jdbz3sb@willie-the-truck>
References: <1570613220-59533-1-git-send-email-wangxu72@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570613220-59533-1-git-send-email-wangxu72@huawei.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_094323_759547_EA8AF23D 
X-CRM114-Status: GOOD (  17.05  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, linux@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 09, 2019 at 05:27:00PM +0800, wangxu wrote:
> From: Wang Xu <wangxu72@huawei.com>
> 
> In perf_event_alloc(), event->overflow_handler is initialized to a
> non-null value, which makes enable_single_step(bp, addr) in
> breakpoint_handler() never be executed.
> 
> As a matter of fact, the branch condition has been updated to
> is_default_overflow_handler().
> 
> Signed-off-by: Wang Xu <wangxu72@huawei.com>
> ---
>  arch/arm/kernel/hw_breakpoint.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/kernel/hw_breakpoint.c b/arch/arm/kernel/hw_breakpoint.c
> index b0c195e..586a587 100644
> --- a/arch/arm/kernel/hw_breakpoint.c
> +++ b/arch/arm/kernel/hw_breakpoint.c
> @@ -822,7 +822,7 @@ static void breakpoint_handler(unsigned long unknown, struct pt_regs *regs)
>  			info->trigger = addr;
>  			pr_debug("breakpoint fired: address = 0x%x\n", addr);
>  			perf_bp_event(bp, regs);
> -			if (!bp->overflow_handler)
> +			if (is_default_overflow_handler(bp))
>  				enable_single_step(bp, addr);
>  			goto unlock;

Seems to match what we do on arm64, so:

Acked-by: Will Deacon <will@kernel.org>

You'll need to put this into rmk's patch system [1].

Will

[1] https://www.arm.linux.org.uk/developer/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
