Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 802481702D1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 16:40:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HEDm2HuwcFg6yuasct8bOGy+cu5c3fx4ADGCoeDvBRc=; b=TJ+poXtQTEvsR7
	6bb3cuiUpBDSX3SwE2iumI/gZgcfLwRXGMa7Vpm1XECKH3pULr1Xm9LQxPzL04e8njepKEkBd5lUL
	aNkrLaS3nDJ40LBR8tNboLrrhZOmS9YvIY92DlntpbjyUnJIuIwIwThb5fKwLqLHVPcnU/y/whzYa
	0Df84qgl8W5KrCa9yU0k2DkVmyCmrBnb5SWb1pnhxopdX5voH1CMEyJfEE/EQia+8mbmxTwV+wAJ0
	/th2luDZ9ayhK569Ux9t9GkrLzKhik+AiFxp3176EsZQ7UzmByJe+zFaJBE7ZaIFquTipQpLRUPtb
	u0nlivPxOnm7IslSx4lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6yne-0001qz-5Y; Wed, 26 Feb 2020 15:40:38 +0000
Received: from [2601:1c0:6280:3f0::19c2]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6ynR-0001q6-Qg; Wed, 26 Feb 2020 15:40:25 +0000
Subject: Re: [PATCH v9 3/4] soc: mediatek: Move mt8173 MMSYS to platform driver
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 robh+dt@kernel.org, mark.rutland@arm.com, ck.hu@mediatek.com,
 p.zabel@pengutronix.de, airlied@linux.ie, mturquette@baylibre.com,
 sboyd@kernel.org, ulrich.hecht+renesas@gmail.com,
 laurent.pinchart@ideasonboard.com
References: <20200226105419.632771-1-enric.balletbo@collabora.com>
 <20200226105419.632771-4-enric.balletbo@collabora.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <54b3cfed-92f3-54c8-05a1-90ef4c057e4c@infradead.org>
Date: Wed, 26 Feb 2020 07:40:22 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200226105419.632771-4-enric.balletbo@collabora.com>
Content-Language: en-US
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>, dri-devel@lists.freedesktop.org,
 Richard Fontana <rfontana@redhat.com>,
 Collabora Kernel ML <kernel@collabora.com>, linux-clk@vger.kernel.org,
 Weiyi Lu <weiyi.lu@mediatek.com>, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, mtk01761 <wendell.lin@mediatek.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 frank-w@public-files.de, Seiya Wang <seiya.wang@mediatek.com>,
 sean.wang@mediatek.com, Houlong Wei <houlong.wei@mediatek.com>,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Allison Randal <allison@lohutok.net>, Matthias Brugger <mbrugger@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, matthias.bgg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/26/20 2:54 AM, Enric Balletbo i Serra wrote:
> diff --git a/drivers/soc/mediatek/Kconfig b/drivers/soc/mediatek/Kconfig
> index 2114b563478c..dcd6481a14d0 100644
> --- a/drivers/soc/mediatek/Kconfig
> +++ b/drivers/soc/mediatek/Kconfig
> @@ -44,4 +44,11 @@ config MTK_SCPSYS
>  	  Say yes here to add support for the MediaTek SCPSYS power domain
>  	  driver.
>  
> +config MT8173_MMSYS
> +	bool "MediaTek MT8173 MMSYS Support"

Hi,
Can this be tristate instead of bool?

> +	depends on COMMON_CLK_MT8173
> +	help
> +	  Say yes here to add support for the MediaTek MT8173 Multimedia
> +	  Subsystem (MMSYS).
> +
>  endmenu

thanks.
-- 
~Randy


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
