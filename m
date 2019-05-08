Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DF917653
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 12:54:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=umVw0WSqGJd7l9Yv7p/gdOVzNy05ei3K3RUttlrUYSY=; b=qghqsVtK4QH+WX
	9QLbh/HnFi9qmLw6F4BxG57rdUzNaS204mGdWkiWCmvxgTGPGIoCNXUeyvx562DPONe9LrhrcCfH7
	nni4GyEgx9Silu9lb2ezEIcMW8mNRYINZrZz4KXZrkaVbowQn92EfHW7umdDJCQEAqYOPI/8rdSl0
	VsHuJbGuG0mznOIwLhprq53+S0nmtnGMDDOjqzd0dyJ4h+qA40i4BZL7OJXBWzByZ6VEiYb9gbOBP
	puNDP0lotQep/pdG/LOG+R/qvUPLE2N9a1cHTFXVgAzfzsvQxRM5XypEov56zKOM9wmY5nXzir8u8
	VTlKYe8n0yMSHLkD57Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOKD1-0001GN-U1; Wed, 08 May 2019 10:53:59 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOKCu-0001G2-2t
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 10:53:53 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cd2b53b0000>; Wed, 08 May 2019 03:53:47 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 08 May 2019 03:53:51 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 08 May 2019 03:53:51 -0700
Received: from [10.21.132.148] (172.20.13.39) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 8 May
 2019 10:53:50 +0000
Subject: Re: [PATCH] arm64: tegra: Disable XUSB support on Jetson TX2
To: Thierry Reding <thierry.reding@gmail.com>
References: <20190506164121.4507-1-thierry.reding@gmail.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <cb8cb5e8-a4f3-4009-fd89-853040d6b2cd@nvidia.com>
Date: Wed, 8 May 2019 11:53:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190506164121.4507-1-thierry.reding@gmail.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL101.nvidia.com (172.20.187.10)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1557312827; bh=ZGRMksLXeWmojmTciiWjUXPQY3tLsE0md2MlnwBeQLM=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=QF6roRFT8n7e6xMGdARlc3FWx8nxmta1SXId9nARtAQVL69BSrWjPKIztlxa+XdQR
 DOkjGASjmkb8DZmv9aZo84byD5Dsh6Dx2G5/2K5ff0/7U8bGjBKFC26305PtUlWG0N
 I1K98c/oUIZPufdYEWmTGT6ueuk/GhO1aHFZOZrj/0ecsUeEx9Oo8GbVcSfFfdLCSW
 0ejfwL7MjjmdWG1lgTkENClLsku63yKnSzQGW4+dJPWvjxiQMBFhKFurOnXJdmrZ0Q
 3zcGPFwDWuhWTA0PYUMjeuSo4ddLPLUXrGQRsUTDxhCrf9q+q1JRMHIv15YJdNN4HM
 fJBFVS5VoZq/Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_035352_131790_6B4F219D 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Bitan Biswas <bbiswas@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 06/05/2019 17:41, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> The recently introduced XUSB support for Jetson TX2 is causing boot, CPU
> hotplug and suspend/resume failures according to several reports.
> 
> Temporarily work around this by disabling the XUSB controller and XUSB
> pad controller nodes in device tree, while we figure out what's causing
> this.
> 
> Reported-by: Bitan Biswas <bbiswas@nvidia.com>
> Reported-by: Jonathan Hunter <jonathanh@nvidia.com>
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts b/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
> index 75ee6cf1e1b4..14d7fea82daf 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
> +++ b/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
> @@ -59,7 +59,7 @@
>  	};
>  
>  	padctl@3520000 {
> -		status = "okay";
> +		status = "disabled";
>  
>  		avdd-pll-erefeut-supply = <&vdd_1v8_pll>;
>  		avdd-usb-supply = <&vdd_3v3_sys>;
> @@ -137,7 +137,7 @@
>  	};
>  
>  	usb@3530000 {
> -		status = "okay";
> +		status = "disabled";
>  
>  		phys = <&{/padctl@3520000/pads/usb2/lanes/usb2-0}>,
>  		       <&{/padctl@3520000/pads/usb2/lanes/usb2-1}>,
> 

Thanks.

Tested-by: Jon Hunter <jonathanh@nvidia.com>
Acked-by: Jon Hunter <jonathanh@nvidia.com>

Cheers
Jon

-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
