Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 494764DA8C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 21:48:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9/ranAGYePfclseBPXH2XQ+w0YvziuHi4bOTrseWT+8=; b=E6l7nBd2iM6017
	gBxaBmysmJTAZ8bcLtSxEB/ARwG7OpZwOBt9b4/ftL95hETSF9IEW76L4akMVVd9rG/L3a9svk3wE
	nmR/B4ogtERo1IW+vNNfC7lmfUvAGb86TKf4sQtsqsaYjmZQwAM+xPq/2ExVJj6IkO6HnUDQ9lfAI
	IPrxWuZjpoi+0KEQKgLeAzs2K9W7+2G/c7TVTUUDvepF9wY8s71sYDgBjmX0YJam5OvLynVlzpZHe
	g1x9gi4pXekRdu5pPU6lmBCs5w4r8zvUr6Kg3MEYBUM0p2nsXLS5kMJ0bS/g+jf2W6WFSW4AMiUhJ
	JYAnIbnX0GmjQKbOl0XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he32h-00055v-VU; Thu, 20 Jun 2019 19:48:20 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he32V-00054s-OS
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 19:48:09 +0000
Received: by mail-lj1-x242.google.com with SMTP id a21so3815364ljh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 12:48:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DiLGYKI//ln9TQDjClJ3qLkZ4+6ogsSbHs45QXIwYsg=;
 b=jNNUOCYmU/JK5+UWg28Aqbf8xYiFLRnSldyJKKOqmDY0/vwfwE0cxokADlvibQ7WG9
 rKkDfuom+wSxmcPQ+tJKT2gBiSZ9xXNQM2/4mrOgSiE06jLE14C22X5ZRyIqg9MUiKQg
 UJb2kmWO2BWr+EoPSphPXDggbCNB9IhYM0IHV7UFpNZNWbdLw+HXPPXU0eNMASytrLfk
 nb78wyy65As2v8t6QrnFye0EOJEX2L6QyEbxBrSo5VQP54x0Yd40C4WTNeTDXYntDPr6
 QkuuLiU/eLvCA5QTImNc8I2QqSKs/hSxL3sMvyBUEblA2hC6pI012RMnPjdLz/bQ1KbK
 WdfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=DiLGYKI//ln9TQDjClJ3qLkZ4+6ogsSbHs45QXIwYsg=;
 b=a2qMmfugFdcR63DW3oGOT/XnWDYM7f0Vp4s1Opx4mzjCPX+MM+cJQcDLyLYAlSBrfp
 l/ye7FpUtvlsUzHCJHj9ptjSpUxZOCgMe7toDqt9Vva+gVUHFTl78xg5KkkMJkTeL8Oh
 U46KQtkWwSM6+0lUreUNoZyZSUYzGhWQ0YTR3woxLJw+dKRjPYmI4c1UG7dByCw86Ot8
 Fi8H9zFTBB0ybgE93DiSMLwDuoM5Nr7f6MDUY0uFs3LGhddGZfDYlepL93m+ZJY0kJpw
 P4xtjqB/Uk02RNYb1uav1NlRNnaEKqCbGeLKrBGS6Jn5uDyezf8AgvtW+aMi7j/rTOsT
 SBuw==
X-Gm-Message-State: APjAAAVPW/xhlFS4i0kxS6iuCdv3EQZ93mjnRQErdQo5gBs5A0UAgNNA
 1Aidbz9cn8aksF72HJAPfLrsNw==
X-Google-Smtp-Source: APXvYqyFd6TRCOumDBpWc4p1kzxveKVV0+WF6v+02t8D9nWCK7W5yGioY0Fkzuf6ZjwlPM2PnfVURg==
X-Received: by 2002:a2e:9106:: with SMTP id m6mr56628892ljg.164.1561060084407; 
 Thu, 20 Jun 2019 12:48:04 -0700 (PDT)
Received: from wasted.cogentembedded.com ([31.173.80.47])
 by smtp.gmail.com with ESMTPSA id g4sm83832lfb.31.2019.06.20.12.48.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 12:48:03 -0700 (PDT)
Subject: Re: [PATCH v7 4/5] dt-bindings: mtd: Add bindings for TI's AM654
 HyperBus memory controller
To: Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Marek Vasut
 <marek.vasut@gmail.com>, Richard Weinberger <richard@nod.at>,
 Rob Herring <robh+dt@kernel.org>
References: <20190620172250.9102-1-vigneshr@ti.com>
 <20190620172250.9102-5-vigneshr@ti.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <d4ddd75d-92ab-4bca-5e2f-853ade714ba2@cogentembedded.com>
Date: Thu, 20 Jun 2019 22:48:01 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20190620172250.9102-5-vigneshr@ti.com>
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_124807_915216_5C3416F4 
X-CRM114-Status: GOOD (  19.51  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/20/2019 08:22 PM, Vignesh Raghavendra wrote:

> Add binding documentation for TI's HyperBus memory controller present on
> AM654 SoC.
> 
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
> ---
> 
> v7: Fix example to move HyperBus node out of syscon
> v6: Use generic names for bindings
> 
>  .../devicetree/bindings/mtd/ti,am654-hbmc.txt | 52 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  2 files changed, 53 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt
> 
> diff --git a/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt b/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt
> new file mode 100644
> index 000000000000..d424a0b88ab6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt
[...]
> +Example:
> +
> +	system-controller@47000000 {
> +		compatible = "syscon", "simple-mfd";
> +		reg = <0x0 0x47000000 0x0 0x100>;
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		hbmc_mux: multiplexer {
> +			compatible = "mmio-mux";
> +			#mux-control-cells = <1>;
> +			mux-reg-masks = <0x4 0x2>; /* 0: reg 0x4, bit 1 */
> +		};
> +

   Empty line not needed here.

> +	};
> +
> +	hbmc: hyperbus@47034000 {
> +		compatible = "ti,am654-hbmc";
> +		reg = <0x0 0x47034000 0x0 0x100>,
> +			<0x5 0x00000000 0x1 0x0000000>;
> +		power-domains = <&k3_pds 55>;
> +		#address-cells = <2>;
> +		#size-cells = <1>;
> +		ranges = <0x0 0x0 0x5 0x00000000 0x4000000>, /* CS0 - 64MB */
> +			 <0x1 0x0 0x5 0x04000000 0x4000000>; /* CS1 - 64MB */
> +		mux-controls = <&hbmc_mux 0>;
> +
> +			/* Slave flash node */

   Overindented.

> +		flash@0,0 {
> +			compatible = "cypress,hyperflash", "cfi-flash";
> +			reg = <0x0 0x0 0x4000000>;
> +		};
> +	};
[...]

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
