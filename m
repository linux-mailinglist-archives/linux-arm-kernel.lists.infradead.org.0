Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A24107C0E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 Nov 2019 01:34:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i9aXmfpxdyFUu1p1LwEK0JZGKTMjsK555Kyw3AemDNo=; b=DIJZY5TJWza9Ad
	tL4bCugmy+8u2nfZeQqdKH4+QPbO//CtB9p2JuyE5+HkJimeQkmzOlr1tBsVaB3Quy/xxP8mw9dPl
	gpZnuRKKKofBY/cps9CgXUKf6s/cgPT0nog0/7wYGmStXoyODSIYx/VbZK6uC6zMBZlYo0fVhdJC/
	x6ZGBpKxE5lNiv4lwpIOycW43+Nk9Vm0m9RAvyOWeGW/JO4xgiD2ekUiMTvKJoz4u6KIfpK7x7xFB
	5qLpAEdxD2EqdK1nIjl1nR0eOKRcIsONd1TpHYZhdB21Z60KbBTAAAlyZwJG0YnnGYLN5ErHILF4y
	2TxaHYBjvLb+EpiQWeZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYJNz-0001Vo-Ga; Sat, 23 Nov 2019 00:34:51 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYJNk-0001Tk-9G; Sat, 23 Nov 2019 00:34:37 +0000
Received: by mail-ot1-f68.google.com with SMTP id c19so7747451otr.11;
 Fri, 22 Nov 2019 16:34:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=phRtDY+6nhN89i9bxspsg5KDJ+w/2SxWdZGysdx9BMs=;
 b=aENNvZtXRrm8LETzg6IBvAUUYrOKR9FeShkYduna2To6Ly9sNUjRwfCbpHyNvmPi26
 qfPPGWWpPn1NxzWlO3chGWu7/DIf6IV7Wi7ZddoYkLYn2jkFO7vtaHlTlhsEy7TJBXiK
 bttRUbM4vWABm3K7MevVYvAB5rx2bRuEA5lhGJvk7SF/QxIMLMkjdbO3WhZOsEGGOqgZ
 Hrt8T6gOWp9vqCcYD7fPBVm79ZVbuwQadyoxBX7v23746euZGtnML21QCivB5qKP+Bc8
 mWP7VfMR7raFQ8J4Sl2YkIGXb9TUKk31Q1EQPw0+1JNdSbINZGWXbbIkyhku8leN8Ek1
 /SrQ==
X-Gm-Message-State: APjAAAWcuwdteUfzymL3DF7avACi/vQmQrW1fnTD+dctKBU8HTjz2IEX
 nSPGIbgqX8pc07u3xheDAbFC850=
X-Google-Smtp-Source: APXvYqwxsOHf0eCMmkU5FDfUzE8g5eAjnd7zYHNf1mNs7HEBS8YeT4sL4wp4ZPy2y5mZa+0w7UHfDA==
X-Received: by 2002:a9d:6e12:: with SMTP id e18mr12968418otr.63.1574469274945; 
 Fri, 22 Nov 2019 16:34:34 -0800 (PST)
Received: from localhost (ip-70-5-93-147.ftwttx.spcsdns.net. [70.5.93.147])
 by smtp.gmail.com with ESMTPSA id a23sm2575394oia.41.2019.11.22.16.34.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 16:34:34 -0800 (PST)
Date: Fri, 22 Nov 2019 18:34:32 -0600
From: Rob Herring <robh@kernel.org>
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Subject: Re: [PATCH v3 4/4] dt-bindings: display: add IMX MIPI DSI host
 controller doc
Message-ID: <20191123003432.GA334@bogus>
References: <20191118152518.3374263-1-adrian.ratiu@collabora.com>
 <20191118152518.3374263-5-adrian.ratiu@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191118152518.3374263-5-adrian.ratiu@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_163436_321037_F5F5B5CC 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Martyn Welch <martyn.welch@collabora.com>,
 Sjoerd Simons <sjoerd.simons@collabora.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-imx@nxp.com, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 18, 2019 at 05:25:18PM +0200, Adrian Ratiu wrote:
> Signed-off-by: Sjoerd Simons <sjoerd.simons@collabora.com>
> Signed-off-by: Martyn Welch <martyn.welch@collabora.com>
> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
> ---
>  .../bindings/display/imx/mipi-dsi.txt         | 56 +++++++++++++++++++
>  1 file changed, 56 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/mipi-dsi.txt
> 
> diff --git a/Documentation/devicetree/bindings/display/imx/mipi-dsi.txt b/Documentation/devicetree/bindings/display/imx/mipi-dsi.txt
> new file mode 100644
> index 000000000000..3f05c32ef963
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/imx/mipi-dsi.txt
> @@ -0,0 +1,56 @@
> +Freescale i.MX6 DW MIPI DSI Host Controller
> +===========================================
> +
> +The DSI host controller is a Synopsys DesignWare MIPI DSI v1.01 IP
> +with a companion PHY IP.
> +
> +These DT bindings follow the Synopsys DW MIPI DSI bindings defined in
> +Documentation/devicetree/bindings/display/bridge/dw_mipi_dsi.txt with
> +the following device-specific properties.
> +
> +Required properties:
> +
> +- #address-cells: Should be <1>.
> +- #size-cells: Should be <0>.
> +- compatible: "fsl,imx6q-mipi-dsi", "snps,dw-mipi-dsi".
> +- reg: See dw_mipi_dsi.txt.
> +- interrupts: The controller's CPU interrupt.
> +- clocks, clock-names: Phandles to the controller's pll reference
> +  clock(ref) and APB clock(pclk), as described in [1].
> +- ports: a port node with endpoint definitions as defined in [2].
> +- gpr: Should be <&gpr>.

fsl,gpr

> +       Phandle to the iomuxc-gpr region containing the multiplexer
> +       control register.
> +
> +[1] Documentation/devicetree/bindings/clock/clock-bindings.txt
> +[2] Documentation/devicetree/bindings/media/video-interfaces.txt
> +
> +Example:
> +
> +	mipi_dsi: mipi@21e0000 {

dsi@...

> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		compatible = "fsl,imx6q-mipi-dsi", "snps,dw-mipi-dsi";
> +		reg = <0x021e0000 0x4000>;
> +		interrupts = <0 102 IRQ_TYPE_LEVEL_HIGH>;
> +		gpr = <&gpr>;
> +		clocks = <&clks IMX6QDL_CLK_MIPI_CORE_CFG>,
> +			 <&clks IMX6QDL_CLK_MIPI_IPG>;
> +		clock-names = "ref", "pclk";
> +		status = "okay";

Don't show status in examples.

> +
> +		ports {
> +			port@0 {
> +				reg = <0>;
> +				mipi_mux_0: endpoint {
> +					remote-endpoint = <&ipu1_di0_mipi>;
> +				};
> +			};
> +			port@1 {
> +				reg = <1>;
> +				mipi_mux_1: endpoint {
> +					remote-endpoint = <&ipu1_di1_mipi>;
> +				};
> +			};
> +		};
> +        };
> -- 
> 2.24.0
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
