Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A81DD1D04BF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 04:19:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qsyObDSha2G2W9tLcqW0iBVtuqePARtPS8YcqEdKc7g=; b=nEoQZ7znDkqpML
	YoVB37FfzylL/4CCkQhmM1+31BGbn6hgjSm0Fiof9hXWCfFLewsF2owfhfF/kd572YqZPKCG9sRr/
	P7bxMgYsvIb5SwGXUFvOKaH/bQN/D2VlD4li1jq9YhNSP/l2wuQMgD0v5VM7kU2mf1znhNTo6ROyA
	p3fMqqPMUJ3bHkd3jP1cucgzBj0u6Gq9my8lnTCVWMurwRV/ua5aHwy0oHSyIdfrR+0By4n5At6ry
	JhCywL+Ls8CcUlGsIGjfm0LFzXnVpcWqyMfVO1GIwTpdYXGgWsDm4XqJhqvUZBEPE8QlDunUTQaQp
	0UxavPJAGPcnsESY+Cug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYgzo-0006ZI-RY; Wed, 13 May 2020 02:19:44 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYgzf-0006Yf-8H
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 02:19:37 +0000
Received: by mail-oi1-f195.google.com with SMTP id i13so20130187oie.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 19:19:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hVIvDXLUWV7kCm1sjwCAhS0B4yNvu2YKfopgdqGQAZM=;
 b=HLTPvwKkrZLP8jEVDeDCBtXZ7m4ZoBlKB2QZa59xrDOy67+RdJELJLwMMRF3hEgKi3
 EqPpAI78YA/w9E7yfdy54uYnpfyb1oruSh2dZZ5sVe6riXLfECGNcFVzEPGjSJliBoVF
 XaceL2RBF3IO9IHRGdXgqCHtVVa5VLHt1ohDRrRmgTqbTaBD9wFgjKAM9kghV+NEJK4O
 EbXIt07sZNVgmlyjQ//rn+sBAVNiUO3Nx7wYyVqniTvhcRdnBWh9jkGBNBRKUUoPiK3P
 BujUeVf/Dl6w7V7KTadR5L2B/YdsMBndJSYpmVk7D75xvd4REW/VeVd3mHmUX0fMzLnO
 g9DA==
X-Gm-Message-State: AGi0Pub00pD8RItI+kuix/yRdmtB3QWkPxuccnZQPbArbjjtuh6y7mOu
 sxPlI/KDSsULezYxxsB0MTG7dzsHCg==
X-Google-Smtp-Source: APiQypJpNb4ewDOcjTfOthSaYZtYSP9GLgvpWY9I43vl5aq8csUZu6D+yKwBUHo5BLkimepu0pqGvw==
X-Received: by 2002:a05:6808:24e:: with SMTP id
 m14mr24102696oie.116.1589336373601; 
 Tue, 12 May 2020 19:19:33 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h24sm3910147otj.25.2020.05.12.19.19.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 19:19:33 -0700 (PDT)
Received: (nullmailer pid 15333 invoked by uid 1000);
 Wed, 13 May 2020 02:19:32 -0000
Date: Tue, 12 May 2020 21:19:32 -0500
From: Rob Herring <robh@kernel.org>
To: Alain Volmat <alain.volmat@st.com>
Subject: Re: [PATCH 3/4] dt-bindings: i2c-stm32: add SMBus Alert bindings
Message-ID: <20200513021932.GA9172@bogus>
References: <1588657871-14747-1-git-send-email-alain.volmat@st.com>
 <1588657871-14747-4-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588657871-14747-4-git-send-email-alain.volmat@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_191935_839566_6602D06E 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com, wsa@kernel.org,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 07:51:10AM +0200, Alain Volmat wrote:
> Add a new binding of the i2c-stm32f7 driver to enable the handling
> of the SMBUS-Alert
> 
> Signed-off-by: Alain Volmat <alain.volmat@st.com>
> ---
>  Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml b/Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml
> index b50a2f420b36..04c0882c3661 100644
> --- a/Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml
> +++ b/Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml
> @@ -36,6 +36,10 @@ allOf:
>                  minItems: 3
>                  maxItems: 3
>  
> +        st,smbus-alert:
> +          description: Enable the SMBus Alert feature
> +          $ref: /schemas/types.yaml#/definitions/flag
> +

We already have smbus_alert interrupt. Can't you just check for this in 
the slave nodes and enable if found?

>    - if:
>        properties:
>          compatible:
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
