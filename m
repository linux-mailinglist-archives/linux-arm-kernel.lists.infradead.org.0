Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6BB415D616
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 11:53:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tdTiJPUqH+O4wqv/gE7aMsJ+vPEmgYOK4FKUCf1bvRo=; b=Wihh/T8gNkBCXl
	w9b6GI7XAjMPRfBDknFaV2MxrAXqZRL8N0HYw+by9RJva3eQ5bP2hU1ig3HyYzRohBTSz672zb3gm
	CtXY+SGs/8+FUqZ1Xb/+cr4ZDtd/+tujDgjWPpVAgIiVEEWDjZyBR7LDtIQ4HDPqG/6+i4ly+laK2
	DGiVdbw+kb+f6cFfuqbQNZqIKhscw9s4PShhd65+rpokP5govIHixScQuzNwFQXU6CbViy51DY6V3
	9Po/YPZSox6eAGfdTjg0dOX+xtZBkLZr7cEIOoz/M1pzkx8VWer/T2ROV2javt91KpY79oB28bgHH
	NPYZwA6VuUeyI6h9mJUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Yax-0005fW-AW; Fri, 14 Feb 2020 10:53:15 +0000
Received: from lb2-smtp-cloud8.xs4all.net ([194.109.24.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Yam-0005ds-D9; Fri, 14 Feb 2020 10:53:06 +0000
Received: from [IPv6:2001:983:e9a7:1:f887:140a:e9b5:d382]
 ([IPv6:2001:983:e9a7:1:f887:140a:e9b5:d382])
 by smtp-cloud8.xs4all.net with ESMTPA
 id 2YaTjHqXh8i432YaUjPUAB; Fri, 14 Feb 2020 11:52:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1581677576; bh=PoAwgGAVLFRL4K4umMWVXqOld8muv/SdpfOyJozE5OU=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=AbDhoKRvMaprnnZpO8oWh0F1Mbx9DPDTuXid6FpPQWfUkqrXcH+VnUu9J64V04fNu
 IuowlxD7c2q0O41eTMoXmn5XIclK1Beb6EQy8iX8FUQHRQxwRaiDdtcx+s1cHm4+4D
 r+A/3gdpFFHVSgclyBH2YkWwEiUcbs7lq0V+Bxql30HR9NAPPfT0KH6+PLRiHR4CZm
 XG22I2vmLEjCByXnlecHrih7odabd+veud4rg0RE8DnRowWbWUvLYEau5ziqo4p6C2
 tokAjiMKSe16EBiUtc0o+azKGyrWivGMgPpH+69OD2ceFuSyS/Uuolp+X2TXHM5h8K
 f1jZbjZjyxwTQ==
Subject: Re: [PATCH] media: mtk-vpu: avoid unaligned access to DTCM buffer.
To: Hsin-Yi Wang <hsinyi@chromium.org>, linux-arm-kernel@lists.infradead.org
References: <20200210035351.227499-1-hsinyi@chromium.org>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <bf9205b3-6b02-625a-670d-16cfd44d3274@xs4all.nl>
Date: Fri, 14 Feb 2020 11:52:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200210035351.227499-1-hsinyi@chromium.org>
Content-Language: en-US
X-CMAE-Envelope: MS4wfFkv9Y1VAyP3DDACNjYSF9jvrqHkn9y/FDpjLsXTXuxKeZwjTM9Pf/3T92qsTgWt+k+W0O7VP58di/NiQ3rdrrF5C3GjZRbfpYE5UAMnJc8fXNl7dodG
 mONIJj71oA8y3Y26Iv52bZs+eA1tX4HWXps1vTwRRFoTOq12vsC09vQ2rjbcW0Leu5CEg5crybKNOX80a3g9e4Do7/Ki81hMTe1rD2gRbuc7jEcPxKH6fGM9
 fU4qYuOvnzSa3+ROaFS9GyJTYVkkZ96oxIIMGFSRJtSqm2Oc/6rIaAhu4KFfHOvlbGHtV7T0H93Jta3FjfHPwPmi8n1xR7XcRlXtvH4dz6mVijZgJ0x5+6RV
 xW8bSsbWswSeQqzDV3E5M3BbnZlLCJHuhbCobD/3U6GpoNQ7ih79r4X/KcSvh+ZJx75msecoS1aMVNv4zZ3UVnRis+naugmJNle3/btuebHUzLBWgrSYeMdJ
 2RpJWo3i3Voy7zHGTRXM0QyqAmVVPk7SqpKSthzWS3jNQaA3f5XPJyU4UqZbibrtfYH6H7yg1zFvwDGNiFHCd3rjyX1nRuc5AH34rUwR4a20Ep6qsVOK0gk5
 rWUQGpxVr8Ce6ldXtsnAnnDAvkTy53+86L3fS05fip/I+MPkOqaZ+vXbhH2i0r9Rr4XWc+nwCMucxZuolGZuaQ6/XBcwIR19hAxnzRrrLWOx86fYzBudjE6H
 S/T7UeXNmDfG/Aj7GMz4liy1WIOSJeCa
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_025304_607872_024641C1 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.25 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.25 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi Hsin-Yi Wang,

On 2/10/20 4:53 AM, Hsin-Yi Wang wrote:
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

This patch results in the following sparse warnings:

sparse: WARNINGS
SPARSE:mtk-vpu/mtk_vpu.c mtk-vpu/mtk_vpu.c:834:52:  warning: incorrect type in argument 3 (incompatible argument 1 (different address spaces))
SPARSE:mtk-vpu/mtk_vpu.c mtk-vpu/mtk_vpu.c:609:29:  warning: dereference of noderef expression
SPARSE:mtk-vpu/mtk_vpu.c mtk-vpu/mtk_vpu.c:613:35:  warning: dereference of noderef expression
SPARSE:mtk-vpu/mtk_vpu.c mtk-vpu/mtk_vpu.c:614:35:  warning: dereference of noderef expression

Can you take a look?

Regards,

	Hans

> ---
>  drivers/media/platform/mtk-vpu/mtk_vpu.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/media/platform/mtk-vpu/mtk_vpu.c b/drivers/media/platform/mtk-vpu/mtk_vpu.c
> index a768707abb94..e705e85d6f5a 100644
> --- a/drivers/media/platform/mtk-vpu/mtk_vpu.c
> +++ b/drivers/media/platform/mtk-vpu/mtk_vpu.c
> @@ -600,13 +600,16 @@ int vpu_load_firmware(struct platform_device *pdev)
>  }
>  EXPORT_SYMBOL_GPL(vpu_load_firmware);
>  
> -static void vpu_init_ipi_handler(void *data, unsigned int len, void *priv)
> +static void vpu_init_ipi_handler(void __iomem *data, unsigned int len,
> +				 void *priv)
>  {
>  	struct mtk_vpu *vpu = (struct mtk_vpu *)priv;
> -	struct vpu_run *run = (struct vpu_run *)data;
> +	struct vpu_run __iomem *run = data;
>  
>  	vpu->run.signaled = run->signaled;
> -	strscpy(vpu->run.fw_ver, run->fw_ver, sizeof(vpu->run.fw_ver));
> +	memcpy_fromio(vpu->run.fw_ver, run->fw_ver, sizeof(vpu->run.fw_ver));
> +	/* Make sure the string is NUL-terminated */
> +	vpu->run.fw_ver[sizeof(vpu->run.fw_ver) - 1] = '\0';
>  	vpu->run.dec_capability = run->dec_capability;
>  	vpu->run.enc_capability = run->enc_capability;
>  	wake_up_interruptible(&vpu->run.wq);
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
