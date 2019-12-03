Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 957AC11202B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 00:21:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bdWqqhQ1HHxSywB1CpIy2m/w2Oq0DpOEwR8beSuojR8=; b=JnYUndeYskVgTH
	/sqeXsIHpJI8KQ4OodKLXLe87c4i4HW3Cv09FazEwfghzeSAIJGJF092n1tvbk27HpdOr/u6KNsWC
	ipWkBpUf7cvnwNeG7dqBE+Sf5Hz9fwTkxGaKwVeyEgDWmXGu2X4RulS2cJmt0zji0uRs6RR2NsgfD
	H51hgf4xpjKZ67B7TAFrMh4X4e7KBFnpjAfDx0+FVQf13rZxh37WUnlnA/9z/gX4eTEdhS4zYhLpF
	l2nMHRsHEJeuBcC/hmiMDfQUR2VSIYqEZNM05codggE1p/XBjyWtwQcQBBkk3Ij2vVkl7IMnwAtH3
	dx4JZwOxta95yKXwSqJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icHTs-0005Op-3u; Tue, 03 Dec 2019 23:21:20 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icHTj-0005NU-Bq; Tue, 03 Dec 2019 23:21:12 +0000
Received: by mail-oi1-f194.google.com with SMTP id t25so2799469oij.10;
 Tue, 03 Dec 2019 15:21:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OLIRLr5XywqWPFFuglLlD1BjNumn3WJ8Ne6YKbN5tvs=;
 b=Lx1kiOvWTgFR+Nry+Ji0Gf5ZW4dF0PjNN3+8iqsPmLFXIwLp+dfU9zomsC2eXnvnmN
 eMpFA/VeuDrnYDcEiVR14EdbZPT78Dv1ZnHzIByNxmryyWnI7KygAYAz4jiDfuogcAfC
 r8MnslyY4K8UKDi61uOzXQ6GospKiTXttIt+dDgqU4oXUEqo/61S0rg+a2zLzYQvYPDn
 bfk0Gii7eSlMJpK1fdvhf6N1RAcQBnCzfG4e8vIUkrQQkk2oW3mq3BJhOfxCH/83lR6O
 XOgzpVIuY6dGf27JhSnCzC9Myfu5Q7XGk94ASQt1CbWkdeWMM2SWxJdUbqBWk2TZs3Fu
 9Y9A==
X-Gm-Message-State: APjAAAVdVuSKV6uKq/IekGKbyLeXCSW9B1ON3107jDtm+MKUDFxppTZI
 xH4vFP/bNxxlvuBhKeXRBg==
X-Google-Smtp-Source: APXvYqzxnxMykdi0OVF/YNoTEiUpYFT5/p0zN9KY5kNFKZUG+9whG8bIMuudZJPbuRke4NTBnJ9HPg==
X-Received: by 2002:aca:52c3:: with SMTP id g186mr140649oib.118.1575415270129; 
 Tue, 03 Dec 2019 15:21:10 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id c68sm984963oig.11.2019.12.03.15.21.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 15:21:09 -0800 (PST)
Date: Tue, 3 Dec 2019 17:21:09 -0600
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 2/4] dt-bindings: media: amlogic,gx-vdec: add bindings
 for G12A family
Message-ID: <20191203232108.GA361@bogus>
References: <20191120111430.29552-1-narmstrong@baylibre.com>
 <20191120111430.29552-3-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120111430.29552-3-narmstrong@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_152111_402559_3DB079BD 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mjourdan@baylibre.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 20, 2019 at 12:14:28PM +0100, Neil Armstrong wrote:
> Add bindings to support the Amlogic Video Decoder on the Amlogic G12A
> family.
> 
> For the G12A family, a supplementary clock is needed to operate the
> HEVC/VP9 decoder.
> 
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  .../bindings/media/amlogic,gx-vdec.yaml       | 57 +++++++++++++++----
>  1 file changed, 46 insertions(+), 11 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml b/Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml
> index 878944867d6e..8ea979bb97e6 100644
> --- a/Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml
> +++ b/Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml
> @@ -27,12 +27,15 @@ description: |
>  
>  properties:
>    compatible:
> -    items:
> +    oneOf:
> +      - items:
> +        - enum:
> +          - amlogic,gxbb-vdec # GXBB (S905)
> +          - amlogic,gxl-vdec # GXL (S905X, S905D)
> +          - amlogic,gxm-vdec # GXM (S912)
> +        - const: amlogic,gx-vdec
>        - enum:
> -        - amlogic,gxbb-vdec # GXBB (S905)
> -        - amlogic,gxl-vdec # GXL (S905X, S905D)
> -        - amlogic,gxm-vdec # GXM (S912)
> -      - const: amlogic,gx-vdec
> +        - amlogic,g12a-vdec # G12A (S905X2, S905D2)
>  
>    interrupts:
>      minItems: 2
> @@ -59,13 +62,9 @@ properties:
>  
>    clocks:
>      minItems: 4
> +    maxItems: 5
>  
> -  clock-names:
> -    items:
> -      - const: dos_parser
> -      - const: dos
> -      - const: vdec_1
> -      - const: vdec_hevc

You can leave this here and add the 5th clock along with { minItems: 4, 
maxItems: 5 }.

Then the 'if' schema just needs a 'maxItems: 4'.

> +  clock-names: true
>  
>    amlogic,ao-sysctrl:
>      description: should point to the AOBUS sysctrl node
> @@ -77,6 +76,42 @@ properties:
>      allOf:
>        - $ref: /schemas/types.yaml#/definitions/phandle
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - amlogic,gx-vdec
> +
> +    then:
> +      properties:
> +        clock-names:
> +          minItems: 4
> +          items:
> +            - const: dos_parser
> +            - const: dos
> +            - const: vdec_1
> +            - const: vdec_hevc
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - amlogic,g12a-vdec
> +
> +    then:
> +      properties:
> +        clock-names:
> +          minItems: 5
> +          items:
> +            - const: dos_parser
> +            - const: dos
> +            - const: vdec_1
> +            - const: vdec_hevc
> +            - const: vdec_hevcf
> +
>  required:
>    - compatible
>    - reg
> -- 
> 2.22.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
