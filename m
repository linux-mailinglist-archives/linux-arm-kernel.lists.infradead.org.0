Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC5E1D4D6F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 14:08:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3IvzQ3zt/grGZMIQ8kbpgwR4L4ct/e9VOjDcFMCNvPo=; b=VI6RCBj4qVj+Ro
	abUzs1/hW61AUkWlxbfGtf/HsC5cIi+u30XJNh8v87SBQz5T2Wodl6PzGCXSXULHSGw2t3RbI39mj
	I9fU/XY/kfFQa9L38GibLJUfSR6u6U6M7ZU2MGZ7VP0bOnQ66zSOulcSjBD76m3FSyhUW30Zonajj
	XER9RJ4mrxwKkutlYHunNmvaYKzCWTT19YGp/un1zQsToGydKyaWa4sn47S9y42+ndxFo2SfT91iR
	eT0nv0ti3a8sfU8QF61XNpnwegrlwmi0HSkBDJuwkaSXFf77O6Vp2p5/yd6be52KFg0/PkmOYJ3rt
	Pa89gxEMRgYJE7HBZOqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZZ8b-0003VQ-Of; Fri, 15 May 2020 12:08:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZZ8S-0003Ur-Pg
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 12:08:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 39021D6E;
 Fri, 15 May 2020 05:08:16 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.24.119])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 195183F305;
 Fri, 15 May 2020 05:08:13 -0700 (PDT)
Date: Fri, 15 May 2020 13:08:11 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v3 6/7] firmware: smccc: Add function to fetch SMCCC
 version
Message-ID: <20200515120811.GF67718@C02TD0UTHF1T.local>
References: <20200506164411.3284-1-sudeep.holla@arm.com>
 <20200506164411.3284-7-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506164411.3284-7-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_050816_874980_ADC2832A 
X-CRM114-Status: GOOD (  16.64  )
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

On Wed, May 06, 2020 at 05:44:10PM +0100, Sudeep Holla wrote:
> For backward compatibility reasons, PSCI maintains SMCCC version as
> SMCCC didn't provide ARM_SMCCC_VERSION_FUNC_ID until v1.1
> 
> Let us provide accessors to fetch the SMCCC version in PSCI so that
> other SMCCC v1.1+ features can use it.

Stale commit message? This was factored out of PSCI in the prior commit.

> Reviewed-by: Steven Price <steven.price@arm.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/firmware/smccc/smccc.c | 4 ++++
>  include/linux/arm-smccc.h      | 9 +++++++++
>  2 files changed, 13 insertions(+)
> 
> diff --git a/drivers/firmware/smccc/smccc.c b/drivers/firmware/smccc/smccc.c
> index 488699aae24f..672974df0dfe 100644
> --- a/drivers/firmware/smccc/smccc.c
> +++ b/drivers/firmware/smccc/smccc.c
> @@ -24,3 +24,7 @@ enum arm_smccc_conduit arm_smccc_1_1_get_conduit(void)
>  	return smccc_conduit;
>  }
>  
> +u32 arm_smccc_version_get(void)
> +{
> +	return smccc_version;
> +}

Could we please call this arm_smccc_get_version(), to align with the
existing arm_smccc_1_1_get_conduit()?

> diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
> index 11fb20bfa8f7..8dd54dad1ec5 100644
> --- a/include/linux/arm-smccc.h
> +++ b/include/linux/arm-smccc.h
> @@ -109,6 +109,15 @@ void __init arm_smccc_version_init(u32 version, enum arm_smccc_conduit conduit);
>   */
>  enum arm_smccc_conduit arm_smccc_1_1_get_conduit(void);
>  
> +/**
> + * arm_smccc_version_get()
> + *
> + * Returns the version to be used for SMCCCv1.1 or later.
> + *
> + * When SMCCCv1.1 or above is not present, assumes and returns SMCCCv1.0.
> + */
> +u32 arm_smccc_version_get(void);

Can we please reword the last line to something like:

| When SMCCCv1.1 or above is not present, returns SMCCCv1.0, but this
| does not imply the presence of firmware or a valid conduit. Callers
| handling SMCCCv1.0 must determine the conduit by other means.

With all that:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
