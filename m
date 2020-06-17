Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7919A1FD90A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 00:40:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rya4S8lQlWY3c+fdevVbJSBocMenrpnAOSPVKKAbukU=; b=KOBvEu0NKOBQ7z
	ZtsnaVuiLCKNX3trTtV+H3txh2B71RMop7OkljzJ8bbuSl1fmdfgSz6xcUMchqddPWUX4Up2HfroG
	/f6nZxoTQRw8F5Tr/0pJJOh7UA/2aqekbGbuaQXLfrrbjjgU8BJiCR5kYffLmox0M6lRdbvpEQY5y
	Bt5jsAJKDQkxAevH3/eT01L3UiYUeYMj8tnM+cWJHDTrbj2JMuH0WjMV7Ns++R4IjJ0FSbWU8+lXO
	MhwxVuHTWe3c0/J+WlkJJ13lZG4vq+V2El7mdMOlH+MC5yfhNrCEj8nJ2DXrArkKIMXwOkZ+g6gzv
	RD8eBuCq4OiaMiy8kQCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlgjE-0001A1-Q9; Wed, 17 Jun 2020 22:40:20 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlgir-00019Z-L7
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 22:39:58 +0000
Received: by mail-io1-f67.google.com with SMTP id w18so4879575iom.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 15:39:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=w/0XRrWZ/TEBr4RUvpfLqtHCp+br8TfRsV/u8yEznsc=;
 b=cEkG2JT/foMy9kmxeDpRJL3XFBiWzaK70G34VcOiG1KQ8mxUjRtr5A98NLUvk2LOza
 ztPg0OF4R7U97aq9z2h943Z49YjHQe0Ps2P1uD59VgntyZCOYLQN6f/BjOHYoUpWrWIB
 SWSqkxiQVKiI5ldpRhaHQUaXBf/JLP6LGOYv5SBlAhIDBBZEGEiWeHz24v0kikHDkDAC
 +cgQ4/7yx36aVVJGHDIWtp+CXSl1mloMVS1MRalax/KbwJ9Sham4qCnRp23LBpn4jdJ0
 TZibaVAdbMUFJB0mYESKn65M5p4Zq6r2fd/99hAJiEnRuAdJM4bT51vO+tOUbiZ5SS6H
 Ln+Q==
X-Gm-Message-State: AOAM530fYBDcrC2MwAPuuEDTMw7tb93H/xcWXmZhVysyHjn6fV3aNTA8
 NioMEeH1gv4DmL73d7fyxg==
X-Google-Smtp-Source: ABdhPJzDXYDIpACDxBvujy5MufeVT3XLKfM2y8iU9whiQUjkAGUKbIu5oYvycaqq2ZysLIV9y9O44w==
X-Received: by 2002:a05:6602:15c8:: with SMTP id
 f8mr1793105iow.183.1592433596862; 
 Wed, 17 Jun 2020 15:39:56 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id q5sm535000ile.37.2020.06.17.15.39.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 15:39:56 -0700 (PDT)
Received: (nullmailer pid 2969158 invoked by uid 1000);
 Wed, 17 Jun 2020 22:39:55 -0000
Date: Wed, 17 Jun 2020 16:39:55 -0600
From: Rob Herring <robh@kernel.org>
To: Luca Ceresoli <luca@lucaceresoli.net>
Subject: Re: [PATCH 4/5] dt-bindings: fpga: xilinx-slave-serial: add optional
 INIT_B GPIO
Message-ID: <20200617223955.GA2967317@bogus>
References: <20200611211144.9421-1-luca@lucaceresoli.net>
 <20200611211144.9421-4-luca@lucaceresoli.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200611211144.9421-4-luca@lucaceresoli.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_153957_691535_E642F2D8 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-fpga@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 Moritz Fischer <mdf@kernel.org>, Anatolij Gustschin <agust@denx.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 11, 2020 at 11:11:43PM +0200, Luca Ceresoli wrote:
> The INIT_B is used by the 6 and 7 series to report the programming status,
> providing more control and information about programming errors.
> 
> Signed-off-by: Luca Ceresoli <luca@lucaceresoli.net>
> ---
>  .../devicetree/bindings/fpga/xilinx-slave-serial.txt       | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/fpga/xilinx-slave-serial.txt b/Documentation/devicetree/bindings/fpga/xilinx-slave-serial.txt
> index 9f103f3872e8..a049082e1513 100644
> --- a/Documentation/devicetree/bindings/fpga/xilinx-slave-serial.txt
> +++ b/Documentation/devicetree/bindings/fpga/xilinx-slave-serial.txt
> @@ -16,6 +16,10 @@ Required properties:
>  - prog_b-gpios: config pin (referred to as PROGRAM_B in the manual)
>  - done-gpios: config status pin (referred to as DONE in the manual)
>  
> +Optional properties:
> +- init_b-gpios: initialization status and configuration error pin
> +                (referred to as INIT_B in the manual)

Don't use '_' in property names:

init-b-gpios

> +
>  Example for full FPGA configuration:
>  
>  	fpga-region0 {
> @@ -40,7 +44,8 @@ Example for full FPGA configuration:
>  			spi-max-frequency = <60000000>;
>  			spi-cpha;
>  			reg = <0>;
> -			done-gpios = <&gpio0 9 GPIO_ACTIVE_HIGH>;
>  			prog_b-gpios = <&gpio0 29 GPIO_ACTIVE_LOW>;
> +			init_b-gpios = <&gpio0 28 GPIO_ACTIVE_LOW>;
> +			done-gpios = <&gpio0 9 GPIO_ACTIVE_HIGH>;
>  		};
>  	};
> -- 
> 2.27.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
