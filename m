Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19730606FC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 15:57:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RAT5KhOpniqc4xX85uBG2YphMAyCZ5/gkyIO3tzXj6Q=; b=hCr2vU9Xwz1TSu
	x5j18dB0UhJu96D7U3QUtdtm6jfIFS513zXhqh+Sayu4ntlkSanAUltHLs6duozl9aTm4HYFQ5Fq6
	wyFEww3AiPSOVHRwUUwYa4SxYP2qHh25KjqCjVLYe+zsyn+LOqXZ2YJnrjaU9YTkdgmey7KFHe6OY
	13ig9LAiHfj+YeF/h2HFG4Mk2Cn0uDVA2PeyIiUm26KvbFN8ZjtPm279MPwoWKyC+QpECnf2Gbxvw
	M8F4IhYqWmWccK+DKzKpTMBBE3rgeWEYyMmwDGFjfOU7egiJ0Zt06gbUvTnN4MQMirFGsPu/g73gX
	ar5XZ2F45Aue0bMqDR/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOin-0000VH-1Z; Fri, 05 Jul 2019 13:57:53 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjLQs-0003l9-CI
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 10:27:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3t+zgd89urMwyLM0D9UHDkx7bB8t2PXWzmyEPuYPUAw=; b=ENsB9ItefjFVdLreXQdHimaaX
 RdSM7WtTFkPQnM+GsmJJX4jBC09qmgDUydvh0Rt/phQ/7XHbp3q/Rn30caogPrIQUA6WS1QOgymEY
 Ohi9kp1jYhdwr5yXJXp2Y91RNxSQclBFWiXU/zlUIaUINVPDqvixIXcwepsIwG60lzIlFDiTptM42
 YFo8UujjSaPcMroYyMLp3+3HWFyMHOeM3bTpOeVNoHellhnVOtGKsKqC6MKHCjX1NWVQa+H1/j7Jt
 5tvFezj5ccnr15kg0QL9CyMkNDbX+E+2N7GFjJnDxj964WRkkE7GWCjRavyJBXFWNIDJidVLqsJHm
 OBwaCjObg==;
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjLQW-00016z-UU
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 10:26:51 +0000
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 637FD24000D;
 Fri,  5 Jul 2019 10:26:04 +0000 (UTC)
Date: Fri, 5 Jul 2019 12:26:03 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH 1/2] staging: media: sunxi: Change return type of
 cedrus_find_format()
Message-ID: <20190705102603.GA1645@aptenodytes>
References: <20190703081317.22795-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190703081317.22795-1-nishkadg.linux@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devel@driverdev.osuosl.org, maxime.ripard@bootlin.com,
 gregkh@linuxfoundation.org, wens@csie.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed 03 Jul 19, 13:43, Nishka Dasgupta wrote:
> Change return type of cedrus_find_format to bool as it is only called
> once, by a function whose return value is bool, and the return value of
> cedrus_find_format is returned as-is at the call-site.
> Issue found with Coccinelle.

The purpose of this function (although definitely under-used at this point),
was to return the pointer to the element structure, not to indicate whether
the format format is part of the list or not.

In spite of that, this change reduces the use case for the function, so I do
not think it is beneficial, sorry.

Cheers,

Paul

> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/staging/media/sunxi/cedrus/cedrus_video.c | 11 ++++-------
>  1 file changed, 4 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> index 9673874ece10..0ec31b9e0aea 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> @@ -55,8 +55,8 @@ static inline struct cedrus_ctx *cedrus_file2ctx(struct file *file)
>  	return container_of(file->private_data, struct cedrus_ctx, fh);
>  }
>  
> -static struct cedrus_format *cedrus_find_format(u32 pixelformat, u32 directions,
> -						unsigned int capabilities)
> +static bool cedrus_find_format(u32 pixelformat, u32 directions,
> +			       unsigned int capabilities)
>  {
>  	struct cedrus_format *fmt;
>  	unsigned int i;
> @@ -70,13 +70,10 @@ static struct cedrus_format *cedrus_find_format(u32 pixelformat, u32 directions,
>  
>  		if (fmt->pixelformat == pixelformat &&
>  		    (fmt->directions & directions) != 0)
> -			break;
> +			return true;
>  	}
>  
> -	if (i == CEDRUS_FORMATS_COUNT)
> -		return NULL;
> -
> -	return &cedrus_formats[i];
> +	return false;
>  }
>  
>  static bool cedrus_check_format(u32 pixelformat, u32 directions,
> -- 
> 2.19.1
> 

-- 
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
