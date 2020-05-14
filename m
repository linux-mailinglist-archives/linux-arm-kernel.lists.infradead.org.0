Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B310F1D32BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 16:25:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ePs0bfQAfeLUDFs3zA+sODAPYQFmULNP2HxqzgLMv00=; b=f0nlBRQOHz5vyU
	MTSTZRYaPaFA9TwAB9Kv88RvuF11S60Pky3xNMxcstsVuNxB8n3BB7bo2a1SvjJuVv0E31/HgSNhP
	DqbrYDdGrC0228ZQ/+Gcok5TAUzQDiykKSum36yfQni1pt0xaLC07tkzhiCNcUmLqobFuW7u/pFCq
	YRepMQEF9Or7ukSfbh3cP075W8Nv6pP51txyHSqVbPE62kh4OW0w/A/2AlDYrQgYwKKlBBI/O9tl6
	0btmhoDwSNLzRRqEPsbYTgYKutFtk05TfyWfR0vEpfYy5Fb+vztCX6GwUzkXZS9ySnxnVGwV7uRzy
	aUtYlobFkQ2tpUmIefGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZEnC-0008EC-SV; Thu, 14 May 2020 14:24:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZEn2-0008DN-8F
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 14:24:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8CE441FB;
 Thu, 14 May 2020 07:24:47 -0700 (PDT)
Received: from bogus (unknown [10.37.8.154])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 636883F71E;
 Thu, 14 May 2020 07:24:45 -0700 (PDT)
Date: Thu, 14 May 2020 15:24:42 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Etienne Carriere <etienne.carriere@linaro.org>
Subject: Re: [PATCH 2/2] firmware: psci: support SMCCC v1.2 for SMCCC conduit
Message-ID: <20200514142442.GB23401@bogus>
References: <20200514082109.27573-1-etienne.carriere@linaro.org>
 <20200514082109.27573-2-etienne.carriere@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200514082109.27573-2-etienne.carriere@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_072448_335932_C3F3A3E9 
X-CRM114-Status: GOOD (  15.87  )
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, maz@kernel.org,
 linux-kernel@vger.kernel.org, steven.price@arm.com, alexios.zavras@intel.com,
 Sudeep Holla <sudeep.holla@arm.com>, tglx@linutronix.de, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 10:21:09AM +0200, Etienne Carriere wrote:
> Update PSCI driver to support SMCCC v1.2 reported by secure firmware
> and indirectly make SMCCC conduit properly set when so. TF-A release
> v2.3 implements and reports SMCCC v1.2 since commit [1].
> 
> Link: [1] https://git.trustedfirmware.org/TF-A/trusted-firmware-a.git/commit/?id=e34cc0cedca6e229847c232fe58d37fad2610ce9
> Signed-off-by: Etienne Carriere <etienne.carriere@linaro.org>
> ---
>  drivers/firmware/psci/psci.c | 14 ++++++++++----
>  include/linux/psci.h         |  1 +
>  2 files changed, 11 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
> index 2937d44b5df4..80cf73bea4b0 100644
> --- a/drivers/firmware/psci/psci.c
> +++ b/drivers/firmware/psci/psci.c
> @@ -409,11 +409,17 @@ static void __init psci_init_smccc(void)
>  	feature = psci_features(ARM_SMCCC_VERSION_FUNC_ID);
>  
>  	if (feature != PSCI_RET_NOT_SUPPORTED) {
> -		u32 ret;
> -		ret = invoke_psci_fn(ARM_SMCCC_VERSION_FUNC_ID, 0, 0, 0);
> -		if (ret == ARM_SMCCC_VERSION_1_1) {
> +		ver = invoke_psci_fn(ARM_SMCCC_VERSION_FUNC_ID, 0, 0, 0);
> +
> +		switch (ver) {
> +		case ARM_SMCCC_VERSION_1_1:
>  			psci_ops.smccc_version = SMCCC_VERSION_1_1;
> -			ver = ret;
> +			break;
> +		case ARM_SMCCC_VERSION_1_2:
> +			psci_ops.smccc_version = SMCCC_VERSION_1_2;
> +			break;
> +		default:
> +			break;
>  		}
>  	}
>  
> diff --git a/include/linux/psci.h b/include/linux/psci.h
> index a67712b73b6c..c7d99b7f34ed 100644
> --- a/include/linux/psci.h
> +++ b/include/linux/psci.h
> @@ -24,6 +24,7 @@ bool psci_has_osi_support(void);
>  enum smccc_version {
>  	SMCCC_VERSION_1_0,
>  	SMCCC_VERSION_1_1,
> +	SMCCC_VERSION_1_2,

I took approach to kill this completely [1] instead of having to keep
expanding it for ever.

-- 
Regards,
Sudeep

[1] https://lore.kernel.org/linux-arm-kernel/20200506164411.3284-5-sudeep.holla@arm.com/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
