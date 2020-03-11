Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ACEE18192F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 14:08:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CuWZA10igUH4N7LfdMzpZLzo9uxnw3ePwBUdO8yepqM=; b=BHpM5TvhijXXYO
	nI9gGX5Z/kuILTIfeKx3bAL8l5WPmq5C1hIy5Bhhz2+6jHguEXMRuISf9o6oeJ/GW2h2f2phiIrDU
	qO6EPLDImvkypuwCzdho6Nb3Ge/S3pujr/GlVBS5olQ2jNqAH2We3uEEAKV35WDzLqNa+gCKB7ca9
	ulDKj0pHH1lK041E3ovglcNUfwZxfLCzLmxFYwUJFxV8odSgIQ6Lcue9x1RVpmfJRcD2RyIkRVk3N
	gHtvaTY3VG4yRZEtQILQ6HmuRhIrQXVTNM6RUtI6QH7O4e2zO/AzAno8Jj9PjjyBQFBS1l50210nZ
	LpgLO90WtYpPainaQHiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC15i-0004ST-Qy; Wed, 11 Mar 2020 13:08:06 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC15X-0004S2-N9; Wed, 11 Mar 2020 13:07:56 +0000
X-UUID: 7c98eb37a7674907a45f065bba826e73-20200311
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=ClGTqPIGoVqVr3jF7yujqXX6Xpj7o2+++464APlQxj8=; 
 b=R3riNyrTKlFRg/nE77hSNB+cMojHvOJccg03w5lKqBSuhZJ1/IqS7itKTQ8FTTiYJhPACmBWBluoWXdlXUG/zbTf2rQqkvqqYWpmrziqM7WynKyhbTNTXnBXUvVrSOLmFpWLB95B+aksgIkMQE+6S6ygBytfaOyrLegh+GR/0BM=;
X-UUID: 7c98eb37a7674907a45f065bba826e73-20200311
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 471549127; Wed, 11 Mar 2020 05:07:54 -0800
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Mar 2020 06:07:52 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Mar 2020 21:07:50 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 11 Mar 2020 21:06:53 +0800
Message-ID: <1583932064.29614.6.camel@mtksdaap41>
Subject: Re: [PATCH v11 4/5] soc / drm: mediatek: Move routing control to
 mmsys device
From: CK Hu <ck.hu@mediatek.com>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Date: Wed, 11 Mar 2020 21:07:44 +0800
In-Reply-To: <20200311115614.1425528-5-enric.balletbo@collabora.com>
References: <20200311115614.1425528-1-enric.balletbo@collabora.com>
 <20200311115614.1425528-5-enric.balletbo@collabora.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: D78B7E686CD1B535834D80DC0678BB113F1681C82C2C2E34388BCBCE202CC48B2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_060755_761296_02194B5B 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, Kate Stewart <kstewart@linuxfoundation.org>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>, airlied@linux.ie,
 mturquette@baylibre.com, dri-devel@lists.freedesktop.org,
 Richard Fontana <rfontana@redhat.com>, laurent.pinchart@ideasonboard.com,
 ulrich.hecht+renesas@gmail.com, Collabora Kernel ML <kernel@collabora.com>,
 linux-clk@vger.kernel.org, Weiyi Lu <weiyi.lu@mediatek.com>, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, mtk01761 <wendell.lin@mediatek.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 p.zabel@pengutronix.de, frank-w@public-files.de,
 Seiya Wang <seiya.wang@mediatek.com>, sean.wang@mediatek.com,
 Houlong Wei <houlong.wei@mediatek.com>, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Allison Randal <allison@lohutok.net>, Matthias Brugger <mbrugger@suse.com>,
 sboyd@kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 rdunlap@infradead.org, linux-kernel@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, matthias.bgg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Enric:

On Wed, 2020-03-11 at 12:56 +0100, Enric Balletbo i Serra wrote:
> Provide a mtk_mmsys_ddp_connect() and mtk_mmsys_disconnect() functions to
> replace mtk_ddp_add_comp_to_path() and mtk_ddp_remove_comp_from_path().
> Those functions will allow DRM driver and others to control the data
> path routing.
> 

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
> ---
> 
> Changes in v11: None
> Changes in v10:
> - Select CONFIG_MTK_MMSYS (CK)
> - Pass device pointer of mmsys device instead of config regs (CK)
> 
> Changes in v9:
> - Introduced a new patch to move routing control into mmsys driver.
> - Removed the patch to use regmap as is not needed anymore.
> 
> Changes in v8: None
> Changes in v7: None
> 
>  drivers/gpu/drm/mediatek/Kconfig        |   1 +
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c |  19 +-
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c  | 256 ----------------------
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.h  |   7 -
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c  |  14 +-
>  drivers/gpu/drm/mediatek/mtk_drm_drv.h  |   2 +-
>  drivers/soc/mediatek/mtk-mmsys.c        | 279 ++++++++++++++++++++++++
>  include/linux/soc/mediatek/mtk-mmsys.h  |  20 ++
>  8 files changed, 316 insertions(+), 282 deletions(-)
>  create mode 100644 include/linux/soc/mediatek/mtk-mmsys.h
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
