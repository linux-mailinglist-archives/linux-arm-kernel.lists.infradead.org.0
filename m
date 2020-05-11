Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC43B1CD426
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 10:39:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GXJ97fhjSzPHMU4JmBTYmgDt7cvOl1vp8cTRt79k0AQ=; b=tE9ljHREe593II
	Dcs6KQt4UeD5aqKH57ZYOjjfNtQjzv1C4ZYxvLeSxB+AsH7fo9K+ak9z4+9kjfc3LPqM0cZBqqsPU
	jL1avuUCVMi1CO0G1besV5LTf5w9VARV6ozEpGgJ8RwzhekxZEa8441IzULfl5kjCWbFPrfvA3iwP
	rdLjqombY42rviL3tQlk2AeB8QkDceFIj58BdsQ1QdVKnvfVYo33sI6Yc4Bps92oBMnwDBcnCGu5R
	YkMzi3y0OFJToNG+fiMtEAwYaEHFUvE4duU075cxxKcvRAWTPcRZI/Rootd08dXOst3qjkFUL9SNd
	XFGgXWqPcQnvb/0BNeTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY3xy-00066T-Ui; Mon, 11 May 2020 08:39:14 +0000
Received: from lb1-smtp-cloud8.xs4all.net ([194.109.24.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY3xr-00065v-1H; Mon, 11 May 2020 08:39:08 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud8.xs4all.net with ESMTPA
 id Y3xmj9T6WhEkrY3xojFapo; Mon, 11 May 2020 10:39:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1589186344; bh=1oD/S26Y7OXgLhAWD2Bkdgg6JPDaSAVldyb/7mlmz4M=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=YuBYywPBbZRkE4xBaDKhaaINJHbzdu8eaSzrhSxD4MNdE4LOnW3RP4lrC2Vo/WPzo
 spog22RAGV2b3nFSBb5exiVG4PZDpL0zE7i1eRla89FgX50CisnyiDISHcpdvi90b0
 Nhe5w7magmXN9O/xx5emB8zO8SYUkKvMNoruULOk+oCA/O4pncmbh2sB5g0yQtcR64
 Xol5Nqxp5UtXDn3eYoPr6Wv6VmmSZoKZX3JH1bvx8QQ9PfYaXxKu0LYnkswiFjSXUq
 bBtk7XS6CkCLcSNZuIx8IO/6J0Qvcu36X8FWNgsrD4rxFHyaexKD7i3wbLAr4hHbao
 y5OUQ9MJ0gK0A==
Subject: Re: [PATCH v8 04/14] media: platform: Change the fixed device node
 number to unfixed value
To: Xia Jiang <xia.jiang@mediatek.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Rick Chang <rick.chang@mediatek.com>
References: <20200403094033.8288-1-xia.jiang@mediatek.com>
 <20200403094033.8288-5-xia.jiang@mediatek.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <c4b04c02-b04c-5e83-d3bc-4d9a78df013b@xs4all.nl>
Date: Mon, 11 May 2020 10:39:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200403094033.8288-5-xia.jiang@mediatek.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfH3Qxi/EC6zVl/WXW9BpI6AzF5LZ4rFX17rfNLXwjO0wfJJWojH0ewBQwkwBQGV3iHisPiL60beWzwAQICYYTGjCevh33ExwJUofq3+4YROIaaM7Gxgc
 IACOzYYxlAaX7HCNdfeM2DVbjLHaEvAAUhyatopAA18m7CZ6x0WO8hmkHN+eMMnQv7QCYzP1Net7m6dy/4inp2YPgEbhvfsTxl2xfgerk5o1eOAqo1PEI3QK
 /N2Z5mOL8kxzOOzeXoUqKKnwyKHG7VhicAWfjwTAXFqET/cZM206AczjHRQzBKfI0j0uX9tG7/RQ+Xs9lQLqlpHAyKO8LsHMs48wLD9qHvSLP8K2yWtLVjvH
 LlgddFr+fYeLEeFSHRgcEUgxNiiXKa1kWwQie3+51Eb1tO1b1JK8SswBquYqN5o4u4ca5cCJBXu2hhEJYfBQKHSjNDd97nVnlsAPKOG10YUw0oCgYNjiE80E
 lh0ejgHggWrnkBbNzdGoc5b5KU2/vExh2iLGmSqMDxFHTcPO3Of8JjLGOvrOgiI0a4S0JsMx6H7LIedZYjwDj3fBUA47gikkTdx05zGLH3vqMApyYVBY7USP
 Q3vEzEgdiQsAvmSxM2ZIVUyJ35hx/3GiJbgIrbzx380Ce9znLfwqbjXApaMxs09beQexXm2W1h1946UWNjh5uWpoBC5NTLU6a0WEi7W/EhxQo7haIsBK7gvo
 nyl13bDJjqbcoKE1rgAA/C7kqPFucBre/Pk10hs/uTS1QTEkttb7iVT9zfG99/yaU7riPisVnSd9BKUvnTwgiiuZ1evboV2MKtCrUz+UZYhK9t7fLb1/O0Z/
 DnvofI7Glw5uaS67YZaV8F/rOP2N+XejHlJwU/L482Yr2EydNiKNi/DNGn4lpjlDboQl4fKX3dvL+2Y26Z6dX2fCBEUaGGmmRnTUxLoX
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_013907_240733_71B1155B 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.21 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: maoguang.meng@mediatek.com, devicetree@vger.kernel.org,
 mojahsu@chromium.org, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 senozhatsky@chromium.org, sj.huang@mediatek.com, drinkcat@chromium.org,
 linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/04/2020 11:40, Xia Jiang wrote:
> Change device node number from 3 to -1 because that the driver will
> also support jpeg encoder.
> 
> Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> ---
>  drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> index e2a1d850813b..a536fa95b3d6 100644
> --- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> +++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> @@ -1154,7 +1154,7 @@ static int mtk_jpeg_probe(struct platform_device *pdev)
>  	jpeg->dec_vdev->device_caps = V4L2_CAP_STREAMING |
>  				      V4L2_CAP_VIDEO_M2M_MPLANE;
>  
> -	ret = video_register_device(jpeg->dec_vdev, VFL_TYPE_GRABBER, 3);
> +	ret = video_register_device(jpeg->dec_vdev, VFL_TYPE_GRABBER, -1);

VFL_TYPE_GRABBER was renamed to VFL_TYPE_VIDEO.

It looks like this patch series is not on top of the media_tree repo master branch.

Please make sure your patch series is on top of that.

Regards,

	Hans

>  	if (ret) {
>  		v4l2_err(&jpeg->v4l2_dev, "Failed to register video device\n");
>  		goto err_dec_vdev_register;
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
