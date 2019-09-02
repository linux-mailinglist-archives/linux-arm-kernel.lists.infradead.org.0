Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F1CA52F5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 11:37:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bs4LqaAesiKjWuBTq9/ibHlzQ4SNltFtHKXf0rGNeOI=; b=VWDSDXNG32RxERRc6vSBQnxrEL
	EjIB1d7V0VWYPizTdpuFw4mdoBcG2uB3ltyKZ3VtCvRYH7K5sUAPmDW7oPpjs8KcV4M94jL1k0dNZ
	fqyBRk0iBlRdq+47Uwq5eOpSvsEUU7k3qWKRM8t0sM/q2CvJQWQACZw4hq3yHCv1JR5l3sM8ADEg3
	AHqfD+tUQF3rR4NCaGEDRNjYxWI67Tz2qQpGL5xZ1sMNR88ftn4W8JKHtEYG3Clomf0OM8fFSkLou
	b0GkAkOexgyDvChLU61XSyN7wHl/eaQvi3ddgxDB454iohDeb9ZtBIj9+KmROIr4ckH0rcpF4CK3K
	iQKQGGtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4ilc-0003HQ-Hc; Mon, 02 Sep 2019 09:36:56 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4ilG-0003GQ-Px
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 09:36:37 +0000
Received: by mail-wr1-x443.google.com with SMTP id b16so13249189wrq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 02:36:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=7S+vZhVc5zHeiLc/DC6Z2xOOWxBDBUvpp/e3pBI1NHw=;
 b=SdLltcIqfSTbhoDBqB0JMt9oUEV92Oj/pOU/Ob14cQsQPj+tVBpl3Rr/9U2efcxzSw
 G8V7L49e6FUh7X+XY0Pg/NAWU3hPUVh0bflsweMM8+44JIlZC41qyHKccjz9hEOHtKhY
 /QRuBI2cRf2dQ7DB1g4J4239lW7vLw2cgwLL1JxWT7n/w6icES8esjSDU3uL6EVcGoSN
 i+6J3BjMyq3zpw/INszfY/hWVYhfXhS323KJNFt4RJY0spsQRPWWQys/InPvU+ohDXba
 m9DYKI8EqZolY7g8hH/XWLgJB1E0iNyLz/UxqPT+3QFN1mecQQkw6V9VJz79skA3pCjJ
 44IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=7S+vZhVc5zHeiLc/DC6Z2xOOWxBDBUvpp/e3pBI1NHw=;
 b=XCUDgb+CtgiM1J1gwebXhQB10sVEMW9uAK6zjfpU6aep8SzuO1LLi0IP7alg29BggF
 vxUNEqMfBcFgl37KaaxEMfMKL4ZfpepKuvcO+X8YSKOWVQVVYFeqWZiBr1NIy8Ocnbi6
 QAjFmV79wUKSYYgmDOe0kh89hQKbf3UmpQGHi3gc7od0JivgzFiHgCW+ri5Jwbn0d+ej
 NN6c5o3BPXJpWgTaHr8kbr/Xyv1HEBUjsEwjbNoqwSjtNM3tBn5q5JxGaCdq9NqZGaB2
 G+u1ZJ6LwWCQ6l4d+s+BZ6a4DO/WQHuv7KqmsnOW9WId8/3AP2S8dpatVMyk5+x0ZDtl
 b2sg==
X-Gm-Message-State: APjAAAXVvd+oygO6WFvE7TwjmfZbUUbMquOlLxDhoVdtXvJP1fablH3T
 IFVBwQluH3hnqtn2+ezRMsA=
X-Google-Smtp-Source: APXvYqwnZx3UsFw9tXhL1LKY1pc0SI7+G9To5dGcweMEWFrJ8hdLdd2oaTaKuKhIo7cilHZxWPmycw==
X-Received: by 2002:adf:d187:: with SMTP id v7mr36485204wrc.33.1567416990962; 
 Mon, 02 Sep 2019 02:36:30 -0700 (PDT)
