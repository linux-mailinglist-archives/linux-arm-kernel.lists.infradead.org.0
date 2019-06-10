Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83AA93B963
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 18:26:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zaFi0JOVrel/qOrsBoSNoueiwDFEBmXmMxs/F6fqxMY=; b=ak9yP7IisrAX8s
	rqRSuQv73mU9jNw+XH8tlaJiIMLWC4TwSEOiSUseB/ZdQQJAbxWMVuqWWc2ePsQTgRWSjQ/VOUlRt
	ZN2yuoGRw8Yau9tRp44Iw1rQxpwns9qkamKy4QwyDNfS/I0/+afvYjoxpxsKNEsgPHFQvowTCXaSM
	FSsikoix7qmJPrectlzTc6BPQO4Lw8OUxYkpTeGBr+GEpJL0+XCRXSYdcJiReTXMOGdB63smg2c0c
	bdkp4Mvcn3md0uaYnQD1/vS32F5TktLt3XT9iONDl6WSOIAKrMXJ63Gxa7vl1+fWF5BE1c3dEn0GQ
	05rHgquPfL0OMLwNTjJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haN8H-0002MS-Sn; Mon, 10 Jun 2019 16:26:53 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haN6s-0000v2-2L
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 16:25:29 +0000
Received: by mail-lj1-x242.google.com with SMTP id p17so1286508ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 09:25:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=eipFIuppUEBChZz5jEQKJnDCMNGzgpujxoDXEsClrz0=;
 b=GcbtoBrrxpTZ95MoI5I8PI/IWR4S1C/FKE6nwL2MNQJYCI1uPUShUb/2eNhZ09VLHr
 ceSg3kp6GOu+D2HcrZ7XtTVUc/yl8vPCa1nV9yVOkOnsiY2EmSzZQ9I/eEdMyrbofzKe
 7m1RSAId+c4XJqB8uAAf9noe7TGBhcN8oiXc6Rk2DzjzCF9G8TtpzUU0GYnNIACu6kkI
 mwFOqnG/HQaThHI0C/HCE1ZF0UfQjhOmbKNkEKJxuxbUpbt9RMfIjF+hVxzUfmEyoOVf
 eUrXyKqi9cos/KDis7qsJVzqmszRFnfpzNouAxxflgIBDlp+cG7uGzX2fgCaLuEPVseu
 vzMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=eipFIuppUEBChZz5jEQKJnDCMNGzgpujxoDXEsClrz0=;
 b=XYkPzbyxkXz89MFSqvjklZOOw9HdrS0szgnuilKC35l6tDeNjobsz849BaEMCCkkZs
 zLq05o2gN25300TLdXH84xZOcIWvJw2u7AEW5pwEJcS5mUj3G5/Ecu0S/TgC4ZHeVS27
 1XHiYbhuqMyK9oPqlqO9SxqYHz4FCvsbzmKW1MDfAX8aj9EWLUBXpRsRc4iZX//AzqlX
 ProdJrjRTW2RRqdbdqjX0N/OGnT2mw5dpZMnzVjonuiMJ3BKnY0nLJm53LbQRChkbUs9
 9LeTDaPIAuacZJYstIM1HCEObN/6L/4HzgJULs3syo1KwKH8AWlyFgfTV50GRyJ4BmhU
 kr7A==
X-Gm-Message-State: APjAAAWb79Pt+X0fKv9k+fbT7B6fQroUuu4oenb2ijnovOriE7gpmRzd
 m+Of5+S78jQxu+Mmp59e4D6bxg==
X-Google-Smtp-Source: APXvYqyznVsw9V2kAPwrtxirNjclrLSAsstJiifDJVxq7J/9R9usmEoDiJrJb+d2UJTKXwgwWbCvvg==
X-Received: by 2002:a2e:9188:: with SMTP id f8mr17623754ljg.33.1560183923858; 
 Mon, 10 Jun 2019 09:25:23 -0700 (PDT)
