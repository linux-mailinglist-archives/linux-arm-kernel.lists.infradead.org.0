Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B6C13C858
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 16:50:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bb75PNpeTis9DkcppKgiUokAo8mui1TDQjQ9n3Xy0Hk=; b=YK4j2yHoqJUI22
	2ibmDqyDAkxU9W7T2gP9BwbwW802cbtpdg21HJ01rVr4cRC7EeXJdnTSRa1VFK3adJ8UeN97gOWSk
	yyG5cZTbwav816uFiewKfB+u+QDnI50NLeNyMS95WraahAL0dHaaVjir4dTTR2BygwOTDIwS/WEXw
	lzebMJf98P4jHKdAh20By7eq12uFHvqdTKmn1fmyhTqW/C1PoIIenNtUMFMIvvwf+a1DJrHdxFS5B
	g9B0j4TRRx0NvwxtqbAmTTxY/MQEAP6fwRiiT2KWeCNTzFKBNDu0EJdi8egjpNEYsdVJUkfSxh/Ld
	s7QYjDN8zte3hYhLyHlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irkvx-0003lY-8P; Wed, 15 Jan 2020 15:50:17 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irkvk-0002uF-G3
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 15:50:09 +0000
Received: by mail-ot1-f66.google.com with SMTP id k14so16519275otn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 07:50:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=B7DX59sNSuvGuHSzjzaWJDesXQ6glcdz/pP97LB2HkM=;
 b=uHzxfbWEGZTerI26RKpGT0p0fWdybw35j+d7EGMnLM+MDBwZKm4vx+7SZOMiqYaltE
 G27GpfiEJVL23hQtr3sRr48xwjM8Trqu9HlJYQ/F9dBhvH1ulE5A5HeXAZHwDBV/B9L4
 ZfCMy9QCBscjSFrjApoYw4gnF7BH37VvL3dE7/B6j2BvEL2Lv3TEqg2WFwN82UlOj/Ou
 xBuYiUtA07YMN4dNBACwRp3EDtU9Iq//hYmeTCq6FDHq5XkGa0Wiwc9RgRd3AQD3PshK
 fGZhL/UDd4rJX5PQAZqYcKHtJeYdFoKkgbeEno9IEoKpFARbmCKOUrVm7+XSJ5eY3QAw
 DUOQ==
X-Gm-Message-State: APjAAAVqPgrVG9zR5zDy2cPZ6usSjmvzfMvNj01vAVId+ascKsWqRjYd
 V3Ysg6qdjHpHPx9XrIUFjenkiQ4=
X-Google-Smtp-Source: APXvYqxgmXyMJX/KNvymK/ouDHfr+WKg06Y5JLXqsLzIYCQbvnYRUwQHvnfHhYYkYByq7Gbz7vUJZQ==
X-Received: by 2002:a05:6830:1515:: with SMTP id
 k21mr3029382otp.177.1579103403442; 
 Wed, 15 Jan 2020 07:50:03 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a65sm6655061otb.68.2020.01.15.07.50.02
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 07:50:02 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 22040c
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Wed, 15 Jan 2020 09:43:35 -0600
Date: Wed, 15 Jan 2020 09:43:35 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 4/7] dt-bindings: spi: imx: Add
 i.MX8MM/i.MX8MN/i.MX8MP compatible
Message-ID: <20200115154335.GA15650@bogus>
References: <1578893602-14395-1-git-send-email-Anson.Huang@nxp.com>
 <1578893602-14395-4-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578893602-14395-4-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_075004_554991_8A6C7ECE 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, ulf.hansson@linaro.org, marcel.ziswiler@toradex.com,
 angus@akkea.ca, srinivas.kandagatla@linaro.org,
 manivannan.sadhasivam@linaro.org, leonard.crestez@nxp.com, festevam@gmail.com,
 richard.hu@technexion.com, andrew.smirnov@gmail.com, rabeeh@solid-run.com,
 Linux-imx@nxp.com, devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 broonie@kernel.org, daniel.baluta@nxp.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 rjones@gateworks.com, cosmin.stoica@nxp.com, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, vkoul@kernel.org,
 kernel@pengutronix.de, dmaengine@vger.kernel.org, jun.li@nxp.com,
 shawnguo@kernel.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 13, 2020 at 01:33:19PM +0800, Anson Huang wrote:
> Add compatbile for imx8mm/imx8mn/imx8mp.

checkpatch reports a typo.

Otherwise,

Acked-by: Rob Herring <robh@kernel.org>

> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> New patch
> ---
>  Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt b/Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt
> index 2d32641..33bc58f 100644
> --- a/Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt
> +++ b/Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt
> @@ -10,7 +10,10 @@ Required properties:
>    - "fsl,imx35-cspi" for SPI compatible with the one integrated on i.MX35
>    - "fsl,imx51-ecspi" for SPI compatible with the one integrated on i.MX51
>    - "fsl,imx53-ecspi" for SPI compatible with the one integrated on i.MX53 and later Soc
> -  - "fsl,imx8mq-ecspi" for SPI compatible with the one integrated on i.MX8M
> +  - "fsl,imx8mq-ecspi" for SPI compatible with the one integrated on i.MX8MQ
> +  - "fsl,imx8mm-ecspi" for SPI compatible with the one integrated on i.MX8MM
> +  - "fsl,imx8mn-ecspi" for SPI compatible with the one integrated on i.MX8MN
> +  - "fsl,imx8mp-ecspi" for SPI compatible with the one integrated on i.MX8MP
>  - reg : Offset and length of the register set for the device
>  - interrupts : Should contain CSPI/eCSPI interrupt
>  - clocks : Clock specifiers for both ipg and per clocks.
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
