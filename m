Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1538B123A6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 22:51:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S67NNrL3lU9kFR4/T4jljGUgUGS7LD7OOz4cKQJyvO0=; b=cDeQGIOwmdsvpV
	TnN136Af2aaBU8wDQDpvznTcKEV8zfTp1ak3/WMk82iUI+CQunTg8t7xGeEZaH62jBpEP4cujDppf
	6eomSKB1VBzbPD7AFnOT5yQGl6CLP70wQs4DNJF/zLOuiNHfADeut5yAaU4xTmadBYKMS1OQMHioo
	DineFbnKZ8zFXEnH0Ja7YxkftYYUy26bOK7T+Qi02Kavb07CvSJjQI3aTvAa5fZJ3Xhn9sshk9gcr
	HtmHxyGse8KA9aXIRDTFsEg99ho5oXdEngburqQn1PDPFJtz6/guIYLcw62dgnSnaIHHDp2UJdZhT
	JHebQza+FoHUapykF1cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMIg8-0005YQ-Q9; Thu, 02 May 2019 20:51:40 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMIfv-0005Xb-KI
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 20:51:28 +0000
Received: by mail-oi1-f194.google.com with SMTP id v23so2836052oif.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 13:51:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=W0M/s2a9tlTFv/FTWip3G2NKE0kpp0LnOAR85a1p4R0=;
 b=awAHeb6JuaAhzZ9oxQqbKjxA3jTV6ydBzgNWbYao4DnVWa/q36JPR0d8p5jxVHL40d
 dDZl1xpZSj4LBAb8ZLxQzrYTi2vQBXiBK4g7GZyHWPRM9v6P0M/vlr14pX5+dnvS/IDm
 NkXhtboqI8++0oxN0MZyCgXRLwmIi7z8Ln1rUfXCDMXf94+ySSVVI0xOjytSOzo82fyN
 fgK3BQDCIT06ymCrz4hR6C6Or2y9DCnwC7Laj1OWaknTY7LO3zlTd2CDWY6oSGCSjO1N
 dQfgcNaxlfdwPHSbbaMG18HxAlUlfJ6yQzGtu3nsZmD4kl0H1YpdJsIZBPsCp7Jez1bJ
 se8w==
X-Gm-Message-State: APjAAAWnToi7SUEXghQa9msaVusuhSJU2I9lh4LYxHv7r/CGzwYBxvtP
 xBH2XQA7qT6Ged2fgljqaw==
X-Google-Smtp-Source: APXvYqzDbdYwgPCIEAr+hiFN60T0e7ZJougtcItHrR9eZtQEVRkQfvLf64qmrsDMjgQaRmbSto/j/w==
X-Received: by 2002:a54:4698:: with SMTP id k24mr3819905oic.104.1556830286202; 
 Thu, 02 May 2019 13:51:26 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w5sm21290otg.34.2019.05.02.13.51.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 02 May 2019 13:51:24 -0700 (PDT)
Date: Thu, 2 May 2019 15:51:24 -0500
From: Rob Herring <robh@kernel.org>
To: Gerald BAEZA <gerald.baeza@st.com>
Subject: Re: [PATCH 2/5] dt-bindings: perf: stm32: ddrperfm support
Message-ID: <20190502205124.GA17384@bogus>
References: <1556532194-27904-1-git-send-email-gerald.baeza@st.com>
 <1556532194-27904-3-git-send-email-gerald.baeza@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556532194-27904-3-git-send-email-gerald.baeza@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_135127_667455_F5900A94 
X-CRM114-Status: GOOD (  18.10  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "olof@lixom.net" <olof@lixom.net>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 29, 2019 at 10:03:37AM +0000, Gerald BAEZA wrote:
> The DDRPERFM is the DDR Performance Monitor embedded in STM32MP1 SOC.
> 
> This documentation indicates how to enable stm32-ddr-pmu driver on
> DDRPERFM peripheral, via the device tree.
> 
> Signed-off-by: Gerald Baeza <gerald.baeza@st.com>
> ---
>  .../devicetree/bindings/perf/stm32-ddr-pmu.txt         | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/perf/stm32-ddr-pmu.txt
> 
> diff --git a/Documentation/devicetree/bindings/perf/stm32-ddr-pmu.txt b/Documentation/devicetree/bindings/perf/stm32-ddr-pmu.txt
> new file mode 100644
> index 0000000..dabc4c7
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/perf/stm32-ddr-pmu.txt
> @@ -0,0 +1,18 @@
> +* STM32 DDR Performance Monitor (DDRPERFM)
> +
> +Required properties:
> +- compatible: must be "st,stm32-ddr-pmu".
> +- reg: physical address and length of the registers set.
> +- clocks: list of phandles and specifiers to all input clocks listed in
> +	  clock-names property.
> +- clock-names: "bus" corresponds to the DDRPERFM bus clock and "ddr" to
> +	       the DDR frequency.

You have 'resets' in the dts.

> +
> +Example:
> +	ddrperfm: perf@5a007000 {
> +		compatible = "st,stm32-ddr-pmu";
> +		reg = <0x5a007000 0x400>;
> +		clocks = <&rcc DDRPERFM>, <&rcc PLL2_R>;
> +		clock-names = "bus", "ddr";
> +	};
> +
> -- 
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
