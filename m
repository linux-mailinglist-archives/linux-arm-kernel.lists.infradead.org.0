Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 494F61554F1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 10:43:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nZ4YCm4Yye8tnrqxWk+jyCWXBQobooGn7TKx8XMjnQU=; b=O/8/cajIsbdHJT
	pE+Xz3Zq8kwOK1Z2uQqG0eXFfSE+3k0jDs3Tq4wmuyywocniduz74jFfsSzwKxTmwWsxnZDMzPt/g
	hE+djdf4wKLoCnoJDEhbxo8c+OMxxBpFA3W4+u9/09MOoGL8Cry5sK3mszr2bJR18F96zn6hokz9c
	QpEb6nMUqxIJvXpwPhbYwvavGENQckUod4eVigUuk8WpgISYq89Nl0WwK/BLlyy2B3MH+hsVqXolF
	BzdwCym+aolAYyHtq0VON6PC6uwLRl5SFcP3N6lxG/Jujw+2aAQbLgFbicn6iCPL6VB4FVb0MryTx
	NvEuDhLUDVSPIPqeVnLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j00AH-0007uH-79; Fri, 07 Feb 2020 09:43:09 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j00A9-0007sl-TQ; Fri, 07 Feb 2020 09:43:04 +0000
X-UUID: 42e8a891972e431293b686dd418eecda-20200207
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=m74yjQkT2G8gL7JoqJhfpeZ6P0zLpKwVgqiwmutKy3g=; 
 b=PUFN4niIigJ5y4h9n6/8BFNCnIfv41AI2DNojRUrHJcG0/L3pCWJVbOa8n7ah4u0oGqJELS6wUtwpZQWf1NGfjjTsy4kQg9dIKuR64MEb5FOX+YyZevs/B0Q/QC9NtfU+b6tatMNH5cZ5nqCzjEYNmsXqs6rBH1gPQFSYLXZaYk=;
X-UUID: 42e8a891972e431293b686dd418eecda-20200207
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1512609855; Fri, 07 Feb 2020 01:42:58 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 7 Feb 2020 01:34:19 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 7 Feb 2020 17:33:30 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 7 Feb 2020 17:31:40 +0800
Message-ID: <1581068057.28261.0.camel@mtksdaap41>
Subject: Re: [PATCH v2 1/3] drm/mediatek: exit earlier if failed to register
 audio driver
From: CK Hu <ck.hu@mediatek.com>
To: Tzung-Bi Shih <tzungbi@google.com>
Date: Fri, 7 Feb 2020 17:34:17 +0800
In-Reply-To: <20200206102509.1.Ieba8d422486264eb7aaa3aa257620a1b0c74c6db@changeid>
References: <20200206031752.193298-1-tzungbi@google.com>
 <20200206102509.1.Ieba8d422486264eb7aaa3aa257620a1b0c74c6db@changeid>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_014301_959053_D49E6C84 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: alsa-devel@alsa-project.org, p.zabel@pengutronix.de, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, broonie@kernel.org,
 linux-mediatek@lists.infradead.org, daniel@ffwll.ch, matthias.bgg@gmail.com,
 dgreid@google.com, linux-arm-kernel@lists.infradead.org, cychiang@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Tzung-Bi:

On Thu, 2020-02-06 at 11:17 +0800, Tzung-Bi Shih wrote:
> Exits earlier if register_audio_driver() returns errors.
> 

Acked-by: CK Hu <ck.hu@mediatek.com>

> Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_hdmi.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
> index c79b1f855d89..23c2b0e8693d 100644
> --- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
> @@ -1656,7 +1656,7 @@ static const struct hdmi_codec_ops mtk_hdmi_audio_codec_ops = {
>  	.get_eld = mtk_hdmi_audio_get_eld,
>  };
>  
> -static void mtk_hdmi_register_audio_driver(struct device *dev)
> +static int mtk_hdmi_register_audio_driver(struct device *dev)
>  {
>  	struct hdmi_codec_pdata codec_data = {
>  		.ops = &mtk_hdmi_audio_codec_ops,
> @@ -1669,9 +1669,10 @@ static void mtk_hdmi_register_audio_driver(struct device *dev)
>  					     PLATFORM_DEVID_AUTO, &codec_data,
>  					     sizeof(codec_data));
>  	if (IS_ERR(pdev))
> -		return;
> +		return PTR_ERR(pdev);
>  
>  	DRM_INFO("%s driver bound to HDMI\n", HDMI_CODEC_DRV_NAME);
> +	return 0;
>  }
>  
>  static int mtk_drm_hdmi_probe(struct platform_device *pdev)
> @@ -1705,7 +1706,11 @@ static int mtk_drm_hdmi_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> -	mtk_hdmi_register_audio_driver(dev);
> +	ret = mtk_hdmi_register_audio_driver(dev);
> +	if (ret) {
> +		dev_err(dev, "Failed to register audio driver: %d\n", ret);
> +		return ret;
> +	}
>  
>  	hdmi->bridge.funcs = &mtk_hdmi_bridge_funcs;
>  	hdmi->bridge.of_node = pdev->dev.of_node;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
