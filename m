Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 026201C778E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 19:14:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CfJFtQRik4/7oSM5Qbu8nuGWxzTF43XMQ0RV+1VDC80=; b=hZISWneKY+HAQZ
	kGWxKisMT7AuGEef0we61LQ0Vb/EIkvWaPpcm/EgR33YLju9CVe5qSOqW6djxencK1nbMo0Lrz02G
	/hsMj+Os7fYJ+3lm5WfCGXZDJnAKlDsDPpchaFmPCNJFXc5rNV0FL8QyQhEWcYdvOcUKpGjgX+EKj
	JCF8c80zDzWwcx0KQkmbDzh+1LLQ+grz7g3pRqXVtXweNLfrdW7xxFkGmglCKahBSSAZW+uUQrlKh
	D6NG1lOsZQx7F4Egx4M6Sj+x8HgnyeMbqyk9vhE8KSEIBC43bNxRayqu7T9l7hW2cq0JBdoYOJKi2
	V3LFHnUTHWfyOLPJ2Y8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWNci-0000oN-0r; Wed, 06 May 2020 17:14:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWNcb-0000ny-NR
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 17:14:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CFDFF1FB;
 Wed,  6 May 2020 10:14:02 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 07F113F71F;
 Wed,  6 May 2020 10:14:00 -0700 (PDT)
Date: Wed, 6 May 2020 18:13:50 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH v2 3/4] arm64: cpufeature: Modify address authentication
 cpufeature to exact
Message-ID: <20200506171350.GH2878@gaia>
References: <1586842314-19527-1-git-send-email-amit.kachhap@arm.com>
 <1586842314-19527-4-git-send-email-amit.kachhap@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586842314-19527-4-git-send-email-amit.kachhap@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_101413_813845_84722BB2 
X-CRM114-Status: GOOD (  17.49  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, James Morse <james.morse@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 11:01:53AM +0530, Amit Daniel Kachhap wrote:
> This patch modifies the address authentication cpufeature type to EXACT
> from earlier LOWER_SAFE as the different configurations added for Armv8.6
> enhanced PAC have different behaviour and there is no tunable to enable the
> lower safe versions. The safe value is set as 0.
> 
> After this change, if there is any variation in configurations in secondary
> cpus from boot cpu then those cpus are marked tainted. The KVM guests may
> completely disable address authentication if there is any such variations
> detected.
> 
> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> ---
>  arch/arm64/kernel/cpufeature.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 08795025409c..599b03df2f93 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -154,9 +154,9 @@ static const struct arm64_ftr_bits ftr_id_aa64isar1[] = {
>  	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_FCMA_SHIFT, 4, 0),
>  	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_JSCVT_SHIFT, 4, 0),
>  	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_PTR_AUTH),
> -		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_API_SHIFT, 4, 0),
> +		       FTR_STRICT, FTR_EXACT, ID_AA64ISAR1_API_SHIFT, 4, 0),
>  	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_PTR_AUTH),
> -		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_APA_SHIFT, 4, 0),
> +		       FTR_STRICT, FTR_EXACT, ID_AA64ISAR1_APA_SHIFT, 4, 0),
>  	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_DPB_SHIFT, 4, 0),
>  	ARM64_FTR_END,

Is this sufficient? If we have the boot CPU already enabling the ptrauth
and we get a secondary CPU with a different ISAR1 field that matches the
address auth in cpufeature.c, we still allow it to boot. We no longer
report the feature to the user system_supports_address_auth() is true
while system_supports_generic_auth() would be false as it checks the
sanitised feature registers.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
