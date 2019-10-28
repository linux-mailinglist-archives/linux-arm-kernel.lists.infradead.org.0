Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D2AE7613
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 17:27:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nVpBrUf10tz3zbeby0JSBxmuab4F16/DVGKjy/gvpOQ=; b=MY8Er+Q/oIZLltwC7zYlp3bIJ
	6hJkZMFReukYtdtDvUxzBhyvW31nw83xKiHSOUYnj5bpphEtdtSaCeWg0iHD+NSoqkW/s+GV1IC5z
	oi2NSllGpPbQXTCsk4l5uElaCxgJEjv5LGFDAuvrI203BuR9OuEG7DjSym4Iizd/+lAF5MQRt2ROE
	i9iXXBqx6Jl4N2lvtvpQl3xqGxnjCBFVxQpImmrqXg9BAcX3dioRK6TucwoacdMQLqSw36Qo+F4mM
	1+MUkBZycpNo2lTSCkim0Jo9yJPAeWK96O/wGjsnfoUAAMAQWfo5imbwMiVJmdWKcIOuXM+q0xqEO
	jkdwwJZjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP7rq-0004d5-RY; Mon, 28 Oct 2019 16:27:42 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP7rg-0004c3-8J
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 16:27:33 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 09:27:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,240,1569308400"; d="scan'208";a="211478039"
Received: from unknown (HELO [10.7.153.148]) ([10.7.153.148])
 by orsmga002.jf.intel.com with ESMTP; 28 Oct 2019 09:27:29 -0700
Subject: Re: [PATCH] media: aspeed-video: Fix memory leaks in
 aspeed_video_probe
To: Navid Emamdoost <navid.emamdoost@gmail.com>
References: <20191026042519.29446-1-navid.emamdoost@gmail.com>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <d9c04318-586a-bfc2-fce6-6218c6bab1d6@linux.intel.com>
Date: Mon, 28 Oct 2019 09:27:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191026042519.29446-1-navid.emamdoost@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_092732_335441_5FF4F14C 
X-CRM114-Status: GOOD (  19.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
Cc: linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 kjlu@umn.edu, openbmc@lists.ozlabs.org, Eddie James <eajames@linux.ibm.com>,
 linux-kernel@vger.kernel.org, emamd001@umn.edu, smccaman@umn.edu,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Navid,

On 10/25/2019 9:25 PM, Navid Emamdoost wrote:
> In the implementation of aspeed_video_probe() the allocated memory for
> video should be released in case of failure. Release video if either
> devm_ioremap_resource() or aspeed_video_init() or
> aspeed_video_setup_video() fails.
> 
> Fixes: d2b4387f3bdf ("media: platform: Add Aspeed Video Engine driver")
> Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
> ---
>   drivers/media/platform/aspeed-video.c | 14 ++++++++++----
>   1 file changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/media/platform/aspeed-video.c b/drivers/media/platform/aspeed-video.c
> index eb12f3793062..8c473356132d 100644
> --- a/drivers/media/platform/aspeed-video.c
> +++ b/drivers/media/platform/aspeed-video.c
> @@ -1663,18 +1663,24 @@ static int aspeed_video_probe(struct platform_device *pdev)
>   
>   	video->base = devm_ioremap_resource(video->dev, res);
>   
> -	if (IS_ERR(video->base))
> -		return PTR_ERR(video->base);
> +	if (IS_ERR(video->base)) {
> +		rc = PTR_ERR(video->base);
> +		goto free_video;
> +	}
>   
>   	rc = aspeed_video_init(video);
>   	if (rc)
> -		return rc;
> +		goto free_video;
>   
>   	rc = aspeed_video_setup_video(video);
>   	if (rc)
> -		return rc;
> +		goto free_video;
>   
>   	return 0;
> +
> +free_video:
> +	kfree(video);
> +	return rc;
>   }
>   
>   static int aspeed_video_remove(struct platform_device *pdev)
> 

Can we simply change kzalloc in aspeed_video_probe with devm_kzalloc
so that we don't need to take care of freeing of video? I think it would
be more simpler.

Cheers,

Jae

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
