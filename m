Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74775BBA90
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 19:33:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HaGkG/FsnGdOQmshNxd8vkcOO4Q1G0d/N2KTsvOVpfs=; b=F6zMrphG6CbpBW
	gP+8SURywd8UPN98nCJ7TG9pAxSGiD9XoPxHy5q0cCKyH88GKOq5LC2JC2QD7IwFELwcYeybG3Nnv
	rNxwBWy4fLRYO/qTtLEr5/+R0SuYxq7sLpQiHwaGwNC7P0ki6G+dy/f/38qZ5psGDQXz3byfl146n
	20rym5YHsQtOpLjTCufutwB18USKfYJKTNems0DFYjSWwhDMmCCIihubmoxstrtpcDb3I0JIDmkhe
	KXbicEQ13dTXDHjk+CK8QZGX+5fNiCsSivV3icbLQA0Mu7VigZUdGUs1pGXpZbGkFYG9rKXBA1IUq
	wDADENkH51l8Tqw1KEpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCSDK-0000d6-Fq; Mon, 23 Sep 2019 17:33:30 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCSD9-0000ZO-LN
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 17:33:21 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 3E7FF20042;
 Mon, 23 Sep 2019 19:31:08 +0200 (CEST)
Date: Mon, 23 Sep 2019 19:31:06 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Sandy Huang <hjc@rock-chips.com>
Subject: Re: [PATCH 22/36] drm/atmel-hlcdc: use bpp instead of cpp for
 drm_format_info
Message-ID: <20190923173106.GA13649@ravnborg.org>
References: <1569243119-183293-1-git-send-email-hjc@rock-chips.com>
 <1569243119-183293-2-git-send-email-hjc@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569243119-183293-2-git-send-email-hjc@rock-chips.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=dqr19Wo4 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=s8YR1HE3AAAA:8
 a=GZYic5qFh62CaahH_tAA:9 a=CjuIK1q_8ugA:10 a=jGH_LyMDp9YhSvY-UuyI:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_103319_876363_9A67C9DA 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.14 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Boris Brezillon <bbrezillon@kernel.org>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sandy.

Thanks for taking care of this, but...

On Mon, Sep 23, 2019 at 08:51:45PM +0800, Sandy Huang wrote:
> cpp[BytePerPlane] can't describe the 10bit data format correctly,
> So we use bpp[BitPerPlane] to instead cpp.
> 
> Signed-off-by: Sandy Huang <hjc@rock-chips.com>
> ---
>  drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
> index 89f5a75..ab7d423 100644
> --- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
> +++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
> @@ -644,7 +644,7 @@ static int atmel_hlcdc_plane_atomic_check(struct drm_plane *p,
>  		int xdiv = i ? fb->format->hsub : 1;
>  		int ydiv = i ? fb->format->vsub : 1;
>  
> -		state->bpp[i] = fb->format->cpp[i];
> +		state->bpp[i] = fb->format->bpp[i] / 8;
>  		if (!state->bpp[i])
>  			return -EINVAL;

Awaiting conclusion on Daniels comment on PATCH 1 and has dropped this
patch for now.
And please address the concerns Rob has about bisectability in your
cover letter for v2.

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
