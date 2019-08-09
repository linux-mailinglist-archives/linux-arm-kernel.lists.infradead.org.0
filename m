Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A7588064
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 18:43:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bIagKeF7knnxXvl+iClfjCBeftajqetnOpZHbRUVWz4=; b=JSSGoErAPW6FFx
	nep0gh/kQkyMXELGSJdyXLkKMgY67Rhg85G+dK9djjLxVSGpl1L+2J/tC6hp2Q1tbp+dP+z/JEErY
	jRXclLCqx+7tYLdOAk40AKUkz99kfoKBABKTiGzEDiPRqXonocHV5O2Er6ILoMHBZRqyM5GbBK7+O
	xUnk6k9Nfywb8GhrrijVP7gGkFBqX7qngZBL0YZ7XvM3+hNQRwr/DB6Iigcwsb9+pKcVNvHl5yzs2
	J3EroeeBbY6M06NZWh6Inmjekl499qbfEzGEq2pUfh7aUAk6QXAzZ5PfnL0NrOfmz4Rj6Z1yBUvoV
	hedhEJ7D8gK6iDse7FMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw7yk-0000kp-PL; Fri, 09 Aug 2019 16:42:58 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw7yb-0000kP-F4
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 16:42:50 +0000
Received: by mail-pf1-x444.google.com with SMTP id g2so46346498pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 09:42:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lQR64lsM2F4GHE16CB+rGeKc+DaWwGBd1G+dV7Mx9vQ=;
 b=KyVK5awF6Kfdm70TtcKte/vbR/UqeyC/LQEtp6sXplFv36hDRFUfnjY/dUtHRt4SGI
 /HoG6wzxkF3lILfFeMSfqggAhIRHHaenBEWEC1z1bGxyUknckb8djkEOc1tMURDE17g6
 ih9F4hpbuqn31LdRl49mXJZI6O7jT6uW/F8BVxQMioRqLROdfNpTtpk+r1FjfFvIvBud
 Yy4wxLPzgcfVx+S8Jk2dmdWAa72kPMmiQfVTZD+uvI8IVRjfzhj7lXesnncnSSCbJfA+
 PU75xc5L+I0WP1cI7q/nCIQyywurDQSTBknAbd2qd7VNxtCI7ggKxcmuh/r8FKa2wzfF
 1hJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=lQR64lsM2F4GHE16CB+rGeKc+DaWwGBd1G+dV7Mx9vQ=;
 b=b4VbJUZ+aE1uTcPLAB8qpjr2xMpHHOkWZfs0PK/CoeiFLl9tyE6GJF4dWd35NzcQ7/
 2UMjQX9/+T2Kem6NJi+VNqDW58pwKizTcDWcr1vNkeXcY/BU4rhoZrPWb5laySciZiTP
 eS/6IHD3rqplosFRD33+EJQuO9bplC+zCJ6I8wx7kCaANKj5jbLQvZqZ+kmZ7Oxsa+p4
 k2NNYGIO6dS0xL+YdLS5nQqswFTSICbkuixn60MxF3UQ2u49EiKzD5htLBfkZudizTj1
 eXXcKsB5nKUn7E63y+91DUZ2ZqOyo9Ac8ywr49VCeyqDwNcBweNyIOsLtUADXLM4Y3F6
 0iGw==
X-Gm-Message-State: APjAAAW7kE6MiZ3oRa6EiMhthWnjVGXYqwskBnPnROLqJ+wW7zZDSVqF
 95muJqOU6S1IajZXH/qGeB04UpO6
X-Google-Smtp-Source: APXvYqzikkhASYL+yHYO3qlFUUkyWSKcPxDKgLjky1s0KPej6LcMb0qkFFsxJEXHw1pDKKiVJJ0u9w==
X-Received: by 2002:a65:448a:: with SMTP id l10mr17950446pgq.327.1565368967690; 
 Fri, 09 Aug 2019 09:42:47 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id f12sm82607856pgq.52.2019.08.09.09.42.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 09 Aug 2019 09:42:46 -0700 (PDT)
Date: Fri, 9 Aug 2019 09:42:45 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/4] dt-bindings: watchdog: Add i.MX7ULP bindings
Message-ID: <20190809164245.GA17136@roeck-us.net>
References: <1565334842-28161-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565334842-28161-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_094249_503330_AB830EDD 
X-CRM114-Status: GOOD (  16.01  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Fri, Aug 09, 2019 at 03:13:59PM +0800, Anson Huang wrote:
> Add the watchdog bindings for Freescale i.MX7ULP.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../bindings/watchdog/fsl-imx7ulp-wdt.txt          | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.txt
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.txt b/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.txt
> new file mode 100644
> index 0000000..d83fc5c
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

The driver as submitted does not include clock or interrupt handling.
Why are those properties listed as mandatory if they are not really
needed (nor used) ?

> +
> +Optional properties:
> +- timeout-sec : Contains the watchdog timeout in seconds
> +
> +Examples:
> +
> +wdog1: wdog@403d0000 {
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
