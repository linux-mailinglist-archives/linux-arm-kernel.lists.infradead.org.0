Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3121F3715A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 12:11:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eZTmjuRaK7M/YW6h64t/HDrBEkvQR0LS8Ji1BnI7KRA=; b=jbYONcExQYWMz0
	h/6s+0xGKVSppWc4FZFcPyBKCpETSsOw/Rs9E4xLTZ2QSfcIqSuAUNqn3XLLyr5uMoaCpwkawTou3
	bpneGk4v6CuG4UNbH2DpInY8Q9PdI1gA1l6xYa9Oohg306nmwc+iwfiOaoZPZgnmS9IWk2ckqZnmO
	vsdwFlsVlrZk/pTTemadjJHm2fUCaJEw8iD9ACZZZ4bzg260ojRCxqVXfJ82WVDHDBNcW8fD847gi
	dmQuEbncKJj7Bw99YCo/qG+wDwTBE8YlfJAb7RcKrGPc5J6QKPl2Oe+rwu3ydl/HjTa9foDUDYaEQ
	KHwoioAN9I1zP3EbMlhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYpN1-00023f-Ev; Thu, 06 Jun 2019 10:11:43 +0000
Received: from lb3-smtp-cloud7.xs4all.net ([194.109.24.31])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYpMs-00021j-EN
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 10:11:38 +0000
Received: from [192.168.2.10] ([46.9.252.75])
 by smtp-cloud7.xs4all.net with ESMTPA
 id YpMehyF6B3qlsYpMihlo7j; Thu, 06 Jun 2019 12:11:31 +0200
Subject: Re: [PATCH 4/8] drivers: media: i2c: fix warning same module names
To: Anders Roxell <anders.roxell@linaro.org>, airlied@linux.ie,
 daniel@ffwll.ch, a.hajda@samsung.com, mchehab@kernel.org
References: <20190606094717.23766-1-anders.roxell@linaro.org>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <70810da0-817a-0863-d9d4-6410c7f4e9b9@xs4all.nl>
Date: Thu, 6 Jun 2019 12:11:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190606094717.23766-1-anders.roxell@linaro.org>
Content-Language: en-US
X-CMAE-Envelope: MS4wfAZS+cd+pLaijzjhBz+L7H/aWoGI2ifiKUOPcY/4i27o0giIMr3P3cOG4Z5ABNIakccyPQPCTGlPttM2yk7ggTF/romUsjuwljGIBX2+ZhDG20ND7r/8
 gknRZ4LBNPThxTQVzqQr1Yrt55RLfx0sTK2sFGx59wp6mIKwHxN8NwNPU44tDw5rN/u9TlqRftHQruCiYSDGyo4pMCZIQWVdLHjEt58b1mj4TYhr27JTsKio
 X5JHx2ulb/iQOmE2otX1p9rQyw8lQtZiuPv2K//3jutLbuar/Cyshhg7TJ/mPjj0ULLDTzsO8wV8ANeHylJf45mtLkzlJlRPUHl1nzn77T5CjW2xbK+VBhUB
 ZJudCQ3gclEI1ar2GUzyapbeBi1lE7ek8F6o8Xmb5L+9yhTs3j+l0SGElJfeIvXxmX/udS2v1b+k3pY5cXfPNOC62xgQFFOPJiXoj3R+frLgGhcgeKa/TJwP
 5XONSsEnk8MmJ3QCjJeW2ijvAOqbJY2QRbf2xR87BeuC8/iUNeFTpq4RHLgnQ5Hwz7gypkVeixXlO6gA8BofxEk4Qswzjh/NqFFNKMDI2DjqF/v18ab6mLfi
 XZZa2Tk6J59h/uj/D52k3qdy9QIOSMTempANKnpX2RWEag/Mfa3ao6IFkYKa9cYyCILqpFfdEGDnr2PDpeycr0/Ksd3tLMTYcu+OAewH6no03/+fEUEayBsP
 vmXkDw0HhUqW4EzmZyJjkBLkkpoi1C16YhEZ63tL6ub41pmMUwgd5QVStJPOh0frAaYLngVtSYmyvkPdPcQf89acuwYrvdmzcOmrJk9QIG686MP7Pqyf4YF/
 DjF8AudR+HHTg27UgtTtot0MZsaGF7cDuKoSg8BGIvExF+bSEIuRUJBDZgjglQGMIZzAtTbRCDILv4oFyZKCtZmrBW7DGgfrXbY0Mtbrn/lfsJdIcdpYZfGs
 zkC7fsS3iB+oYw0fy1qVrhvQ6Z8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_031134_635557_867591AB 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: marex@denx.de, andrew@lunn.ch, linux-fbdev@vger.kernel.org,
 f.fainelli@gmail.com, linux-arm-kernel@lists.infradead.org,
 b.zolnierkie@samsung.com, lee.jones@linaro.org, s.hauer@pengutronix.de,
 lgirdwood@gmail.com, stefan@agner.ch, davem@davemloft.net, broonie@kernel.org,
 dri-devel@lists.freedesktop.org, p.zabel@pengutronix.de,
 netdev@vger.kernel.org, linux-media@vger.kernel.org, shawnguo@kernel.org,
 vivien.didelot@gmail.com, linux-kernel@vger.kernel.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/6/19 11:47 AM, Anders Roxell wrote:
