Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 085779F3CB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 22:09:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c3wFuee05UyLPs66NtSPWSOtryZlP30a4Fx6a+HebSs=; b=mX+sirpo1PJqEJ
	5btfWCtkqo6AqTVGtV6Le6A4BGj15ZUIgGlH9XRoH6jT02Xe2wuHOC1bi936CDjPiBVqZpJcpUe7W
	BKpeGXasHXT/oBuYnVEI9xM/48Zq4Gp2YTMJ4BCFle5NAGJvoxoZoaU6QwUM2peDMMjT77O7+8OAl
	rGAyuir2YrHlvzFSt3niSeP9AFcKIkfYFSOq1SdUz1Il9nFYnfRfjlOOQw3cmNWMAEzK9B9R/yiO9
	62MdMi2Le8RYb0XXME79DpnPJJS+FNGZn5r7g/Nc69sY7kfuwXwDw+J9tyupdM2f9mThDO2fSrMu4
	3YAs32Khw0Ab4kfqaxAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2hm6-0002BD-Nl; Tue, 27 Aug 2019 20:09:06 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2hlz-0002AS-B0
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 20:09:00 +0000
Received: by mail-oi1-f193.google.com with SMTP id y8so234837oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 13:08:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Ng/ondwrrnfBxKPNMtYoFquttD4noee2/m3ndHQDx/0=;
 b=mRmXcPBoyouI42QIQtFvGIl84jGRo94+32nYhlK4Ok2611Ky2Jgvn0n7quegfkkmet
 9XtgKJJN7ROHF0T+mYfV08gZDaIo66oaKq5Bcn6ioVKiEWusW0tkAqVG/Nvqi2oKZFF6
 K/J7R2WXEJoWd1QMMW1T4d3bYIbCiyd6P5exEFbgcoHPygHfz6kPQvm72J52kMeRSX5N
 /ySVjGiALYdMDIPPwp21VfC/mNFDhkMxP6Nc1Hk7gD3H9PzPW8n+t1QU1N7P0QtrZhUu
 hyD26Dj28YyDF1l7Mb8utjIan7hchR9U6L5pZQ6ntKeGzZwiZuGotutnde/tW/BfKKVk
 bKyw==
X-Gm-Message-State: APjAAAVe+QER2mrCm3UrurryR1u/vvSugszx6xTzVDRK2kF1ivDUneba
 4AWmIXcD2R1TNVhWFza+8A==
X-Google-Smtp-Source: APXvYqzzs9eWBhou0aG3BlVhbCRM/HDy6khsII/8Kx06DMoap2M/MFjtTc2tykVoa1mrUGNt8UVn6A==
X-Received: by 2002:aca:3388:: with SMTP id z130mr329140oiz.81.1566936536648; 
 Tue, 27 Aug 2019 13:08:56 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l16sm135580otq.42.2019.08.27.13.08.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 13:08:56 -0700 (PDT)
Date: Tue, 27 Aug 2019 15:08:55 -0500
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V4 1/4] dt-bindings: watchdog: Add i.MX7ULP bindings
Message-ID: <20190827200855.GA5260@bogus>
References: <1566441463-11911-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566441463-11911-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_130859_381398_49389F22 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
 u.kleine-koenig@pengutronix.de, wim@linux-watchdog.org, shawnguo@kernel.org,
 linux@roeck-us.net, Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 10:37:40PM -0400, Anson Huang wrote:
> Add the watchdog bindings for Freescale i.MX7ULP.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
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

watchdog@...

With that,

Reviewed-by: Rob Herring <rohb@kernel.org>

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