Received: from arch-late (87-196-73-69.net.novis.pt. [87.196.73.69])
 by smtp.gmail.com with ESMTPSA id r6sm14586137wmf.0.2019.09.02.02.36.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 02:36:28 -0700 (PDT)
References: <20190805233505.21167-1-slongerbeam@gmail.com>
 <20190805233505.21167-15-slongerbeam@gmail.com>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Steve Longerbeam <slongerbeam@gmail.com>
Subject: Re: [PATCH 14/22] media: imx7-mipi-csis: Create media links in bound
 notifier
In-reply-to: <20190805233505.21167-15-slongerbeam@gmail.com>
Date: Mon, 02 Sep 2019 10:36:20 +0100
Message-ID: <m3d0gj59bf.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_023636_364915_CC1BC148 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rmfrfs[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Steve,
Just to let you know that this series no longer apply clean after
your other series:
media: imx: Fix subdev unregister/register issues

And since you will need to send a new one, some notes...

On Tue 06 Aug 2019 at 00:34, Steve Longerbeam wrote:
> Implement a notifier bound op to register media links from the remote
> sub-device's source pad(s) to the mipi csi-2 receiver sink pad.
>
> Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
> ---
>  drivers/staging/media/imx/imx7-mipi-csis.c | 25 ++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
>
> diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
> index f71d9183cad2..e03b2317a1ac 100644
> --- a/drivers/staging/media/imx/imx7-mipi-csis.c
> +++ b/drivers/staging/media/imx/imx7-mipi-csis.c
> @@ -259,6 +259,12 @@ struct csi_state {
>  	bool sink_linked;
>  };
>
> +static inline struct csi_state *
> +notifier_to_csis_state(struct v4l2_async_notifier *n)
>

instead of adding this between structs declaration can you move it
down near the similar converter:

static struct csi_state *mipi_sd_to_csis_state(struct v4l2_subdev *sdev)

and remove the inline since the compiler should do this and add
namespacing function name like the other functions, something like:

static struct csi_state * mipi_notifier_to_csis_state(struct v4l2_async_notifier *n)

Just to coherency.

Other than this, looks good to me.

Cheers,
   Rui

> +{
> +	return container_of(n, struct csi_state, notifier);
> +}
> +
>  struct csis_pix_format {
>  	unsigned int pix_width_alignment;
>  	u32 code;
> @@ -863,6 +869,23 @@ static int mipi_csis_parse_endpoint(struct device *dev,
>  	return 0;
>  }
>
> +static int mipi_csis_notify_bound(struct v4l2_async_notifier *notifier,
> +				  struct v4l2_subdev *sd,
> +				  struct v4l2_async_subdev *asd)
> +{
> +	struct csi_state *state = notifier_to_csis_state(notifier);
> +	struct media_pad *sink = &state->mipi_sd.entity.pads[CSIS_PAD_SINK];
> +
> +	return media_create_fwnode_pad_links(sink,
> +					     dev_fwnode(state->mipi_sd.dev),
> +					     &sd->entity,
> +					     dev_fwnode(sd->dev), 0);
> +}
> +
> +static const struct v4l2_async_notifier_operations mipi_csis_notify_ops = {
> +	.bound = mipi_csis_notify_bound,
> +};
> +
>  static int mipi_csis_subdev_init(struct v4l2_subdev *mipi_sd,
>  				 struct platform_device *pdev,
>  				 const struct v4l2_subdev_ops *ops)
> @@ -895,6 +918,8 @@ static int mipi_csis_subdev_init(struct v4l2_subdev *mipi_sd,
>
>  	v4l2_async_notifier_init(&state->notifier);
>
> +	state->notifier.ops = &mipi_csis_notify_ops;
> +
>  	ret = v4l2_async_register_fwnode_subdev(mipi_sd, &state->notifier,
>  						sizeof(struct v4l2_async_subdev),
>  						&sink_port, 1,


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
