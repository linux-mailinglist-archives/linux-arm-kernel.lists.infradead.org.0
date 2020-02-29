Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A66174647
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 11:44:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+vPAfES2bd9Dvyh/Jtnf+7d6Br2o0olUkClfBI++xoM=; b=kTmEE8arrXs7jK
	CWc6UYZV802YEH+8s5RV0uoMoCth9HQ4vesZ0YLOfEKmjf0jIhJxG89o1rK93XVkQkXhxHCF8CTfT
	vW42myVoLCnvyXpd5q9O0SdMFB+/9R3oAhH9A/gM4MuZX2uhh4HYEou3eN31bML8+5PWYJ3V3cezK
	thSNhCQLrIxPcNxCUO5WFnNdTX0Eh1MPwo/v4LNOaLA96OUJWtGm9W69pia9JR7VM04OJkltqngrw
	wt5ZxpcoMDrHZ5XBRWy8/FMmysgRUmyoDTn8TF/nOj/IKKQGWFV/+KC+tMeYR6A44s8gEyK1ctIfb
	70OPDwfuKXzuycvG3pPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7zba-0007vR-Vr; Sat, 29 Feb 2020 10:44:22 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7zbL-0007ss-GF
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 10:44:09 +0000
Received: by mail-pf1-x444.google.com with SMTP id o24so3059987pfp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 29 Feb 2020 02:44:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=SB2zgIhiQZxj/QhdSznnFhbcqQLT0zn4L9QUBfDgryE=;
 b=MUhmg5FGS1EBD6jMzsKu3KwSU6WQCv0D8ZRh11klKyG6dGEGM1Z5GQ9AY85EelgZQc
 I8c02hcXUC+6D3Dtzj9MBOsP01nryezSHBMJjdKNGqpStoRaPqpq6/ggg6KCEJ11mgKe
 mpisWb5fjhgqshqwDMWfxj+sq9i7CJeg+fmAnXr55V5v9DHOZBS/JozfMhfAgS6z/vNn
 cv8Lve04mAAuFXguSIS/ssXFQGFpqB52gfzM2+2X4DAk98Nj+Zske27klr+1Razu9KFm
 LxQCIffqAp7f3V4aYF14gsmbrw2vDxQitXzQ/sghYC7etT9+7g5s7akJB+cCUQi+c83Q
 yl+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SB2zgIhiQZxj/QhdSznnFhbcqQLT0zn4L9QUBfDgryE=;
 b=XeC6O9rso8EWJeN7J0yTOwMlBIu7NexfNdXoZwS59TuKncu1EjyDmyy+6zlhGDDOhs
 OQfufzoJupVhNpjmQHaQWwdNsz9f+gKrYbVFTq6CqgWUae+/b0+QbWHUiv9mjYPDn1pe
 3QcpXEljcO37I6NvCixkOrZut0BqakUgSDCaj798JfllPgBQe+rHdzsflYV9mq5/BWDB
 g4E+qXVH2y/EX+WyM92XLKE+mX+WpjhH9jZxBt0cz1kenewEcYvBcRiJEQbl+B39ZpNy
 ZtPI81LHL14FSXkvtaqxwE03B5swbx1LF62rVKiOhfQCfLpqAFhjd4aBkijMfQ7Y6FYy
 AYlA==
X-Gm-Message-State: APjAAAXofAX8FpK/FMqekurpNzhHZ2gmEFe+blK5GGk6/a2AuZJXl8e7
 oUHOS4yJOalIILohYwUGOF1U
X-Google-Smtp-Source: APXvYqwV8CNh7pfjbCdPlz5eowb4Zc8P0T47nldacmIYks5MMdlgteVAxEM6vUQRGb+e4d44Nl4K2g==
X-Received: by 2002:aa7:8101:: with SMTP id b1mr8940121pfi.105.1582973046778; 
 Sat, 29 Feb 2020 02:44:06 -0800 (PST)
Received: from mani ([103.59.133.81])
 by smtp.gmail.com with ESMTPSA id c2sm5396676pjo.28.2020.02.29.02.44.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 29 Feb 2020 02:44:06 -0800 (PST)
Date: Sat, 29 Feb 2020 16:13:58 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Matheus Castello <matheus@castello.eng.br>
Subject: Re: [PATCH v1 1/2] dt-bindings: arm: actions: Document Caninos
 Loucos Labrador
Message-ID: <20200229104358.GB19610@mani>
References: <20200227201557.368533-1-matheus@castello.eng.br>
 <20200227201557.368533-2-matheus@castello.eng.br>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227201557.368533-2-matheus@castello.eng.br>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_024407_634808_585810D2 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, afaerber@suse.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 05:15:56PM -0300, Matheus Castello wrote:
> Update the documentation to add the Caninos Loucos Labrador
> vendor-prefix and items that were included in the device tree files.
> 

These two should be splitted into separate patches.

Thanks,
Mani

> Signed-off-by: Matheus Castello <matheus@castello.eng.br>
> ---
>  Documentation/devicetree/bindings/arm/actions.yaml     | 5 +++++
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  2 files changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/actions.yaml b/Documentation/devicetree/bindings/arm/actions.yaml
> index ace3fdaa8396..1b131ceb884a 100644
> --- a/Documentation/devicetree/bindings/arm/actions.yaml
> +++ b/Documentation/devicetree/bindings/arm/actions.yaml
> @@ -24,6 +24,11 @@ properties:
>                - lemaker,guitar-bb-rev-b # LeMaker Guitar Base Board rev. B
>            - const: lemaker,guitar
>            - const: actions,s500
> +      - items:
> +          - enum:
> +              - caninos,labrador-bb # Caninos Loucos Labrador Base Board
> +          - const: caninos,labrador
> +          - const: actions,s500
> 
>        # The Actions Semi S700 is a quad-core ARM Cortex-A53 SoC.
>        - items:
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 9e67944bec9c..3e974dd563cf 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -167,6 +167,8 @@ patternProperties:
>      description: Calxeda
>    "^capella,.*":
>      description: Capella Microsystems, Inc
> +  "^caninos,.*":
> +    description: Caninos Loucos LSI-TEC NPO
>    "^cascoda,.*":
>      description: Cascoda, Ltd.
>    "^catalyst,.*":
> --
> 2.25.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
