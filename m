Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A851D2FEF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 14:38:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Yza0WUaqStvxbrrB7YrXxBU28ZcVj4P8lqqlrIAjlMM=; b=eOU21aOI60knLnmQpMabeTPSV
	OM8sfJljaS+dTd7QIJ41Y/e9842qmdvVj9FzauRA+djLLTsblDaITDopXRd8raEbJZYAOXxfDduAq
	RWSgeoogEvSI70EdH4ruOHnm06KbRGQUoQ6ACS6wN26Gykd1Cy0mZN9WJlNDXTdUcg5R3+h6/60VN
	4yP0S2hanPK4RJU8xHuuYMPQB9I8yJGT6qMy/8OUU47efHwvhGkV/2BIMjEjexFhpTZmsRwng0lSB
	6cDag0SNrO6PfIasHoLVrHvh1eQzGQ3k1dMT+c7pC0DujmrqDyZQrVTjFY9/hW9GYDPyItMQq3LkR
	n1857BQ5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZD8U-0005FL-Bc; Thu, 14 May 2020 12:38:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZD8M-0005EX-0f
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 12:38:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 08A3A1042;
 Thu, 14 May 2020 05:38:38 -0700 (PDT)
Received: from [192.168.1.84] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B7A003F305;
 Thu, 14 May 2020 05:38:35 -0700 (PDT)
Subject: Re: [PATCH 1/2] firmware: arm-smccc: define identifier for Arm SMCCC
 v1.2
To: Etienne Carriere <etienne.carriere@linaro.org>,
 linux-kernel@vger.kernel.org
References: <20200514082109.27573-1-etienne.carriere@linaro.org>
From: Steven Price <steven.price@arm.com>
Message-ID: <b8661499-6ecc-2adc-9ed6-b7c428a8aa35@arm.com>
Date: Thu, 14 May 2020 13:38:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200514082109.27573-1-etienne.carriere@linaro.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_053842_102256_E1EA6CD9 
X-CRM114-Status: GOOD (  15.37  )
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
 alexios.zavras@intel.com, Sudeep Holla <sudeep.holla@arm.com>,
 tglx@linutronix.de, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14/05/2020 09:21, Etienne Carriere wrote:
> Define identifier value reported by secure firmware when its
> supports Arm SMCCC specification v1.2.
> 
> Signed-off-by: Etienne Carriere <etienne.carriere@linaro.org>

FYI Sudeep has already posted a patch to do this[1].

Steve

[1] 
https://lore.kernel.org/linux-arm-kernel/20200430114814.14116-3-sudeep.holla@arm.com/

> ---
>   include/linux/arm-smccc.h | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
> index 59494df0f55b..1cf221f3f07a 100644
> --- a/include/linux/arm-smccc.h
> +++ b/include/linux/arm-smccc.h
> @@ -56,6 +56,7 @@
>   
>   #define ARM_SMCCC_VERSION_1_0		0x10000
>   #define ARM_SMCCC_VERSION_1_1		0x10001
> +#define ARM_SMCCC_VERSION_1_2		0x10002
>   
>   #define ARM_SMCCC_VERSION_FUNC_ID					\
>   	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
