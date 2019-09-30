Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E939DC23FE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 17:10:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gU/HZdacvMOJjmg2lyTHL0mRrqRUAtZEQ3ygCup3u1o=; b=AWHNbUEmNkAEHs
	PREx4HqYdM7pEJJcKDMBiRtDCiZgwVnis4igtKxw6sSBYX2iS4TfRA6d3MasXFVtVfo+7bP+aYaJq
	ohp1vC+Sb3eU9XrNn0VZayZ1CDPGJAkcTQAuTBVrS2dvzYJSq1V66sacv9oufJE8sjNH9cr31azYn
	kMgbSqQsOi7+lYMq3iJLZbPtqXRvP5ExPEf/YsRSsZSykGPQwV4slpcVrAqojxmGcTtSHHhGgNiN3
	0atsNyogMCW6BxKrA3bUMb+4IKM8PFA++4HNcJY5rejdtm8fuXL1w9iqkCPXedrIiGrsVe37DumGl
	p+U+KQT7JjOw5UCWf3dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iExJm-0006hh-8d; Mon, 30 Sep 2019 15:10:30 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iExJY-0006gu-VM
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 15:10:18 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8UFA4sE077672;
 Mon, 30 Sep 2019 10:10:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1569856204;
 bh=IobouB3hSryccexn6r91cxD5nyqRsWZvzcNZNBzoyec=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=nKoKcVPcm2Q8kdM6uUzxj+PkdqX7uI8MEFWjPgOAYTdwzRfKgQ47+b0i8HIxz0NUW
 7ZSz3XiDsUBI8n/CnilkQtRSgTiul+h5vgzHe/osdaNHDqSDc59jmOD1ho9oWSsB22
 toHoH4x7KqR5sNtW8nRK9Gsr2VWU9Ov6mEaFZATo=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8UFA4hJ033545
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 30 Sep 2019 10:10:04 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 30
 Sep 2019 10:10:03 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 30 Sep 2019 10:10:04 -0500
Received: from [172.24.190.212] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8UF9xbO027057;
 Mon, 30 Sep 2019 10:10:00 -0500
Subject: Re: [PATCH v2 linux-next 2/4] arm: configs: davinci_all_defconfig:
 Change CONFIG_REMOTEPROC from m to y
To: Keerthy <j-keerthy@ti.com>, <arnd@arndb.de>, <olof@lixom.net>,
 <t-kristo@ti.com>, <catalin.marinas@arm.com>, <will@kernel.org>,
 <tony@atomide.com>
References: <20190920075946.13282-1-j-keerthy@ti.com>
 <20190920075946.13282-3-j-keerthy@ti.com>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <e48c767f-6153-a8d5-b88d-f74927921ae2@ti.com>
Date: Mon, 30 Sep 2019 20:39:58 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190920075946.13282-3-j-keerthy@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_081017_118441_0772958B 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org,
 linux-omap@vger.kernel.org, hch@lst.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/09/19 1:29 PM, Keerthy wrote:
> Commit 6334150e9a36 ("remoteproc: don't allow modular build")
> changes CONFIG_REMOTEPROC to a boolean from a tristate config
> option which inhibits all defconfigs marking CONFIG_REMOTEPROC as
> a module in compiling the remoteproc and dependent config options.
> 
> So fix the davinci_all_defconfig to have CONFIG_REMOTEPROC built in.
> 
> Fixes: 6334150e9a36 ("remoteproc: don't allow modular build")
> Signed-off-by: Keerthy <j-keerthy@ti.com>
> ---
>  arch/arm/configs/davinci_all_defconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/configs/davinci_all_defconfig b/arch/arm/configs/davinci_all_defconfig
> index b34970ce6b31..01e3c0f4be92 100644
> --- a/arch/arm/configs/davinci_all_defconfig
> +++ b/arch/arm/configs/davinci_all_defconfig
> @@ -228,7 +228,7 @@ CONFIG_RTC_DRV_OMAP=m
>  CONFIG_DMADEVICES=y
>  CONFIG_TI_EDMA=y
>  CONFIG_COMMON_CLK_PWM=m
> -CONFIG_REMOTEPROC=m
> +CONFIG_REMOTEPROC=y

Acked-by: Sekhar Nori <nsekhar@ti.com>

Thanks,
Sekhar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
