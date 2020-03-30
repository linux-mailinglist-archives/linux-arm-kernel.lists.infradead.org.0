Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B65EA198453
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 21:24:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fKr8puw6qMldz35PPqt327WZ6kotMjnh76LGS9qFkUk=; b=dHInFaFtqj80of
	6gs/f0IODe/KEUzKWMQwGAUeF0YdbgbJ8UgYF/lQtvQFZA/SoDTK6B6Q+RbpnIYIIrSqElWdIuiQO
	z1gf54vkxXjJJ9aTy9FF6/XlA3HY4eXx4kL3Z4VA2NyZFeybK4GcJkrK4Q2sJMYciQM37/ZXTFlez
	WB1Drgi0xuKzmXPxmAIQcRkxsHHnkqKqaqHGe6s3azyd6tX4ggQi8x25jGI+d60Xuz4FiZrBN4r4y
	ojZem0ZSAP0EHovzIFyHLQxQIFVWL2VEo+O+mM3U73Wf2UlfRRuV9aYtDyj6xt8kdkqD+/Tv5Oi2e
	MFIZa0d6TTVdnu7Oy2tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ00x-00082X-AZ; Mon, 30 Mar 2020 19:24:03 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ00o-00081W-D3
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 19:23:55 +0000
Received: by mail-io1-f66.google.com with SMTP id n10so5019599iom.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 12:23:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MXO0cFSUgdRH+a4P/o/GAi4s4MndCf1pU3SuIpqOxH8=;
 b=I8Y+J2CIbpKQ1Qqmzx4wzA1NgHEs5P+2FRYzWE80jTCAvBxYCIcxrRC7h7TUPKFsMk
 cta4EdFyGV2XMUApbRrc4+cEj9ubjf+AdpuoVguqpeQK9FiQbQ4oKOrMhiTDZ8qaRxOV
 oPPXWV/8pSsz8hsv9i2dAO4GjS4zkK34uqmrYtkBsZna2Fl8aHRFJgDxcZnl3DOnMmF2
 pRDurqdGr0tsAmYqjB8fJcL+PEmINj8Dx+Ep9tuzSNKGMHM45+o55BZAhNbwF6aWYRhP
 OImeSWidd5cykn5MfRBNOGi9ca+1S0lMLdLvvU0JlfZygedQkv7sY+aeKmUGebhfw6uc
 rq3Q==
X-Gm-Message-State: ANhLgQ3QWilV9v9vH5XJFqxnyvZjR/k43oOL//Q/+n8pS2CcSo9ogTIZ
 RQKXrKiz7QAx7lD7gT7CIQ==
X-Google-Smtp-Source: ADFU+vul8Oe41tCjMTU3VB/Pazto4kKTIj+AVWhsXgGw9jz3HDJI0g0/B3oHxwfVXEbonu12CN0a1g==
X-Received: by 2002:a6b:b989:: with SMTP id j131mr12170677iof.6.1585596229713; 
 Mon, 30 Mar 2020 12:23:49 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id p189sm4307507iof.17.2020.03.30.12.23.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 12:23:49 -0700 (PDT)
Received: (nullmailer pid 22585 invoked by uid 1000);
 Mon, 30 Mar 2020 19:23:47 -0000
Date: Mon, 30 Mar 2020 13:23:47 -0600
From: Rob Herring <robh@kernel.org>
To: rentao.bupt@gmail.com
Subject: Re: [PATCH v2 6/6] dt-bindings: usb: document aspeed vhub device
 ID/string properties
Message-ID: <20200330192347.GA6388@bogus>
References: <20200315191632.12536-1-rentao.bupt@gmail.com>
 <20200315191632.12536-7-rentao.bupt@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200315191632.12536-7-rentao.bupt@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_122354_443270_88557BE5 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, openbmc@lists.ozlabs.org,
 linux-usb@vger.kernel.org, taoren@fb.com, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Joel Stanley <joel@jms.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 15, 2020 at 12:16:32PM -0700, rentao.bupt@gmail.com wrote:
> From: Tao Ren <rentao.bupt@gmail.com>
> 
> Update device tree binding document for aspeed vhub's device IDs and
> string properties.
> 
> Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> ---
>  No change in v2:
>    - the patch is added into the series since v2.
> 
>  .../bindings/usb/aspeed,usb-vhub.yaml         | 68 +++++++++++++++++++
>  1 file changed, 68 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml b/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
> index 06399ba0d9e4..5b2e8d867219 100644
> --- a/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
> +++ b/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
> @@ -52,6 +52,59 @@ properties:
>          minimum: 1
>          maximum: 21
>  
> +  vhub-vendor-id:
> +    description: vhub Vendor ID
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - maximum: 65535
> +
> +  vhub-product-id:
> +    description: vhub Product ID
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - maximum: 65535

There's already standard 'vendor-id' and 'device-id' properties. Use 
those.

> +
> +  vhub-device-revision:

Specific to USB, not vhub.

> +    description: vhub Device Revision in binary-coded decimal
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - maximum: 65535
> +
> +  vhub-strings:
> +    type: object
> +
> +    properties:
> +      '#address-cells':
> +        const: 1
> +
> +      '#size-cells':
> +        const: 0
> +
> +    patternProperties:
> +      '^string@[0-9a-f]+$':
> +        type: object
> +        description: string descriptors of the specific language
> +
> +        properties:
> +          reg:
> +            maxItems: 1
> +            description: 16-bit Language Identifier defined by USB-IF
> +
> +          manufacturer:
> +            description: vhub manufacturer
> +            allOf:
> +              - $ref: /schemas/types.yaml#/definitions/string
> +
> +          product:
> +            description: vhub product name
> +            allOf:
> +              - $ref: /schemas/types.yaml#/definitions/string
> +
> +          serial-number:
> +            description: vhub device serial number
> +            allOf:
> +              - $ref: /schemas/types.yaml#/definitions/string

For all of this, it's USB specific, not vhub specific. I'm not sure this 
is the right approach. It might be better to just define properties 
which are just raw USB descriptors rather than inventing some DT format 
that then has to be converted into USB descriptors.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
