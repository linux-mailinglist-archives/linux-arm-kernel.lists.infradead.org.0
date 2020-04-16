Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D351AC080
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 13:58:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V7vkU6NGjR1dbMciOmOPl7KcFet/Bu91dj6yWjrkID0=; b=Y6WEOA/IBGtalb
	5Nrfj8Wcv1UXUQsrV2FPeYVJVKSPrroj+uWDixFG9s4jfYD8Y8ko161dN/1HkzZV9WCH6V1wxlj2i
	y9/4By7DDDU4a/hXLqa+j7U+V8c65gUNhMqXbtsGG1NsDf9e+NXzINIeTZetKaFSfOQlSsaKeMga3
	NDLkI0OCyetaXSTp1TYwohdTQu72d0XtXFSXrouhFpspXeMg75rouYMKUpueC3YXeBUbq7iLi65qq
	ahIqvPbKG4hs3aJzM7CADW9ojxbFf3ozcQrbuhoTxna93Jan+OrdDy79DC6ifoXTSpRdvmif8QrXX
	fmvREFRsqPialT0XcyVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP3A7-0001Sg-AX; Thu, 16 Apr 2020 11:58:31 +0000
Received: from lb2-smtp-cloud7.xs4all.net ([194.109.24.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP39v-0001Qy-OH; Thu, 16 Apr 2020 11:58:21 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud7.xs4all.net with ESMTPA
 id P39mjcdN97xncP39pj7Yw1; Thu, 16 Apr 2020 13:58:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1587038296; bh=pgULbLNuPDuvkt/ZE7BTxpxzQCy1rEQZOEHhfHg1VsM=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=qjJyOjHdFOjLwbBE5AMGl7i/o5lLp0YJqVH5ujUzEQNe8Xt3PSeNOeupqZto1YFuW
 1zfq7YnpoeW8afpHrSYzbQSe8iBC3azo6Uxb6qsBAt0zV+NPGaKtNoRfw4mh+irm/C
 cK4qk7i7a19AnPLv0EmYn8EuIz6IJDOs+aiYMmuaEUZGKLHngVpwy3Mtn2wp6nhBbC
 FsE70o5599zP/V2uzhyxjS/ra95EzJUEW4p/rsJ8EEgyWh3qGLyy7D7iijvZ4j7hjc
 wXCsRTpX/+ViygxDP+AunKH8K/njPSwTGz6YWJ22p2MnWHVUglxSNVQJOZLmbwVUQ5
 mbSM0G0jboTmg==
Subject: Re: [PATCH 3/4] media: rockchip: rga: Add support for the PX30
 compatible
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20200416115047.233720-1-paul.kocialkowski@bootlin.com>
 <20200416115047.233720-4-paul.kocialkowski@bootlin.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <cd224bf8-5b0a-46e5-1657-4b40c6d3915e@xs4all.nl>
Date: Thu, 16 Apr 2020 13:58:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200416115047.233720-4-paul.kocialkowski@bootlin.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfEmG96rhmgcqUobz4xw4DTPU7o17Xmvi5xmN9E10YvKe1uRWAQ34IA/UrD5J42lmTdsyo8ey/yTPTMkxY2TjqV+ryE32yZ58s/zhufVN+JCBqYB8YTqd
 JTP8ANJFV7SYHFjqgYiARvpouqE3LcP5EponpFIyRknmpRa6MsYPuLssOMDS5mIlBLAvbslArMg3knyFzFb0jgcck7Ive6XVEP5dJaWJtLyZv1enArMbBVjZ
 h/5ph52twVpt8aTe5KonGJzlYYJba1aMWxyyeNZc7HIVoyx75CzB0Qt4qG0hUXyTiBZ1O3KOafO0dxnLJDPKsJP1HpLQRFPM9LhiRlXlMxKwX/qBh5dFQrck
 +LH3aa4HIf/N8VHqLzB0Zvm5xGv8MmXazHJ6zsPELgIG38jezZPZBpCDF5f85lDUFRXNVG6LvmyXQzAy5SChrPFC4ZwKZ7lY5K86KXA83D8fe+JGaZDUgpPp
 ybVpQUhRRnBahgWe/qwFfjWGCbk2dUXTkqi8x5jU4ufWFOtDFTrcYZ9U/+UYUQ49zXeGZrqt//ITrVC9MSUWB8K98nu0w6qvxeQeSvyj5jgJ0tPQkthejEg2
 E1V739v7VepB0WyJwMLOROH0Ch7pm6H009lDEyYBGjTS5MPX7v0drTfYmVDGQHDVdvjYUIT55hyQeDmFLkS2FGys
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_045819_949290_84612727 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.28 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.28 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hansverk@cisco.com>,
 Jacob Chen <jacob-chen@iotwrt.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/04/2020 13:50, Paul Kocialkowski wrote:
> The PX30 SoC has a RGA block, so add the associated compatible to
> support it.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  drivers/media/platform/rockchip/rga/rga.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
> index e9ff12b6b5bb..0ebeb9b4c14a 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -880,7 +880,6 @@ static int rga_probe(struct platform_device *pdev)
>  	rga->cmdbuf_virt = dma_alloc_attrs(rga->dev, RGA_CMDBUF_SIZE,
>  					   &rga->cmdbuf_phy, GFP_KERNEL,
>  					   DMA_ATTR_WRITE_COMBINE);
> -

Spurious change?

Regards,

	Hans

>  	rga->src_mmu_pages =
>  		(unsigned int *)__get_free_pages(GFP_KERNEL | __GFP_ZERO, 3);
>  	rga->dst_mmu_pages =
> @@ -955,6 +954,9 @@ static const struct dev_pm_ops rga_pm = {
>  };
>  
>  static const struct of_device_id rockchip_rga_match[] = {
> +	{
> +		.compatible = "rockchip,px30-rga",
> +	},
>  	{
>  		.compatible = "rockchip,rk3288-rga",
>  	},
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
