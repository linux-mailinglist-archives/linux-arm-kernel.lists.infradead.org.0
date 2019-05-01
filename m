Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9A01106C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 01:54:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dyROQ2j+vDcwGpAtoa12ICigEhEomWsryUAHBLzRtSE=; b=skCd2yS5NZVM5n
	xehoQhNYNcWsPfuZWl+FpFvV4gnEoNNxmw5kjnrSOTP1iEMMZEPzatLsuAleTIyvTQ/qAWs+ARc9Y
	JyGjahewc2j8wlu3s8M4DqmBL7BqsTvKZfFlT2rox5rU4yAgK+uGo4cihp4nS0fK2EsHKYteeXjpg
	e98/xCWbz9XaBUkg2NMZbWjGP6gKvYByylgM9zcgULlZSuurnlvkNQjkRxw78DiL3N5AqXynw3wEe
	1+uEi9abE60aupr0+gh3ZITLYTGOoq43iNfZCqBubT9QP+I4RfluZ5nxLw48CQTU0XH4V1VdUCVQk
	09MHvcrmGDRxSJHWGD3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLz3L-0004TC-8H; Wed, 01 May 2019 23:54:19 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLz3E-0004Sm-RM
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 23:54:14 +0000
Received: by mail-ot1-f68.google.com with SMTP id r20so498829otg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 16:54:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tXDCdd92LBDtjOFs+J4ymG7qHEvoPQwEOfUzmA0UDOI=;
 b=G5aok8oNR+3+84KgslqVmc/itrQ8wcRmc6XvdvCi1nacwSUOEe1jWdYY81midxgOQr
 eNSKQuiudgS5RR6INIJ9QPye2ywlHjcwoWaf1xl9bAWMbtANx0fGLsDBU1GAu6AOAyFA
 86pRfXGb+3qx0zXPbGztBfxBxkEh9HgIgZkjE8FnbtuqaWN/pekG0dd5WID7Uex3hyTl
 JHRe2QL6y0mx3co3mW+fI9WWaruJxl6qhyuk+bhgM3or9JQJr8cMy3fDr2f6JGM0XQgC
 LoQSViTZ+lDaErqXQdHeaWqYeDuD8qK4giFhsZQJFRpg8BQe+31arWvnoZvOlCR6nRI7
 n5PQ==
X-Gm-Message-State: APjAAAUOhwkquQLxVXQZumtahzP7ZxPg+g5z/PDsoliyqt0ecyzXYDQs
 JjwIM5cJybM+7+1sPYaCIQ==
X-Google-Smtp-Source: APXvYqzf/+u+ytGa+dH4EzbSSOPM/R0r52/cNtm0uZJL/klvn3nRkLc4+3PH34Fir0IUOaAoVXP1wQ==
X-Received: by 2002:a05:6830:144c:: with SMTP id
 w12mr508462otp.192.1556754851856; 
 Wed, 01 May 2019 16:54:11 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 3sm12085412oti.45.2019.05.01.16.54.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 01 May 2019 16:54:10 -0700 (PDT)
Date: Wed, 1 May 2019 18:54:10 -0500
From: Rob Herring <robh@kernel.org>
To: Ran Wang <ran.wang_1@nxp.com>
Subject: Re: [PATCH v2] arm64: dts: ls1028a: Add USB dt nodes
Message-ID: <20190501235410.GA25492@bogus>
References: <20190426055558.44544-1-ran.wang_1@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190426055558.44544-1-ran.wang_1@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_165412_889319_571858B8 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Leo Li <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 26, 2019 at 05:54:26AM +0000, Ran Wang wrote:
> This patch adds USB dt nodes for LS1028A.
> 
> Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
> ---
> Changes in v2:
>   - Rename node from usb3@... to usb@... to meet DTSpec
> 
>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi |   20 ++++++++++++++++++++
>  1 files changed, 20 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index 8dd3501..188cfb8 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -144,6 +144,26 @@
>  			clocks = <&sysclk>;
>  		};
>  
> +		usb0:usb@3100000 {
                     ^ space needed

> +			compatible= "snps,dwc3";

Needs an SoC specific compatible.

> +			reg= <0x0 0x3100000 0x0 0x10000>;
> +			interrupts= <0 80 0x4>;
> +			dr_mode= "host";
> +			snps,dis_rxdet_inp3_quirk;
> +			snps,quirk-frame-length-adjustment = <0x20>;
> +			snps,incr-burst-type-adjustment = <1>, <4>, <8>, <16>;
> +		};
> +
> +		usb1:usb@3110000 {
> +			compatible= "snps,dwc3";
> +			reg= <0x0 0x3110000 0x0 0x10000>;
> +			interrupts= <0 81 0x4>;
> +			dr_mode= "host";
> +			snps,dis_rxdet_inp3_quirk;
> +			snps,quirk-frame-length-adjustment = <0x20>;
> +			snps,incr-burst-type-adjustment = <1>, <4>, <8>, <16>;
> +		};
> +
>  		i2c0: i2c@2000000 {
>  			compatible = "fsl,vf610-i2c";
>  			#address-cells = <1>;
> -- 
> 1.7.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
