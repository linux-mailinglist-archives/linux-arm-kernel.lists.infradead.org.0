Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B07188473
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 13:43:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WEIjzVPR9KMw/GF1amYbhI15nDAh2gvNsfJ7M6iMfuI=; b=J+ZNC4xPpECfY/
	BYaKJb+UqGHT60FGZqlHhwW7HRVciaE5ne8u0LgLD9TR16tz6jKgyR2LA3ud5ywZTfHgAcbwtOdX6
	sAG5LHSarL+Wq9F7iLguDmAaSNUkKnvcVoHExU4x0wMZ6SnODza8RqYLW+s7NgQGoOVgv941h9mJv
	XIFDnREGpF4aa7P/I7+eCKhuajspEaTG/Dt0+RLt80VibMd99gjUt8VqFFyfPBH3DQsU+/yTiBSTW
	oiK00JDgwMpDjiPWnGBwI8B6AIFRRnP6lzFmTdTXP9StRBjF94NeY8H58QynfpFGjRbiyS2o6vyZy
	begMmCTQ//uk+BsJ5DHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEBZL-0004kK-TC; Tue, 17 Mar 2020 12:43:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEBZC-0004io-Dt
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 12:43:31 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ED97820752;
 Tue, 17 Mar 2020 12:43:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584449009;
 bh=JS5Tz+SUrQ/bCk5HMtBNTJnu0kaZhX025LXI2/e1w48=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lG8WcZgiMNnoyQju0x5QfLGR+BIUZZBJ06YhibAgvuYU08e2AQAGHmc65gS5T3d1Q
 JGgBp4tstvBayCv4BF7TgFwxLECSAZtbggMZ2aRJ8leuo6QKn+ufyX8QWXWXktFyP3
 SMR2xWGWzVLH/ckpMG/XQhKaa1MC6GPNh5hzB0hk=
Date: Tue, 17 Mar 2020 12:43:24 +0000
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [RFC PATCH] arm64: fix the missing ktpi= cmdline check in
 arm64_kernel_unmapped_at_el0()
Message-ID: <20200317124323.GA16200@willie-the-truck>
References: <20200317114708.109283-1-yaohongbo@huawei.com>
 <20200317121050.GH8831@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200317121050.GH8831@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_054330_491236_A80730CF 
X-CRM114-Status: GOOD (  18.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: catalin.marinas@arm.com, broonie@kernel.org,
 Hongbo Yao <yaohongbo@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 17, 2020 at 12:10:51PM +0000, Mark Rutland wrote:
> [Adding Catalin and LAKML]
> 
> Mark.
> 
> On Tue, Mar 17, 2020 at 07:47:08PM +0800, Hongbo Yao wrote:
> > Kpti cannot be disabled from the kernel cmdline after the commit
> > 09e3c22a("arm64: Use a variable to store non-global mappings decision").
> > 
> > Bring back the missing check of kpti= command-line option to fix the
> > case where the SPE driver complains the missing "kpti-off" even it has
> > already been set.
> > 
> > Signed-off-by: Hongbo Yao <yaohongbo@huawei.com>
> > ---
> >  arch/arm64/include/asm/mmu.h | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
> > index 3c9533322558..ebbc0d3ac2f7 100644
> > --- a/arch/arm64/include/asm/mmu.h
> > +++ b/arch/arm64/include/asm/mmu.h
> > @@ -34,7 +34,8 @@ extern bool arm64_use_ng_mappings;
> >  
> >  static inline bool arm64_kernel_unmapped_at_el0(void)
> >  {
> > -	return arm64_use_ng_mappings;
> > +	return arm64_use_ng_mappings &&
> > +		cpus_have_const_cap(ARM64_UNMAP_KERNEL_AT_EL0);
> >  }

This probably isn't the right fix, since this will mean that early mappings
will be global and we'll have to go through the painful page-table rewrite
logic when the cap gets enabled for KASLR-enabled kernels.

Maybe a better bodge is something like:

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 0b6715625cf6..ad10f55b7bb9 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -1085,6 +1085,8 @@ static bool unmap_kernel_at_el0(const struct arm64_cpu_capabilities *entry,
 		if (!__kpti_forced) {
 			str = "KASLR";
 			__kpti_forced = 1;
+		} else if (__kpti_forced < 0) {
+			arm64_use_ng_mappings = false;
 		}
 	}
 

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
