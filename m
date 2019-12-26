Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 579DC12AFB8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 00:26:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K9hDpBTeGkB0qo+0LajKHm+WmOs2hy1t1kjB0OUeGvA=; b=V2ww0OnXyPkmKa
	nE1SmaSUZj+bE9If0/alxyPaabO0H7SLroJfcXHEiwit2EsFbGSaxxgJEdOmZVQI8SBH2J55Eh/8i
	CqFxpW80maaqkQ5TkkGy3JYkWapyPCSuSp3WTKEZgLCXQ+8kzKvl86uEEyEbG8Vsa/xhCx/Z5gmXl
	hiBlV46qO1/nhjYzhlRu1EurOGbSkR99oXDyNZXz9hB/uoGMPGO1kpeTKgLUNGdru3SXL3hI7TiZt
	sCO5CvSulBIblQVN+/Y3KkBlkGRmdhv1demJGjKSbaAbybfBYrmnyJzcUZBBU2P7uwnuiui6w341w
	I1xNpWHK6zqAxPYccAxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikcWa-0002QY-F7; Thu, 26 Dec 2019 23:26:36 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikcWS-0002PS-F8
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 23:26:29 +0000
Received: by mail-io1-f68.google.com with SMTP id v3so24437728ioj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Dec 2019 15:26:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LZuxmXzQcdoI42Mq4JA2i4xvs2lzIVFQfZ8EfJUFcq0=;
 b=auujjAicSYvA9vV97VGzzU4WXbnbHqFBs2QeYfvFD6GcXZw8aXlmKABLNCtHErNv8K
 tfAFSsYBNrnfX5wAEMG9R4KMG5TB6JaPrptqyg3301BAFsX16kJW/i7AiHcIwn/18SxX
 M+NjCcoe8OQSwFmqwSvJtpuAaFyXzN27hjGjvzH8qyir2Yz4DndP4TGBzViDeO3s/ZY7
 QF3r3e9uYdFDwDNcxM9BvT1fFv/FhiOSeB7cJx4lCILkPCUbOH3/mNinS0QImaWYBrvY
 W1+dXY122fuIZlMdf8beqrxoi6rYRRHoFIpzO+L6RQhJ516rLYxRpFMcU+Eu+3qG8uxW
 9uMA==
X-Gm-Message-State: APjAAAXdxGsKlvUQrl9fLFrf6yPykZYcbx6XF0vBuLf7HdOC//Wrtn9/
 vHckbmVaem/z82c2SdXxLw==
X-Google-Smtp-Source: APXvYqwqCzA89iI/xF2Ft9CPX5Wc/iIOn5+cdeR3NY72+uSYXHb2Pr8bL2zXpNXwKojRCsGNhQTHaA==
X-Received: by 2002:a6b:7d02:: with SMTP id c2mr20203518ioq.146.1577402786899; 
 Thu, 26 Dec 2019 15:26:26 -0800 (PST)
Received: from localhost ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id t15sm12696417ili.50.2019.12.26.15.26.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Dec 2019 15:26:26 -0800 (PST)
Date: Thu, 26 Dec 2019 16:26:25 -0700
From: Rob Herring <robh@kernel.org>
To: Robert Jones <rjones@gateworks.com>
Subject: Re: [PATCH v4 1/5] dt-bindings: arm: fsl: Add Gateworks Ventana
 i.MX6DL/Q compatibles
Message-ID: <20191226232625.GA2186@bogus>
References: <20191224010020.15969-1-rjones@gateworks.com>
 <20191224010020.15969-2-rjones@gateworks.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191224010020.15969-2-rjones@gateworks.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_152628_506504_360FC6A8 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 23, 2019 at 05:00:16PM -0800, Robert Jones wrote:
> Add the compatible enum entries for Gateworks Ventana boards.
> 
> Signed-off-by: Robert Jones <rjones@gateworks.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index f79683a..a02e980 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -126,6 +126,7 @@ properties:
>                - toradex,apalis_imx6q-ixora      # Apalis iMX6 Module on Ixora
>                - toradex,apalis_imx6q-ixora-v1.1 # Apalis iMX6 Module on Ixora V1.1
>                - variscite,dt6customboard
> +              - gw,ventana                # Gateworks i.MX6DL or i.MX6Q Ventana

Keep entries sorted.

>            - const: fsl,imx6q
>  
>        - description: i.MX6QP based Boards
> @@ -152,6 +153,7 @@ properties:
>                - ysoft,imx6dl-yapp4-draco  # i.MX6 DualLite Y Soft IOTA Draco board
>                - ysoft,imx6dl-yapp4-hydra  # i.MX6 DualLite Y Soft IOTA Hydra board
>                - ysoft,imx6dl-yapp4-ursa   # i.MX6 Solo Y Soft IOTA Ursa board
> +              - gw,ventana                # Gateworks i.MX6DL or i.MX6Q Ventana
>            - const: fsl,imx6dl
>  
>        - description: i.MX6SL based Boards
> -- 
> 2.9.2
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
