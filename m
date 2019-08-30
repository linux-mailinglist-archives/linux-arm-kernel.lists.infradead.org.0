Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45974A3442
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 11:42:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QpBW+Bk3hvxeMU4GA5LVl+XO7qC+jof4xd5nMK7H1lo=; b=qIp0dMegn9bybc
	elbOantrxt2uYXQNx7S5Wlor9mWo0A9XJ3NZe86lcpqFPsOrT/MaEuu5oqjW0B/c55WgqQf/nDWWi
	YXz20Ml0yPNTYki7jckhv3pE3p+NbwtTxGrXOO8+E9v0PF4D5T1sgZ8kSH6S612CzAx29MVv/L/54
	cSWJ3KDzLCBhcU4vHux01Oh1QWtn8wPHVcDxzdZu8cm/okyh8Q57bbbdgEvsWXeVQJ2fu7xl5x2DM
	hsuRyhllhOR9zv34kY4B7BqTYkRG3grvLinYMrX8TCcAu6/QkOKH67ksCfVsjFFrfivHZJbrnOKv2
	u/25zxnZc9PBWsfVZFqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3dPk-0003Uq-Gc; Fri, 30 Aug 2019 09:41:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3dOs-0002oN-JQ
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 09:41:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AD9B8344;
 Fri, 30 Aug 2019 02:40:57 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 59DC43F718;
 Fri, 30 Aug 2019 02:40:56 -0700 (PDT)
Date: Fri, 30 Aug 2019 10:40:54 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH ARM64 v4.4 V3 07/44] arm64: uaccess: Prevent speculative
 use of the current addr_limit
Message-ID: <20190830094053.GG46475@lakrids.cambridge.arm.com>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
 <dbe69b13f77052abf5d342b2775b1ebdbcce241a.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dbe69b13f77052abf5d342b2775b1ebdbcce241a.1567077734.git.viresh.kumar@linaro.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_024059_189592_B9660DF6 
X-CRM114-Status: GOOD (  14.90  )
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
Cc: Julien Thierry <Julien.Thierry@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, stable@vger.kernel.org, mark.brown@arm.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 05:03:52PM +0530, Viresh Kumar wrote:
> From: Will Deacon <will.deacon@arm.com>
> 
> commit c2f0ad4fc089cff81cef6a13d04b399980ecbfcc upstream.
> 
> A mispredicted conditional call to set_fs could result in the wrong
> addr_limit being forwarded under speculation to a subsequent access_ok
> check, potentially forming part of a spectre-v1 attack using uaccess
> routines.
> 
> This patch prevents this forwarding from taking place, but putting heavy
> barriers in set_fs after writing the addr_limit.
> 
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Will Deacon <will.deacon@arm.com>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>

Reviewed-by: Mark Rutland <mark.rutland@arm.com> [v4.4 backport]

Mark.

> ---
>  arch/arm64/include/asm/uaccess.h | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
> index 75363d723262..fc11c50af558 100644
> --- a/arch/arm64/include/asm/uaccess.h
> +++ b/arch/arm64/include/asm/uaccess.h
> @@ -62,6 +62,13 @@ extern int fixup_exception(struct pt_regs *regs);
>  static inline void set_fs(mm_segment_t fs)
>  {
>  	current_thread_info()->addr_limit = fs;
> +
> +	/*
> +	 * Prevent a mispredicted conditional call to set_fs from forwarding
> +	 * the wrong address limit to access_ok under speculation.
> +	 */
> +	dsb(nsh);
> +	isb();
>  }
>  
>  #define segment_eq(a, b)	((a) == (b))
> -- 
> 2.21.0.rc0.269.g1a574e7a288b
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
