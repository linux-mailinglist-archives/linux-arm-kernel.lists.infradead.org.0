Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F2020158F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 18:27:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7j4PyT7C76mKDMGM7IeCVBtHY9+C3NHLjoqE0aOpogo=; b=CHbzacMb6AYCOCtOrlaLjLvqS
	0eeOzA1gcbbCod7XMnX4EeMSjF7HP0vLRSOR6tDdeqNJyEPJD0FKvAuguxnW4ANwDeWpcpH7CVg31
	2fgPzGw3pQKL8P6EUNtWaluSGX30eZNXiy04kDRkdnVxtNgPS5RCD1OD/mZ/0wRc636CtkOTkbNsm
	5oFKXmJngtdoElazNP89sPZcM+xM78rMuo7F1hqPxb4zcGnUcPtewgvX2jP52VQrQiPF/JaKIlAoe
	vtm1IvdUckMb0tZtyOVaGYW0BHfmD/pmQRAEqTT1Q6Cd6BmhuFQulUCQua8pyxzvtxZnWbWniNVXj
	9Tz4HeCVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmJrL-0005Y4-0y; Fri, 19 Jun 2020 16:27:19 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmJr1-0005WH-Pp
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 16:27:02 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05JGQwFp077473;
 Fri, 19 Jun 2020 11:26:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1592584018;
 bh=chC6pirnioIvgefBUFNtXHQtUPYlAklhZc784jj70us=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=ArowfuHI6C+C60biqKWTfyl8YL+yIj+CQXlacknyNJoGoC5aBrxqwc430yoERWj5o
 LRkyN0+EiGJGLJCpts/A1g1DYAKteUAAtwIs2IYdpqQ3cfDxn+WfJUtn1GnVO63OPa
 Gzv3rMy0NkgRSacNTQKWXKbnaQsq2kw01jBdNDhY=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05JGQwrQ058946;
 Fri, 19 Jun 2020 11:26:58 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 19
 Jun 2020 11:26:57 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 19 Jun 2020 11:26:57 -0500
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05JGQtMA051337;
 Fri, 19 Jun 2020 11:26:56 -0500
Subject: Re: [PATCH 0/2] arm64: dts: ti: k3: add platforms chipid module nodes
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Nishanth Menon <nm@ti.com>
References: <20200613164346.28852-1-grygorii.strashko@ti.com>
 <8b8f7f92-571d-4a44-4858-7d79676a6375@ti.com>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <1dcd2e6c-924d-8151-8100-0b42f154a59c@ti.com>
Date: Fri, 19 Jun 2020 19:26:57 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <8b8f7f92-571d-4a44-4858-7d79676a6375@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_092659_914585_9ED6C676 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [198.47.23.248 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, Santosh Shilimkar <ssantosh@kernel.org>,
 Dave Gerlach <d-gerlach@ti.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 15/06/2020 10:47, Peter Ujfalusi wrote:
> Hi Grygorii,
> 
> On 13/06/2020 19.43, Grygorii Strashko wrote:
>> Hi Tero,
>>
>> Hence k3 platforms chipid module driver was merged, there is follow up series
>> to add corresponding DT chipid nodes.
>>
>> [1] https://lkml.org/lkml/2020/5/29/979
>>
>> Grygorii Strashko (2):
>>    arm64: dts: ti: k3-am65-wakeup: add k3 platforms chipid module node
>>    arm64: dts: ti: k3-j721e-mcu-wakeup: add k3 platforms chipid module node
> 
> Can you also send a patch to enable the socinfo build?

Posted.

> 
> diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
> index 8dd05b2a925c..1d3710e3626a 100644
> --- a/arch/arm64/Kconfig.platforms
> +++ b/arch/arm64/Kconfig.platforms
> @@ -98,6 +98,7 @@ config ARCH_K3
>   	select TI_SCI_PROTOCOL
>   	select TI_SCI_INTR_IRQCHIP
>   	select TI_SCI_INTA_IRQCHIP
> +	select TI_K3_SOCINFO
>   	help
>   	  This enables support for Texas Instruments' K3 multicore SoC
>   	  architecture.
> 
> With this added:
> Tested-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
Tero: FYI. There is no dependecies for this series.

Best regards,
grygorii

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