Received: from wasted.cogentembedded.com ([31.173.86.166])
 by smtp.gmail.com with ESMTPSA id 24sm2516567ljs.63.2019.06.10.09.25.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 09:25:23 -0700 (PDT)
Subject: Re: [PATCH v5 4/5] dt-bindings: mtd: Add bindings for TI's AM654
 HyperBus memory controller
To: Vignesh Raghavendra <vigneshr@ti.com>,
 David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Marek Vasut
 <marek.vasut@gmail.com>, Richard Weinberger <richard@nod.at>,
 Rob Herring <robh+dt@kernel.org>
References: <20190609103227.24875-1-vigneshr@ti.com>
 <20190609103227.24875-5-vigneshr@ti.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <a808ffca-02a8-14b0-3422-c0905ab212a6@cogentembedded.com>
Date: Mon, 10 Jun 2019 19:25:21 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20190609103227.24875-5-vigneshr@ti.com>
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_092526_607412_D9D981A2 
X-CRM114-Status: GOOD (  25.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 linux-kernel@vger.kernel.org, Joakim Tjernlund <Joakim.Tjernlund@infinera.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!

On 06/09/2019 01:32 PM, Vignesh Raghavendra wrote:

> Add binding documentation for TI's HyperBus memory controller present on
> AM654 SoC.
> 
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
> ---
> v5:
> Update binding example to show MMIO mux
> Fix reg property for flash slave.
> 
>  .../devicetree/bindings/mtd/ti,am654-hbmc.txt | 51 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  2 files changed, 52 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt
> 
> diff --git a/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt b/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt
> new file mode 100644
> index 000000000000..c2a2c2b42a92
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt
> @@ -0,0 +1,51 @@
> +Bindings for HyperBus Memory Controller (HBMC) on TI's K3 family of SoCs
> +
> +Required properties:
> +- compatible : "ti,am654-hbmc" for AM654 SoC
> +- reg : Two entries:
> +	First entry pointed to the register space of HBMC controller
> +	Second entry pointing to the memory map region dedicated for
> +	MMIO access to attached flash devices
> +- ranges : Address translation from offset within CS to allocated MMIO
> +	   space in SoC
> +
> +Optional properties:
> +- mux-controls : phandle to the multiplexer that controls selection of
> +		 HBMC vs OSPI inside Flash SubSystem. Default is OSPI,
> +		 if property is absent.
> +		 See Documentation/devicetree/bindings/mux/reg-mux.txt
> +		 for mmio-mux binding details
> +
> +Example:
> +
> +	fss: fss@47000000 {

   What's FSS?
   Regardless of the answer, the node names should be generic, like "memory-controller@".

> +		compatible = "syscon", "simple-mfd";

   If it's "sycon", the nme should probably be "system-controller".

> +		reg = <0x0 0x47000000 0x0 0x100>;
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		hbmc_mux: hbmc-mux {

   So, just "multiplexor"?

> +			compatible = "mmio-mux";
> +			#mux-control-cells = <1>;
> +			mux-reg-masks = <0x4 0x2>; /* 0: reg 0x4, bit 1 */
> +		};
> +
> +		hbmc: hbmc@47034000 {

   Should be named "memory-controller@47034000", according to the DT spec.

> +			compatible = "ti,am654-hbmc";
> +			reg = <0x0 0x47034000 0x0 0x100>,
> +				<0x5 0x00000000 0x1 0x0000000>;
> +			power-domains = <&k3_pds 55>;
> +			#address-cells = <2>;
> +			#size-cells = <1>;
> +			ranges = <0x0 0x0 0x5 0x00000000 0x4000000>, /* CS0 - 64MB */
> +				 <0x1 0x0 0x5 0x04000000 0x4000000>; /* CS1 - 64MB */
> +			mux-controls = <&hbmc_mux 0>;
> +
> +			/* Slave flash node */
> +			flash@0,0 {
> +				compatible = "cypress,hyperflash", "cfi-flash";
> +				reg = <0x0 0x0 0x4000000>;
> +			};
> +		};
> +	};
[...]

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
