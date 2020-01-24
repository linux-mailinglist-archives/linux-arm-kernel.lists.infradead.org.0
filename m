Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07456148FD0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 21:54:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fDOcK3fTdWSlabDrjZpxeEsJHhObIIiYUeC4mMMNofA=; b=dh0tzlAMvJPQh/
	SsEdb06H96mmMOlFVNYwvLMt5cLqEN+TDcguL0f9+Ku+dMesvf8P1vI1EXuSEXEtajOJU9vczjTAe
	dTmOKyR/p/gWjMtbY1N2/cI90xga3oPJoLrf6tz7ErLFcT/mM/p9LRucrFaOsRtUtKpjisJJEiXDS
	6KxVJciWDQLRqFxSUzNUVQvRIcggr+aQTfsoVYaKs9og59Q5dQMyfreUA6AJtneWEBtH0g7XJyNu2
	dp8Vj+AR5MCGyWRXC9/p4DXxJSGhrYBMV3oZzflv4AG4B7/7DqjV2Po8p6ry4sPR/LqYDpCv5b8tR
	Rb9NdJ8loXuRqHbJbVqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv5yL-0004Rh-CV; Fri, 24 Jan 2020 20:54:33 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv5yF-0004RJ-Rq
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 20:54:29 +0000
Received: by mail-wm1-x342.google.com with SMTP id q9so746418wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Jan 2020 12:54:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=opkZhz5duR9Fq5DdteTxdcCMw2LLGvVz5ld2quduWCU=;
 b=VzPWHzc+9AwICXQCpK8UFlEJx29WP+RQDUYAl4ZuwJ4ZT2A1UF6z8gLniJgwqwpbOw
 mjdDBi8NAMffhnJUnyYsUVgUwChGfGltqilmpPejqCf+h83mrdgSWvL7Se4glrFWRFR/
 doPYqnQeAZnV9WfOru4+U9kJXiy2clVjczUdvZn30tbpMvRsiPTolySL1t5YBrctpOnG
 zKn31xaqN0vUCHaKvLzbJRm2KWdYiscbmpwAowj21krQ8duow1MsxMLaUIYPuSSekHx/
 ucmcbeLyHgqan4yp1/soISTooRIzL6shEsDtfCxNNRVgjESDIlMYp3kdHvYKHWXqQy0x
 BPJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=opkZhz5duR9Fq5DdteTxdcCMw2LLGvVz5ld2quduWCU=;
 b=GlVsnrlf8dR8nevS9KlgHJGmeDgJXDxewhq8CaRhyKeqRBIXS4oOAEukNwZGPKZAjX
 A3CjLep1QnyD+bSrcHsY+zvZsn79hG5aVbP3ZaxC64KKsoCreio+S+M6JcrwM+3B2pqN
 P9IYKcyf2DyqUOzAlmA7FgtiTctJRrOsQXXpyDDcCwFVgtk7RN+zmMrOjfRdBwgDVfPG
 D9kkZzQ883tCOSEfD3ouER7leDo1jENCazrU42fyPAx6CHCccLj4uP39L+rKS17sfoyC
 vOPYdA6kgghVAf2ql2DNu/UPF4HhLnR/bnTx/E0Mzd2DyjIRn5TIDsTrh8wGcWA6u3Q9
 PfWg==
X-Gm-Message-State: APjAAAXKlA/brH84AWx39D27hqXgq7WIwVQG+ZPOt9Oha+copnW277A2
 aOy+5R6Ixbqlv5aqXHCylaM=
X-Google-Smtp-Source: APXvYqxM4IdIrgE2Yh8Co6XoPZAg6AxqlyYVfJQBW2cGptnFKjuymJgPm0Zl+D27Czd2RqPrFOMCVA==
X-Received: by 2002:a1c:80d4:: with SMTP id b203mr957857wmd.102.1579899266075; 
 Fri, 24 Jan 2020 12:54:26 -0800 (PST)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net.
 [194.152.20.232])
 by smtp.gmail.com with ESMTPSA id h8sm9812977wrx.63.2020.01.24.12.54.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Jan 2020 12:54:25 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Joerg Roedel <joro@8bytes.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 3/3] arm64: dts: allwinner: h6: Add IOMMU
Date: Fri, 24 Jan 2020 21:54:23 +0100
Message-ID: <5320339.DvuYhMxLoT@jernej-laptop>
In-Reply-To: <54e22e25c2c13cb1b73cc7ecb645b5d62f325b63.1579696927.git-series.maxime@cerno.tech>
References: <cover.b2a9e1507135d81e726fcbb65137665a7f0ab74f.1579696927.git-series.maxime@cerno.tech>
 <54e22e25c2c13cb1b73cc7ecb645b5d62f325b63.1579696927.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_125427_920118_61D097AB 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jernej.skrabec[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, iommu@lists.linux-foundation.org,
 Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

Dne sreda, 22. januar 2020 ob 13:44:09 CET je Maxime Ripard napisal(a):
> Now that we have a driver for the IOMMU, let's start using it.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi index
> 29824081b43b..8608bcf1c52c 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> @@ -53,6 +53,7 @@
>  	de: display-engine {
>  		compatible = "allwinner,sun50i-h6-display-engine";
>  		allwinner,pipelines = <&mixer0>;
> +		iommus = <&iommu 0>;
>  		status = "disabled";
>  	};

Isn't iommu property of the mixer node? After all, mixer is the one which 
reads one or more framebuffers. Once second mixer is defined, would you put 
another iommu phandle here?

Best regards,
Jernej

> 
> @@ -122,6 +123,7 @@
>  				clock-names = "bus",
>  					      "mod";
>  				resets = <&display_clocks 
RST_MIXER0>;
> +				iommus = <&iommu 0>;
> 
>  				ports {
>  					#address-cells = <1>;
> @@ -345,6 +347,15 @@
>  			#interrupt-cells = <3>;
>  		};
> 
> +		iommu: iommu@30f0000 {
> +			compatible = "allwinner,sun50i-h6-iommu";
> +			reg = <0x030f0000 0x10000>;
> +			interrupts = <GIC_SPI 57 
IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&ccu CLK_BUS_IOMMU>;
> +			resets = <&ccu RST_BUS_IOMMU>;
> +			#iommu-cells = <1>;
> +		};
> +
>  		mmc0: mmc@4020000 {
>  			compatible = "allwinner,sun50i-h6-mmc",
>  				     "allwinner,sun50i-a64-mmc";





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
