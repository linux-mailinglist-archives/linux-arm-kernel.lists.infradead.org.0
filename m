Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 073D9109B4F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 10:37:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=48ROZD66FFqDnXy92W83ElYKunRB2StW73+m+6sCH4A=; b=Dsx7rPv9Y6/ebJF59ApgJbSqV
	LEMrD0M9P2SJxumPnMz7mHeIS8XV4Dgm0urt+MuafZ0m7F5inBLu93pOnuu45jHFe15APmpE/SF7r
	cAjyxqp+8xi8sLIy+BLkgw9WakQYDAgelfyksdWUFqGO15S9XkWzz1ngxmBliUTkdyydnsaXhKRXH
	dzSnhPeopB0ofizYxHgKAM2oRnmc1hU6o6cbfXfBGk1CfKq9Ws5g4KBJSE6bqpIA2lIoNldySq/cN
	a6QrGz/i3trOsWz8FOT0flOAmeCj/2wMUXfUxipVvC+4f52RSt4ZG+dhkxBlGLm3zDRFoe+3xF0q3
	Uw5MeZY2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZXHi-0006Ct-Nx; Tue, 26 Nov 2019 09:37:26 +0000
Received: from mx08-00252a01.pphosted.com ([91.207.212.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZXHW-0005xv-15
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 09:37:16 +0000
Received: from pps.filterd (m0102629.ppops.net [127.0.0.1])
 by mx08-00252a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAQ9WqEd024163
 for <linux-arm-kernel@lists.infradead.org>; Tue, 26 Nov 2019 09:37:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=raspberrypi.org;
 h=subject : to :
 cc : references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=pp;
 bh=od7NtWv8A1ft46ESIAn5eCrlELpL9JojAJd+KINECi4=;
 b=yj/42p8M5m7IE8Ht/7o0/YFharUMGlOYox7IFIQoFEp+X0CJKnG6o7cszwmadDYA+gBI
 NaezpF3RrC+VBxFBOuhSX3zMBUm192U7kmMPxO8RKjuHAK2asOaOAVTJeSwGfbRXtSXc
 NW9eZkhwWmF3e6914M2B745l0ybdIHZZNL+vWWVUD+D7geHfL7Ox3jKf+61xpSryRn+I
 is7l8ZgXclE9+jxA4zJ1w3xi5DAfJYLucdrQj0y6Q+0ot8pcDJj1VLe73AfXUtsUweE+
 lNv9yXNw3q2tXzXlix8BsUBbJwya9M8NOg03ODuXEHFQ86mdKaQaT4pNkKZw3YIAuHiR Jw== 
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72])
 by mx08-00252a01.pphosted.com with ESMTP id 2wgna0r7w9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK)
 for <linux-arm-kernel@lists.infradead.org>; Tue, 26 Nov 2019 09:37:09 +0000
Received: by mail-wm1-f72.google.com with SMTP id h191so931755wme.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 Nov 2019 01:37:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=od7NtWv8A1ft46ESIAn5eCrlELpL9JojAJd+KINECi4=;
 b=UM3FQllSTPplmabTC7jU+LvD7cb2Fa240ifZRDTJXFxChlEsJNHcaR/AfbBSmXRdnz
 2eiiq9qJPnT7Bm3WqcNbdo8c4vDT5hRaMcQ8ASCvNqNXVLwg/s1NqhwXvB53f2NG9AmT
 lVVGP/N/bHbHh3OgwN8MRxsK7oMBDUm+LtHpx8j3LDajq+Xk2K7AjT8aqk6HZn0WacaN
 56T4do1RvngA5k9avohIS2oeWpX1pZvBfn7UJ00yurrTqZ7o88io8MPygmKqimVdQo0y
 OtpPjyMbh16nPQzTN8uBuuXF+zqug9rEoU7H0q3piiYbiYM4EcyUjpEUGzCPnfstzE5E
 0+BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=od7NtWv8A1ft46ESIAn5eCrlELpL9JojAJd+KINECi4=;
 b=nsWMNIgqIYIZuXf93hp5be5ADhw2ioaFWEB/UxvS/AZP0cB3iWSIZfSsCURVgZVzaW
 /Lk3CuXjOwZmg6CkqdX/QFCb/nUY2qNASWFNZUQhTo0LQDQX4MkENF3Ev5/wN1r3JbKL
 4S8IGoiuH9sYOFTKQNahZSTobhKjCgsUPc/7wHmDeYEOvVvS3kKNq8AeE7tx9IF8/hzH
 WzXZFAEUyyKM/C2WRklKe7Ult8yAvopVfATmtnoP7YJXnep6UPn3GJh6mCl4vlj9mIZ+
 B3QCbqtZ+1E4FzEZsvjorafszQcG6Jx0sqMqVmoMoT9Gm6FM/qeOeOzRMd+1oAe6qzkh
 GpYA==
X-Gm-Message-State: APjAAAUNSiphlePPp5GJXLZDCj+ASY5zolndHrOKm+TWzZETosAsoHd2
 GD50zO4phlXxX/MOSguDwXsEBX1UZFfZvynl5o7VVIWV0ohDhDIvVhqFG/4gkEULO21CWl5li7b
 vJWoXHXww2WlEntZmZ4dfS8fLwha2wf9bYQ8=
