Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0527B1F2061
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 21:58:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0uow6ymlH1QcYFCcBPjWJVYzQY0B5xFj61CKHyAD0FY=; b=Qm2eaAppDe7aTl
	uaZLBJUo93m97ggUwPmlImA1rLozGKKV1UgnbhG2A764+9va4BFaFmCrOwZSuu5S1+WoOWVlZ9/MS
	kFcLuIOVQwtV61YJEFmDN2PehV6DdPAo04Bnwkh6RYhJ62BeY/+NI9ygszPfn3eNbOKz8GiyulZza
	XpOpVe2WxbYqcB/b3Eaw2IeUrMfbUzk6rM6hBDXvTFwxpUgrm21avXOBaHSwsqGC++f1FLVAfrr1k
	PjBmSED11cFYRv0ocRpntsD6fcgaq3P1/Knb8KgBtSIu9/jLk6vPM5kv4mcPm0T66LRBmuTdD/D6V
	c/IuKxrxF28ij6/OUD4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiNua-0006I6-In; Mon, 08 Jun 2020 19:58:24 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiNuT-0006Hi-NE; Mon, 08 Jun 2020 19:58:19 +0000
Received: by mail-wm1-x343.google.com with SMTP id r9so722358wmh.2;
 Mon, 08 Jun 2020 12:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=hdQaIlY7CCtvVuS9ppbF0BzHnZFr+mv1ZVx/h1Baqkk=;
 b=i9lBX/+XoJVZ4smkO6RXjNuKvBeBSn7Jezy6IKlbX1vzVqHheo10kSfSIHx8hKrfNy
 al3momOoRbDC/qO/NExvm5ij8QaHZP+qxrY85+7iDCCflNQkQZg+GxGlU0OG/WBD6n9N
 hMHlAd3B4WPZe3FxPBwOX92MBq5DQVlV0YZ/wUQEhiPh6ghBqmUBROnYhApUugkxP8X7
 Nbgl6pWLBWOTMeVJs84+sXpXhkfmS7nbuXTKQSy0/27MxFqc39p3j8IXWS2PPuwwbNvu
 C5MHFDJuEuh83QQmyJvuGP0MmyJ0pfpoVzwlcCaG3coppPYlXTCyCvHHVK+Ll7zPJ++f
 kuWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hdQaIlY7CCtvVuS9ppbF0BzHnZFr+mv1ZVx/h1Baqkk=;
 b=a0arNCdoYCPRYvGp+YK+zkNhKnkcXklFrXQmvNfpMxgpwmsEojL+Ku2lfGZo0Wuj1V
 qX1/XaDeyrN5iZMeXemNtczhBx6qTDtsQupAf9xL2CPbQxwtpsUWgBalAjOj3dXZivtM
 EpapqbV98x+FPssDDXAYAo/7aeZ5Plx9ACAh/09KpyaR+nCZk4OwHuTw6SLYoO8iKs6c
 WqzgCXEfkqokvrr1fU8o7ep0P8tWlhjUMJzEUUtqopPffd9bzL/LRffRz8/ID2fdpzOD
 sIB5RXV688+qaF6CPm+wdz4u4Ti5wzrBC86ZQ8M2/5OqC3IPW0NyrDChZImn4yIEs4bM
 TfZQ==
X-Gm-Message-State: AOAM533qba+dxzaRGaSzTSC/cd9ceQDaNik+4IwZgZgIoS8SECaiqSq+
 jrkyDCIQ3lU+VaUq6Xml+Ng=
X-Google-Smtp-Source: ABdhPJypEeqfejRUltyYbz5n5bW5+Ans7YR1WBmQV7ByI2tOOKYM8eGJckH5rGeMzXQrm13AkAWBIw==
X-Received: by 2002:a7b:cbd9:: with SMTP id n25mr349108wmi.30.1591646295437;
 Mon, 08 Jun 2020 12:58:15 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 e10sm782956wrn.11.2020.06.08.12.58.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Jun 2020 12:58:14 -0700 (PDT)
Subject: Re: [PATCH 1/9] dt-bindings: reset: Add a binding for the RPi
 Firmware USB reset
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, f.fainelli@gmail.com,
 gregkh@linuxfoundation.org, wahrenst@gmx.net, robh@kernel.org,
 mathias.nyman@linux.intel.com, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-usb@vger.kernel.org,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
References: <20200608192701.18355-1-nsaenzjulienne@suse.de>
 <20200608192701.18355-2-nsaenzjulienne@suse.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <ffc9ec9e-bd1c-a8dd-8a68-a15bf95c919b@gmail.com>
Date: Mon, 8 Jun 2020 12:58:09 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200608192701.18355-2-nsaenzjulienne@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_125817_805482_FA5B07A4 
X-CRM114-Status: GOOD (  18.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: lorenzo.pieralisi@arm.com, tim.gover@raspberrypi.org, helgaas@kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/8/2020 12:26 PM, Nicolas Saenz Julienne wrote:
> The firmware running on the RPi VideoCore can be used to reset and
> initialize the board's xHCI controller. The reset controller is passed
> to the PCI device through the DT, hence this binding.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
>  .../arm/bcm/raspberrypi,bcm2835-firmware.yaml | 21 +++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
> index b48ed875eb8e..8f9d0986c28f 100644
> --- a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
> +++ b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
> @@ -39,6 +39,22 @@ properties:
>        - compatible
>        - "#clock-cells"
>  
> +  usb-reset:
> +    type: object
> +
> +    properties:
> +      compatible:
> +        const: raspberrypi,firmware-usb-reset

I would make this less USB centric, even if this is the only consumer of
the reset controller for now, there could, in premise be other blocks
that require a reset (e.g.: V3D) that would involve going to the VPU
firmware because of various requirements (security, register blocking etc.).

> +
> +      "#clock-cells":

Did not you mean #reset-cells here?


> +        const: 0
> +        description: >
> +          There is only one reset line available, so no need for cell decoding.
> +
> +    required:
> +      - compatible
> +      - "#reset-cells"
> +
>      additionalProperties: false
>  
>  required:
> @@ -55,5 +71,10 @@ examples:
>              compatible = "raspberrypi,firmware-clocks";
>              #clock-cells = <1>;
>          };
> +
> +        usb_reset: usb-reset {
> +            compatible = "raspberrypi,firmware-usb-reset";
> +            #reset-cells = <0>;
> +        };
>      };
>  ...
> 

-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
