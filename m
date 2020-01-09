Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 416DA135058
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 01:15:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aqPcK14p28FbfYQbLQSBkgOslJmHKdAEqRIjBfdEVcw=; b=btv2WSGsP5dj+G
	EkwoQA7mTspRUj9b74QBg5p1ezdNmAPVHgYDPHk66EFcZVyqtETYFAUxg/eE9c2cs/rzAiifnFJUf
	rLJ8XIGFrJBLiAzZ2We1OXAPcCWAJGd19Zo1gXlir0KRFQFoNL/VQ40FOHGw7mSTINeWj7w+0/emF
	e0KzrD/Y5Z18NiPAACw1xpXKHJ+RaozcMC/twQTaHnIFOOCBrLyiFvUwslR3/78wH/jC2NevpUFk/
	NSUKRxgq78OpHjCyuRJ5x707Qc5SWm0eToBGq9FBI2LGvkE3AzmOMgesLHOtyhhIUHhYmELym2P47
	2EdanIp1sxapjHBatbIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipLUR-0002Xh-2a; Thu, 09 Jan 2020 00:15:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipLUJ-0002Wx-QU; Thu, 09 Jan 2020 00:15:49 +0000
Received: from ip5f5a5f74.dynamic.kabel-deutschland.de ([95.90.95.116]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ipLUC-0003nJ-TJ; Thu, 09 Jan 2020 01:15:40 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Tobias Schramm <t.schramm@manjaro.org>
Subject: Re: [PATCH 1/1] drm/rockchip: fix integer type used for storing dp
 data rate and lane count
Date: Thu, 09 Jan 2020 01:15:40 +0100
Message-ID: <2028959.b8b8FNkPgY@diego>
In-Reply-To: <20200108223949.355975-2-t.schramm@manjaro.org>
References: <20200108223949.355975-1-t.schramm@manjaro.org>
 <20200108223949.355975-2-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_161548_008225_0009EA20 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Mittwoch, 8. Januar 2020, 23:39:49 CET schrieb Tobias Schramm:
> commit 2589c4025f13 ("drm/rockchip: Avoid drm_dp_link helpers") changes
> the type of variables used to store the display port data rate and
> number of lanes to u8. However u8 is not sufficient to store the link
> data rate of the display port.
> This commit reverts the type of both the number of lanes and the data
> rate to unsigned int.
> 
> Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
> ---
>  drivers/gpu/drm/rockchip/cdn-dp-core.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.h b/drivers/gpu/drm/rockchip/cdn-dp-core.h
> index 83c4586665b4..806cb0b08982 100644
> --- a/drivers/gpu/drm/rockchip/cdn-dp-core.h
> +++ b/drivers/gpu/drm/rockchip/cdn-dp-core.h
> @@ -94,8 +94,8 @@ struct cdn_dp_device {
>  	struct video_info video_info;
>  	struct cdn_dp_port *port[MAX_PHY];
>  	u8 ports;
> -	u8 max_lanes;
> -	u8 max_rate;
> +	unsigned int max_lanes;

although I would think u8 should be enough for max_lanes?
There shouldn't be be more than 255 dp lanes?


Heiko

> +	unsigned int max_rate;
>  	u8 lanes;
>  	int active_port;
>  
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
