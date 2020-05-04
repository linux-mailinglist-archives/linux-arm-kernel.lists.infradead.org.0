Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CCD61C3C76
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 16:11:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ze8I4BmjSPOdVdXE1p87jUGU+KeqnLc2gmCYtEojiw4=; b=hcyhJqa4l3h+sH3RuBVTCgxxK
	BjkPbbI2u+8qVRuqlCGZJmzEr9EIkxc2hv5jh27E/emAda08mmYhq3Vr/SkogrXpVdhI6fN4y29qI
	mEMu0PqbKDYYEne26vj5FQhdBhjNsSw+XvpK8GiQPAQaocx4W2SguiwCRtyZnRuzKIp8Tb+xB6qKD
	xrOIWfY6o6+O3heF4Oh/9y3dyfXodIQBlkrfGF2gjsIUIrhaF87oaZ4dPzsPOuyfocIGUGvJKxr5S
	MHtxoCfoa8dhQWEtafO/gzWhmUyUGlBHeY+erVaHLV/TPuH1VRHsH2tuXdPNIg4E2Y7HEPnp07AIt
	Uo27DlDaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVboZ-0000qM-5h; Mon, 04 May 2020 14:11:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVboS-0000pK-Rj
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 14:11:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1FFB71FB;
 Mon,  4 May 2020 07:11:16 -0700 (PDT)
Received: from [192.168.1.84] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0D9813F305;
 Mon,  4 May 2020 07:11:14 -0700 (PDT)
Subject: Re: [PATCH v2 4/5] firmware: psci: Add function to fetch SMCCC version
To: Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
References: <20200504092905.10580-1-sudeep.holla@arm.com>
 <20200504092905.10580-5-sudeep.holla@arm.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <3554928d-2b7c-a3d3-f16e-20e25e761710@arm.com>
Date: Mon, 4 May 2020 15:11:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200504092905.10580-5-sudeep.holla@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_071116_934819_589FCE52 
X-CRM114-Status: GOOD (  17.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 harb@amperecomputing.com, Will Deacon <will@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/05/2020 10:29, Sudeep Holla wrote:
> For backward compatibility reasons, PSCI maintains SMCCC version as
> SMCCC didn't provide ARM_SMCCC_VERSION_FUNC_ID until v1.1
> 
> Let us provide accessors to fetch the SMCCC version in PSCI so that
> other SMCCC v1.1+ features can use it.

Since it seems there is a good reason for this patch... ;)

Reviewed-by: Steven Price <steven.price@arm.com>

Steve

> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>   drivers/firmware/psci/psci.c | 5 +++++
>   include/linux/arm-smccc.h    | 9 +++++++++
>   2 files changed, 14 insertions(+)
> 
> diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
> index 6a56d7196697..04426e16fee6 100644
> --- a/drivers/firmware/psci/psci.c
> +++ b/drivers/firmware/psci/psci.c
> @@ -65,6 +65,11 @@ enum arm_smccc_conduit arm_smccc_1_1_get_conduit(void)
>   	return psci_ops.conduit;
>   }
>   
> +u32 arm_smccc_get_version(void)
> +{
> +	return psci_ops.smccc_version;
> +}
> +
>   typedef unsigned long (psci_fn)(unsigned long, unsigned long,
>   				unsigned long, unsigned long);
>   static psci_fn *invoke_psci_fn;
> diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
> index 9d9a2e42e919..d6b0f4acc707 100644
> --- a/include/linux/arm-smccc.h
> +++ b/include/linux/arm-smccc.h
> @@ -98,6 +98,15 @@ enum arm_smccc_conduit {
>    */
>   enum arm_smccc_conduit arm_smccc_1_1_get_conduit(void);
>   
> +/**
> + * arm_smccc_get_version()
> + *
> + * Returns the version to be used for SMCCCv1.1 or later.
> + *
> + * When SMCCCv1.1 or above is not present, assumes and returns SMCCCv1.0.
> + */
> +u32 arm_smccc_get_version(void);
> +
>   /**
>    * struct arm_smccc_res - Result from SMC/HVC call
>    * @a0-a3 result values from registers 0 to 3
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
