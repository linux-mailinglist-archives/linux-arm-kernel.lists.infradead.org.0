Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F5DA52F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 11:39:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hSww+wkWDkTBn+wgqLs/9VHpS9Dj8j5OrlxJCv7zW+A=; b=i5IsG12TfetrRZP06V9Atvvw6g
	mbzkg3zvNHR+P758S5hcjIZrnp+CKCQEw3cOftuaVgfbkHRgubckuVa7jbOGNouwzp/Qvb18AycV/
	jEhzb6lzlY3Tq0t5TfyAONaDTcYspX+JrRKljVqRCGhpKHVftXeONDzWLgClKi/b8dUNSdDQgPQHB
	0Weap4A0kiFT1/7EEOMRjy8e1wpbOULWOUDUfzztBBroUAw25wE0q/RIIo+b58ap4ssVLAraSb7zN
	pOFOlodpapFR8AGQjtgGxBTTewlaKZ8vNlTJuhpaRuLpVJ6yV1SDaUGAYg0PgfTsyW3GIKrbBXu65
	rozdkdOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4inv-0003ac-4e; Mon, 02 Sep 2019 09:39:19 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4ing-0003Zp-76
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 09:39:05 +0000
Received: by mail-wm1-x344.google.com with SMTP id p13so13892113wmh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 02:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=TuI9rd12MfxFCijDCnxps6RQxMfXZ9+gpL/KNKqGJec=;
 b=MvNFZ1/jbfE4vo5KXjxBEUkydGqOUTy8/La+RmqGYg5z2JPMO4Qd0g2/1gppakerEf
 R+9Sj7AHvlz/9wAfHYLgtAfERiRSR9JjQa7RSa0vIohbKMR7hJPH87Bgf/jVqZ8nCo2a
 l71eHN00Xhi7Dnp4J/12HU59pZXlaoSB6fYGx6pWRC6n+SU6CM82+HEnH4AVywthNWtI
 zG6kcdf3TtKfKoFTLPdQ8PY/9oi24mzPlTBu1oytWaJG7bv8p7JTIL2cXqRivwJuRva4
 FfZdqgg24TrobN/IjD4hgTjIitilPnkaWpFgJGp7C1epJ8tFPCy0C2MvvdFI4kMzRgnK
 stkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=TuI9rd12MfxFCijDCnxps6RQxMfXZ9+gpL/KNKqGJec=;
 b=Uau69RG5QP8jchwFf2qfdwpwyH07tkTq/NbIb2Fl7plX9WhdsVcsXk9cjY6HQM84an
 fz+tdoRRyy628ABwjb5CR9010hN6EwYq2KedYHFGuzNtdrpEjVWwseegKljC/+9JxtQC
 zXpqbScjN6Lbg734o5cqvgv1+i6efY+FXWhG8MtedTj6iqWJH/cyQJI3o6wcveBBR3qb
 vkyDvYnq78WnnkRA1vkP7ICxmNYHQamC2timbXBqJHw9XK8ftKIz0O3RdGilWa7AgBO7
 jtfcFOkYcr99R/1fET0AjVbXVmj4Re9xoA0j2r6XQP/l1j+HeUkllGHYRDRVUw+HUdYJ
 JU+Q==
X-Gm-Message-State: APjAAAXvqguOgMQF7A/cvwN1T8j3zmzuC/g3CohE405kICZGuVRi7mrT
 FzTjrmbxeBaqNO9pOwN/8G1b4j2p2Mk=
X-Google-Smtp-Source: APXvYqxLMl9twPuZRaBPGCt6IQrTMUDpWGDiRa+m+TO/WYNNG1GFTxiKSkMi81n2v/MwR6YMiUQ8ZQ==
X-Received: by 2002:a1c:c909:: with SMTP id f9mr35144152wmb.52.1567417142665; 
 Mon, 02 Sep 2019 02:39:02 -0700 (PDT)
Received: from arch-late (87-196-73-69.net.novis.pt. [87.196.73.69])
 by smtp.gmail.com with ESMTPSA id t123sm14100440wma.40.2019.09.02.02.39.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 02:39:01 -0700 (PDT)
References: <20190805233505.21167-1-slongerbeam@gmail.com>
 <20190805233505.21167-16-slongerbeam@gmail.com>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Steve Longerbeam <slongerbeam@gmail.com>
Subject: Re: [PATCH 15/22] media: imx7-media-csi: Create media links in bound
 notifier
In-reply-to: <20190805233505.21167-16-slongerbeam@gmail.com>
Date: Mon, 02 Sep 2019 10:38:59 +0100
Message-ID: <m3blw35970.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_023904_284227_7473650A 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
On Tue 06 Aug 2019 at 00:34, Steve Longerbeam wrote:
> Implement a notifier bound op to register media links from the remote
> sub-device's source pad(s) to the CSI sink pad.
>
> Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
> ---
>  drivers/staging/media/imx/imx7-media-csi.c | 24 ++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
> index a1c96c52a606..f71ac485f780 100644
> --- a/drivers/staging/media/imx/imx7-media-csi.c
> +++ b/drivers/staging/media/imx/imx7-media-csi.c
> @@ -196,6 +196,11 @@ struct imx7_csi {
>  	struct completion last_eof_completion;
>  };
>
> +static inline struct imx7_csi *notifier_to_dev(struct v4l2_async_notifier *n)
>

As the other one add the namespace for the function name:
imx7_csi_notifier_to_dev

other than this, looks good to me.

Cheers,
  Rui
> +{
> +	return container_of(n, struct imx7_csi, notifier);
> +}
> +
>  static u32 imx7_csi_reg_read(struct imx7_csi *csi, unsigned int offset)
>  {
>  	return readl(csi->regbase + offset);
> @@ -1173,6 +1178,23 @@ static int imx7_csi_parse_endpoint(struct device *dev,
>  	return fwnode_device_is_available(asd->match.fwnode) ? 0 : -EINVAL;
>  }
>
> +static int imx7_csi_notify_bound(struct v4l2_async_notifier *notifier,
> +				 struct v4l2_subdev *sd,
> +				 struct v4l2_async_subdev *asd)
> +{
> +	struct imx7_csi *csi = notifier_to_dev(notifier);
> +	struct media_pad *sink = &csi->sd.entity.pads[IMX7_CSI_PAD_SINK];
> +
> +	return media_create_fwnode_pad_links(sink,
> +					     dev_fwnode(csi->sd.dev),
> +					     &sd->entity,
> +					     dev_fwnode(sd->dev), 0);
> +}
> +
> +static const struct v4l2_async_notifier_operations imx7_csi_notify_ops = {
> +	.bound = imx7_csi_notify_bound,
> +};
> +
>  static int imx7_csi_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> @@ -1253,6 +1275,8 @@ static int imx7_csi_probe(struct platform_device *pdev)
>
>  	v4l2_async_notifier_init(&csi->notifier);
>
> +	csi->notifier.ops = &imx7_csi_notify_ops;
> +
>  	ret = v4l2_async_register_fwnode_subdev(&csi->sd, &csi->notifier,
>  						sizeof(struct v4l2_async_subdev),
>  						NULL, 0,


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
