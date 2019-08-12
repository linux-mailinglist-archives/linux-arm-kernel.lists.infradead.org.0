Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 188F18A29E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 17:48:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bVwgtnOqLahs8l58nknEUbP+tIpJON8ajdRPmFb9foc=; b=CpYvGG58A/gyY3
	MQfZnkQKEjFZRRNzdKp0uPNgpsHyDcWqFl1pEj6jQNEjOekzGxdBPFdw0hRVGvIDxFolGGz7T7mq7
	cj7XZDyS3U36FM8vk5sM8Mu/5m4rd0yzKkNcqZ6hkEUHjYww7f3OdXxiYzTHsRqu0RPEklXYwEItY
	Hsq0j0Ph5EqGLxIhHDSxuf47CZGnssPsZMVLXDCsZlR7Gp4+jLsXspFGHc848gPG6JBqb5kdLOEuS
	bekTTQDBFNJH1JLXxRA1fU9HnkSm7RZbAIjVGWsBsjCHCHTkqeU4C+vvUcdcKW8tPEA2W+ogwmz/F
	1nMCJ3W/ESh5qY0gY9UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxCYS-0005ZL-A5; Mon, 12 Aug 2019 15:48:16 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxCYG-0005Z0-9R
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 15:48:05 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7CFm0xC034794;
 Mon, 12 Aug 2019 10:48:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565624880;
 bh=sn5sqPkLdXhAzhOHGTY3CyWMl10N2bh/Kui4NyBfQy0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=n4QmNermu6/9oAcS2LDyrzA8ZveZDrUJZG2hdvLtvjCFYxjcwIFJJQJ06nAdIFtpV
 7Qyw587XVZdOvBc7EyunYSNEcVsa2RkaDGdLWDSEVTW0X8I0d8Dzi/rIy8Giik1I05
 xQu/YH5VncEJduTBGxe6BdJVbuawrb9l5g0NjkCE=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7CFlx6U016798
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 12 Aug 2019 10:47:59 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 12
 Aug 2019 10:47:59 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 12 Aug 2019 10:47:59 -0500
Received: from [10.250.88.190] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7CFlwFp125888;
 Mon, 12 Aug 2019 10:47:59 -0500
Subject: Re: [PATCH] rpmsg: virtio_rpmsg_bus: replace "%p" with "%pK"
To: Suman Anna <s-anna@ti.com>, Bjorn Andersson <bjorn.andersson@linaro.org>
References: <20181024011909.21674-1-s-anna@ti.com>
From: "Andrew F. Davis" <afd@ti.com>
Message-ID: <1cc3d697-6fde-901b-2e35-2e2b53b44425@ti.com>
Date: Mon, 12 Aug 2019 11:47:58 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20181024011909.21674-1-s-anna@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_084804_476023_C0122CA2 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arm-kernel@lists.infradead.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Loic Pallardy <loic.pallardy@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/23/18 9:19 PM, Suman Anna wrote:
> The virtio_rpmsg_bus driver uses the "%p" format-specifier for
> printing the vring buffer address. This prints only a hashed
> pointer even for previliged users. Use "%pK" instead so that
> the address can be printed during debug using kptr_restrict
> sysctl.
> 


s/previliged/privileged

You describe what the code does, but not why you need this. %pK is used
for only about 1% of pointer printing, why do you want to leak this
address to userspace at all?

Andrew


> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
>  drivers/rpmsg/virtio_rpmsg_bus.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/rpmsg/virtio_rpmsg_bus.c b/drivers/rpmsg/virtio_rpmsg_bus.c
> index f29dee731026..1345f373a1a0 100644
> --- a/drivers/rpmsg/virtio_rpmsg_bus.c
> +++ b/drivers/rpmsg/virtio_rpmsg_bus.c
> @@ -950,7 +950,7 @@ static int rpmsg_probe(struct virtio_device *vdev)
>  		goto vqs_del;
>  	}
>  
> -	dev_dbg(&vdev->dev, "buffers: va %p, dma %pad\n",
> +	dev_dbg(&vdev->dev, "buffers: va %pK, dma %pad\n",
>  		bufs_va, &vrp->bufs_dma);
>  
>  	/* half of the buffers is dedicated for RX */
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
