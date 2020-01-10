Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 257AF1374F3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 18:37:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6Gp54XruLp7ULZ2tlSMerIV4aqlInsVZO/WNqkXiTxU=; b=Q+IGqLVlKOjWVTDvxlcq5xpPv
	SHl8vRr7lhKCTPtMlfW2zZ5svmX/G2AXwcVMSZ/Al+9YZOcH7oVViw1fE6fS2vWFp9YhyvdjdBqj3
	Lz2/9qXQ7d1qZgDUfWCswEj/4M2G+tD4VZu4FCWBpylUirxcua44nIg4KGcl0OjjOSL3Olz1PgyIM
	0RMx8A+l/E57B0t6H6hxZPR3nItieSRZ8fOdcIpisZbKA96oi1ouw2IW6rCJhsPqgn6q1d/HD1vNQ
	HZLadVkox7ckOcEf8TV5Zr5UN7fisxvVH5DkZM+YCe2h+GD0SioKQYBqLfTbID+ckFracuHvBPqbK
	WyUTHY55g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipyEA-0002lZ-H9; Fri, 10 Jan 2020 17:37:42 +0000
Received: from mx08-00252a01.pphosted.com ([91.207.212.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipyE0-0002iB-VY
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 17:37:36 +0000
Received: from pps.filterd (m0102629.ppops.net [127.0.0.1])
 by mx08-00252a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00AHZpZS003364
 for <linux-arm-kernel@lists.infradead.org>; Fri, 10 Jan 2020 17:37:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=raspberrypi.org;
 h=subject : to :
 cc : references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=pp;
 bh=xzWn1OMg/kRBdPGY5cSYHXjxrtR25cVLedpzVE8XDTg=;
 b=SKsdT2gGEEFjWm1OQs24C9xp18p7AQ8nXeW7wBy0MdVcQvkx8mmsnwOjQadzeLaFc5oZ
 6Bkt0NhzFQeQt3p2NR2JFyrE50JZVeKz5et+SDg1d7gyIoxGObSzdgfQisqexzVMb2Pl
 KmS51h4bTAbDO/P7rGw8d+wHaBsyqw/bd4i8MMqurPVC0ehdo8Wnjyiz0+NPesa0l77S
 +NF9ntLnzu081++BYRsnWcxI0xh5x6vat0n9rb/oMAS7388FCuXU7a+Y9hy89SsVkHGh
 DtXDQFqCgDGakfVSGXZjlE/DpbSZZ856j5r9Qpsr6x1QCdAGsaR2M1rUz3EtsoRIBfOQ aw== 
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72])
 by mx08-00252a01.pphosted.com with ESMTP id 2xag2su2hp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK)
 for <linux-arm-kernel@lists.infradead.org>; Fri, 10 Jan 2020 17:37:28 +0000
Received: by mail-wr1-f72.google.com with SMTP id h30so1239667wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 09:37:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=xzWn1OMg/kRBdPGY5cSYHXjxrtR25cVLedpzVE8XDTg=;
 b=eudbFuiFpxiYBXsumIrZk5v2K0RcDambijz9CR6j4vfIhiv09EPkoC4Iap4aOXhjY+
 e+apgz4raC1u6K55M2t+JqSWdpUTU/zP/n9j7vF7ORpWW6Zlu5RnTlpFfvNX+U4ji1lw
 dKpMDCFcBBdGskvbgur3sLBTJFj7Sa2nq4DTeo56U2IhqUIvRnxA0otUH4DD9ExXC9hh
 COAU07dXao/SesrTu7gpROWkTTOKgKv+F9qYoA3m5/gCd9YGfmN0+ktaUGgeZAg6C6uo
 iMEHthpBZop+6pORS/khftnO2rEEOlIYRx+oCuEjF1fI24AeJA+DHXQAitgdsCaGXuzZ
 VuQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xzWn1OMg/kRBdPGY5cSYHXjxrtR25cVLedpzVE8XDTg=;
 b=SOcp9x8I3rDDKDdkzJ4yq5Z4uIsNX9EgVolVB3yRqf/qzIel1FfuPQnAxLThzRf/gO
 tCNkEm4fam5CgZdAoN2GE02hnQDMCt2TPw2RBCy3Yz/tVf5XVvY84VU9VuUZUEzGx/1L
 4HjY1LzgSR6lRZr2N4Rr7MBkAnnoo5C4waG4YCD6d9qpMuoHYaqzCpZ0Z5hO/cNU1Cy5
 dCKPPBy4UhTgORiM1r4kbw/1BDOjzGrR/MPIaQVX5JQvKUDWV9AF+3yjahKJdWWp7fCn
 7BFJlK4vQqg+/jfN2HWz3Zo3UWlREdWWFiAr6nvH7NrCL2fHRnwR511jf3qFspVeqx1p
 XDCg==
X-Gm-Message-State: APjAAAWHmuMa6Ah9KJn0KdPV+2bvWc7S9ksetKO2kVqsKyr8UXUtakmK
 B42cOeiLD5rqEZeiP+TqHdlnV+SuN/YbpzQilX52OjeyL/95M5LYi6lmL2jzzgSFcaXWDLHwinA
 MxFYpQZ5zRoQOaMSC2yTPfD7lD/Z83XxfYt4=
