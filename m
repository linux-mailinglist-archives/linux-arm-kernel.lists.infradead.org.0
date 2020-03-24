Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9425E190D42
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 13:21:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yyBLbnB3no5DDLW/rOaN24gK9SrAQLOlvz4c661zCDQ=; b=pHkp745gZ/VQPh
	vvcewzmyNYLR8H/XkOvkdtROC0ZA/fKD19W4k7V1nwv669CoRnGK+mv/BRLf6VOSzvLIvJYIBtZr8
	IV9RR48n7kTOHlJp7CNEoCMkf6gjy5xahm+g36oEu9g7uiHgf5WoEqX+iryDjHUxnMoII7elIdx8W
	iRP8zwHTUfo1ZaZfI8OfMNO0biaianRXOmpUMENl6y4mIIC1SisQCNkww5zYgqrRF080imJmxNzW+
	6SRrfSjzKFaz/y/GvTHjhmPKcHRA6PyxOhehOMdjC4tIJW6buImiGJRnqmsL4LSYSfrE4wKKLasyC
	hyqXke5zTfMVwLlzhNWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGiYS-00005I-Lh; Tue, 24 Mar 2020 12:21:12 +0000
Received: from lb1-smtp-cloud8.xs4all.net ([194.109.24.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGiYI-0008Vd-Rf; Tue, 24 Mar 2020 12:21:05 +0000
Received: from [192.168.2.10] ([46.9.234.233])
 by smtp-cloud8.xs4all.net with ESMTPA
 id GiY4jVrsjBr2bGiY8jCVHV; Tue, 24 Mar 2020 13:20:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1585052455; bh=q8/Nxldo0LneGCdfQpNyLduJF8p8iKBwes/hSH0SxlM=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=qupwrIayFeTsrlTx4+9FCeHD636QJ2URJOpz0zDyrsmgIvLumwAOXyRBYwiyIUJKi
 UlnunWkyu3CDjdXMWAw8zQ/yG1u7xWxO8vWCuTRl+GPGXSnc9A6eqkPWtg25iC+ars
 nL+7OKvhKX45SH2Fi/pWZ/n8OuNoK6wgdXYQB/2CG/4yjMZDW2xhGz6A9nQu4jfR9p
 LAOC+KA4O1Cf2sMGMuJ/xY5lVp5Cf+8zr+xNjDmBvHMblW+22uUaSGwGOrkRCzUMLO
 nXF0Em7pjFM+T9dqtPnc0f8mfgX0ajrPC0sUS4XqcCfm3i52BCeBkdgmX6chA8L9J7
 kqjAOYjUgSyLw==
Subject: Re: [PATCH] media: mtk-vpu: load vpu firmware from the new location
To: gtk_ruiwang@mediatek.com, Alexandre Courbot <acourbot@chromium.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Tomasz Figa <tfiga@chromium.org>,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20200322075745.6133-1-gtk_ruiwang@mediatek.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <396021fd-ec2e-1ec1-602e-08b9393c5ae9@xs4all.nl>
Date: Tue, 24 Mar 2020 13:20:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200322075745.6133-1-gtk_ruiwang@mediatek.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfPcSfPBFnE60zpFmF76AlV/HJsSpaQpqXlnD5wDic0hiCQOCEZhacKr2KO3ERRpWPwCGDnIhG3WHoksBYOMelaGBPqt1t9paNJH0Kw0WaAIlqnhhuLE4
 gAGQ5OYYcwupJvWJefx8UXCvyvrhZafMSETMwl7oQTB9JmAsXu5lXKPeiH+1rK2tST7TlRwpJAgpwkJhQlAL8906mhdxXmORyndb+7k5YAtwH3WdO5nPDg8O
 bA+5zEzsCzTVCan4hRn7fIAvbSLIO52qOclO0LJIII50/iDroZmAsvu6uxpWuVQw4k2OIvtiNs9rez0l3gDpqp1FHaNXPEFOLiAvYmdRw5Z+2RhBTCoXf0tR
 /oeOi2aGlgFwKuBo8wtN2ncHWQ4IIC+uv5zYuR0c+VLI+CYKVdpUbV06Rzr9jqKc5+wI5ghk8ydBWa5U+imU/9u9pRo4+H3kEhVA9PfoTw+L/rIWToQzuIKm
 VSnQZKQeSI2OsDIZ0vQ56lxiP3G2ls+oBZomsJrmrAiffRU5wwBS4+904yk3SQNauEkdlIGAtszGJ18Pjlh1WCX+O5P95k0X+HehJef1qf6pUCkKJxzvFfV/
 /tpwNPKPJg/46GozwS0i58kadUPDKgybfHGG6fY7JwfvD6RnZCx3uBMgg5DQhAkkQyxSAM5z1WvDPo5NKU+pwxnz0rBzZqunVJkAQGyGAcnBnbR9lxsZO+3x
 idjdCb5gpuY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_052103_572829_5CCF7CB5 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.21 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.21 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Maoguang Meng <maoguang.meng@mediatek.com>, srv_heupstream@mediatek.com,
 Erin Lo <erin.lo@mediatek.com>, Houlong Wei <houlong.wei@mediatek.com>,
 Sj Huang <sj.huang@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/22/20 8:57 AM, gtk_ruiwang@mediatek.com wrote:
> From: gtk_ruiwang <gtk_ruiwang@mediatek.com>
> 
> mt8173 VPU firmware has been moved to a sub-folder of
> linux-firmware, so load vpu-fw from the new location first,
> if it fails, then from the old one.
> 
> Signed-off-by: Rui Wang <gtk_ruiwang@mediatek.com>

Hmm, I'm getting this from checkpatch.pl --strict:

WARNING: Missing Signed-off-by: line by nominal patch author 'gtk_ruiwang <gtk_ruiwang@mediatek.com>'

Rather than sending this from 'gtk_ruiwang@mediatek.com', can you send this from
'Rui Wang <gtk_ruiwang@mediatek.com>'?

Then the two are the same.

Regards,

	Hans

> ---
>  drivers/media/platform/mtk-vpu/mtk_vpu.c | 16 +++++++++++++---
>  1 file changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/media/platform/mtk-vpu/mtk_vpu.c b/drivers/media/platform/mtk-vpu/mtk_vpu.c
> index a768707abb94..89274842e07b 100644
> --- a/drivers/media/platform/mtk-vpu/mtk_vpu.c
> +++ b/drivers/media/platform/mtk-vpu/mtk_vpu.c
> @@ -46,6 +46,8 @@
>  /* binary firmware name */
>  #define VPU_P_FW		"vpu_p.bin"
>  #define VPU_D_FW		"vpu_d.bin"
> +#define VPU_P_FW_NEW		"mediatek/mt8173/vpu_p.bin"
> +#define VPU_D_FW_NEW		"mediatek/mt8173/vpu_d.bin"
>  
>  #define VPU_RESET		0x0
>  #define VPU_TCM_CFG		0x0008
> @@ -477,16 +479,24 @@ static int load_requested_vpu(struct mtk_vpu *vpu,
>  	size_t tcm_size = fw_type ? VPU_DTCM_SIZE : VPU_PTCM_SIZE;
>  	size_t fw_size = fw_type ? VPU_D_FW_SIZE : VPU_P_FW_SIZE;
>  	char *fw_name = fw_type ? VPU_D_FW : VPU_P_FW;
> +	char *fw_new_name = fw_type ? VPU_D_FW_NEW : VPU_P_FW_NEW;
>  	const struct firmware *vpu_fw;
>  	size_t dl_size = 0;
>  	size_t extra_fw_size = 0;
>  	void *dest;
>  	int ret;
>  
> -	ret = request_firmware(&vpu_fw, fw_name, vpu->dev);
> +	ret = request_firmware(&vpu_fw, fw_new_name, vpu->dev);
>  	if (ret < 0) {
> -		dev_err(vpu->dev, "Failed to load %s, %d\n", fw_name, ret);
> -		return ret;
> +		dev_info(vpu->dev, "Failed to load %s, %d, retry\n",
> +			 fw_new_name, ret);
> +
> +		ret = request_firmware(&vpu_fw, fw_name, vpu->dev);
> +		if (ret < 0) {
> +			dev_err(vpu->dev, "Failed to load %s, %d\n", fw_name,
> +				ret);
> +			return ret;
> +		}
>  	}
>  	dl_size = vpu_fw->size;
>  	if (dl_size > fw_size) {
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
