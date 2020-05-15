Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C135A1D4CBA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 13:38:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zPTdojMdo1VR+mCFneIcv1hDKK+7FXcLPXZG3uwQcfI=; b=J3mu7vxMj+hR4O
	Xmgx1E5rZ+SOHd6DRstFmsd6PUr8fhw6CE+oqALsAwEvRXZmkPXaE9dx4/TVlXgFwRX/SJScDZ/et
	jsYKmNvmfeLOgI5Ys2dMvQLb7Jhc2dWvRJFtjxa8czeHlTn6Ij3PICxqzjh+Oxk/BcZvI5TshlK5Z
	BcgmpT5qsZ17L/gcPnE1Ah+Shyh55PkNM+bPUZdQYxJhnvnpVBkQr0NhtkmtMMvApOJIroj4GXP+y
	IfhdEV5pn1Uj530iwfZouR55OH3vKKqPlFXoFyWpQAsS36LBD6MZJNtqtQy+YXCWp3pr9UvYWdJMB
	Y1xbOfNbrWQYTn1RqsvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZYfb-0004Z0-LQ; Fri, 15 May 2020 11:38:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZYfG-0004UT-LN
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 11:38:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 34762D6E;
 Fri, 15 May 2020 04:38:06 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.24.119])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0D4893F305;
 Fri, 15 May 2020 04:38:03 -0700 (PDT)
Date: Fri, 15 May 2020 12:38:01 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v3 3/7] firmware: smccc: Add the definition for SMCCCv1.2
 version/error codes
Message-ID: <20200515113801.GC67718@C02TD0UTHF1T.local>
References: <20200506164411.3284-1-sudeep.holla@arm.com>
 <20200506164411.3284-4-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506164411.3284-4-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_043807_224843_D6431501 
X-CRM114-Status: GOOD (  16.54  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Steven Price <steven.price@arm.com>,
 harb@amperecomputing.com, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 05:44:07PM +0100, Sudeep Holla wrote:
> Add the definition for SMCCC v1.2 version and new error code added.
> While at it, also add a note that ARM DEN 0070A is deprecated and is
> now merged into the main SMCCC specification(ARM DEN 0028C).
> 
> Reviewed-by: Steven Price <steven.price@arm.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>

Hmm... the SMCCC v1.2 doc still seems to be EAC rather than a final
release.

I don't expect that this would change, but I am a little hesitant to add
other stuff based on an unfinalized spec. Do we know when the final
release will be?

Thanks,
Mark.

> ---
>  include/linux/arm-smccc.h | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
> index 6c1d1eda3be4..9d9a2e42e919 100644
> --- a/include/linux/arm-smccc.h
> +++ b/include/linux/arm-smccc.h
> @@ -56,6 +56,7 @@
>  
>  #define ARM_SMCCC_VERSION_1_0		0x10000
>  #define ARM_SMCCC_VERSION_1_1		0x10001
> +#define ARM_SMCCC_VERSION_1_2		0x10002
>  
>  #define ARM_SMCCC_VERSION_FUNC_ID					\
>  	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
> @@ -314,10 +315,14 @@ asmlinkage void __arm_smccc_hvc(unsigned long a0, unsigned long a1,
>   */
>  #define arm_smccc_1_1_hvc(...)	__arm_smccc_1_1(SMCCC_HVC_INST, __VA_ARGS__)
>  
> -/* Return codes defined in ARM DEN 0070A */
> +/*
> + * Return codes defined in ARM DEN 0070A
> + * ARM DEN 0070A is now merged/consolidated into ARM DEN 0028C
> + */
>  #define SMCCC_RET_SUCCESS			0
>  #define SMCCC_RET_NOT_SUPPORTED			-1
>  #define SMCCC_RET_NOT_REQUIRED			-2
> +#define SMCCC_RET_INVALID_PARAMETER		-3
>  
>  /*
>   * Like arm_smccc_1_1* but always returns SMCCC_RET_NOT_SUPPORTED.
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
