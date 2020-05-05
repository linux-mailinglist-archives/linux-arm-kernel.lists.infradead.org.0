Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A43EB1C540A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 13:11:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S/155wM3fK2Wt60uWEsFwy+hMKftjVDEcDraCwvIfcY=; b=QUuDLTMy3Tqpsy
	NNiQXzsbOHBLTQ7TA/bYXJmMTD+OZDJYgHqjIhBI/SRD4AbIuWkd5XAS0z22Ykf6vN8u92K9fNqN/
	sz6oy5wDfqSlWm/48ySscXaEftYeEMW8q68Xb/mklsSnxuCimjsePWIRxYnZIQ13co0Kdv7+ogoSz
	e1zn7ts2uo8vLCLtmwuShFqyoeuy9Wv3c5o95uwrRyFdTRXTU931ZCTtr+2il5huFGj8G9ikfddRW
	sdjXu++QG7uiXaUTHMcD344tCfFPvg7LACU6/bVBvn1eLPb0Gm0TdMWrWgrTXtX6ah+DySz/70ZNH
	Jyp78IcHMFTwRInceyHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVvTa-0004ca-8C; Tue, 05 May 2020 11:11:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVvTO-0004b4-1o
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 11:10:51 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A1ED0206B8;
 Tue,  5 May 2020 11:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588677049;
 bh=tLnC3k0rye0luMgLxFSFH5txN4xnLzlLq84ZHZhCA2Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Xcd5vIJgLtqRrkuJPCcdbU5b2WtJlWCm7UfhN/ckq+9vmS9qPWkYH8U94I7Ta3xG6
 B3gwrGBf+MKsezEyVcBIqJfTF5o0pjmu+4FRTfre6YfZi2V53Ty7hZuThX/Y1cO5vq
 S39yKwl2ZnHA6kNGQTole+6zuVkz6j6CVXpE84w0=
Date: Tue, 5 May 2020 12:10:45 +0100
From: Will Deacon <will@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V3 03/16] arm64/cpufeature: Make doublelock a signed
 feature in ID_AA64DFR0
Message-ID: <20200505111045.GE19710@willie-the-truck>
References: <1588426445-24344-1-git-send-email-anshuman.khandual@arm.com>
 <1588426445-24344-4-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588426445-24344-4-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_041050_119193_AA3492B1 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 02, 2020 at 07:03:52PM +0530, Anshuman Khandual wrote:
> Double lock feature can have the following possible values.
> 
> 0b0000 - Double lock implemented
> 0b1111 - Double lock not implemented
> 
> But in case of a conflict the safe value should be 0b1111. Hence this must
> be a signed feature instead. Also change FTR_EXACT to FTR_LOWER_SAFE.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> 
> Suggested-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> ---
>  arch/arm64/kernel/cpufeature.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 51386dade423..cba43e4a5c79 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -338,7 +338,7 @@ static const struct arm64_ftr_bits ftr_id_mmfr0[] = {
>  };
>  
>  static const struct arm64_ftr_bits ftr_id_aa64dfr0[] = {
> -	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_EXACT, 36, 28, 0),
> +	S_ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 36, 28, 0),

Wait, isn't this buggered today? Shouldn't that 28 be a 4? I think we really
need to:

	1. Make it impossible to describe overlapping fields, incomplete
	   registers etc (ideally at build-time)

	2. Have a macro that for 4-bit fields so you don't have to type '4'
	   all the time

Suzuki, any ideas how we can make this a bit more robust?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
