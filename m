Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 938B837165
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 12:13:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nadkuwmmUPWXp4Oj3ES8f7ZCChT9jDPrxRZsXBH+hV4=; b=WK2OMfTEV3qV9d
	f6HRs+ZD94pafGTigWxuNAKim165cLWvty8K0QDrNwVzJiuspalUef/I+JD63nX8pfJUDKHBS9tkd
	zAaM/kX1aIsWwd3c6MSIsu6J/ekQtOYY8zeOcvKZu1swhdMgIS8EZLH8SA1+0zjm3rGFzgdp9nIFi
	c4jw5n1ucoUOwxSgFgd0QCksuU96XlLWPC0TZbhLM1CBwjksR6lB0WzubVtxl7D725AkfdSyc1xZX
	MsDOdtod2rJQXd+5HaqUYTMsfPz5jtKlzx4G99IzQHJ/BUwaFZhADlIBODEqy3BPwKa6yg06voxYg
	Zmy2imZz3VRgHjwwJjww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYpOl-0002NF-3t; Thu, 06 Jun 2019 10:13:31 +0000
Received: from lb3-smtp-cloud7.xs4all.net ([194.109.24.31])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYpOd-0002Mu-Ap
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 10:13:24 +0000
Received: from [192.168.2.10] ([46.9.252.75])
 by smtp-cloud7.xs4all.net with ESMTPA
 id YpOXhyGU13qlsYpOahlotZ; Thu, 06 Jun 2019 12:13:21 +0200
Subject: Re: [PATCH 5/8] drivers: media: coda: fix warning same module names
To: Anders Roxell <anders.roxell@linaro.org>, mchehab@kernel.org,
 p.zabel@pengutronix.de
References: <20190606094722.23816-1-anders.roxell@linaro.org>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <d6b79ee0-07c6-ad81-16b0-8cf929cc214d@xs4all.nl>
Date: Thu, 6 Jun 2019 12:13:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190606094722.23816-1-anders.roxell@linaro.org>
Content-Language: en-US
X-CMAE-Envelope: MS4wfF4tKlHxT213q5iKkMxyEhwvsl3wRabWeNLK5xiL8WKLAag63A3TOZyGmKvKw2GQ0WfyjxjXTEd9W8wEzukVk+psIlgFMWLll5pj2JsOATa9DeAuydvZ
 ddjJv6cbw+Yx00MItRjqmMci92xnhEnHpv1M2w59zA1NDNGjmRLSq3cAdtQxlM27/Up8XeGggGd09JeaXKionqZ4Ox8OkYGd75CEkMLwS0I9oFo2oaXlp2qm
 zHxHG7t/dsOA8w/WL8cjzmpNJprbOGialY+uHK0qhAd6ngo3E2+LWOtDMpiv8+29lafVg2h2MXmbJqTrD08YPp+dHbGmMooIEajhJOaXAsTO9DMXSW1DnGgb
 Mi+uPtNhxzXZNVHnKkgZylEAS1Gj9Btw1D2qstbFAGFqawel2DS7gaY7PnQwOyvQDUehTrtumQUrh09usYJrS95kgXOPsOuu9vdTrS9bCu3XLxvP83rFa7K4
 iRkei2i0QauBZ+765x4Q0YbU2MzvUEyEC/yU99imriRBIOT799HstalWgtztqFMWEOMUBGV6QT9McaXUQxxn1zJjzrhgJj6CwFejoRwRWeYKwsW9fgpwBWwy
 NgSZjZuEljrA0R8Der2ECk2NLkklIrPaIzz4+7f45/5Rg3AxiqHLmyd3gj/w7qDJjczZSXQntVVEXmhKhlGVziBa2olD9SYqZW5ea+F4y5ryBoJJXKeRqJdT
 tylLYuM7/v98g46LHLxat4QbrH4tbb0OQ6PVAoOzoPM+fU4eOOTZ318lqx8uL7K4w+bXwy6AyagH24lDBaWhhE6Ak0oPkTiWkzj+zIMgcHnUBVj2qyaZ+tGz
 49QGEH34eopVfAjGrY27QDYRwjAXHkE34k/PrX5pFSdpYBaRZmp7Cy7hsJ65WK3Eqac5SwfaayWzyuqV27vo48JIPhsH5LTGMqwPFbq3mOKKvs5I0+GRKlB3
 Xzk7eNEZqr4/hN04KmzKR9jYfWw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_031323_533351_E4487B0D 
X-CRM114-Status: GOOD (  12.63  )
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
Cc: andrew@lunn.ch, linux-fbdev@vger.kernel.org, airlied@linux.ie,
 stefan@agner.ch, linux-kernel@vger.kernel.org, a.hajda@samsung.com,
 lee.jones@linaro.org, marex@denx.de, f.fainelli@gmail.com,
 vivien.didelot@gmail.com, linux-media@vger.kernel.org,
 b.zolnierkie@samsung.com, s.hauer@pengutronix.de, broonie@kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org, lgirdwood@gmail.com, daniel@ffwll.ch,
 shawnguo@kernel.org, davem@davemloft.net, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/6/19 11:47 AM, Anders Roxell wrote:
> When building with CONFIG_VIDEO_CODA and CONFIG_CODA_FS enabled as
> loadable modules, we see the following warning:
> 
> warning: same module names found:
>   fs/coda/coda.ko
>   drivers/media/platform/coda/coda.ko
> 
> Rework so media coda matches the config fragment. Leaving CODA_FS as is
> since thats a well known module.
> 
> Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
> ---
>  drivers/media/platform/coda/Makefile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/media/platform/coda/Makefile b/drivers/media/platform/coda/Makefile
> index 54e9a73a92ab..588e6bf7c190 100644
> --- a/drivers/media/platform/coda/Makefile
> +++ b/drivers/media/platform/coda/Makefile
> @@ -1,6 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  
> -coda-objs := coda-common.o coda-bit.o coda-gdi.o coda-h264.o coda-mpeg2.o coda-mpeg4.o coda-jpeg.o
> +video-coda-objs := coda-common.o coda-bit.o coda-gdi.o coda-h264.o coda-mpeg2.o coda-mpeg4.o coda-jpeg.o
>  
> -obj-$(CONFIG_VIDEO_CODA) += coda.o
> +obj-$(CONFIG_VIDEO_CODA) += video-coda.o

How about imx-coda? video-coda suggests it is part of the video subsystem,
which it isn't.

Regards,

	Hans

>  obj-$(CONFIG_VIDEO_IMX_VDOA) += imx-vdoa.o
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
