Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9050E74D00
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 13:24:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GtbP07+en/hE7tH5ukQadajKsimX1e4XAZ//xgJl/No=; b=tTHMgsXC09J0+tYUWoPwH+N+Tu
	j9m+JngHSjz+nhJilciyWcW/8wAJNr+EF5ZaBoTS9qnr8ACQsBpweCJPG4iwzvsvNZzY/poud0PiM
	DPaTDUOOWRDvVGjzH/wDdz32VoGfoMdn1rQrihDvh0pkeuoEe0pucTp1wvtGG+67p/x7T5DJSqKNQ
	x3tgdDhRznJj0vqppsiPx3tiJZWWIfsXl+s0kx/5QdV6L9dQ3JNg348dvzGZ0p9biR4CUGWZULBUp
	cTh0nTvImDVbQuY+lQoaZQOtewmN0bYVUX7YrVU7BSI4cgNH6DD3/91ncBXL+RF+E3LoUmgLOabkp
	ryUYB6uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqbrZ-0000Ia-Ls; Thu, 25 Jul 2019 11:24:45 +0000
Received: from lb1-smtp-cloud7.xs4all.net ([194.109.24.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqbrL-0000HJ-E4
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 11:24:33 +0000
Received: from [IPv6:2001:420:44c1:2579:64cb:e917:d1ce:4f27]
 ([IPv6:2001:420:44c1:2579:64cb:e917:d1ce:4f27])
 by smtp-cloud7.xs4all.net with ESMTPA
 id qbrDhDsLkLqASqbrHhTIzl; Thu, 25 Jul 2019 13:24:28 +0200
Subject: Re: [PATCH v2] staging: media: sunxi: Add bool cast to value
To: Nishka Dasgupta <nishkadg.linux@gmail.com>, maxime.ripard@bootlin.com,
 paul.kocialkowski@bootlin.com, mchehab@kernel.org,
 gregkh@linuxfoundation.org, wens@csie.org, linux-media@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org
References: <20190722060651.6538-1-nishkadg.linux@gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <960d6d68-dff0-1774-8173-b5b1dd0d32f3@xs4all.nl>
Date: Thu, 25 Jul 2019 13:24:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <20190722060651.6538-1-nishkadg.linux@gmail.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfLx4YLBHUEn8dqW0jvm89k2W2gS8HhdbGSV+CNnBVPSVEv89oOd4fAvMAcxKxp+mp1+XOgGDcWUuNfxXHQsSHc6H/RWmuF4f3xMi0ki/GDVu8lhI+Yt0
 3V6KPrjO3eopSlnMl8A8vHRtenHxvzKqKK22VedvJ4qBX8xePwtODq8PsnbLHBFgQ0hEEBt4TDAJrhWrFwnfBNasiJx1aN+XUMGuRemTLTy6yUrTEKCagqxM
 IgzAgghHC2mKYj9hb33X7JW0I7uuJRmrNiwwJQla1RhPKaqdljstPBrtpn0VRhhVvjMAJCWWhYmR4323ktduuLK5bhaEfaXsNrEDC++NojkS2PnJTQihQcr6
 Cq8vooBLM3fARSl0GulZpv7zl07PHY+FXbxkuhicL/R5zJ7sj1QpqamjuY0Lk4lX9cHXVaakpstPOZrHoTmQGL09syJ9yen1jnOr8iQ7pdrmR52H09wm08et
 y16yofHaB2SOEtQWo6Mkr4QN9qdKN3bKQzvfO4d4Ka9vryrQurIgvBkrziiLndgvWoavkQEsZ+G3/bg9ILZvfLsCfMEL3OoDVzJ+3fDRSNwGL5jjQyXzmAXJ
 UGw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_042431_643164_0481CA83 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/22/19 8:06 AM, Nishka Dasgupta wrote:
> Typecast as bool the return value of cedrus_find_format in
> cedrus_check_format as the return value of cedrus_check_format is always
> treated like a boolean value.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
> Changes in v2:
> - Add !! to the returned pointer to ensure that the return value is
>   always either true or false, and never a non-zero value other than
>   true.
> 
>  drivers/staging/media/sunxi/cedrus/cedrus_video.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> index e2b530b1a956..b731745f21f8 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> @@ -86,7 +86,7 @@ static struct cedrus_format *cedrus_find_format(u32 pixelformat, u32 directions,
>  static bool cedrus_check_format(u32 pixelformat, u32 directions,
>  				unsigned int capabilities)
>  {
> -	return cedrus_find_format(pixelformat, directions, capabilities);
> +	return !!(bool)cedrus_find_format(pixelformat, directions, capabilities);

Why not write:

	return cedrus_find_format(pixelformat, directions, capabilities) != NULL;

That way coccinelle should be happy, and it is clear that cedrus_find_format
returns a pointer and that we return true if it is non-NULL.

Regards,

	Hans

>  }
>  
>  static void cedrus_prepare_format(struct v4l2_pix_format *pix_fmt)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
