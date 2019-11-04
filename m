Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BE8EF111
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 00:14:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=apqdTSphAEH9UJUWXa9DKlrz268CJgvTR0d71w2sY4A=; b=nDQ8HhLJmt4Rd8
	dfrP3JOU5694UUv6wziBc+uWUcC4l05+K1MvdehRGcU3yeDhBfIsVIgLZ8iOM90TrnSo8fNSntoqL
	7SIcIg4Q0y9mphTF9ICEbWR2ZZUMDpic6uDubpl0vFTvZReA7U8cogXuUEfKdKSRopFvBKVGheVNw
	vMWagdTwP6yVY1hkMPF42qCxITORIJRsWKtj4K+fbx5+/fUQ9NhIOHDDHunEJHpsPLE5330XXnK46
	1Pb/dGh4ZHaBQVbcownz4w6ssAP0VFIV3LCq20BdoL3fRe8r+JR1eC21rfVd8uBQpm0zBmsuWQb2W
	wbfHElk9bd5TQtIwD61A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRlYS-00059e-Sf; Mon, 04 Nov 2019 23:14:36 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRlYN-00058V-5f
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 23:14:32 +0000
Received: by mail-oi1-f194.google.com with SMTP id s71so15766032oih.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 15:14:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0s5eHuTsunlw8bqFz+rzViXBrMYpKgr6RnCJYn4WElg=;
 b=gllqnY0avCQUdydrB+S7bZo1fWUW/HloMHhbvEeeMfPNCEjdDD53UwVyk/teiCwcIN
 0y4bnY741Nh41QMWe3rqLf3xTMwn5oT9aWnX6ifh9p+/BFRTSrAQb9WpUmNuXNseBD/2
 sWOIXyvHUCfPWL6ftBpHmjRG3ratCyOoWVtOUP7blvhtoUPB9tV2rCjXx2XHxvGIOIMt
 bXJ8iFV3sWsT3kKraK3PA4h4Hk1Vm4vOce40ur5xWk38hVysyxM60qtU8TuYeo2f0R4v
 R7pU+POh5NxSb9n7rMKm/GcY8ZY661u4EdsYowE665FMg4Cvp7HBBkkNXRhPA68eKZay
 UBTw==
X-Gm-Message-State: APjAAAX9s79I6Q2nmRm4Tk0JhkztkG6tufAWGHeIJtQpIKBGQK4KNutt
 us3/9tSHKBd8YwEi/9RnVQ==
X-Google-Smtp-Source: APXvYqx+ynBSlgqnWKE4r7VqCKzMalb5FPZcpp7PVoYmQGaUXm4gN7FKLPzlCpmpR3QcYqmpPcjtKQ==
X-Received: by 2002:aca:1e14:: with SMTP id m20mr1388093oic.20.1572909268626; 
 Mon, 04 Nov 2019 15:14:28 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e93sm5785180otb.60.2019.11.04.15.14.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 15:14:28 -0800 (PST)
Date: Mon, 4 Nov 2019 17:14:27 -0600
From: Rob Herring <robh@kernel.org>
To: Manish Narani <manish.narani@xilinx.com>
Subject: Re: [PATCH v5 4/8] dt-bindings: mmc: Add optional generic properties
 for mmc
Message-ID: <20191104231427.GA7606@bogus>
References: <1572588353-110682-1-git-send-email-manish.narani@xilinx.com>
 <1572588353-110682-5-git-send-email-manish.narani@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572588353-110682-5-git-send-email-manish.narani@xilinx.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_151431_214385_515BD7C9 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 rajan.vaja@xilinx.com, nava.manne@xilinx.com, linux-mmc@vger.kernel.org,
 adrian.hunter@intel.com, michal.simek@xilinx.com,
 linux-arm-kernel@lists.infradead.org, jolly.shah@xilinx.com,
 linux-kernel@vger.kernel.org, git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 11:35:49AM +0530, Manish Narani wrote:
> Add optional properties for mmc hosts which are used to set clk delays
> for different speed modes in the controller.
> 
> Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> ---
>  .../bindings/mmc/mmc-controller.yaml          | 92 +++++++++++++++++++
>  1 file changed, 92 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> index 080754e0ef35..87a83d966851 100644
> --- a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> +++ b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> @@ -212,6 +212,98 @@ properties:
>      description:
>        eMMC HS400 enhanced strobe mode is supported
>  
> +  # Below mentioned are the clock (phase) delays which are to be configured
> +  # in the controller while switching to particular speed mode. The range
> +  # of values are 0 to 359 degrees.
> +
> +  clk-phase-legacy:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - minimum: 0
> +      - maximum: 359
> +    description:
> +      Input/Output Clock Delay pair in degrees for Legacy Mode.
> +
> +  clk-phase-mmc-hs:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - minimum: 0
> +      - maximum: 359
> +    description:
> +      Input/Output Clock Delay pair degrees for MMC HS.
> +
> +  clk-phase-sd-hs:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - minimum: 0
> +      - maximum: 359
> +    description:
> +      Input/Output Clock Delay pair in degrees for SD HS.
> +
> +  clk-phase-uhs-sdr12:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - minimum: 0
> +      - maximum: 359
> +    description:
> +      Input/Output Clock Delay pair in degrees for SDR12.
> +
> +  clk-phase-uhs-sdr25:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - minimum: 0
> +      - maximum: 359
> +    description:
> +      Input/Output Clock Delay pair in degrees for SDR25.
> +
> +  clk-phase-uhs-sdr50:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - minimum: 0
> +      - maximum: 359
> +    description:
> +      Input/Output Clock Delay pair in degrees for SDR50.
> +
> +  clk-phase-uhs-sdr104:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - minimum: 0
> +      - maximum: 359
> +    description:
> +      Input/Output Clock Delay pair in degrees for SDR104.
> +
> +  clk-phase-uhs-ddr50:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - minimum: 0
> +      - maximum: 359
> +    description:
> +      Input/Output Clock Delay pair in degrees for SD DDR50.
> +
> +  clk-phase-mmc-ddr52:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - minimum: 0
> +      - maximum: 359
> +    description:
> +      Input/Output Clock Delay pair in degrees for MMC DDR52.
> +
> +  clk-phase-mmc-hs200:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - minimum: 0
> +      - maximum: 359
> +    description:
> +      Input/Output Clock Delay pair in degrees for MMC HS200.
> +
> +  clk-phase-mmc-hs400:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - minimum: 0
> +      - maximum: 359
> +    description:
> +      Input/Output Clock Delay pair in degrees for MMC HS400.

This can be condensed into:

patternProperties:
  
"^clk-phase-(legacy|sd-hs|mmc-(hs|hs[24]00|ddr52)|uhs-(sdr(12|25|50|104)|ddr50))$":

Or if you want to divide them between SD and MMC ones, that would be 
fine for me.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
