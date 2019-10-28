Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7983DE77E7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 18:55:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y8FZRApljswyo5t0l6AsKiyXLyYlMvBfGE+ZqFSLuXQ=; b=px8Hq80kx3/XUeUypdO3dxPIr
	UaTM0yIXYEnhMM8ml66grDqflxZrkHoYzBC66v4bf1dlXg+tzq4I8Vx5B9mADNZ7ZAbFQzA1tmkYR
	5raoi2f/blvWe9If2NSiDY3wECPZa4Wm8Gxo0fndRdtaP4f+atEc9fFNiOSJz45/+8Sl31Sfx3M6E
	4Ied6bn4lXsj2yKOMbWUGzWtaIKJG74dSFdj7o41CrhJ3ufVlNoi8MaCS4u36PBWF1nPX2w8CnBe3
	unZCO5AOjXOpraPm6bxe1paYWRVJ2WwZ85e3mH0j2OpOV8V8Ot+kv2qx4frbnDJ+ghsGKgTtHGo4u
	6VGYc5u/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP9Ev-0007g0-78; Mon, 28 Oct 2019 17:55:37 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP9Ek-0007ff-29
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 17:55:27 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 10:55:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,240,1569308400"; d="scan'208";a="211502982"
Received: from yoojae-mobl1.amr.corp.intel.com (HELO [10.7.153.148])
 ([10.7.153.148])
 by orsmga002.jf.intel.com with ESMTP; 28 Oct 2019 10:55:24 -0700
Subject: Re: [PATCH v3] media: aspeed-video: Fix memory leaks in
 aspeed_video_probe
To: Navid Emamdoost <navid.emamdoost@gmail.com>
References: <da959329-aa40-b6e7-dcc9-48183a8da716@linux.intel.com>
 <20191028171838.28533-1-navid.emamdoost@gmail.com>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <57550f1e-87b8-79c4-b1d6-7672b1ce11dc@linux.intel.com>
Date: Mon, 28 Oct 2019 10:55:24 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191028171838.28533-1-navid.emamdoost@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_105526_144847_F72B4F59 
X-CRM114-Status: GOOD (  20.35  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
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

On 10/28/2019 10:18 AM, Navid Emamdoost wrote:
> In the implementation of aspeed_video_probe() the allocated memory for
> video should be released if either devm_ioremap_resource()
> or aspeed_video_init() or aspeed_video_setup_video() fails. Replace
> kzalloc() with devm_kzalloc to avoid explicit release for video.
> 
> Fixes: d2b4387f3bdf ("media: platform: Add Aspeed Video Engine driver")
> Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
> ---
> Changes in v3:
> 	-- fix call to devm_kzalloc()

Better keep all change history at here.

> ---
>   drivers/media/platform/aspeed-video.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/aspeed-video.c b/drivers/media/platform/aspeed-video.c
> index eb12f3793062..70797b41447c 100644
> --- a/drivers/media/platform/aspeed-video.c
> +++ b/drivers/media/platform/aspeed-video.c
> @@ -1646,7 +1646,8 @@ static int aspeed_video_probe(struct platform_device *pdev)
>   {
>   	int rc;
>   	struct resource *res;
> -	struct aspeed_video *video = kzalloc(sizeof(*video), GFP_KERNEL);
> +	struct aspeed_video *video =
> +		devm_kzalloc(&pdev->dev, sizeof(*video), GFP_KERNEL);

For a case of assignment in definition section, let it go over the 80
chars.

With this fixed:

Reviewed-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>

>   	if (!video)
>   		return -ENOMEM;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
