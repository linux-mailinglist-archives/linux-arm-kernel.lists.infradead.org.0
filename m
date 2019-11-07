Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BDBF3607
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 18:45:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q6lvsUB5sCpbdkc2GhNTG6jlyOVbEX4jKYwQ6EWvEy8=; b=KKpbns9gSGfQBF
	VhV7HHTnkWLHaopy2ZcCQDrBXCQBviz1Rr4YIMwSBhtt9tueev7XxkswNCAM+KHpCn5OZEPKusgbX
	1R5IhNgYAJTYl0FORJ4GlqLCk/hU/Uq3vHtgjdqxbmZS7w0lWg1DeuYdn+yjIMl/heb1EWsFzRYVL
	ZEmawM+CiEf4hiq9S901r1sbgyd5Gb+1HsxJK6xjhDnGZDXkA+lJiBGV7T5fqhikY9ntIwKk+sKU3
	14xwfkpaGPTq7dZEHPeRtWSsqecdQ6veYVai0QTh76+JpDNOSD2IRTyLpfPDOEZ5QaIPfLnscKhwn
	J7spnVUBiVIn8pILt/RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSlqq-0004jo-MX; Thu, 07 Nov 2019 17:45:44 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSlqi-0004jJ-VD; Thu, 07 Nov 2019 17:45:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573148643;
 bh=BhpscKNMNJ87cTBKp5GFtuoSxVbnh8ZvmC4Rf1n+h38=;
 h=X-UI-Sender-Class:From:Subject:To:Cc:References:Date:In-Reply-To;
 b=RaToiqBWCAvSxDaMxZRFSFymlKvGhbrAenAP9CjmQ9ncFWyjKTrmLlqqMTP540Oiw
 wZgzk/QLak/osdn1/7tehwKUse8hKft4poRlu0GHyBgVgI/rQx4lxlokIv1yWRSryu
 8FpJim92Vtuq8yXqBT8AZVneXuE0dwCshusY6gMQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.167] ([37.4.249.112]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MfpOT-1i0ZgY1UD3-00gJwl; Thu, 07
 Nov 2019 18:44:03 +0100
From: Stefan Wahren <wahrenst@gmx.net>
Subject: [PATCH 2/4] ARM: dts: bcm2711: Enable PCIe controller
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Andrew Murray <andrew.murray@arm.com>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Eric Anholt <eric@anholt.net>
References: <20191106214527.18736-1-nsaenzjulienne@suse.de>
 <20191106214527.18736-3-nsaenzjulienne@suse.de>
Message-ID: <50074e33-17bf-d555-cbf6-4ec079472ecd@gmx.net>
Date: Thu, 7 Nov 2019 18:44:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191106214527.18736-3-nsaenzjulienne@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:J71S5xLJO6+jUF9K+xjRD+Q+1zl0v7N17CIk7oTTAhAWdhfX9iE
 6oV3FcP2aidfN0utB8aFh+mDNyaafkadl5gfTeyt9zWl6bH0UCIecQmnTbhQeh06zo0qeaf
 +6aULk0CUOYAJeZkUgiqlqlkMej3uezBZhTIo57FltmjGnlGXEb/HMjecy8NVmRmWPFdRPb
 UigCrTZFbF+asJHhfzQEg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:veosRUOBoV8=:/i04foybdF2ZZJ9IZydkIN
 5cXsh7t5WZLGlAvkV26q6iMgU/QY689bUjOp67Z3KB/EU7Myouui3LQAttxgtiPmZb7w9/a8m
 91X7W3+92k7n7hVcPVvKSum7i5K7B+pxXFog3bZ/9UQoFc/PSqKkWdgKppEtybTuMfk8YUoup
 7WfWY/x1FwYQKh4Vl79DIOHGtXyiK89vnuOcqrvCa8Ib60A649HwGO6DyESwweQk2GG+mWbT0
 24X4m/noEWY7HhNzIqL6NCN5ecxGybXDVPg5QbzvYU7hTG9XwNw+AYQ4BoqwLiVPfhFoSEIyX
 +ib8FnlMnfPNZI5a7eurMQmmON9tTc1TOL9xqy4KPu7hIvHnc4JQvsTtBQOGpp0h1rGWfzKbl
 J9vWFaU92Te50zr8sFhDEovEPK+M+CtbAsyYa/f4ffVvnP/68qh8tHWTyJgSGqFqc10qdEwct
 igAReQTBz29K5uyNpF0pnuyttmFUBfV1ErUdobF0b+tBDLu7B4waIZwapOfVTMjo/BCLCTDht
 Q5ZyzJOJKD6y8+0kUQb/pJGx73nEc53BB5AchLiPXi5Wq3GI+TFkr1gLZqBLfaprui0zYjB/P
 H071biwr68rUmihQuZNbhXog6apcGIz5P3aIrQxo5PqYHh5ukyliaZDIyzvHvA0O9j7P3Grun
 MtKrbkIuQ5L1AkqeKhxFvrOcJ1dTAt+YEKZLHrGUioYJmECfP1fVxzlIoKwJiyrSoWFbAq958
 yaMROACMVsw4eKHgsVnUakAUosllI9S3yzK2FkYo2GSxZkov5zZuAOeA/46LM9YxN89J94Lb1
 b6cZt31IAAT21Nc7UKyzCt2oNOIhwXeGmMuGawJe6OnzQYM/VMh9BFIcCT7NVBJTmgzxM83Is
 cprUHlCOWjamThbIfRp4k8RbprXWQmIeoF9nldnT+jivSCC79f5vTxnc/zWBYXV84yfvtubRT
 RfXHb/ziuGNyzcktf2GEJMhY4DNr7DiFVA4GYjJxIj+4tVgWv/M4fGTBvqodNIeKhgGxiTmkl
 6+Qtx1Zg9yWN3CBStG71oBIuq6JOQmX4BrKiDB2dulf/kl5FrnFS9gyt44tih8Jk4k0nlvK7o
 04Dj0s7ijfkoMc7uIjKYhTIOwjmhnlY88GoJ7vEeRiGViTiG1psynfT7dS/3V4jYTQpNG19iD
 doY9ArT1FyY4sdaidh3fntp90pdd6UXnADGtEXDBpAJoQC9ShmSf1MFeygAFIyvumGiQS/TTj
 v/eCbK7W71PgkjLyHzKBOy+sTUVJ1B3pqYmC1kUX/s0iTWpDCn9sdzPQU9TI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_094537_407330_D12A9D3E 
X-CRM114-Status: GOOD (  18.74  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: f.fainelli@gmail.com, phil@raspberrypi.org, linux-kernel@vger.kernel.org,
 james.quinlan@broadcom.com, mbrugger@suse.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

please move this patch behind the driver patches, which is the better order.

Am 06.11.19 um 22:45 schrieb Nicolas Saenz Julienne:
> This enables bcm2711's PCIe bus, wich is hardwired to a VIA Technologies
> XHCI USB 3.0 controller.
AFAIU this only applies to the Raspberry Pi 4, since the VIA is outside
of the SoC.
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
>  arch/arm/boot/dts/bcm2711.dtsi | 47 ++++++++++++++++++++++++++++++++++
>  1 file changed, 47 insertions(+)
>
> diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
> index a9d84e28f245..c7b2e7b57da6 100644
> --- a/arch/arm/boot/dts/bcm2711.dtsi
> +++ b/arch/arm/boot/dts/bcm2711.dtsi
> @@ -288,6 +288,53 @@
>  		arm,cpu-registers-not-fw-configured;
>  	};
>
> +	scb {
> +		compatible = "simple-bus";
> +		#address-cells = <2>;
> +		#size-cells = <1>;
> +
> +		ranges = <0x0 0x7c000000  0x0 0xfc000000  0x03800000>,
> +			 <0x6 0x00000000  0x6 0x00000000  0x40000000>;
> +
> +		pcie_0: pcie@7d500000 {
> +			compatible = "brcm,bcm2711-pcie";
> +			reg = <0x0 0x7d500000 0x9310>;
> +			msi-controller;
> +			msi-parent = <&pcie_0>;
> +			#address-cells = <3>;
> +			#interrupt-cells = <1>;
> +			#size-cells = <2>;
> +			linux,pci-domain = <0>;
> +			brcm,enable-ssc;
> +			interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "pcie", "msi";
> +			interrupt-map-mask = <0x0 0x0 0x0 0x7>;
> +			interrupt-map = <0 0 0 1 &gicv2 GIC_SPI 143
> +							IRQ_TYPE_LEVEL_HIGH
> +					 0 0 0 2 &gicv2 GIC_SPI 144
> +							IRQ_TYPE_LEVEL_HIGH
> +					 0 0 0 3 &gicv2 GIC_SPI 145
> +							IRQ_TYPE_LEVEL_HIGH
> +					 0 0 0 4 &gicv2 GIC_SPI 146
> +							IRQ_TYPE_LEVEL_HIGH>;
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
> +				      0x0 0x80000000>;
In case this bug will ever be fixed, do you see this as a future proof
practical solution?
> +		};
> +	};
> +
>  	cpus: cpus {
>  		#address-cells = <1>;
>  		#size-cells = <0>;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
