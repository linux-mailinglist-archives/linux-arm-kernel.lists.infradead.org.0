Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9023EB1741
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 04:41:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zw3W86Zhfg/LGJaM5niZg2ncMP8TVywQibSjy2bvR4k=; b=IcFNfc3bDTxsWZ
	WVoDRQPotF9lUQejBxYlBp+mzhosgcDQN+Nx2vJHN0qRLAMRQQJPB7D/0n1MzySNOO/I6jdY7pS61
	T+7autVtydCi/0tv89OU4om4WThYaGo1bLcdhA0Q7EDNEF1dfsTdv6BGaOfVOLp6dUZy5AUBPSdNJ
	x6n/qJz2uRJwP+WcRrea4hMbCCxA59KkL4adWnGOHgTd1MqWbYahY/9Wk9rBrzCpOeKEWYQrOMp7U
	LG1Pin05MSpv9oEFcYadcG+DJ/20en0MruwymyHq9vlffo+AQfRaujrq1IkJsBCPl7hG5fcdIcadL
	s/kPy/eHtWN6NsE7USSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8bW5-0001q4-4d; Fri, 13 Sep 2019 02:40:57 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8bVm-0001oW-Hm
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 02:40:40 +0000
Received: by mail-pl1-x644.google.com with SMTP id t11so12597142plo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Sep 2019 19:40:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=o10bTPI1fGjtaNVr4lSeeHoUxfwk3uBoK8DuweeUXb8=;
 b=AucsQVseCLmfa6f68FGaHKvutY86bgCEDYee7FhydkZRh7iDmqpC8uCPiTjaNDPGpD
 KL0g4B+x3ZHdqBkhsi1sotu3iWGE5AAdb/LwWvk5jipRKIujP/ONZIJz2F+kHz6IGcTH
 be5ak9geKw1tkLfXO0eewdHpwmKv6gRAgpD1o4O2pvDNdSkJtWOlsQ7SRRtvp1nOFcfM
 Ehg4cPUtobvM4Lkq/QYbtGKzRWS/I6PxuXBuWnB9cJCDjCJvcsR5Ow7eB0E8+H9I2mK0
 lZX6lkHpb3wlRSkKqgMMATOEkJP4mCN3OFkukQ6Q+yXkHLtlummxBNaXSsFUd45ZRuyI
 AI0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=o10bTPI1fGjtaNVr4lSeeHoUxfwk3uBoK8DuweeUXb8=;
 b=ImxjaY5z58qmRquILvgq4lJLkgxFqf+WyrHPYc0E+G9gHRPLrFXippxKDKG+Unplv3
 bFru+YIPxQ3ttilyx5C7NEWV6ygeXmlz+71xh3Rgf9bFKO+Vgq+rCm0ChLUoAD2rql0P
 ZWnKOvATeD9U2Xx/0MkZ4BpUzwRgkroU9M9uH85Wz3xBrmOZEzLi8E+L+TKIgtV341Ze
 XuEUjR82vlUIrx/P7sM6GclwlN6xtZ4ncuUvpH4PVLbjcuxsQNkRiEO+yOv2qvSnMFsz
 cvYNiXbQoe3NV8EuIa5W0pb2cvsIBvFceiIMXgR5O4v4RE5j3LUUR96Pm1lTXO4+ognS
 z2FQ==
X-Gm-Message-State: APjAAAW2dyKxwdGdGwQUVccsDIrIM0BGQsyBNzALO40NTQW8ymYSLeBC
 pMBQWchfZ34sD3fzPfVPM/II0ywK6zCxPw==
X-Google-Smtp-Source: APXvYqwN2ZoOUxJYfpw2vYhfd2BDQQ5qh0TfD2HVwYWe9asnPcx8vFEbsYxRUP6NyYikhLivIf12fQ==
X-Received: by 2002:a17:902:aa06:: with SMTP id
 be6mr41582114plb.94.1568342432557; 
 Thu, 12 Sep 2019 19:40:32 -0700 (PDT)
Received: from localhost (c-73-158-250-148.hsd1.ca.comcast.net.
 [73.158.250.148])
 by smtp.gmail.com with ESMTPSA id l23sm4812673pgj.53.2019.09.12.19.40.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 12 Sep 2019 19:40:31 -0700 (PDT)
Date: Thu, 12 Sep 2019 21:13:00 +0100
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Robin van der Gracht <robin@protonic.nl>
Subject: Re: [PATCH v3] input: keyboard: snvs_pwrkey: Send key events for
 i.MX6 S, DL and Q
Message-ID: <20190912201300.GA636@penguin>
References: <20190904062329.97520-1-robin@protonic.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904062329.97520-1-robin@protonic.nl>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_194038_593761_23749009 
X-CRM114-Status: GOOD (  25.45  )
X-Spam-Score: 0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Adam Ford <aford173@gmail.com>, Marco Felsch <m.felsch@pengutronix.de>,
 "linux-kernel @ vger . kernel . org" <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-input @ vger . kernel . org" <linux-input@vger.kernel.org>,
 RobinGong <yibin.gong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel @ lists . infradead . org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin,

