Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BED481584E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 06:20:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YjJVTgH0QNXQjrCiCGsetY753xdMYKGjXZ9LtFCCDnU=; b=R53dCijgx0o2qAYJSHoFJXqsL
	mU28r8nqVLHK+0u79HPQU4gh5w96FLcB82eWp6xqpkLNRwlWT910OKfrWU8GWXFCy+wvY+bsCGGk/
	sD81ORmeZlDaRXgCysnYUVMSLJF2c5bRe5NF4+oB1ZmEfsQ8AckkpAzcJ0QP+kb27ViRbY+gRZUB7
	1/JhBVjSJQ6QmMWBQZ9KDb6nVZmQ8ulrLEnEXZAVgOaZcXUT2Yf86r2ygIxQonMWs0yR2H78XJBHo
	1xG8tGjhrAHEvFMn5oGrRtZ5gnzu+0/G26ZHx4jJtciTJg6QSgbUs3z/3k903h60rvGLLuV1E8f91
	H1I/8Fyng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNraJ-0000E4-Tn; Tue, 07 May 2019 04:20:07 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNra9-0000Df-Hy
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 04:19:59 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cd107720000>; Mon, 06 May 2019 21:20:02 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 06 May 2019 21:19:55 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 06 May 2019 21:19:55 -0700
Received: from [10.19.65.14] (172.20.13.39) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 7 May
 2019 04:19:53 +0000
From: Bitan Biswas <bbiswas@nvidia.com>
Subject: Re: [PATCH] arm64: tegra: Disable XUSB support on Jetson TX2
To: Thierry Reding <thierry.reding@gmail.com>
References: <20190506164121.4507-1-thierry.reding@gmail.com>
Message-ID: <6a439eb8-dac4-9c86-e8bb-78723ea10be1@nvidia.com>
Date: Mon, 6 May 2019 21:19:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190506164121.4507-1-thierry.reding@gmail.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL103.nvidia.com (172.20.187.11) To
 HQMAIL101.nvidia.com (172.20.187.10)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1557202802; bh=txRl23lnq7fLgGQ9walbl/sRaTTiTYFb+d0fYodx4Qs=;
 h=X-PGP-Universal:From:Subject:To:CC:References:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=BMFY/YJFQ0/SF55nz1P/NJyCVOKCzkFgbEMawN/khajxA0gBErF9utnvWK1uIeyF/
 L5MFxNQYt/sOwtzEqCqHEaBC5H0ludRrFJ5FPQV/XTbbObxtpR1O1cirPrCkT6JZhQ
 L5T6czUNIxZ7o0I9Vm7Qyp83rnguNHNMe3a3RQO57w+i9OIY/tNdO5Z5KtPNZc27Pq
 oLM/1Nqf3GZQKV/xwnbWxFHt2EyKBV+5ZV9XH+gBJ0rR16tBORwoYY0StiXWVQRm2j
 Rb5UY34qB19xaCyyQCTlcXz4QUN29jIk+Q0CUDjDNV3V5xN88XtAIIdPsSAKMOXSEx
 W4aeCmZ0LznHA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_211957_615208_E4DC4E0B 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jonathan Hunter <jonathanh@nvidia.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/6/19 9:41 AM, Thierry Reding wrote:
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
>   arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts b/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
> index 75ee6cf1e1b4..14d7fea82daf 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
> +++ b/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
> @@ -59,7 +59,7 @@
>   	};
>   
>   	padctl@3520000 {
> -		status = "okay";
> +		status = "disabled";
>   
>   		avdd-pll-erefeut-supply = <&vdd_1v8_pll>;
>   		avdd-usb-supply = <&vdd_3v3_sys>;
> @@ -137,7 +137,7 @@
>   	};
>   
>   	usb@3530000 {
> -		status = "okay";
> +		status = "disabled";
>   
>   		phys = <&{/padctl@3520000/pads/usb2/lanes/usb2-0}>,
>   		       <&{/padctl@3520000/pads/usb2/lanes/usb2-1}>,
> 
Verified with this patch that Jetson TX2 core power is again turning off 
and suspend mode is entered with additional Tegra186 suspend patches 
from below patch list under review :
http://patchwork.ozlabs.org/project/linux-tegra/list/?series=78866



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
