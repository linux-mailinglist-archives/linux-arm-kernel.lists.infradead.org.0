Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EEFB18BF62
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 19:30:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=98IKGieAZnudjQmXmmjTyMrSfydmfseExzAsRcdcXL8=; b=gcr+VxNAxreKoK
	8pKB0aCMeLASp3+etQx4vYNZOeouqPqBtpWsZYXymi3OXa0+I3jd+pUTFDLdtpS64jgT6e+4Qz/IC
	LaLruNphjo9W18GW3IWiQq5+ygHazI+FLVFYh5P2JflXsBOhrAeXJJFAlOi6qcSPfVFkRS6MzHfA0
	OSr4tYtO/XlCwYmEL/SAUIBqIYb/xpqbEH4V6rSCwyhEEviYcPnPE+jC/iip0t+FHIVT14y0qoyb4
	ZqtwVqn4PdScA1ukutGkv2hLnG/M3R4rmHbsnDzVHNrm0Qd+SoB4yYQGVDOl58r+vfnnoeZBsbz+J
	SEd5ngWelDE15qUpTOaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEzvN-0001vG-Ld; Thu, 19 Mar 2020 18:29:45 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEzv9-0001u0-TO; Thu, 19 Mar 2020 18:29:33 +0000
Received: by mail-il1-f193.google.com with SMTP id p12so3210292ilm.7;
 Thu, 19 Mar 2020 11:29:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nuVG9R1fl5aV0113Wkqeyi+DwSUJE/i7o0mHYMU/pW0=;
 b=mHF00RS3+38YSt2n5Ax4Gxp/0b0kaRtIy2t/aiBWQufdyeRJmpbNymnqoXmCR5UtIw
 e3lK9Nw0mpPYMQSraGdcYCufsNdESyIp5OHAOBDzWhjqDoxxT4YVcrOhhqeH8Vqvvmbj
 tCjOfkGZZNvHfQcpX2eSGNlkY7vODzP4Szui9ysedNKK5JkM+K28jGraqt8qBpIFjc8L
 /nbQg4pFP6m2NT8DBnTeL17WhSttb5AjM2dvfk5AWUbVRH/oK9X27FTZeB7mymiV8gHs
 IdIM/ey+YA0HXeRyGF0iimhQdiKgqpO7jiDrOqLXMqDG4w5gQvq5pguztMw9U0sBKnWp
 eoXQ==
X-Gm-Message-State: ANhLgQ0lZ/doNIzrZgOnt49IB53Qe4OZz4qR12Ur9p6a+208CqyH5XGw
 3PB9mDZgbjBbJTN8b1EZxw==
X-Google-Smtp-Source: ADFU+vuYRWENnnjTGXdM/3tIX9NPpmnsPCMZgoJW/FYaAg8G19QayHs3ZHRHOhNCbt+PxUpH9dpgjA==
X-Received: by 2002:a92:9c54:: with SMTP id h81mr4599212ili.109.1584642569415; 
 Thu, 19 Mar 2020 11:29:29 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id c28sm1144757ilf.26.2020.03.19.11.29.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2020 11:29:28 -0700 (PDT)
Received: (nullmailer pid 16853 invoked by uid 1000);
 Thu, 19 Mar 2020 18:29:25 -0000
Date: Thu, 19 Mar 2020 12:29:25 -0600
From: Rob Herring <robh@kernel.org>
To: Jitao Shi <jitao.shi@mediatek.com>
Subject: Re: [PATCH v13 2/6] dt-bindings: display: mediatek: control dpi pins
 mode to avoid leakage
Message-ID: <20200319182925.GA13920@bogus>
References: <20200311071823.117899-1-jitao.shi@mediatek.com>
 <20200311071823.117899-3-jitao.shi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311071823.117899-3-jitao.shi@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_112931_950742_8D1D35FD 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 bibby.hsieh@mediatek.com, srv_heupstream@mediatek.com,
 David Airlie <airlied@linux.ie>, huijuan.xie@mediatek.com, stonea168@163.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 cawa.cheng@mediatek.com, ck.hu@mediatek.com,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 03:18:19PM +0800, Jitao Shi wrote:
> Add property "pinctrl-names" to swap pin mode between gpio and dpi mode. Set
> the dpi pins to gpio mode and output-low to avoid leakage current when dpi
> disabled.
> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,dpi.txt  | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
> index 58914cf681b8..260ae75ac640 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
> @@ -17,6 +17,10 @@ Required properties:
>    Documentation/devicetree/bindings/graph.txt. This port should be connected
>    to the input port of an attached HDMI or LVDS encoder chip.
>  
> +Optional properties:
> +- pinctrl-names: Contain "default" and "sleep".

> +  pinctrl-names see Documentation/devicetree/bindings/pinctrlpinctrl-bindings.txt

Drop this line.

> +
>  Example:
>  
>  dpi0: dpi@1401d000 {
> @@ -27,6 +31,9 @@ dpi0: dpi@1401d000 {
>  		 <&mmsys CLK_MM_DPI_ENGINE>,
>  		 <&apmixedsys CLK_APMIXED_TVDPLL>;
>  	clock-names = "pixel", "engine", "pll";
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&dpi_pin_func>;
> +	pinctrl-1 = <&dpi_pin_idle>;
>  
>  	port {
>  		dpi0_out: endpoint {
> -- 
> 2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
