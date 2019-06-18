Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7748B49DCD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 11:52:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gaHBCW1lyjtG7iP5NyPqG3X3DkH1dFGS+ht4Y0YmXuo=; b=nLplCM74uOUrHs
	G4HJxQC89uwj8H7S6b2Fd6AfpYS2oPteppVsVKSxaQ7xw3aOISLHvLQUg4XkmP8WXXhwu6o4ih3qX
	P7FadN8879D9NAfKO6MIW4pbDiUAibegnwVhn5gzGDZY38RZ7L482+kqqpwC+Wlh/LeGzW5KRh2xK
	BRt3zDzbakOK+VWBg/zSHXtDAupPT/0jRP4iP7ONFCGi6hBodl5kPzUcwskC2GeOwH9oUdzqZV2Fb
	2+d0PaRuKpKtkzt3fthfInUyXJX9YTgISyKjwyHu1PcTsn1tMMGNFZvS+9vsmTyF6s51qmEJ7JxYJ
	37lsUb8E2MGJ+Tq3gVTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdAnP-0007ZM-UT; Tue, 18 Jun 2019 09:52:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdAnE-0007XW-ME
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 09:52:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D116D344;
 Tue, 18 Jun 2019 02:52:42 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 211323F246;
 Tue, 18 Jun 2019 02:54:27 -0700 (PDT)
Date: Tue, 18 Jun 2019 10:52:40 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] clocksource/arm_arch_timer: fix
 arch_timer_set_evtstrm_feature return type
Message-ID: <20190618095240.GP20984@e119886-lin.cambridge.arm.com>
References: <20190618094835.3709679-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618094835.3709679-1-arnd@arndb.de>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_025244_771416_A0918B73 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 11:48:27AM +0200, Arnd Bergmann wrote:
> This looks like it was copied incorrectly from arm64:

Hi Arnd,

Yes that's correct. I sent a patch for this yesterday [1], I believe Daniel
plans to take this through his tree.

[1] https://lkml.org/lkml/2019/6/17/229

Thanks,

Andrew Murray

> 
> In file included from /git/arm-soc/drivers/clocksource/arm_arch_timer.c:31:
> arch/arm/include/asm/arch_timer.h:131:1: error: control reaches end of non-void function [-Werror,-Wreturn-type]
> 
> Change the type to 'void' as it should be.
> 
> Fixes: 11e34eca5d0a ("clocksource/arm_arch_timer: Extract elf_hwcap use to arch-helper")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm/include/asm/arch_timer.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/include/asm/arch_timer.h b/arch/arm/include/asm/arch_timer.h
> index ae533caec1e9..99175812d903 100644
> --- a/arch/arm/include/asm/arch_timer.h
> +++ b/arch/arm/include/asm/arch_timer.h
> @@ -125,7 +125,7 @@ static inline void arch_timer_set_cntkctl(u32 cntkctl)
>  	isb();
>  }
>  
> -static inline bool arch_timer_set_evtstrm_feature(void)
> +static inline void arch_timer_set_evtstrm_feature(void)
>  {
>  	elf_hwcap |= HWCAP_EVTSTRM;
>  }
> -- 
> 2.20.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
