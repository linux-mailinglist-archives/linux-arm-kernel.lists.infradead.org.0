Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E321135BE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 20:32:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BcCpACuv+qnVMKneA227zj5EtRb/Gv/B6MA9+/y7gpU=; b=pOXsZ2DqbEPp2i
	WYdxEgjJ2k/ey/sGEj4xLirT1+ovqHKOh+KwWMvRKw6WEP0vEWqG0XOD5uHCOkuS6G9ebZHaGb1ko
	yuxi76thT0qVtPqal8T+eRR3W27qfMKaSAKKhX7K3SkoKOgR8Q+o9xwkc2wwg0UX/Q+9gLGXnc+HO
	cAEMv449njG4/dpyVm4yo/PfOICksfiRXeJ8opVo/To0NwTqEKtY+GjY1eMP96OjzYmM6P+vz/ElR
	Dae8Zu6oSsy/M6ODTLTR29h8DwATlwXZASeuRPZ4ZRDCl0lRkWrNGqMqd0UTwXb+97flQug1sZUdB
	k6EIrv0vFaMwVWL0K34w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icaOH-0007bx-QE; Wed, 04 Dec 2019 19:32:49 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icaOA-0007b6-4x; Wed, 04 Dec 2019 19:32:43 +0000
Received: by mail-oi1-f196.google.com with SMTP id v140so388090oie.0;
 Wed, 04 Dec 2019 11:32:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VIykNz8gTrjJYYcuHvCZ7rZIZIyIF9AyyoN6mQ8XTak=;
 b=UDtX8vV3NK5oARrve34waOeMdo2ri9SF0P4TpamReVSzYJZdCGUhkNgPG/oXF4ybnT
 cGxmtB1Gcw4WHhPmfagIAeBdSP9ypb8qvxeLPFG0BokyooShgDj0pUxKD9Gf7v58V1RS
 X9glbTFZH/njBRhljym9LgaYUcyY4usbTx3ItLpsD7JPTpc05sKCCHet4BGd+t6b6+8S
 DIXHCYihZhMdNm9jAx1qQQUgv8tkMFUH0Y0bBcnloa876goix07lB9Bl0td2Q6MDYWrN
 QwSzZB3uXUUq0kOqxQVQ0H95gThCNjoCKnRdF0io8Lin8lV2W7IxA1Sn6/kAGfWiXwlJ
 A86g==
X-Gm-Message-State: APjAAAXZfUMs34CwMGCzVXv7S5ciiY/C1pvZ4BY550Lyrk8+l/F0DU73
 Wry/VfoQjRsSMfNoTjP10A==
X-Google-Smtp-Source: APXvYqyL9rITgSoXHv8RFYgfyg9XG3viSLqSKUMigSf5Mv7C3OVPAyHFxBK3gRgkRj3Xsvy21/dcQw==
X-Received: by 2002:a54:4781:: with SMTP id o1mr3877662oic.117.1575487961356; 
 Wed, 04 Dec 2019 11:32:41 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j25sm2483560otl.71.2019.12.04.11.32.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 11:32:40 -0800 (PST)
Date: Wed, 4 Dec 2019 13:32:40 -0600
From: Rob Herring <robh@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: arm: rockchip: Add VMARC RK3399Pro
 SOM binding
Message-ID: <20191204193240.GA6772@bogus>
References: <20191121141445.28712-1-jagan@amarulasolutions.com>
 <20191121141445.28712-2-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121141445.28712-2-jagan@amarulasolutions.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_113242_192137_5FEB751E 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Tom Cubie <tom@radxa.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Akash Gajjar <akash@openedev.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 21, 2019 at 07:44:41PM +0530, Jagan Teki wrote:
> VMARC RK3399Pro SOM is a standard SMARC SOM design with
> Rockchip RK3399Pro SoC, which is designed by Vamrs.
> 
> Since it is a standard SMARC design, it can be easily
> mounted on the supporting Carrier board. Radxa has
> suitable carrier board to mount and use it as a final
> version board.
> 
> Add dt-bindings for it.
> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v2:
> - none
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 45728fd22af8..51aa458833a9 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -526,4 +526,9 @@ properties:
>          items:
>            - const: tronsmart,orion-r68-meta
>            - const: rockchip,rk3368
> +
> +      - description: Vamrs VMARC RK3399Pro SOM
> +        items:
> +          - const: vamrs,rk3399pro-vmarc-som

Why do you need this? You just override it in your dts files, so it is 
not really used. Perhaps the top-level should have all 3 compatibles? If 
so, then the schemas are wrong.

> +          - const: rockchip,rk3399pro
>  ...
> -- 
> 2.18.0.321.gffc6fa0e3
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
