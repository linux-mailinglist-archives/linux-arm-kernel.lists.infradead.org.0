Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C231BA3C96
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 18:51:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sgLxC6ulLM7gxwJCRU0eFaJ+bpWmDf+mEjG6uQb4ohI=; b=ehU6W//rgbZ1JL
	TAXfpOG/1cwJ7Ak6yMrJg7unmtZZVq2aJCyUu5MGT0vPOrUU7EG7exz2Au3vflQukuU/XgLh7cm7V
	ryzGI1XOYnvUUJuevWGyeYkaQcCYuSuH0XbAg+6y29BJKSJZScMxphXVAsmI3huEcCnxR9yta0DHk
	dKjFUEOiL2ipt+Iptz8Dlhmq9TiTrY6pdc2r3v54uCftQalBAyN8JZ4fq0j9DZN9EZSNZl5j8OrdR
	xuXzpb9QdwiwEqjDK50f+MNo0tgo5B5Y3aGkaFE4xg3bTW9mVbx/Mq2cyq1y/yogWVHM2k7bRkWZA
	vMGWyGoui1zVhCUyIYgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3k6w-0001VA-CQ; Fri, 30 Aug 2019 16:50:54 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3k6j-0001UN-Aj
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 16:50:45 +0000
Received: by mail-pg1-x541.google.com with SMTP id w10so3820731pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 09:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=nqfT7eZ0CXpXVrfmG81oa7a8nZF6Zf13T/nqKKsF2O0=;
 b=MF9HamXAu6O6AeDyFP7lWY51cLBOJ4eQqFrA1lSaje1yy/pdsf6D/L0xVOHkdzasaj
 1CHEn9YW4h9sYmMdYiq05gloGwL9se4oMZFFu8Jlg90fkE37QXDVDGGFyl7XyslEIn5a
 K8gIFU1v4pBVBzNxE9fMy8x1oUG3317bGu0Y9s1NaYlc8ObEd7KLXkiJC8O2M5CwYdoc
 z/rBJNGDc7fHWpgnQpsBJfP/7/lcBulXY/pnSnBodFbZwD5qFeXF7pG0xN+kXj7Jan4H
 WIwkjKcO5j+oC4qZcM8d0f9XhyuSHry8sJ9S0Jzoi0kRNfpy9eFWvBmr3IKLQXiN7E3u
 M1bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=nqfT7eZ0CXpXVrfmG81oa7a8nZF6Zf13T/nqKKsF2O0=;
 b=E+6QBL0q4u6CIEP/hGflChH04MjTj4ay1nqZ1KcFMYc5aPMZ1YWEn30dxN+0o8C//Z
 3Zo1YVIVpmtIpuXsilqiTODMgJ9RQIe4XLVA7xguP83SRMp3PtiAIxA4iAlJn6PKdByB
 4tzhPdOMQwthri8DpLgbXYZx3NaO86JfHOq3yyKPOsgKt2PtcXK/rpkuIz1zbWcpGoO6
 DjY6Dm9UphjzKcbp4KhIl1+gdHxiXcoLe1cdFzEJ1cLUiwC/5lAdODaH8TRz6KsJAfvT
 8KutbzbQeKqn9WdpL7OuqPR4sVtpDaGHkb7RiGr5lZY+1f1jperAe7fxLhVt3+PPP/Ap
 /Dww==
X-Gm-Message-State: APjAAAXIIuoibMobZESvqza0Og4JSpj5srfc6frhqpqQPVuDGIrb+IN4
 zU+VP0f9UD21zhFE8Ct+f1A=
X-Google-Smtp-Source: APXvYqwNDY3snOtA/jlKXRD/VBDeAWTcnjqNQA/GCd/SbuM3PPO9MCKET8gJON/LCe4Awj6GhOMQkg==
X-Received: by 2002:a63:d23:: with SMTP id c35mr13719466pgl.376.1567183840533; 
 Fri, 30 Aug 2019 09:50:40 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id w20sm9788175pfn.72.2019.08.30.09.50.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 09:50:40 -0700 (PDT)
Date: Fri, 30 Aug 2019 09:50:39 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V4 1/4] dt-bindings: watchdog: Add i.MX7ULP bindings
Message-ID: <20190830165039.GF7911@roeck-us.net>
References: <1566441463-11911-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566441463-11911-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_095044_648130_547BAC56 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

On Wed, Aug 21, 2019 at 10:37:40PM -0400, Anson Huang wrote:
> Add the watchdog bindings for Freescale i.MX7ULP.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

With the change requested by Rob:

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
> No changes.
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