> When building with CONFIG_VIDEO_ADV7511 and CONFIG_DRM_I2C_ADV7511
> enabled as loadable modules, we see the following warning:
> 
> warning: same module names found:
>   drivers/gpu/drm/bridge/adv7511/adv7511.ko
>   drivers/media/i2c/adv7511.ko
> 
> Rework so the names matches the config fragment.
> 
> Signed-off-by: Anders Roxell <anders.roxell@linaro.org>

Change it in media, not in drm. The v4l2 adv7511 is rarely used, so it
makes sense to rename that, and not this drm driver.

> ---
> This is only one issue that have been addressed.
> The other issue is that itseems to refer to the same device name in
> i2c_device_id, any guidance how that should be solved?

You should never have both modules loaded. In fact, I think it is a good
idea to disable VIDEO_ADV7511 if DRM_I2C_ADV7511 is set in the Kconfig,
unless TEST_COMPILE is also set.

Regards,

	Hans

> 
> 
> Cheers,
> Anders
> 
>  drivers/gpu/drm/bridge/adv7511/Makefile | 10 +++++-----
>  drivers/media/i2c/Makefile              |  3 ++-
>  2 files changed, 7 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/adv7511/Makefile b/drivers/gpu/drm/bridge/adv7511/Makefile
> index b46ebeb35fd4..e367426bd73e 100644
> --- a/drivers/gpu/drm/bridge/adv7511/Makefile
> +++ b/drivers/gpu/drm/bridge/adv7511/Makefile
> @@ -1,6 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0-only
> -adv7511-y := adv7511_drv.o
> -adv7511-$(CONFIG_DRM_I2C_ADV7511_AUDIO) += adv7511_audio.o
> -adv7511-$(CONFIG_DRM_I2C_ADV7511_CEC) += adv7511_cec.o
> -adv7511-$(CONFIG_DRM_I2C_ADV7533) += adv7533.o
> -obj-$(CONFIG_DRM_I2C_ADV7511) += adv7511.o
> +drm-i2c-adv7511-y := adv7511_drv.o
> +drm-i2c-adv7511-$(CONFIG_DRM_I2C_ADV7511_AUDIO) += adv7511_audio.o
> +drm-i2c-adv7511-$(CONFIG_DRM_I2C_ADV7511_CEC) += adv7511_cec.o
> +drm-i2c-adv7511-$(CONFIG_DRM_I2C_ADV7533) += adv7533.o
> +obj-$(CONFIG_DRM_I2C_ADV7511) += drm-i2c-adv7511.o
> diff --git a/drivers/media/i2c/Makefile b/drivers/media/i2c/Makefile
> index d8ad9dad495d..b71a427a89fd 100644
> --- a/drivers/media/i2c/Makefile
> +++ b/drivers/media/i2c/Makefile
> @@ -35,7 +35,8 @@ obj-$(CONFIG_VIDEO_ADV748X) += adv748x/
>  obj-$(CONFIG_VIDEO_ADV7604) += adv7604.o
>  obj-$(CONFIG_VIDEO_ADV7842) += adv7842.o
>  obj-$(CONFIG_VIDEO_AD9389B) += ad9389b.o
> -obj-$(CONFIG_VIDEO_ADV7511) += adv7511.o
> +obj-$(CONFIG_VIDEO_ADV7511) += video-adv7511.o
> +video-adv7511-objs          := adv7511.o
>  obj-$(CONFIG_VIDEO_VPX3220) += vpx3220.o
>  obj-$(CONFIG_VIDEO_VS6624)  += vs6624.o
>  obj-$(CONFIG_VIDEO_BT819) += bt819.o
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
