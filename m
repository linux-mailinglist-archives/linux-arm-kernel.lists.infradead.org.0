Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A55911CB55
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 11:54:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7fff7UCGh17OBuULM+83lVuc3L5vwVneFrKo/XXnJ8s=; b=NoLlIPZs3BVtHe
	xDszuZcbvWFywTo9s/K+xDWJPursxUHMozBXFQsaoFM+TDtcvN7i0AQTKb+GuhJQA/8u+PebXgfYI
	zsXSuAYr5Fp0C6QATZulKvB777MwRke33kOdCb1vhwqomSWcPU/cQkiZknPh7VC6jJoWMq3/cgVew
	NWviOyXQLHZkxZpRGvSB4GLguOcSUvcFSDBERtuK34BQ7sau+6HW69r/MmZdv1r/v2A1SowrG1JjB
	0Cl+VfEiDYshE0V0Xu5F1Rk6VnEF87pAOFz7RYCDFu+vWURmKy0TNw5F8zlG1bOmclSJeVu6jamgP
	O7Hv/rqe142ndmT/L4vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifM6d-0000oz-O1; Thu, 12 Dec 2019 10:54:03 +0000
Received: from lb3-smtp-cloud9.xs4all.net ([194.109.24.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifM6V-0000nr-40; Thu, 12 Dec 2019 10:53:56 +0000
Received: from [IPv6:2001:983:e9a7:1:1c4a:480a:7ba1:9c65]
 ([IPv6:2001:983:e9a7:1:1c4a:480a:7ba1:9c65])
 by smtp-cloud9.xs4all.net with ESMTPA
 id fM6PiYxUsGyJwfM6QixnEp; Thu, 12 Dec 2019 11:53:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1576148031; bh=ROStJouVqhVsP5J9ci4Y267yUDuKeyjWctRsCaVL77w=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=C1L5vTPGU3fPI3fOyh1BRDJRLCYLHA4je8t88FmEFBe9e1BEbdj1j6rPUm9nCXPFk
 U4gdtrvy7Wa7/j5D+AUWy+5l7Y+laknWOqw8AENKVGhFVDlK+lt1C0C+5fEfFpas/y
 0zVENOp/g1+PyUX7m4hMSEXOjaCWp24/cRlt0m9owhW9xloX0bLC/V6W9e0pAySGAk
 zDvgR2LPoUX9/RMlkT0WOudlFxBy6asaiR8/QfBut9pFcr3GeB+HnExkAq6vQhr06B
 0oRXaLtXmoOhnuRX24POEWY3+ysqqiO+CJQUmBoySx2Cdx3rrHeQZnvMKiiRWS9W9M
 ISYUMcfdi3BYQ==
Subject: Re: [PATCH v2] media: rockchip/rga: fix potential use after free
To: Pan Bian <bianpan2016@163.com>, Jacob Chen <jacob-chen@iotwrt.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>
References: <1573460902-18563-1-git-send-email-bianpan2016@163.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <5c170dd7-17b4-cef6-4f77-253aabb6ebbe@xs4all.nl>
Date: Thu, 12 Dec 2019 11:53:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1573460902-18563-1-git-send-email-bianpan2016@163.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfKNLwEa+Bj8J5UZXJfZGi1ZFzAkRCEfeLRfCvHKHgOKNi9pfN/d0LU7IAMsjFKbRJjTDbht7MfbsOAksr/GZcvjMbBd1pLRVupXd0+xx6/J4u6bWT92F
 qUX2HT9t+q4mkxYjAFi/McW72YgOQYidciIdqKk0/mD2BRymPC64wttN1A/2fLaf3+BdCv7Yg/9MQWSHTt9GVsnWmIQpPdYXQ1aiMk1JCfS5cR5f6rKzn0FJ
 ZwvD3/yBukNZ0lzIugc5yvn8EOW9HYrqriON9kBqSs/H4XgN3Wti1X2jJBK/IIdvrXTNG3nnladv4uohwV4Qubs2WAdk9ruqW+l748Bvwfj1zzWYwUzfA4qi
 aj9Hm6mMdHb5HipgWPPc31WlUnaJhiaJgVgr17tnKfxn0CxsEt7xa1+mDAVBlhyQeEXw5cyQY8Tv0ddCsjJAKYd18AkaM3milWF+rvvK2iLI1TSEvNv84wvs
 tZMLYfcL3MUnzpFOQZul48Jqr7ZLQrg6IeEMlWmoDAduRDhfxy9Z/oRQcalmCpUuytj6QEJpdo/TxFD3EpDtMJzQeyZQAmjvMwXgBg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_025355_332075_E8604258 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/11/19 9:28 AM, Pan Bian wrote:
> The variable vga->vfd is an alias for vfd. Therefore, releasing vfd and
> then unregister vga->vfd will lead to a use after free bug. In fact, the
> free operation and the unregister operation are reversed.
> 
> Signed-off-by: Pan Bian <bianpan2016@163.com>
> ---
> v2: update the goto label names consistently
> ---
>  drivers/media/platform/rockchip/rga/rga.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
> index e9ff12b6b5bb..d2297abafc69 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -863,7 +863,7 @@ static int rga_probe(struct platform_device *pdev)
>  	if (IS_ERR(rga->m2m_dev)) {
>  		v4l2_err(&rga->v4l2_dev, "Failed to init mem2mem device\n");
>  		ret = PTR_ERR(rga->m2m_dev);
> -		goto unreg_video_dev;
> +		goto rel_vdev;
>  	}
>  
>  	pm_runtime_get_sync(rga->dev);
> @@ -892,7 +892,7 @@ static int rga_probe(struct platform_device *pdev)
>  	ret = video_register_device(vfd, VFL_TYPE_GRABBER, -1);
>  	if (ret) {
>  		v4l2_err(&rga->v4l2_dev, "Failed to register video device\n");
> -		goto rel_vdev;
> +		goto unreg_dev;
>  	}
>  
>  	v4l2_info(&rga->v4l2_dev, "Registered %s as /dev/%s\n",
> @@ -900,10 +900,10 @@ static int rga_probe(struct platform_device *pdev)
>  
>  	return 0;
>  
> +unreg_dev:
> +	video_unregister_device(rga->vfd);

This is wrong. If video_register_device fails, then you call video_device_release,
not video_unregister_device. The unreg_video_dev case is bogus and should be removed.

Instead you need a v4l2_m2m_release() call to clean up the v4l2_m2m_init() result
if there is an error.

Regards,

	Hans

>  rel_vdev:
>  	video_device_release(vfd);
> -unreg_video_dev:
> -	video_unregister_device(rga->vfd);
>  unreg_v4l2_dev:
>  	v4l2_device_unregister(&rga->v4l2_dev);
>  err_put_clk:
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
