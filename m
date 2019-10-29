Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A58E7F05
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 05:13:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g98rxbkF4ISkGhT8OoaX8lvTZWeSYOkf7+KqMdgUR/I=; b=gofsBDoKQ5VGQ9
	atxeloysdJwtiBQF7B2kts6VHhQHT23ZJE3CYgeQuL1Wp1G8NmahKlkpf3Os7q7Nam+X6r/rYvIDX
	LGgUo/pVnPAIi40ZxPN7x6/Im+o1JSbzOy3PoZry1j7Pl+KAqpctxk9dW/zkTjkiyz/tk0F6VQ37P
	eEy3gNg5buM51LzcNEfAX/CfgOuFe8Shu0e1VfmNIp/f6FJ6YyI6I1XgxfihkLklOJ6u/lFAI4Cw5
	NqHcrZFHxRzjEsT8X2J8nnqf3pfeGD/aTxR35g7L4YtQnNv5HBuxZ7aJzbCx/X0lmEkyYPrF60lPb
	hE9fYeyjhya8fkr74pOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPIsM-00081u-76; Tue, 29 Oct 2019 04:12:58 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPIs2-0007zo-P5
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 04:12:40 +0000
Received: by mail-pg1-x542.google.com with SMTP id f19so8546544pgn.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 21:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=fotQTCwFbUkGmWq3Vfv6xZ57FAEae+iQDNEiUNGXyFA=;
 b=rnSsf3KEcCyiauJP+dBU6It92AJHO4FKeAHf4yULj5px2zirNuwEj6WeFeUVS/BfN4
 yG2fgpEZKrbwiCY9/HlGRBKEg4Odvucywf3sn2BcSZhUTkWujkhrFw5A6aHHeXmL9lQK
 xf0wIqjNH1sYqBeKxN5OHbrR52ZgyZBAklVxVXsG5xzc/Exxft+TivBLBvQqIIBB7mtt
 sYJXojKde/nKs2PFakGZiwCdHeOJM6E0XKOyxiWq3rAXeeqGBGWGmHRH9LbXIuR+WcDu
 GHCb6AjItnZphJuyW+CPvn9qgQIISr0RX6Vm83xfRBMn34d5BKEt+CbRvYz+UEQNHNmj
 6hqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=fotQTCwFbUkGmWq3Vfv6xZ57FAEae+iQDNEiUNGXyFA=;
 b=ef4tazNR9QYu0Z3vNkTSu5GnBdDwNSO+Ib9u9sIbG0ik0qKJEyOk5bamVlbGQH8TqH
 kC3gDc4bZY0oC0XNtOGlWMWNPYOfqTXLGGPlbCbvByBxeMXp6XSgis83vrXvh9kl3osJ
 3QuexG++yfTb2fz/ndZ1FaEypIISfffbm5e+imcqrqcbwCyvmWiUg4uydIvW6ZFI9x7u
 i/KF1hI0zn5XghG/+pxkSY228XCGvdSI0Os7xHXbL4/x8hvIdt+HS5TQA0yD7pl4po9f
 Xjx2JbiCuxHaJhlItwAn9xk3dnEFlSpX6u1qs/y0PBzZz/se2HsCCDrg298fuqEhWwsd
 ApUA==
X-Gm-Message-State: APjAAAVGpTfn6qS13GjtcN9Hs2K8qNERVuNmOF2krCI9wD+lgMMKbhJH
 vf/sHPeuVtvarReMlJgUiJ0=
X-Google-Smtp-Source: APXvYqzhn7DFilMbyw5b9cTxX4wjvnl0wGuIeOA2ub7dz46QVLXJbdGYxKU0J0WYmxtsidT/2aaW9Q==
X-Received: by 2002:a63:1e59:: with SMTP id p25mr24365509pgm.361.1572322356001; 
 Mon, 28 Oct 2019 21:12:36 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id t13sm11663745pfh.12.2019.10.28.21.12.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 21:12:35 -0700 (PDT)