X-Received: by 2002:a5d:5091:: with SMTP id a17mr4687589wrt.362.1578677848172; 
 Fri, 10 Jan 2020 09:37:28 -0800 (PST)
X-Google-Smtp-Source: APXvYqx44UlbuVmiPyz5iGzy41EJVez9kdBqhJkQVvHkfelCDcd0A4HMd0i0npDRAlfsoN/TmkGfzg==
X-Received: by 2002:a5d:5091:: with SMTP id a17mr4687563wrt.362.1578677847921; 
 Fri, 10 Jan 2020 09:37:27 -0800 (PST)
Received: from ?IPv6:2a00:1098:3142:14:910a:522a:cf5c:edd0?
 ([2a00:1098:3142:14:910a:522a:cf5c:edd0])
 by smtp.gmail.com with ESMTPSA id d14sm3100880wru.9.2020.01.10.09.37.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Jan 2020 09:37:27 -0800 (PST)
Subject: Re: [PATCH] ARM: dts: bcm283x: Unify CMA configuration
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>
References: <20200110172935.19709-1-nsaenzjulienne@suse.de>
From: Phil Elwell <phil@raspberrypi.org>
Message-ID: <c5bb42a8-e1c2-3e21-dc1d-d36a069bf97f@raspberrypi.org>
Date: Fri, 10 Jan 2020 17:37:25 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200110172935.19709-1-nsaenzjulienne@suse.de>
Content-Language: en-GB
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-10_01:2020-01-10,
 2020-01-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_093733_367801_7FC1A05B 
X-CRM114-Status: GOOD (  27.14  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

On 10/01/2020 17:29, Nicolas Saenz Julienne wrote:
> With the introduction of the Raspberry Pi 4 we were forced to explicitly
> configure CMA's location, since arm64 defaults it into the ZONE_DMA32
> memory area, which is not good enough to perform DMA operations on that
> device. To bypass this limitation a dedicated CMA DT node was created,
> explicitly indicating the acceptable memory range and size.
> 
> That said, compatibility between boards is a must on the Raspberry Pi
> ecosystem so this creates a common CMA DT node so as for DT overlays to
> be able to update CMA's properties regardless of the board being used.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
> 
> If this doesn't make it into v5.5 I'd be tempted to add:
> Fixes: d98a8dbdaec6 ("ARM: dts: bcm2711: force CMA into first GB of memory")
> 
>   arch/arm/boot/dts/bcm2711.dtsi | 33 +++++++++++++--------------------
>   arch/arm/boot/dts/bcm283x.dtsi | 13 +++++++++++++
>   2 files changed, 26 insertions(+), 20 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
> index 8687534d4528..c8e4041308e0 100644
> --- a/arch/arm/boot/dts/bcm2711.dtsi
> +++ b/arch/arm/boot/dts/bcm2711.dtsi
> @@ -12,26 +12,6 @@ / {
>   
>   	interrupt-parent = <&gicv2>;
>   
> -	reserved-memory {
> -		#address-cells = <2>;
> -		#size-cells = <1>;
> -		ranges;
> -
> -		/*
> -		 * arm64 reserves the CMA by default somewhere in ZONE_DMA32,
> -		 * that's not good enough for the BCM2711 as some devices can
> -		 * only address the lower 1G of memory (ZONE_DMA).
> -		 */
> -		linux,cma {
> -			compatible = "shared-dma-pool";
> -			size = <0x2000000>; /* 32MB */
> -			alloc-ranges = <0x0 0x00000000 0x40000000>;
> -			reusable;
> -			linux,cma-default;
> -		};
> -	};
> -
> -
>   	soc {
>   		/*
>   		 * Defined ranges:
> @@ -869,6 +849,19 @@ pin-rts {
>   	};
>   };
>   
> +&rmem {
> +	#address-cells = <2>;
> +};
> +
> +&cma {
> +	/*
> +	 * arm64 reserves the CMA by default somewhere in ZONE_DMA32,
> +	 * that's not good enough for the BCM2711 as some devices can
> +	 * only address the lower 1G of memory (ZONE_DMA).
> +	 */
> +	alloc-ranges = <0x0 0x00000000 0x40000000>;
> +};
> +
>   &i2c0 {
>   	compatible = "brcm,bcm2711-i2c", "brcm,bcm2835-i2c";
>   	interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
> diff --git a/arch/arm/boot/dts/bcm283x.dtsi b/arch/arm/boot/dts/bcm283x.dtsi
> index 839491628e87..6128baed83c2 100644
> --- a/arch/arm/boot/dts/bcm283x.dtsi
> +++ b/arch/arm/boot/dts/bcm283x.dtsi
> @@ -30,6 +30,19 @@ chosen {
>   		stdout-path = "serial0:115200n8";
>   	};
>   
> +	rmem: reserved-memory {
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges;
> +
> +		cma: linux,cma {
> +			compatible = "shared-dma-pool";
> +			size = <0x4000000>; /* 64MB */
> +			reusable;
> +			linux,cma-default;
> +		};
> +	};
> +
>   	thermal-zones {
>   		cpu_thermal: cpu-thermal {
>   			polling-delay-passive = <0>;
> 

For what it's worth,

Reviewed-by: Phil Elwell <phil@raspberrypi.org>

Phil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
