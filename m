Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2BF16C0E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 13:35:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=35t28jZA7USZ2wTdRaTWToc2hEpMB2lruNxQ8/0zlwI=; b=fy2Mkz354Vu0GY
	pFbHKgbbWurRKwngXY1EUE4zG8QgdOx1/CkdeI34zAReuPOW8UDA0/mJraYmFm19DwdMZkKZRvbVC
	eMQ0jxk2a5jMxxiKP/zxY6Hy1RRKUsBxp8jzCBBASgdKPD0Ky026oUXNdE08ImUY3FL72vH40YHgj
	oB383PX0qRV0KI07d8sJMBP23ZGna9d3ZQitQJPDqo4zkXQY2ibrIG00um9+IYiLdrCMaUlCVsIjb
	RlMkOMZpYZvj2tZAkoNQCf/amhnlA/Q5S6o3yyJ1KEGy1jWRflefb8MFXa9ZO7iFE8y1RviH9q9lC
	1F8MlVb1/kEVt/5TNPug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ZQi-0000bU-QW; Tue, 25 Feb 2020 12:35:16 +0000
Received: from lb2-smtp-cloud7.xs4all.net ([194.109.24.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6ZQR-0000Af-Ck; Tue, 25 Feb 2020 12:35:03 +0000
Received: from [IPv6:2001:420:44c1:2577:a473:ad6c:dd91:35d2]
 ([IPv6:2001:420:44c1:2577:a473:ad6c:dd91:35d2])
 by smtp-cloud7.xs4all.net with ESMTPA
 id 6ZQAjylQGjmHT6ZQDjWz1M; Tue, 25 Feb 2020 13:34:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1582634092; bh=CU5LnbxximNUnjWck66zq1CCdc9Wngm+ubQMrVPDvmg=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=DWYpM6Scbd3BF7ijSg1uDfgcyhvJIZR3tZBwdPu0xIbVfjfUH/qT2YMAzBwofd3Z9
 Cs2cNy8fewHyYZHbuULL/vF7Rn/RnmSpe6XKJuboNCNN/LcWCDZF9TdWcmgjtE/0US
 B8XIum/n4ONfcBkUE8pdcdzMvHPEnlNwWVFjJ8pun3C/R2Ms3cg6gtUiPVLRkOcYxZ
 QYFCrZgIxA6UG8mymcMGIMwkcUb9oPXWs/z31KRaVCY0HE5tKWOJSF0hXeJoMz7DKx
 MCBvpsu3RQ6HUNXwaM30VfFBLEUGG6N7pFkcaBlZ6Y00wgee6bigwbqEX0wrzHqyxx
 EzqUBBCFweawA==
Subject: Re: [PATCH v2] media: mtk-vpu: avoid unaligned access to DTCM buffer.
To: Hsin-Yi Wang <hsinyi@chromium.org>, linux-arm-kernel@lists.infradead.org
References: <20200214120142.50529-1-hsinyi@chromium.org>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <2d5e3b57-cfac-de3a-e331-6ac9245e6640@xs4all.nl>
Date: Tue, 25 Feb 2020 13:34:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200214120142.50529-1-hsinyi@chromium.org>
Content-Language: en-US
X-CMAE-Envelope: MS4wfCalW01R6rcPoKeE87B47crmHsfGvlZLqjnZu4sF2ZrGoDjqiAQm1z1qm/rcxWfkRMR7lQH/YcIHkrUNtHGuwzk092zH6bx7P4fY6qFbQIKyfFQr0NMU
 2C/Xmluza+HGflOXXJMYr5iAuldL4pW4fh4pmyQ51eGMuBE2B583nE67YaDb74odAXRr9tSW7zznZOYEgEsAQT3D+ei9zur7YPxj/QRhPBWnaubbMi46Kxu1
 dBrKkAolS+X2jMMdzaFtNyyzuVhfOHV8YKVjA9mCaAfgHqFZ+bI81jyBdO8mtiWiHmsxjpQiyEjcC0BwTsmtd0hGXAYtRCZHFp9GDGGcEBzv8mwrtJcAeQYS
 Qh1cmy7OkIRVde9+94QGNICkpjPh1PTJH6iKzjbv8Bg1UvxsDJBSHLDROF8wxjeQ7OAmA8BN5urIORqGc4+MJke0LvvxhLijzJJZXxEDReVx3oJm2EZPOmN5
 ivUSqchqQUiApMfLZDLF8Yp10p5i7PtG9rxGEPEk9DzgAK91efwuA9Lp3UrLq4WGU8jCEN3gauXTUmM+r634DUD/4nH3HHeuNO/tVUraP7muUnp9XLlMX1AC
 nvHOp50YlQ4m9g6M9VkwwqG1KCp/bv/XFs+Tkqd/ujo18QXVNWDcG6iPecO1g1+k/nbIPeT2ct7sfq99+PsGYkkQPl01XIKw0mvxaUAB8glGK1394VvfCqkp
 V80w4y0ZtMN+W2Tsyx7shWMgVB2gUBhn
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_043459_592261_60A8A715 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-kernel@vger.kernel.org, Houlong Wei <houlong.wei@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Tiffany Lin <tiffany.lin@mediatek.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/14/20 1:01 PM, Hsin-Yi Wang wrote:
> struct vpu_run *run in vpu_init_ipi_handler() is an ioremapped DTCM (Data
> Tightly Coupled Memory) buffer shared with AP.  It's not able to do
> unaligned access. Otherwise kernel would crash due to unable to handle
> kernel paging request.
> 
> struct vpu_run {
> 	u32 signaled;
> 	char fw_ver[VPU_FW_VER_LEN];
> 	unsigned int	dec_capability;
> 	unsigned int	enc_capability;
> 	wait_queue_head_t wq;
> };
> 
> fw_ver starts at 4 byte boundary. If system enables
> CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS, strscpy() will do
> read_word_at_a_time(), which tries to read 8-byte: *(unsigned long *)addr
> 
> Copy the string by memcpy_fromio() for this buffer to avoid unaligned
> access.
> 
> Fixes: 85709cbf1524 ("media: replace strncpy() by strscpy()")
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
> Change in v2:
> - fix sparse warnings.

I still get sparse warnings:

drivers/media/platform/mtk-vpu/mtk_vpu.c:710:47:  warning: incorrect type in argument 1 (different address spaces)
drivers/media/platform/mtk-mdp/mtk_mdp_vpu.c:66:32:  warning: incorrect type in argument 3 (incompatible argument 1 (different address spaces))
drivers/media/platform/mtk-vcodec/vdec_vpu_if.c:111:22:  warning: incorrect type in assignment (incompatible argument 1 (different address spaces))
drivers/media/platform/mtk-vcodec/venc_vpu_if.c:96:54:  warning: incorrect type in argument 3 (incompatible argument 1 (different address spaces))

Regards,

	Hans

> ---
>  drivers/media/platform/mtk-vpu/mtk_vpu.c | 17 ++++++++++-------
>  drivers/media/platform/mtk-vpu/mtk_vpu.h |  2 +-
>  2 files changed, 11 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/media/platform/mtk-vpu/mtk_vpu.c b/drivers/media/platform/mtk-vpu/mtk_vpu.c
> index a768707abb94..c59373e84a33 100644
> --- a/drivers/media/platform/mtk-vpu/mtk_vpu.c
> +++ b/drivers/media/platform/mtk-vpu/mtk_vpu.c
> @@ -600,15 +600,18 @@ int vpu_load_firmware(struct platform_device *pdev)
>  }
>  EXPORT_SYMBOL_GPL(vpu_load_firmware);
>  
> -static void vpu_init_ipi_handler(void *data, unsigned int len, void *priv)
> +static void vpu_init_ipi_handler(void __iomem *data, unsigned int len,
> +				 void *priv)
>  {
>  	struct mtk_vpu *vpu = (struct mtk_vpu *)priv;
> -	struct vpu_run *run = (struct vpu_run *)data;
> -
> -	vpu->run.signaled = run->signaled;
> -	strscpy(vpu->run.fw_ver, run->fw_ver, sizeof(vpu->run.fw_ver));
> -	vpu->run.dec_capability = run->dec_capability;
> -	vpu->run.enc_capability = run->enc_capability;
> +	struct vpu_run __iomem *run = data;
> +
> +	vpu->run.signaled = readl(&run->signaled);
> +	memcpy_fromio(vpu->run.fw_ver, run->fw_ver, sizeof(vpu->run.fw_ver));
> +	/* Make sure the string is NUL-terminated */
> +	vpu->run.fw_ver[sizeof(vpu->run.fw_ver) - 1] = '\0';
> +	vpu->run.dec_capability = readl(&run->dec_capability);
> +	vpu->run.enc_capability = readl(&run->enc_capability);
>  	wake_up_interruptible(&vpu->run.wq);
>  }
>  
> diff --git a/drivers/media/platform/mtk-vpu/mtk_vpu.h b/drivers/media/platform/mtk-vpu/mtk_vpu.h
> index d4453b4bcee9..a7ac351b19c1 100644
> --- a/drivers/media/platform/mtk-vpu/mtk_vpu.h
> +++ b/drivers/media/platform/mtk-vpu/mtk_vpu.h
> @@ -15,7 +15,7 @@
>   * VPU interfaces with other blocks by share memory and interrupt.
>   **/
>  
> -typedef void (*ipi_handler_t) (void *data,
> +typedef void (*ipi_handler_t) (void __iomem *data,
>  			       unsigned int len,
>  			       void *priv);
>  
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
