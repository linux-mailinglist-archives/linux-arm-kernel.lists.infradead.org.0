Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA042A47A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 14:52:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BVYqA8mUj1dGphTHZeWrugCn/ScB4+7RDUCCuG/zOrE=; b=hsfJsKQIOO9I+T
	Uyqst2oDWg1Abd3FZAMEigGPVZfONNehlLv9P1PzNZ1xDNARGvxCMHL3AHS/69lmEArZag6EQlTQM
	K35Z8NvPEs3RJbkGp4ikN61km5QVOQfz3bRGEune8RGRaaRphe8HzLlnWj8Xvr53G0L/7ZVEuHamL
	ntr6EdKURjNvdeXSmcmRcvipCFzaUGXz0dX4gXvw+uBarhhJgTJhdn9j7ehLbDwc9TfukOqIQBq8S
	PVHaBEwmi8oSXD8yxOjpLOcIter5LoBpjWx85KFSIu4o0tZLP3zRzPIzEYCABaSneGM7BXVERn5zb
	AKXPPnq0PAfg0Go4DYkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUW9Y-00039c-Um; Sat, 25 May 2019 12:52:00 +0000
Received: from mailoutvs56.siol.net ([185.57.226.247] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUW9Q-00038r-Su
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 12:51:55 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 37BEE52243C;
 Sat, 25 May 2019 14:51:38 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id mbbF_S_xVf-j; Sat, 25 May 2019 14:51:37 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id BC98B522442;
 Sat, 25 May 2019 14:51:37 +0200 (CEST)
Received: from jernej-laptop.localnet (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 2A20C52243C;
 Sat, 25 May 2019 14:51:35 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v5 2/4] media: pixfmt: Add HEVC slice pixel format
Date: Sat, 25 May 2019 14:51:34 +0200
Message-ID: <9334832.WyQZ0g7QqJ@jernej-laptop>
In-Reply-To: <20190524093635.1832-3-paul.kocialkowski@bootlin.com>
References: <20190524093635.1832-1-paul.kocialkowski@bootlin.com>
 <20190524093635.1832-3-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_055153_420824_D7E82B73 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: -0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.247 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: devel@driverdev.osuosl.org, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Tomasz Figa <tfiga@chromium.org>, Alexandre Courbot <acourbot@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-sunxi@googlegroups.com, Boris Brezillon <boris.brezillon@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

Dne petek, 24. maj 2019 ob 11:36:33 CEST je Paul Kocialkowski napisal(a):
> Introduce the V4L2_PIX_FMT_HEVC_SLICE pixel format, which currently
> describes an output buffer with enough appended slice data for
> producing one decoded frame with a stateless video decoder.
> 
> This will need to be reworked (along with the controls and the core) to
> allow passing slice data individually, as it is the natural decoding
> unit in HEVC.
> 
> We also need to figure out the description of the possible source data:
> * Compressed slice data only, with slice controls attached;
> * Slice data in Annex-B format (with raw slice header), without slice
>   controls attached;
> * Slice data in Annex-B format (with raw slice header), with slice
>   controls attached.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  include/media/hevc-ctrls.h | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
> index 9ea013c88afc..2de83d9f6d47 100644
> --- a/include/media/hevc-ctrls.h
> +++ b/include/media/hevc-ctrls.h
> @@ -11,6 +11,9 @@
>  #ifndef _HEVC_CTRLS_H_
>  #define _HEVC_CTRLS_H_
> 
> +/* The pixel format isn't stable at the moment and will likely be renamed.
> */ +#define V4L2_PIX_FMT_HEVC_SLICE v4l2_fourcc('S', '2', '6', '5') /* HEVC

You should add include to cover v4l2_fourcc() macro.

Best regards,
Jernej

> parsed slices */ +
>  #define V4L2_CID_MPEG_VIDEO_HEVC_SPS		(V4L2_CID_MPEG_BASE + 
1008)
>  #define V4L2_CID_MPEG_VIDEO_HEVC_PPS		(V4L2_CID_MPEG_BASE + 
1009)
>  #define V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS	(V4L2_CID_MPEG_BASE + 
1010)





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