X-Received: by 2002:a5d:4946:: with SMTP id r6mr28487128wrs.155.1574761028346; 
 Tue, 26 Nov 2019 01:37:08 -0800 (PST)
X-Google-Smtp-Source: APXvYqwBt2FmyEREb7ZvdP/DpQYA/wjkntFQB86TPOEh4oNOeIIRXcU33m0OX9mwck9d8Gn6k8YdQg==
X-Received: by 2002:a5d:4946:: with SMTP id r6mr28487093wrs.155.1574761027986; 
 Tue, 26 Nov 2019 01:37:07 -0800 (PST)
Received: from ?IPv6:2a00:1098:3142:14:f57f:65b0:b998:e2ca?
 ([2a00:1098:3142:14:f57f:65b0:b998:e2ca])
 by smtp.gmail.com with ESMTPSA id e16sm2372706wme.35.2019.11.26.01.37.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 26 Nov 2019 01:37:07 -0800 (PST)
Subject: Re: [PATCH v3 3/7] ARM: dts: bcm2711: Enable PCIe controller
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, andrew.murray@arm.com,
 maz@kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>
References: <20191126091946.7970-1-nsaenzjulienne@suse.de>
 <20191126091946.7970-4-nsaenzjulienne@suse.de>
From: Phil Elwell <phil@raspberrypi.org>
Message-ID: <ede90a60-8194-4035-01c2-2673f4a8cfe7@raspberrypi.org>
Date: Tue, 26 Nov 2019 09:37:08 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191126091946.7970-4-nsaenzjulienne@suse.de>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-26_01:2019-11-26,2019-11-26 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_013714_456812_FE666CE6 
X-CRM114-Status: GOOD (  26.07  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.211 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com, linux-pci@vger.kernel.org,
 jeremy.linton@arm.com, mbrugger@suse.com,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 james.quinlan@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

On 26/11/2019 09:19, Nicolas Saenz Julienne wrote:
> This enables bcm2711's PCIe bus, which is hardwired to a VIA
> Technologies XHCI USB 3.0 controller.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> 
> ---
> 
> This will likely need a rebase once the RPi GENET patches land.
> 
> Changes since v2:
>    - Remove unused interrupt-map
>    - correct dma-ranges to it's full size, non power of 2 bus DMA
>      constraints now supported in linux-next[1]
>    - add device_type
>    - rename alias from pcie_0 to pcie0
> 
> Changes since v1:
>    - remove linux,pci-domain
> 
> [1] https://lkml.org/lkml/2019/11/21/235
> 
>   arch/arm/boot/dts/bcm2711.dtsi | 41 ++++++++++++++++++++++++++++++++++
>   1 file changed, 41 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
> index 667658497898..2e121fc8b3d0 100644
> --- a/arch/arm/boot/dts/bcm2711.dtsi
> +++ b/arch/arm/boot/dts/bcm2711.dtsi
> @@ -288,6 +288,47 @@ IRQ_TYPE_LEVEL_LOW)>,
>   		arm,cpu-registers-not-fw-configured;
>   	};
>   
> +	scb {
> +		compatible = "simple-bus";
> +		#address-cells = <2>;
> +		#size-cells = <1>;
> +
> +		ranges = <0x0 0x7c000000  0x0 0xfc000000  0x03800000>,
> +			 <0x6 0x00000000  0x6 0x00000000  0x40000000>;
> +
> +		pcie0: pcie@7d500000 {
> +			compatible = "brcm,bcm2711-pcie";
> +			reg = <0x0 0x7d500000 0x9310>;
> +			device_type = "pci";
> +			#address-cells = <3>;
> +			#interrupt-cells = <1>;
> +			#size-cells = <2>;
> +			interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "pcie", "msi";
> +			interrupt-map-mask = <0x0 0x0 0x0 0x7>;
> +			interrupt-map = <0 0 0 1 &gicv2 GIC_SPI 143
> +							IRQ_TYPE_LEVEL_HIGH>;
> +			msi-controller;
> +			msi-parent = <&pcie0>;
> +
> +			ranges = <0x02000000 0x0 0xf8000000 0x6 0x00000000
> +				  0x0 0x04000000>;
> +			/*
> +			 * The wrapper around the PCIe block has a bug
> +			 * preventing it from accessing beyond the first 3GB of
> +			 * memory. As the bus DMA mask is rounded up to the
> +			 * closest power of two of the dma-range size, we're
> +			 * forced to set the limit at 2GB. This can be
> +			 * harmlessly changed in the future once the DMA code
> +			 * handles non power of two DMA limits.
> +			 */
> +			dma-ranges = <0x02000000 0x0 0x00000000 0x0 0x00000000
> +				      0x0 0xc0000000>;

The comment doesn't match the data here - I think for now the size field 
needs to be reduced to 2GB to match the comment.

Phil

> +			brcm,enable-ssc;
> +		};
> +	};
> +
>   	cpus: cpus {
>   		#address-cells = <1>;
>   		#size-cells = <0>;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
