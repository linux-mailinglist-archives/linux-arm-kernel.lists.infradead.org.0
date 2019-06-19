Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7402D4B652
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 12:40:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eLCozk9v6K9VqKPUlV5+yTX3cWNwmzA9qd628WQs+Fc=; b=SqsJNJ/9BALe7x
	kA0gXQYqN3IrTswt2+Av1AuyS9GPo87/t1ISJi50LV4t1dVbIe6blCg9wzfsKwb6yzreA5g2kMmXW
	iJgVhQLnZBEe4WqPh2nelvUHEyS6F+8FDrn6xN6Z9qNwes62iTaetkSfK/1FF+SwGXzkgqeDZ7MKY
	rXeG4EHDYxTlw5/MVpVAus4upx8rmlFP19Q24FzPzC/rqUr4XoABh4WvAseM2swDv1pa0WkfI8ZWl
	fQlynyjbs4Cf8MW+5i+P9+TQ7h0V6wL8l7Ijv6cg6i/nkQp6MjV/CkKIUdJzW9QgygLsrDUw13pXT
	0OziEuAK9FQ7Zymeb1kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdY0l-0004cm-A4; Wed, 19 Jun 2019 10:40:15 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdY0Z-00048o-2V
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 10:40:04 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d0a11020000>; Wed, 19 Jun 2019 03:40:02 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 19 Jun 2019 03:40:02 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 19 Jun 2019 03:40:02 -0700
Received: from [10.21.132.148] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 19 Jun
 2019 10:40:01 +0000
Subject: Re: [PATCH 2/4] arm64: tegra: Add ID EEPROM for Jetson TX2 Developer
 Kit
To: Thierry Reding <thierry.reding@gmail.com>
References: <20190613165331.8689-1-thierry.reding@gmail.com>
 <20190613165331.8689-2-thierry.reding@gmail.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <9c343fc9-1a36-eaab-a7ed-8a2854c2cba4@nvidia.com>
Date: Wed, 19 Jun 2019 11:39:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190613165331.8689-2-thierry.reding@gmail.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1560940802; bh=x4Ai6oCbO0UlvVCFVFIAqKetNkQjUL4uk1mPJ7hZ2kc=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=WAj7+llYtRNBnC4wpWfNgGgkZyvTB3IrsKizkeEnmYFAqkZcfvzUWBsCvOEGpJbRo
 FsDodnkqty7q5eIcHe6W/3mXAd6ameNqHc0j4GANDaWWoVas1J06t9Glwut5iepXTW
 JIhBZY4uT3pXnH5ZLfCkjgvyGRnqurTHMZf/QVZBLrb1oL3HYskkar/3u6HCMO6DCW
 xT7dTebee6dTwGTI2nnXYFQUV9WNRwgRDMK3G3S9vtO1dBBjCFnZKmMgg7AMtYURGB
 9tABFyOhBrbII+kXnkjJxflF5c3tf0H537FoqW3erbLcIyASP7vFEAplQAr4rADvKX
 kXpDVqpizviZg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_034003_133901_F43564FD 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 13/06/2019 17:53, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> There is an ID EEPROM on the Jetson TX2 carrier board, part of the
> Jetson TX2 Developer Kit, that exposes information that can be used to
> identify the carrier board. Add the device tree node so that operating
> systems can access this EEPROM.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts b/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
> index 837218e83e69..ab6648c72ad5 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
> +++ b/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
> @@ -149,6 +149,19 @@
>  		phy-names = "usb2-0", "usb2-1", "usb3-0";
>  	};
>  
> +	i2c@c250000 {
> +		/* carrier board ID EEPROM */
> +		eeprom@57 {
> +			compatible = "atmel,24c02";
> +			reg = <0x57>;
> +
> +			address-bits = <8>;
> +			page-size = <8>;
> +			size = <256>;
> +			read-only;
> +		};
> +	};
> +
>  	pcie@10003000 {
>  		status = "okay";


Acked-by: Jon Hunter <jonathanh@nvidia.com>

Cheers
Jon


-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