On Wed, Sep 04, 2019 at 06:23:29AM +0000, Robin van der Gracht wrote:
> The first generation i.MX6 processors does not send an interrupt when the
> power key is pressed. It sends a power down request interrupt if the key is
> released before a hard shutdown (5 second press). This should allow
> software to bring down the SoC safely.
> 
> For this driver to work as a regular power key with the older SoCs, we need
> to send a keypress AND release when we get the power down request irq.
> 
> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
> ---
> 
> Changes v2 -> v3:
>  - Drop alt compatible string for identifying first revision snvs hardware,
>    read minor revision from register instead.
>  - Drop imx6qdl.dtsi modification and device-tree binding documentation.
>  - Add an additional input_sync() to create 2 seperate input reports for press
>    and release.
> 
>  drivers/input/keyboard/Kconfig       |  2 +-
>  drivers/input/keyboard/snvs_pwrkey.c | 28 ++++++++++++++++++++++++++--
>  2 files changed, 27 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/input/keyboard/Kconfig b/drivers/input/keyboard/Kconfig
> index 7c4f19dab34f..937e58da5ce1 100644
> --- a/drivers/input/keyboard/Kconfig
> +++ b/drivers/input/keyboard/Kconfig
> @@ -436,7 +436,7 @@ config KEYBOARD_SNVS_PWRKEY
>  	depends on OF
>  	help
>  	  This is the snvs powerkey driver for the Freescale i.MX application
> -	  processors that are newer than i.MX6 SX.
> +	  processors.
>  
>  	  To compile this driver as a module, choose M here; the
>  	  module will be called snvs_pwrkey.
> diff --git a/drivers/input/keyboard/snvs_pwrkey.c b/drivers/input/keyboard/snvs_pwrkey.c
> index 5342d8d45f81..828580eee0d2 100644
> --- a/drivers/input/keyboard/snvs_pwrkey.c
> +++ b/drivers/input/keyboard/snvs_pwrkey.c
> @@ -19,6 +19,7 @@
>  #include <linux/mfd/syscon.h>
>  #include <linux/regmap.h>
>  
> +#define SNVS_HPVIDR1_REG 0xF8
>  #define SNVS_LPSR_REG	0x4C	/* LP Status Register */
>  #define SNVS_LPCR_REG	0x38	/* LP Control Register */
>  #define SNVS_HPSR_REG	0x14
> @@ -37,6 +38,7 @@ struct pwrkey_drv_data {
>  	int wakeup;
>  	struct timer_list check_timer;
>  	struct input_dev *input;
> +	u8 minor_rev;
>  };
>  
>  static void imx_imx_snvs_check_for_events(struct timer_list *t)
> @@ -45,6 +47,20 @@ static void imx_imx_snvs_check_for_events(struct timer_list *t)
>  	struct input_dev *input = pdata->input;
>  	u32 state;
>  
> +	if (pdata->minor_rev == 0) {
> +		/*
> +		 * The first generation i.MX6 SoCs only sends an interrupt on
> +		 * button release. To mimic power-key usage, we'll prepend a
> +		 * press event.
> +		 */
> +		input_report_key(input, pdata->keycode, 1);
> +		input_sync(input);
> +		input_report_key(input, pdata->keycode, 0);
> +		input_sync(input);
> +		pm_relax(input->dev.parent);
> +		return;
> +	}
> +
>  	regmap_read(pdata->snvs, SNVS_HPSR_REG, &state);
>  	state = state & SNVS_HPSR_BTN ? 1 : 0;
>  
> @@ -67,13 +83,17 @@ static irqreturn_t imx_snvs_pwrkey_interrupt(int irq, void *dev_id)
>  {
>  	struct platform_device *pdev = dev_id;
>  	struct pwrkey_drv_data *pdata = platform_get_drvdata(pdev);
> +	unsigned long expire = jiffies;
>  	u32 lp_status;
>  
>  	pm_wakeup_event(pdata->input->dev.parent, 0);
>  
>  	regmap_read(pdata->snvs, SNVS_LPSR_REG, &lp_status);
> -	if (lp_status & SNVS_LPSR_SPO)
> -		mod_timer(&pdata->check_timer, jiffies + msecs_to_jiffies(DEBOUNCE_TIME));
> +	if (lp_status & SNVS_LPSR_SPO) {
> +		if (pdata->minor_rev > 0)
> +			expire = jiffies + msecs_to_jiffies(DEBOUNCE_TIME);
> +		mod_timer(&pdata->check_timer, expire);

Why do we even need to fire the timer in case of the first generation
hardware? Just send press and release events directly from the ISR.

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
