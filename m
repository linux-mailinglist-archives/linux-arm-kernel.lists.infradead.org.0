Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BF1130DC1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 07:58:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yM9e4bXju/Z5ydhRpBIp3tFyuKRACFVHRAEdRkLLtNI=; b=XrLgSNmbXFPHO/
	UN8VIEgeNVQuEzHrkAZBNtypJh8V1qlZ/ilBrkZppw3ALRfeFnqaG6U8doXpbhREdx7xeQalqHePg
	UQJyY1AnnXglouFle9GySA8p8YA09znPnaAK9Wfe5T76TBhAKnVC4ZwTpYGKKcHlSy8oC+KkqH5L0
	EhSVxYcCHAjYIV+ilk59gPIPSXXKBVg0ni3rVqabWdf4r1za+YHJrNEPgObkvbughUxfT60vmEsoB
	3Ha199aakNNGZqmTHHJWWxQTV8GpUQHOVK6iH63J8O0Up0SOALXrnv3LJjJYPt/Q7/6zBD2g+whKL
	bri5mq+87F/7p8g9unZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioMLB-00073C-W0; Mon, 06 Jan 2020 06:58:17 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioML4-000726-Ek; Mon, 06 Jan 2020 06:58:11 +0000
X-UUID: 9990aa3cfbd348c8b66b7628a5b5a95f-20200105
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=aYAZgI6ryqNleIeTmQWVE96vhfch+9yXx43Fz3GXDe0=; 
 b=Hbr1iiIwM5x+W94EmR46cxymgPfb+HIHweivpVQEJJZCEcrIrBzE+73oyEyn56Qh/CkstUDm8rnDdScizia4Z69tQOZxnI5xBM7ATIZFQrFs7mFrpjbWsWCJ8tSzTXRX6zeUnsTr3GcBEAeRqKEhi+3I3aJqGwilpPKk1jDl8LE=;
X-UUID: 9990aa3cfbd348c8b66b7628a5b5a95f-20200105
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 201681531; Sun, 05 Jan 2020 22:58:04 -0800
Received: from mtkexhb02.mediatek.inc (172.21.101.103) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 5 Jan 2020 22:48:03 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by mtkexhb02.mediatek.inc
 (172.21.101.103) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Mon, 6 Jan 2020 14:47:41 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 6 Jan 2020 14:46:02 +0800
Message-ID: <1578293251.3044.1.camel@mtksdaap41>
Subject: Re: [PATCH] drm/mediatek: fix indentation
From: CK Hu <ck.hu@mediatek.com>
To: Fabien Parent <fparent@baylibre.com>
Date: Mon, 6 Jan 2020 14:47:31 +0800
In-Reply-To: <20200103142445.55036-1-fparent@baylibre.com>
References: <20200103142445.55036-1-fparent@baylibre.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_225810_504414_7E94620D 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: daniel@ffwll.ch, airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 p.zabel@pengutronix.de, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Fabien:

On Fri, 2020-01-03 at 15:24 +0100, Fabien Parent wrote:
> Fix indentation in the Makefile by replacing spaces with tabs.
> 

Applied to mediatek-drm-next-5.6 [1], thanks.

[1]
https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-next-5.6

Regards,
cK

> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> ---
>  drivers/gpu/drm/mediatek/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/Makefile b/drivers/gpu/drm/mediatek/Makefile
> index 8067a4be8311..b2b523913164 100644
> --- a/drivers/gpu/drm/mediatek/Makefile
> +++ b/drivers/gpu/drm/mediatek/Makefile
> @@ -21,7 +21,7 @@ obj-$(CONFIG_DRM_MEDIATEK) += mediatek-drm.o
>  mediatek-drm-hdmi-objs := mtk_cec.o \
>  			  mtk_hdmi.o \
>  			  mtk_hdmi_ddc.o \
> -                          mtk_mt2701_hdmi_phy.o \
> +			  mtk_mt2701_hdmi_phy.o \
>  			  mtk_mt8173_hdmi_phy.o \
>  			  mtk_hdmi_phy.o
>  

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
