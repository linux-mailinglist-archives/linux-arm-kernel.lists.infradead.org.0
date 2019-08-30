Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B59C6A3C9C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 18:51:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G6xFCzfLdzj/3m3KXc7jlZlhmXv1GJNkfFSAhsBk8P4=; b=UZVACa31d7JFK1
	4nNI0RUfH2uW1eEZ+IJAhgtqDQP95De+AcUIrKoYxl2AD0QwK+2DEaXIEVGO5Ak19i86gN2Om8bho
	dQe5D6te0A+CmolrIilxvMkNnaXzOwAsRWP5pCZ7lIk/9HrLNsecrvBg2jrf69XAJacTQNvQngaka
	7LXchDzgD13TqV/ek6ARt4azMCo+T7MCzeHdgxMe4N46fM0br4Lezbf0rDxQj+bc1CKXYJ9qjk3wr
	8/dpq0IhFkvtkweUYDtRwKFBpogbJuo6qfcCDqMROOWQGYV1lb0mzRxftXdcawLyyAGH4W0cBNZXj
	n95HhI7/4JeJsTbFFLgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3k7p-00022a-Ud; Fri, 30 Aug 2019 16:51:49 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3k7c-000215-DX
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 16:51:38 +0000
Received: by mail-pg1-x543.google.com with SMTP id k3so3805444pgb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 09:51:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5UvLflpx3EFUk8awi6+Qwa1WTYo8pN5eMoyD4pclgbg=;
 b=N8EPn+vzOA+GhoEEs5XiLil81WPdHoR6+pX9z/KFtoYZR4fJeaPy0QBXjVjhdMtEyo
 T+RjsDLMHBtjdmy51QZpEbvs6Ipn0F0G77vytFQ3qC/poan6IW2Zylf3Qk/fAoBJ9aVV
 5v6qHxktKW2/4lcSvNgHYp+4/NcrsPttgQrr/X+7JjSKjk2qqpl4IKPhWxe2wJt0Dheu
 gwi50GDZJHDuoNQQOgI1G7T31N3eqtoNBADvaLcFdaaGH1QJujok7wWVhNPXeiaBbI/D
 yIVS0LwuQc60MvCtTSjedFncywoPSvFDDSQ1m6XY/CIBPI8fRoWQaGO+YwCbSmC3OCLq
 5O1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=5UvLflpx3EFUk8awi6+Qwa1WTYo8pN5eMoyD4pclgbg=;
 b=uXwBjkK93GElhcqD9UVAxzYnOvkoz3mIzNpvo16u1nF44NWEeAqsBbbvUeA0CIoTdn
 iAyY35gtNikIfxSHVpQQQipZfud901Vwu0ZuFztSfGfA6h9s23C6uI+cPcJt2kh/iVSu
 qt/cgh6FxT1i77xXroPkUK6Ehg7Fb9SrNsh1R44RBjZRrD0kRBabU4qilc/cy1mrCoQT
 pNj0WAV0GBZ63G/09Su71LprbMadL2nvF0K/KklbMcVNSf6EQz795d6iBqx2JnQT479G
 oHc/s3KSyg74goO/Uwxjw5/sZ4kOqbMjBbqXFUES2u6cdHDB79G7FINtjZbOfFJyyYZq
 JHUg==
X-Gm-Message-State: APjAAAX8qdCYpzf4DBTRXnuS+J9ig2/Sa7QBvw9uYyWMy12uFj1RccJz
 UgejcS5Zho8wuxecHW/FNXk=
X-Google-Smtp-Source: APXvYqzebjfyVF+OCeCIs9yCVw/y2P3l9c1XT+KftFbAz5C4IjOMQK1TgqXTqZNOTQpKxRFuNgXKiA==
X-Received: by 2002:aa7:96ee:: with SMTP id i14mr19347137pfq.217.1567183895693; 
 Fri, 30 Aug 2019 09:51:35 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id g14sm6946317pfo.41.2019.08.30.09.51.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 09:51:35 -0700 (PDT)
Date: Fri, 30 Aug 2019 09:51:34 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V5 1/4] dt-bindings: watchdog: Add i.MX7ULP bindings
Message-ID: <20190830165134.GG7911@roeck-us.net>
References: <1566999303-18795-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566999303-18795-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_095136_454878_7BBDCF2E 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, leonard.crestez@nxp.com,
 schnitzeltony@gmail.com, linux-watchdog@vger.kernel.org,
 otavio@ossystems.com.br, festevam@gmail.com, s.hauer@pengutronix.de,
 jan.tuerk@emtrion.com, linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 u.kleine-koenig@pengutronix.de, wim@linux-watchdog.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 09:35:00AM -0400, Anson Huang wrote:
> Add the watchdog bindings for Freescale i.MX7ULP.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Rob Herring <rohb@kernel.org>

Missed this version. For the record:

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
> Changes since V4:
> 	- improve watchdog node name.
> ---
>  .../bindings/watchdog/fsl-imx7ulp-wdt.txt          | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.txt
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.txt b/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.txt
> new file mode 100644
> index 0000000..f902508
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.txt
> @@ -0,0 +1,22 @@
> +* Freescale i.MX7ULP Watchdog Timer (WDT) Controller
> +
> +Required properties:
> +- compatible : Should be "fsl,imx7ulp-wdt"
> +- reg : Should contain WDT registers location and length
> +- interrupts : Should contain WDT interrupt
> +- clocks: Should contain a phandle pointing to the gated peripheral clock.
> +
> +Optional properties:
> +- timeout-sec : Contains the watchdog timeout in seconds
> +
> +Examples:
> +
> +wdog1: watchdog@403d0000 {
> +	compatible = "fsl,imx7ulp-wdt";
> +	reg = <0x403d0000 0x10000>;
> +	interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
> +	clocks = <&pcc2 IMX7ULP_CLK_WDG1>;
> +	assigned-clocks = <&pcc2 IMX7ULP_CLK_WDG1>;
> +	assigned-clocks-parents = <&scg1 IMX7ULP_CLK_FIRC_BUS_CLK>;
> +	timeout-sec = <40>;
> +};
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
