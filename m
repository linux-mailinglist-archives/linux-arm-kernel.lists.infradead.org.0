Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8051CF7E0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 16:52:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rnUln1CzwTh/4GIpsP8//+vbP02tfTjRBztwJTwXJw8=; b=cuAUaQpB6np890
	RLadwJfEt9AFdEl/N0tInsrWJufV9C6s2yC+uftDhc+wPgTziNKnCjFtyoDpaMjFdyMZ8qOPsOFto
	pHih1eFLf1s7Wmjy4UQyweak+0Quwa+gQOwBL6SVvN7FJEsM7eE9S2kXNXQkXX75JIbPDx0xxfjSO
	7K/e+yNZJPawBGy0vUYrBQlDPvny7YISYLevTRnQdlxwNK2bBzkmEmwRCNbUy3b/y9oaKvQ6H+yCM
	7bnrkZHaxdHuAGULtX+B0iICVAZRsnHoxqOF2Z5fs9jVCamWQa5olAbtQDq+zTnJDec2tV56TnWRY
	AGp+9+LBpqb3lWtTOLMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYWGB-0001JS-7w; Tue, 12 May 2020 14:51:55 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYWFv-0001IC-7j; Tue, 12 May 2020 14:51:40 +0000
Received: by mail-ot1-f67.google.com with SMTP id 72so10726788otu.1;
 Tue, 12 May 2020 07:51:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+FFTVIdRJUiPRt6W0nlVnf55I2F6cDb0ZOrP06HUV2I=;
 b=ocFgPUTf3Y7AvynEvdUlB0qvTm0NgDO+l2bsEEiKPvH8uIn/kSxWfWfwSUPb/LRYXY
 0FM2NysipkNDvdMxmRFCAPWL/a/USrW4MR9p+wuwriI/ORrEAxq0Yqs6Oa2LDmOg0RTQ
 Q4govN7pnCTjHqiveCOuLhAY2Az41zu/eiZtMXNfYd+lUGPr2v8GiHno8GsuJCH70hDM
 S812wvvr/zO2LZbnCR8ZGc28xYrTAjFDN3FHo/wqkAwPuBzF452RObnTTWFd5wOxtTZp
 +q94PUaM2ZMuZGwiR7KvzCFJdFJLiE0uTx/LZR/+ngqNexgxIAdGOH+ASVV5kKhjI6gp
 pQ/w==
X-Gm-Message-State: AGi0PuZmM2iiUmM2WNuT4N3PsWP1/JqztFWRQVbo2c+CQZtP0duY/R5x
 mrsXr2yjowEQ6tEUck41tw==
X-Google-Smtp-Source: APiQypIMtahsMEYjmV8Fru5Ib4Vy3CKGcEFvaBi79VV4D8sXUnBPZwpbYCnBV8pQAm5P8MdHfaaPBA==
X-Received: by 2002:a9d:2605:: with SMTP id a5mr16527573otb.259.1589295097601; 
 Tue, 12 May 2020 07:51:37 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id d64sm296494oig.53.2020.05.12.07.51.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 07:51:36 -0700 (PDT)
Received: (nullmailer pid 21890 invoked by uid 1000);
 Tue, 12 May 2020 14:51:35 -0000
Date: Tue, 12 May 2020 09:51:35 -0500
From: Rob Herring <robh@kernel.org>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH RFC v2 01/11] dt-bindings: net: meson-dwmac: Add the
 amlogic,rx-delay-ns property
Message-ID: <20200512145135.GA16551@bogus>
References: <20200429201644.1144546-1-martin.blumenstingl@googlemail.com>
 <20200429201644.1144546-2-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429201644.1144546-2-martin.blumenstingl@googlemail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_075139_275905_D0825D8F 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, jianxin.pan@amlogic.com,
 devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 10:16:34PM +0200, Martin Blumenstingl wrote:
> The PRG_ETHERNET registers on Meson8b and newer SoCs can add an RX
> delay. Add a property with the known supported values so it can be
> configured according to the board layout.
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  .../bindings/net/amlogic,meson-dwmac.yaml           | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml b/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
> index ae91aa9d8616..8d851f59d9f2 100644
> --- a/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
> +++ b/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
> @@ -67,6 +67,19 @@ allOf:
>              PHY and MAC are adding a delay).
>              Any configuration is ignored when the phy-mode is set to "rmii".
>  
> +        amlogic,rx-delay-ns:
> +          $ref: /schemas/types.yaml#definitions/uint32

Don't need to define the type when in standard units.

> +          enum:
> +            - 0
> +            - 2
> +          description:
> +            The internal RGMII RX clock delay (provided by this IP block) in
> +            nanoseconds. When phy-mode is set to "rgmii" then the RX delay
> +            should be explicitly configured. When not configured a fallback of
> +            0ns is used. When the phy-mode is set to either "rgmii-id" or

'default: 0' expresses this.

> +            "rgmii-rxid" the RX clock delay is already provided by the PHY.
> +            Any configuration is ignored when the phy-mode is set to "rmii".
> +
>  properties:
>    compatible:
>      additionalItems: true
> -- 
> 2.26.2
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
