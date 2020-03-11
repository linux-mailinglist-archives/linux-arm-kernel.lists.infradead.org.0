Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4140A181923
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 14:06:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Skc8rkKkpGmkHPz94rrLKPQM5IetrizxU75gFDDKqM=; b=bXGj+atziV40Q4
	LWutckVGwDNST3u05Pw2pcAQrV0usKEoQNmLfbqvCJgwdOqbxOPHCNgyCxCrZzaQjOPOYqJO4ndRj
	Flrzrw3cjbQ2PjF8I3pBq+ELgklO5xtKnm2WuY0zuGxIBA2PwHwEKNO3VEOy6C1lS18VkA+O88lvF
	MIhxW4nZXfQitSN4pv9qPnfbfgN7cfGV1NJhQSflzlVvRSs/97aYxNLyeoM7roZDHv3MourQG5nHx
	UuVRYV1a7eVmejCBarpf2P0ErFJOX2Cy0X/D+bFWc0znX0D3U6RV/qMVz6TcbfpvxzyRafTjq//Kp
	UWoin43l4cpoJP7pYOVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC140-000412-HU; Wed, 11 Mar 2020 13:06:20 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC13h-0003pj-Bb; Wed, 11 Mar 2020 13:06:03 +0000
X-UUID: b659522118fd46c0927e2b8e91efd116-20200311
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=Mp2aZPUa6vRdl4F4YlSPXJ1sI5MSD/01Q/eOy0GtTQI=; 
 b=Pm+zucoG/kvsBN9Ow++Vdj3Sj76CavNu7zETryL6YMUx2du9eTCP5Y8AWsmv/A29O2MbmaUQHupsGYZUvhjucSUeZ7opr0SFIHW9iBmg9kP6qzRzOXUNmS1v+vClxUAb0VBY5BvAeGWQg1ch7n4xGzRxhflFOfmrj/Tlan7ehpI=;
X-UUID: b659522118fd46c0927e2b8e91efd116-20200311
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 341878624; Wed, 11 Mar 2020 05:05:55 -0800
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Mar 2020 06:06:01 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Mar 2020 21:05:52 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 11 Mar 2020 21:05:01 +0800
Message-ID: <1583931952.29614.5.camel@mtksdaap41>
Subject: Re: [PATCH v11 3/5] clk / soc: mediatek: Move mt8173 MMSYS to
 platform driver
From: CK Hu <ck.hu@mediatek.com>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Date: Wed, 11 Mar 2020 21:05:52 +0800
In-Reply-To: <20200311115614.1425528-4-enric.balletbo@collabora.com>
References: <20200311115614.1425528-1-enric.balletbo@collabora.com>
 <20200311115614.1425528-4-enric.balletbo@collabora.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: D784D3DAEEA661B9A0D6E2A96065163283990E8ECB339D1E7BA070311362A5752000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_060601_478698_9CA60FD6 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
 linux-clk@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 Weiyi Lu <weiyi.lu@mediatek.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 wens@csie.org, linux-arm-kernel@lists.infradead.org,
 mtk01761 <wendell.lin@mediatek.com>, Owen Chen <owen.chen@mediatek.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 p.zabel@pengutronix.de, frank-w@public-files.de,
 Seiya Wang <seiya.wang@mediatek.com>, sean.wang@mediatek.com,
 Houlong Wei <houlong.wei@mediatek.com>, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Allison Randal <allison@lohutok.net>, Matthias Brugger <mbrugger@suse.com>,
 Fabien Parent <fparent@baylibre.com>, sboyd@kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 matthias.bgg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Enric:

On Wed, 2020-03-11 at 12:56 +0100, Enric Balletbo i Serra wrote:
> From: Matthias Brugger <mbrugger@suse.com>
> 
> There is no strong reason for this to use CLK_OF_DECLARE instead of
> being a platform driver. Plus, MMSYS provides clocks but also a shared
> register space for the mediatek-drm and the mediatek-mdp
> driver. So move the MMSYS clocks to a new platform driver and also
> create a new MMSYS platform driver in drivers/soc/mediatek that
> instantiates the clock driver.
> 

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> Signed-off-by: Matthias Brugger <mbrugger@suse.com>
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> ---
> 
> Changes in v11:
> - Leave the clocks part in drivers/clk (clk-mt8173-mm)
> - Instantiate the clock driver from the mtk-mmsys driver.
> - Add default config option to not break anything.
> - Removed the Reviewed-by CK tag as changed the organization.
> 
> Changes in v10:
> - Renamed to be generic mtk-mmsys
> - Add driver data support to be able to support diferent SoCs
> 
> Changes in v9:
> - Move mmsys to drivers/soc/mediatek (CK)
> 
> Changes in v8:
> - Be a builtin_platform_driver like other mediatek mmsys drivers.
> 
> Changes in v7:
> - Free clk_data->clks as well
> - Get rid of private data structure
> 
>  drivers/clk/mediatek/Kconfig         |   7 ++
>  drivers/clk/mediatek/Makefile        |   1 +
>  drivers/clk/mediatek/clk-mt8173-mm.c | 146 +++++++++++++++++++++++++++
>  drivers/clk/mediatek/clk-mt8173.c    | 104 -------------------
>  drivers/soc/mediatek/Kconfig         |   8 ++
>  drivers/soc/mediatek/Makefile        |   1 +
>  drivers/soc/mediatek/mtk-mmsys.c     |  50 +++++++++
>  7 files changed, 213 insertions(+), 104 deletions(-)
>  create mode 100644 drivers/clk/mediatek/clk-mt8173-mm.c
>  create mode 100644 drivers/soc/mediatek/mtk-mmsys.c
> 

>  obj-$(CONFIG_COMMON_CLK_MT8183_CAMSYS) += clk-mt8183-cam.o


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
