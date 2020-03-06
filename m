Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D5F17BB2F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 12:08:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=imiAaEPUEEW57FAoFC71zp8AjJlkScVMnXKlqKSjIfQ=; b=SdyHuQr5uQPwnK
	m7iLOGs8rhvltQX5BzmcH/csQiXo7MNjZedfGDB/wiMSWRES2+VgcaJvv1SFWXQbMy7/Qkxl/riyJ
	RY9BK6OqmpSdoe2JqQAqJlwXnhaFtHoTbvwtZhBYq2BnOvlb0gWqtzMwKvUDLnQFGsN305odC0FKj
	opfVGGZd3d6HNs9/3XRL2BCQberhFiobYSzqRrA+NjrQkEKk6MioCPuLlO9RMzKSqKuKOtSp1Oyg4
	itx7NCMGhlEhurPWT1R1CLO7wKI4ii6cjOgrFcEucNCae32Lqzw7vn6JeZ0UampzlQQnfy0BdKj6f
	LbuAcLiWJOQLPpFgRrGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAApv-0006mO-VI; Fri, 06 Mar 2020 11:08:12 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAApl-0006kv-OP; Fri, 06 Mar 2020 11:08:03 +0000
Received: from [192.168.178.45] ([109.104.54.216]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MQMqN-1ixKu61auv-00MMb3; Fri, 06 Mar 2020 12:07:43 +0100
Subject: Re: [PATCH 10/10] ARM: dts: bcm2711: Add vmmc regulator in emmc2
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-mmc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
References: <20200306103857.23962-1-nsaenzjulienne@suse.de>
 <20200306103857.23962-11-nsaenzjulienne@suse.de>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <408aa93f-b5c8-c4b3-384b-c8d018a8d549@i2se.com>
Date: Fri, 6 Mar 2020 12:07:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200306103857.23962-11-nsaenzjulienne@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:YpscJjEb7mEkNDKWeYl5eBxFpbUACDSdSpaQQlnEqPk/ccGHsqI
 nz6WoYoxp+BtaxCRE6+qukgnfB+J/MQ4ap9KGS7bQIK1WfSIV4fHemVyB3Zqx4d+hY3uw1X
 bqQjVE+lfiMgDeYcwuhLfd0PoPn9EaqU3a2FU5S507VEkXXJwPLRIXBlmwRUSg/tNioj/Xq
 J75TNMkB6cOdAfhkLaGQg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:W9bOt0k6oe4=:ne+o+JZ25tk0J+jrXsL/h4
 74klhx+ipS6ma+Jin4APOnQXtmvyABceMb75AWKtJwer2mgt4v+of3fY+mVDcnq3ITJzKjGvn
 tbLt2a/wxsBYrUTCapDUPrVLtK2IgxPUTSaB1R3gfg1QcbIb2y34WegsqL1BnAX+kg34rZqgr
 nTrRe28K55aM89qYhulTTXDYgInJH2sryHZl0HERhBJSEDdW8Ofb4v+nrNSXX17/8IqOtZ95f
 cUVWJwZYEIQexphhlY2I/QCKKmEDgxvBShl5rk+xu16wFrvLqBgaOBO8y7yKYMyVWl5q2RDQp
 SU4H4PV5aeWSn48fNBKUrJu5BYBSgUstdTqarigkfq2oA6hIMAmqY7KVusUe1qXuZ0Epivckf
 7zBBM+D4f7f+zeLkD/82YYi9pVEB9r+iKDs1JapeLj6ih5LrEJtSFTRndeT6kFInkw4/tdosi
 p3KSCDb780NathvMMCZ3m39C39unbSwTcrcHJ5Rpvu1h83MhDfkdw9U6k+STheNCu1CzZm4QR
 eNMWHsNNu5U4mV0loRG1nOV/gBRCB0aUGhxgq33NTy8EhODbsPYT11ZxDoxnxEOFwT1PyfecG
 75PVFHl++zj4RcdwAEh9gxp4puehkvgOV5eiIU2GRsDoeXFFB2itKWIJchsNFvwsq7X++Fxcq
 /TRx22b+1QhCm+1OuMEC2SViD44GjFOpuh2HiIjvDqZCj1S8NWd/zeRjIPkjcDwQF8ed87B80
 PLpJjQcYCxqLqpWZYWFFYFdaevCpDKN3i06gpwg29i8aF87I411975mEYgt12g6XKwXDyeTKw
 G4RZJJw7nQPtmZpdJYvyRjYpxPGUZalrJqqnngJ2NOVBhCCJ3Mi8t4sPWPfILz+CdiEWhqx3i
 amnvsTM6LrC3WAvto4K48spvxVappyZXysxe+ZRKFoL7KVBQYf7Z2EV39+pFGflG1ojsAsVI6
 kcJyk9d+6Ww==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_030802_091073_6402C45D 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
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
Cc: ulf.hansson@linaro.org, f.fainelli@gmail.com, phil@raspberrypi.org,
 adrian.hunter@intel.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

On 06.03.20 11:38, Nicolas Saenz Julienne wrote:
> The SD card power can be controlled trough a pin routed into the board's
> external GPIO expander. Turn that into a regulator and provide it to
> emmc2.
>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
>  arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> index e26ea9006378..8e98e917f9f4 100644
> --- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> +++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> @@ -56,6 +56,16 @@ sd_io_1v8_reg: sd_io_1v8_reg {
>  			  3300000 0x0>;
>  		status = "okay";
>  	};
> +
> +	sd_vcc_reg: sd_vcc_reg {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc-sd";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-boot-on;
> +		enable-active-high;
> +		gpio = <&expgpio 6 GPIO_ACTIVE_HIGH>;
this new GPIO has an empty GPIO label, please add it.
> +	};
>  };
>  
>  &firmware {
> @@ -174,6 +184,7 @@ brcmf: wifi@1 {
>  /* EMMC2 is used to drive the SD card */
>  &emmc2 {
>  	vqmmc-supply = <&sd_io_1v8_reg>;
> +	vmmc-supply = <&sd_vcc_reg>;
>  	broken-cd;
>  	status = "okay";
>  };

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
