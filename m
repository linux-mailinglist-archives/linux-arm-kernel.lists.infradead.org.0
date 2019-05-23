Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57EE227755
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 09:40:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3bTsbkzpKao1+teNmc6sst48t10uKAGjh0/+DM5X4bU=; b=ShWiayAap4l2GH
	PIkqdhLsHtD3POdnLKUYLbI4RVeuLHqmTPcHajUccejiK/Z32TLytWV5L4HHijlTW5WC2Lv8W1mXC
	xbb9lQ//Lp5AK8+MEPER6IuMLeQcSklXzZAiPlTpZiGGqcH9v8exaUcf9alrZZgIaNksyasEhqFMw
	D+g8/UePm7M0ZfMl6RHK7oJCfL8+gmBrcMn4OgaWOddQCX4eDdVFwHhF5RMfXBMzHthNnkctg20xI
	ZWzwpzwvieNCkcLWrOrFZqyxzCFWtXDtp5My8cxnRN0McbIExlu0kwhrYsLZjo4HSiq5PM4LDIiEe
	T26GmHxGbasaBpVibZdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTiLL-0001oK-Hl; Thu, 23 May 2019 07:40:51 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTiLD-0001nW-I0
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 07:40:45 +0000
Received: by mail-ed1-f68.google.com with SMTP id l25so7801284eda.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 00:40:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zcZNWFhbFfJQ2YJR3RMy8RLxv+am/SNxNspWdV0HcRU=;
 b=K779pBUQMQ54ylFtv2yVTE0SXAkNCS+FbfchJDFljWekUvwil2l3RTHIv5VEXR/7Jm
 uoHd6AAsoGAIf5KHeNxJM3YSqCAA3tSK0sAcHcuWGSW4c68aLRVYyRgIibeSNV8sI9hu
 mLNZAFTjetiAjs0+yAYGVl6M/jOjkCoTzZt3GOf8McDU18TNyCvzE+uHlMXrEo1cWs8I
 WFzoImSuNMa90OLiKzWglRfQTuB50tpfM1zWsspSVXZdkwKuCJY82wrCZeYMs+xu8ZNY
 /S/GQpTjC+8x/JM7O8a0qxbTiUecc5O1QkadSgmgCrGLhV7tNj1HIaxz/4u5VtDR6f7p
 Aokg==
X-Gm-Message-State: APjAAAU9ImgOWU4C4OSYQWkQ5Pq8CPI+QLPXPnqo/m7wtWZxhFxBaZpE
 KOSxGdDNG2UoBn5PDCABHopRi2mRzHc=
X-Google-Smtp-Source: APXvYqxqCnb3k9ivFTPmHOZjw3CSBt4dPpAYe6cWjp1ojNczOz+YJXFmI5aQ0eHyTXW1Is8lJOQdvg==
X-Received: by 2002:a17:906:4d4d:: with SMTP id
 b13mr34368492ejv.109.1558597241256; 
 Thu, 23 May 2019 00:40:41 -0700 (PDT)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com.
 [209.85.221.41])
 by smtp.gmail.com with ESMTPSA id qq13sm4263042ejb.1.2019.05.23.00.40.39
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 00:40:39 -0700 (PDT)
Received: by mail-wr1-f41.google.com with SMTP id u16so1161138wrn.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 00:40:39 -0700 (PDT)
X-Received: by 2002:adf:dfc4:: with SMTP id q4mr1789132wrn.201.1558597238896; 
 Thu, 23 May 2019 00:40:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190523065013.2719D68B05@newverein.lst.de>
 <20190523065352.8FD7668B05@newverein.lst.de>
In-Reply-To: <20190523065352.8FD7668B05@newverein.lst.de>
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 23 May 2019 15:40:25 +0800
X-Gmail-Original-Message-ID: <CAGb2v66+1+goJfnY7nWTGN2fupqMUm5o+gkPdUW6nxcwQEDwog@mail.gmail.com>
Message-ID: <CAGb2v66+1+goJfnY7nWTGN2fupqMUm5o+gkPdUW6nxcwQEDwog@mail.gmail.com>
Subject: Re: [PATCH 3/6] drm/bridge: extract some Analogix I2C DP common code
To: Torsten Duwe <duwe@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_004043_596388_5D607FCD 
X-CRM114-Status: GOOD (  17.98  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 2:54 PM Torsten Duwe <duwe@lst.de> wrote:
>
> From: Icenowy Zheng <icenowy@aosc.io>
>
> Some code can be shared within different DP bridges by Analogix.
>
> Extract them to a new module.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> Signed-off-by: Torsten Duwe <duwe@suse.de>
> ---
>  drivers/gpu/drm/bridge/analogix/Kconfig            |   4 +
>  drivers/gpu/drm/bridge/analogix/Makefile           |   2 +
>  drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c | 146 +-----------------
>  .../gpu/drm/bridge/analogix/analogix-i2c-dptx.c    | 169 +++++++++++++++++++++
>  .../gpu/drm/bridge/analogix/analogix-i2c-dptx.h    |   2 +
>  5 files changed, 178 insertions(+), 145 deletions(-)
>  create mode 100644 drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c
>

...

>  static int anx78xx_set_hpd(struct anx78xx *anx78xx)
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c b/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c
> new file mode 100644
> index 000000000000..9cb30962032e
> --- /dev/null
> +++ b/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c
> @@ -0,0 +1,169 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright(c) 2017 Icenowy Zheng <icenowy@aosc.io>
> + *
> + * Based on analogix-anx78xx.c, which is:
> + *   Copyright(c) 2016, Analogix Semiconductor. All rights reserved.

If this was simple code movement, then the original copyright still applies.
A different copyright notice should not be used. I suppose the same applies
to the module author.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
