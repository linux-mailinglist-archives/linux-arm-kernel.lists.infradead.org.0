Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C038F197F9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 07:17:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZjNUQGN2txdZfB+MZV+48NuR3BrC6jkCSiiGFXok19w=; b=hkiuuxIOJTNv4V
	idRxPHyA6rn7Q3fz2Y6o3/2/egyjW3H6GR859gcwR8HqioPebJbyKkMC+4fhW3wluYN4Ry0IBJCT6
	1HL7GVEYESoUo/C+uyS3JzsC9DG6Mtylee08EHV28qvxX+aBUT7YhzTLQhCATA8Jt++0elUMAxHDT
	2dFw8SqYPJG2LRllUMbNg6MPV3i09ks7pzzJ9BfovvNaeAghPRKFMJcHRnaO8kZ9O446c5nBxs/WV
	sVkMPgpETn/6IShi9Ew0OZdJ/UzVwZj0BGkWhvYIaQRWAIRrXaXqkqGU/5M4YLy9TcEWfw1MrAkO6
	DgMNMPQMzODM5+COTLBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOxuR-0003FL-9f; Fri, 10 May 2019 05:17:27 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOxuJ-0003Ex-WB
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 05:17:21 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4A5H9Qt119282;
 Fri, 10 May 2019 00:17:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1557465429;
 bh=XzeXpROI5a8Ib+B15hXUIuq68tFBHpy9RE1urDk4Fxg=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=vhUOfmR1SQLwC9e6IwOLQ+fb8Ct4UBCcW1lSNW/qtTDpGjzv1EJvWwRp0cXuRpCwS
 UY+nSBep7erXQvPjr9fcENZ5EVVgbOXw5dq5qgaWQo8dJpjstBBzngF2MTUVi5Pibv
 q9VTlYPxMSVE370+DDdw0Pynb9XdO326pyFv+71I=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4A5H9AW003501
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 10 May 2019 00:17:09 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 10
 May 2019 00:17:08 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 10 May 2019 00:17:08 -0500
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4A5H6jM032326;
 Fri, 10 May 2019 00:17:06 -0500
Subject: Re: [PATCH] arm64: arch_k3: Fix kconfig dependency warning
To: YueHaibing <yuehaibing@huawei.com>, <catalin.marinas@arm.com>,
 <will.deacon@arm.com>, <marc.zyngier@arm.com>, <tony@atomide.com>
References: <20190510035255.27568-1-yuehaibing@huawei.com>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <f7c420ec-ee4e-c17e-7650-353002bb81b9@ti.com>
Date: Fri, 10 May 2019 10:46:38 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20190510035255.27568-1-yuehaibing@huawei.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_221720_159520_4A37AF1D 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/05/19 9:22 AM, YueHaibing wrote:
> Fix Kbuild warning when SOC_TI is not set
> 
> WARNING: unmet direct dependencies detected for TI_SCI_INTA_IRQCHIP
>   Depends on [n]: TI_SCI_PROTOCOL [=y] && SOC_TI [=n]
>   Selected by [y]:
>   - ARCH_K3 [=y]
> 
> Fixes: 009669e74813 ("arm64: arch_k3: Enable interrupt controller drivers")
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Thanks for catching it.

Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>

Thanks and regards,
Lokesh

> ---
>  arch/arm64/Kconfig.platforms | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
> index 42eca65..9d1292f 100644
> --- a/arch/arm64/Kconfig.platforms
> +++ b/arch/arm64/Kconfig.platforms
> @@ -88,6 +88,7 @@ config ARCH_K3
>  	bool "Texas Instruments Inc. K3 multicore SoC architecture"
>  	select PM_GENERIC_DOMAINS if PM
>  	select MAILBOX
> +	select SOC_TI
>  	select TI_MESSAGE_MANAGER
>  	select TI_SCI_PROTOCOL
>  	select TI_SCI_INTR_IRQCHIP
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
