Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4090E4777
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 11:36:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IUoc6n+0DUHqb3wXPDZYxe2dNW3Sh+6ym79ueoT6P60=; b=svCysFrLXoNJ9/EXgnw0cUMqg
	Z9qfnxpNrigC/Z5NB2u+UZZ4Qaf+wOFL0zmRGUfPI/4xOiDG+eY0GFFatnvo0Yb9X2p0Xz8DqDJmz
	q+5N29nwXSBUOSEPRnlpz0Pqbl2sL2/lPC8KRGVUvM1PsQ3CF0TP0QD1F3qh6Y67z1L2ohoFJwb0E
	djY1EX3HBEKLfmZ+aDMN0jeEISKfuHz4qqNqrUMPnExBGDBxwOFUx2zWLwk+NVj2LVsljJryd2B2V
	cAJuWFZwCol9L/NhTspnJYgo6vhW/DpSc29LWd2H2xTs8jhjIUZjP8VZKFIVkh/aEdR2anOz7U/Dj
	+9QuEKIrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNw1N-0006Bs-CT; Fri, 25 Oct 2019 09:36:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNw1D-0006BR-9G
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 09:36:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B6D6C28;
 Fri, 25 Oct 2019 02:36:24 -0700 (PDT)
Received: from [10.37.13.78] (unknown [10.37.13.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AC29A3F71F;
 Fri, 25 Oct 2019 02:36:23 -0700 (PDT)
Subject: Re: [PATCH] arm64: cpufeature: Fix typos in comment
To: zhangshaokun@hisilicon.com, linux-arm-kernel@lists.infradead.org
References: <1571985126-34393-1-git-send-email-zhangshaokun@hisilicon.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <d8966dab-c71d-5c3f-bcef-ceaa75d4ca12@arm.com>
Date: Fri, 25 Oct 2019 10:39:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <1571985126-34393-1-git-send-email-zhangshaokun@hisilicon.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_023627_368326_C551EDFC 
X-CRM114-Status: GOOD (  18.09  )
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
Cc: catalin.marinas@arm.com, will@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/25/2019 07:32 AM, Shaokun Zhang wrote:
> Fix up one typos: CTR_E0 -> CTR_EL0
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
> ---
>   arch/arm64/kernel/cpuinfo.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/cpuinfo.c b/arch/arm64/kernel/cpuinfo.c
> index 05933c065732..56bba746da1c 100644
> --- a/arch/arm64/kernel/cpuinfo.c
> +++ b/arch/arm64/kernel/cpuinfo.c
> @@ -329,7 +329,7 @@ static void __cpuinfo_store_cpu(struct cpuinfo_arm64 *info)
>   	info->reg_cntfrq = arch_timer_get_cntfrq();
>   	/*
>   	 * Use the effective value of the CTR_EL0 than the raw value
> -	 * exposed by the CPU. CTR_E0.IDC field value must be interpreted
> +	 * exposed by the CPU. CTR_EL0.IDC field value must be interpreted
>   	 * with the CLIDR_EL1 fields to avoid triggering false warnings
>   	 * when there is a mismatch across the CPUs. Keep track of the
>   	 * effective value of the CTR_EL0 in our internal records for
> 

Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
