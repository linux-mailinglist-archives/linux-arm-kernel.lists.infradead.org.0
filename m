Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C8F1CE5F5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 22:45:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kPQa/2D1xbmoGacOC4VoimIjFxWWZPm+Sdu9XcFCCSI=; b=TN3HVMzWzWZol0
	tCitCYcPs1AsSpbbqwSnMlCrbV7/K2cv2rMt+ZgMhpvXKdqddQqpnTDyOPxale8i4Qc6apsjre6VW
	FLVEX5jGRX2FGe4f1mDK4iWell3VQVgJQ20SmgLeGRfopqa69QECd9ETgePn1zzEwIb+fZqN5TZNM
	xOLTPjoDPnjHDtz4W8BVcBW9rOPafCRMb7gz8JWyi3i3kKaTpkjJ1GaGiMyEctVFOo2krDusi2+N7
	7+VciRndiujHHzVh/13eNEabaa6Qd9/Qlk3m2RhdgxHa1+u/n+GcSOi5id7zcFXVbHN1M+HNfA0Jg
	E0LhQi7cZ9Dqyl/OPaKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYFJ4-0005Pp-Vw; Mon, 11 May 2020 20:45:46 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYFIq-0005J7-Op
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 20:45:36 +0000
Received: by mail-ot1-f66.google.com with SMTP id e20so8708712otk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 13:45:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8HYjnhh8Bu8XYDVDKIXasgsrQoeCjoEU/+GLZVp6VL4=;
 b=BiZHcdT2bd7iWj4j8AfrMUGPbuRYYSxkrFOcaKgHqlF5GRyVm/PuyXlw2OlIOAb8RF
 fGmODUiUild2eevgaDJpQcLXzRU3SYZNKk4FCG4M1oBeU5rZwoM9CgsnqOUOCXAKvJFI
 /MjRLO1nQUan2zOldtyYN8UAldsHBtPdoEXMgO6p84z0NJRc4+N0Q/dxfFXZX8V3ii9h
 /pexNa/mlBYrJISBLN3M8Hq78An2KA1Kcik8zAYcTfsksU7VCEV/WEjaz8ZNkTP37bwA
 PQ84baEeuc24bGaALiogi794oyjjjMXNfRWdSjJWytyaWPht/E3SsQUc695NJXzqLjXW
 /R9Q==
X-Gm-Message-State: AGi0PubFZc3QISgCO5O856YaUHH+sJJi7BCol6FoxmpXZflbRFGmEBp3
 G6EnFUP9zgSwb6lf5MmJkquSM1k=
X-Google-Smtp-Source: APiQypKrHjG2YQsNuUzJ0MXv21zFdiAFCnjL4QWURbbEGJWV5Y68QNrIXfpv8r9brDsrOsEu41aYVA==
X-Received: by 2002:a9d:6ac8:: with SMTP id m8mr14284404otq.262.1589229931484; 
 Mon, 11 May 2020 13:45:31 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n24sm263926otr.35.2020.05.11.13.45.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 13:45:30 -0700 (PDT)
Received: (nullmailer pid 14771 invoked by uid 1000);
 Mon, 11 May 2020 20:45:29 -0000
Date: Mon, 11 May 2020 15:45:29 -0500
From: Rob Herring <robh@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v3 08/16] pwm: add support for sl28cpld PWM controller
Message-ID: <20200511204529.GA3518@bogus>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-9-michael@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200423174543.17161-9-michael@walle.cc>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_134532_828523_4CBC4890 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 linux-gpio@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 07:45:35PM +0200, Michael Walle wrote:
> This adds support for the PWM controller of the sl28cpld board
> management controller. This is part of a multi-function device driver.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>
> ---
>  drivers/pwm/Kconfig        |  10 ++
>  drivers/pwm/Makefile       |   1 +
>  drivers/pwm/pwm-sl28cpld.c | 203 +++++++++++++++++++++++++++++++++++++
>  3 files changed, 214 insertions(+)
>  create mode 100644 drivers/pwm/pwm-sl28cpld.c


> +static const struct of_device_id sl28cpld_pwm_of_match[] = {
> +	{ .compatible = "kontron,sl28cpld-pwm" },
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, sl28cpld_pwm_of_match);
> +
> +static const struct platform_device_id sl28cpld_pwm_id_table[] = {
> +	{"sl28cpld-gpio"},

copy-n-paste error?

> +	{},
> +};
> +MODULE_DEVICE_TABLE(platform, sl28cpld_pwm_id_table);
> +
> +static struct platform_driver sl28cpld_pwm_driver = {
> +	.probe = sl28cpld_pwm_probe,
> +	.remove	= sl28cpld_pwm_remove,
> +	.id_table = sl28cpld_pwm_id_table,
> +	.driver = {
> +		.name = KBUILD_MODNAME,
> +		.of_match_table = sl28cpld_pwm_of_match,
> +	},
> +};
> +module_platform_driver(sl28cpld_pwm_driver);
> +
> +MODULE_DESCRIPTION("sl28cpld PWM Driver");
> +MODULE_AUTHOR("Michael Walle <michael@walle.cc>");
> +MODULE_LICENSE("GPL");
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
