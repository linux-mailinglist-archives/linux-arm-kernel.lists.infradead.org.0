Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B605E882F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 13:29:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CiboUvjjbqrdFZyo1o0wF8CfHtBqsg1UgTg6FL9/nH8=; b=lTvuzLvSU/dpbd
	6uPBEgcSJzkStgkx6L31YAvKV/8q5uPIdyFew2j/LeFDbuJGF9HniHM38x5eWju7eK30stwfye2Gp
	+oJFwGc/2Urk0e4xKGVYkB8nDmXGcaJb9lrLXuaalLcz3743Ngf/g4R85R0GPZ8TtrGUXr6k6Iz2k
	g/duR8ZSVoAGjzOQ9AMSMtg6+6WQeUiuCldef+L0jKc/4X6j1zl/Nl4DAoRjy5d3VrJiuuPkzT7cF
	6bPA0UeCT20aFM0G2fWiUeKatT6DK0Hsw+xznSJx1KX4fpGyr/pNam9h1vQmpTEN4fWquypzFXdBk
	nuLYor3KGaP0Vvoy+VtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPQdD-0004Oq-58; Tue, 29 Oct 2019 12:29:51 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPQd0-0004Ns-9A
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 12:29:39 +0000
Received: by mail-oi1-f195.google.com with SMTP id v138so8742876oif.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 05:29:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=okLPsosnjsIdAglbOpT+46TAv0woYLu5g4KKw1XBUMA=;
 b=gfCgHEthKg1H8qiQhuRWgAYMiPKY3up9SI/05oxlK/9HaY2YCr0v65A3oVHVAjNK4w
 2FxZ88o0PPTO2sdKZv/QBJH0QhHiXPkbSdMmOoO3K+lIJazWNLJhcomTs+V5RzF0GdmJ
 UfYhOAm6j8o2rbs1z4djIEqgkz2gq2/tOskuzy85UxIaHpebtQXwzAcFqHhfwqN42Azn
 PCOauwVTXjs+Qy5OaiQI92w9LYXEuSvm4bA4mWoZ23n5AZpIiATMp0y4dY1H2o9Wmh8C
 0Vc53pbrM9PYLnKDrmzgqEkPsBJJpNFwCFQ5spbctSDnd+eH/OACIGU7osfoOhjrIgob
 jDqw==
X-Gm-Message-State: APjAAAXPCBo6/106XHVwbBLaVDN/GUeN6Oy+nxfra6OAkBrtjijSIUWk
 LjIkLRZK0lr0ZAXV40NUkw==
X-Google-Smtp-Source: APXvYqyO8DH2IEhStv2gSlye9+VbvTmQX6+T9WxWt66DaOIg31GxlTrzat5+Bsvuee/7K8GJyRccXw==
X-Received: by 2002:aca:4896:: with SMTP id v144mr3970672oia.16.1572352176888; 
 Tue, 29 Oct 2019 05:29:36 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m4sm4653250otm.14.2019.10.29.05.29.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 05:29:36 -0700 (PDT)
Date: Tue, 29 Oct 2019 07:29:35 -0500
From: Rob Herring <robh@kernel.org>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: at91: Document Kizboxmini boards
 binding
Message-ID: <20191029122935.GA8412@bogus>
References: <20191018140304.31547-1-kamel.bouhara@bootlin.com>
 <20191018140304.31547-2-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018140304.31547-2-kamel.bouhara@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_052938_320520_4EF39E0E 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 04:03:03PM +0200, Kamel Bouhara wrote:
> Document devicetree's bindings for the SAM9G25 Kizbox Mini boards of
> Overkiz SAS.
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
>  .../devicetree/bindings/arm/atmel-at91.yaml        | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> index 1e72e3e6e025..666462988179 100644
> --- a/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> +++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> @@ -35,6 +35,20 @@ properties:
>                - atmel,at91sam9x60
>            - const: atmel,at91sam9
>  
> +      - description: Overkiz kizbox Mini Mother Board
> +        items:
> +          - const: overkiz,kizboxmini-mb
> +          - const: atmel,at91sam9g25
> +          - const: atmel,at91sam9x5
> +          - const: atmel,at91sam9
> +
> +      - description: Overkiz kizbox Mini RailDIN
> +        items:
> +          - const: overkiz,kizboxmini-rd
> +          - const: atmel,at91sam9g25
> +          - const: atmel,at91sam9x5
> +          - const: atmel,at91sam9

These 2 can also be combined into 1 entry.

> +
>        - items:
>            - enum:
>                - atmel,at91sam9g15
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