Date: Mon, 28 Oct 2019 21:12:33 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH 1/3] input: edt-ft5x06: Add support for regulator
Message-ID: <20191029041233.GD57214@dtor-ws>
References: <20191029005806.3577376-1-megous@megous.com>
 <20191029005806.3577376-2-megous@megous.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029005806.3577376-2-megous@megous.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_211238_835760_127E2193 
X-CRM114-Status: GOOD (  18.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 =?iso-8859-1?Q?Myl=E8ne?= Josserand <mylene.josserand@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Marco Felsch <m.felsch@pengutronix.de>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-input@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 01:58:04AM +0100, Ondrej Jirman wrote:
> From: Myl=E8ne Josserand <mylene.josserand@bootlin.com>
> =

> Add the support for enabling optional regulator that may be used as VCC
> source.
> =

> Signed-off-by: Ondrej Jirman <megous@megous.com>
> Signed-off-by: Myl=E8ne Josserand <mylene.josserand@bootlin.com>

Applied, thank you.

> ---
>  drivers/input/touchscreen/edt-ft5x06.c | 30 ++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> =

> diff --git a/drivers/input/touchscreen/edt-ft5x06.c b/drivers/input/touch=
screen/edt-ft5x06.c
> index 5525f1fb1526..d61731c0037d 100644
> --- a/drivers/input/touchscreen/edt-ft5x06.c
> +++ b/drivers/input/touchscreen/edt-ft5x06.c
> @@ -28,6 +28,7 @@
>  #include <linux/input/mt.h>
>  #include <linux/input/touchscreen.h>
>  #include <asm/unaligned.h>
> +#include <linux/regulator/consumer.h>
>  =

>  #define WORK_REGISTER_THRESHOLD		0x00
>  #define WORK_REGISTER_REPORT_RATE	0x08
> @@ -88,6 +89,7 @@ struct edt_ft5x06_ts_data {
>  	struct touchscreen_properties prop;
>  	u16 num_x;
>  	u16 num_y;
> +	struct regulator *vcc;
>  =

>  	struct gpio_desc *reset_gpio;
>  	struct gpio_desc *wake_gpio;
> @@ -1036,6 +1038,13 @@ edt_ft5x06_ts_set_regs(struct edt_ft5x06_ts_data *=
tsdata)
>  	}
>  }
>  =

> +static void edt_ft5x06_disable_regulator(void *arg)
> +{
> +	struct edt_ft5x06_ts_data *data =3D arg;
> +
> +	regulator_disable(data->vcc);
> +}
> +
>  static int edt_ft5x06_ts_probe(struct i2c_client *client,
>  					 const struct i2c_device_id *id)
>  {
> @@ -1064,6 +1073,27 @@ static int edt_ft5x06_ts_probe(struct i2c_client *=
client,
>  =

>  	tsdata->max_support_points =3D chip_data->max_support_points;
>  =

> +	tsdata->vcc =3D devm_regulator_get(&client->dev, "vcc");
> +	if (IS_ERR(tsdata->vcc)) {
> +		error =3D PTR_ERR(tsdata->vcc);
> +		if (error !=3D -EPROBE_DEFER)
> +			dev_err(&client->dev,
> +				"failed to request regulator: %d\n", error);
> +		return error;
> +	}
> +
> +	error =3D regulator_enable(tsdata->vcc);
> +	if (error < 0) {
> +		dev_err(&client->dev, "failed to enable vcc: %d\n", error);
> +		return error;
> +	}
> +
> +	error =3D devm_add_action_or_reset(&client->dev,
> +					 edt_ft5x06_disable_regulator,
> +					 tsdata);
> +	if (error)
> +		return error;
> +
>  	tsdata->reset_gpio =3D devm_gpiod_get_optional(&client->dev,
>  						     "reset", GPIOD_OUT_HIGH);
>  	if (IS_ERR(tsdata->reset_gpio)) {
> -- =

> 2.23.0
> =


-- =

Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
