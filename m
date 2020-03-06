Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9BB17C317
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 17:39:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EEbbReWGKlYPOcB0tr8ysa3vxDGGlUXY/+xJwgF96oA=; b=g0M01K+DlsxyHt
	TLZ+Li6b0Z0/EZeJ8W6KQYwFygB1ajZOTenDpZitmTvIyxNFTj/zGAstx0SlOXovqnod1xmGsX2gP
	hVdums3xxYJJm7SE/P7GNDhN8bdpK17oPJdoOQ+RlbTEcScqA3uYp+Wanh/4NqqzzyWFjDuS4k8Z1
	Id1fMgnyPgSBqpcCMLWBIcznLoH1RJOUGRD257uQxhtf2TYF29LmTOam6yKgxZrOp9JF4zruv0sdT
	tSQI+StiMetJZrLOMckq99N+fiOAwtWzYeLexOlKuguGbmtF8I183E7YX6uWyLjUfVjDzrHALwOy4
	7yNQfuVeGufwsIsI+y+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAG09-0000If-E2; Fri, 06 Mar 2020 16:39:05 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAG01-0000HX-Rd
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 16:38:59 +0000
Received: by mail-vs1-xe43.google.com with SMTP id n27so1935522vsa.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 08:38:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Qx3A/IQVNW7fzT3DwYvCqbENQb/6yvNaKEnyDu7jQZY=;
 b=2SQTFpXFJ0ik4M9EvISuXCVD3a7NNwmMo805wmtt408kV/i1HIwGDl8LwDBMYvNIiJ
 RZIqPk0VF9ZuvoGBqwqep2ipEY4NNQEGAJAcXLT3sTjK8Btj6AqWQMdrrc9wr3RZ8Ong
 Tx5DVRr103eEnHPfHk2FVvCmMXrQft2kBHl8eHNMAdHVmSAa1m10QUmchvkNvIH5p5x4
 QyY2aDHx8tgT0gAQRbJ6Ydu7Z2fVpO7X5qeVcbuAIyu3bCXqcASZHZKJ8ZljOPtXPP9G
 BGcqbEU/rAoQFHtk6bXIZVXtoXXnpy3xfrTgbAopTUrcF3bTgjcdk0D9UDJs5wmaQeW7
 k0/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Qx3A/IQVNW7fzT3DwYvCqbENQb/6yvNaKEnyDu7jQZY=;
 b=kH/BS6EHAJLA/PTmFaD70f7VTKlkR+yKVutX1OP3CELWc4uF+EZjSLrrjnKZzpmiO6
 y0Hhfjp6nxW8vItfEVLB2G7/kLXo2fCho2onWDr4C3fZSXvoQep+FPfTv5dixDs0z4XG
 GYnigz2+0BWrEc/cS1K6Zs6uldRF5a+58xHiN7+/PgYz6OInyU+tj2ZWFDNPN+jhg5bc
 aeoS4DX3LF0lzBmsB5x2yw2Go6/wsFLhbNNP5QR3Q+W2rB9I8287Om4eCR1u6A05Vil8
 U6r0tv7fb4t2ta12AqEUN+cWdaE4tG+nFYOv9Udhv99XyBYdf8ZelaytFaaDRriehruk
 bw1Q==
X-Gm-Message-State: ANhLgQ3mIRaElVxO4RQPjNK7vunHEP0WpN9TaH8irLq4PmVCOI+tIoF2
 fN7j+oci8xX04SVfiaS8wQ8QRNW41JQvx15HAZZfXQ==
X-Google-Smtp-Source: ADFU+vsgrX3M9ZUTt8zNbjVtAO9AoVvwrrtdDDH13N7+Fbkq+KCJfEoKR4CXqN5VR9tlf56RJTCEgxF3RkYjr11VXSc=
X-Received: by 2002:a67:e195:: with SMTP id e21mr2608876vsl.159.1583512735838; 
 Fri, 06 Mar 2020 08:38:55 -0800 (PST)
MIME-Version: 1.0
References: <1583509356-8265-1-git-send-email-Anson.Huang@nxp.com>
 <1583509356-8265-5-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1583509356-8265-5-git-send-email-Anson.Huang@nxp.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Fri, 6 Mar 2020 22:08:44 +0530
Message-ID: <CAHLCerPXZD_qpacWuQ51Fu5RGgq1NG-FUhzgKdxND7-t460Kfg@mail.gmail.com>
Subject: Re: [PATCH 5/5] thermal: add COMPILE_TEST support for IMX_SC_THERMAL
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_083857_919378_F6B1C435 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alexandre.belloni@bootlin.com, m.felsch@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-rtc@vger.kernel.org,
 wim@linux-watchdog.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Linux-imx@nxp.com,
 linux-input@vger.kernel.org, Zhang Rui <rui.zhang@intel.com>,
 ronald@innovation.ch, linux@roeck-us.net, linux-watchdog@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Linux PM list <linux-pm@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Thomas Gleixner <tglx@linutronix.de>,
 andriy.shevchenko@linux.intel.com, daniel.baluta@nxp.com,
 lakml <linux-arm-kernel@lists.infradead.org>, a.zummo@towertech.it,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dmitry.torokhov@gmail.com,
 LKML <linux-kernel@vger.kernel.org>, linux@rempel-privat.de,
 kernel@pengutronix.de, Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 6, 2020 at 9:19 PM Anson Huang <Anson.Huang@nxp.com> wrote:
>
> Add COMPILE_TEST support to i.MX SC thermal driver for better compile
> testing coverage.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>
> ---
>  drivers/thermal/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/thermal/Kconfig b/drivers/thermal/Kconfig
> index 91af271..55c7641 100644
> --- a/drivers/thermal/Kconfig
> +++ b/drivers/thermal/Kconfig
> @@ -254,7 +254,7 @@ config IMX_THERMAL
>
>  config IMX_SC_THERMAL
>         tristate "Temperature sensor driver for NXP i.MX SoCs with System Controller"
> -       depends on IMX_SCU
> +       depends on IMX_SCU || COMPILE_TEST
>         depends on OF
>         help
>           Support for Temperature Monitor (TEMPMON) found on NXP i.MX SoCs with
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
