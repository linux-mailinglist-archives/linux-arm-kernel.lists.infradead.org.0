Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A89891678E2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 09:57:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i7HCj7IH8QCEpCmIm7SlLQkQSqAg6p7hUQxV8kGT+Bc=; b=M1f0Twyr6K3Qqg
	CynOgUQ70S8u9Y+fI77B0tvgVkjhwXbVHZ5GVAJHCvloHE6uBo/OnMq1aI0Y+RlFDjXSWHJDAnsqr
	qLLyR3YMpss4Zm/OUFnOEZGZ1moB2bTqUye+B/XVeY17PRdczZXTAS/I+Q0HW1Vffdx9h725FEcKz
	rTYI0GloIK5DjwTuHElDAwZjdxQiV/oqInX4GeZNScVWpHhTh5Fwrt60/cUoWCH2lz6ZpW8nBFayT
	/FYARUoXVFJlYS4jGxOFCMZmxHvB1UBfbwn5NVbPQYxri03/tv70e3xOEZoWP/sWsgHDU9MVih+xX
	8q6Zt2kplHtzfz/6jZQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j547W-00028T-7M; Fri, 21 Feb 2020 08:57:14 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j547M-00027z-Hx; Fri, 21 Feb 2020 08:57:06 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 986C728CC36
Subject: Re: [PATCH v8 0/6] arm/arm64: mediatek: Fix mmsys device probing
To: CK Hu <ck.hu@mediatek.com>
References: <20200220172147.919996-1-enric.balletbo@collabora.com>
 <1582259996.1846.7.camel@mtksdaap41>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <7a87b486-1622-7f27-f5af-427b94a14c00@collabora.com>
Date: Fri, 21 Feb 2020 09:56:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1582259996.1846.7.camel@mtksdaap41>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_005704_861808_F8635CB3 
X-CRM114-Status: GOOD (  22.95  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Daniel Vetter <daniel@ffwll.ch>, frank-w@public-files.de,
 Seiya Wang <seiya.wang@mediatek.com>, sean.wang@mediatek.com,
 Houlong Wei <houlong.wei@mediatek.com>, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Allison Randal <allison@lohutok.net>, Matthias Brugger <mbrugger@suse.com>,
 Fabien Parent <fparent@baylibre.com>, sboyd@kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, p.zabel@pengutronix.de, matthias.bgg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi CK,

Thanks for your quick answer.

On 21/2/20 5:39, CK Hu wrote:
> Hi, Enric:
> 
> On Thu, 2020-02-20 at 18:21 +0100, Enric Balletbo i Serra wrote:
>> Dear all,
>>
>> Those patches are intended to solve an old standing issue on some
>> Mediatek devices (mt8173, mt2701 and mt2712) in a slightly different way
>> to the precedent series.
>>
>> Up to now both drivers, clock and drm are probed with the same device tree
>> compatible. But only the first driver get probed, which in effect breaks
>> graphics on those devices.
>>
>> The version eight of the series tries to solve the problem with a
>> different approach than the previous series but similar to how is solved
>> on other Mediatek devices.
>>
>> The MMSYS (Multimedia subsystem) in Mediatek SoCs has some registers to
>> control clock gates (which is used in the clk driver) and some registers
>> to set the routing and enable the differnet blocks of the display
>> and MDP (Media Data Path) subsystem. On this series the clk driver is
>> not a pure clock controller but a system controller that can provide
>> access to the shared registers between the different drivers that need
>> it (mediatek-drm and mediatek-mdp). And the biggest change is, that in
>> this version, clk driver is the entry point (parent) which will trigger
>> the probe of the corresponding mediatek-drm driver and pass its MMSYS
>> platform data for display configuration.
> 
> When mmsys is a system controller, I prefer to place mmsys in
> drivers/soc/mediatek, and it share registers for clock, display, and mdp
> driver. This means the probe function is placed in
> drivers/soc/mediatek ,its display clock function, mdp clock function are
> placed in drivers/clk, display routing are placed in drivers/gpu/drm,
> and mdp routing are placed in dirvers/video.
> 

I understand what you mean but I am not sure this makes the code clearer and
useful. The driver in drivers/soc/mediatek will be a simple dummy implementation
of a "simple-mfd" device (a driver that simply matches with
"mediatek,mt8173-mmsys" and instantiates the "clk-mt8173-mm" and the
"mediatek-drm" driver (note that mediatek-mdp" is already instantiated via
device-tree).

It'd be nice had a proper device-tree with a "simple-mfd" for mmsys from the
beginning representing how really hardwware is, but I think that, change this
now, will break backward compatibility.

IMHO I think that considering the clk driver as entry point is fine, but this is
something that the clock maintainers should decide.

Also note that this is not only a MT8173 problem I am seeing the same problem on
all other Mediatek SoCs.

Thanks.

> Regards,
> CK
> 
>>
>> All this series was tested on the Acer R13 Chromebook only.
>>
>> For reference, here are the links to the old discussions:
>>
>> * v7: https://patchwork.kernel.org/project/linux-mediatek/list/?series=241217
>> * v6: https://patchwork.kernel.org/project/linux-mediatek/list/?series=213219
>> * v5: https://patchwork.kernel.org/project/linux-mediatek/list/?series=44063
>> * v4:
>>   * https://patchwork.kernel.org/patch/10530871/
>>   * https://patchwork.kernel.org/patch/10530883/
>>   * https://patchwork.kernel.org/patch/10530885/
>>   * https://patchwork.kernel.org/patch/10530911/
>>   * https://patchwork.kernel.org/patch/10530913/
>> * v3:
>>   * https://patchwork.kernel.org/patch/10367857/
>>   * https://patchwork.kernel.org/patch/10367861/
>>   * https://patchwork.kernel.org/patch/10367877/
>>   * https://patchwork.kernel.org/patch/10367875/
>>   * https://patchwork.kernel.org/patch/10367885/
>>   * https://patchwork.kernel.org/patch/10367883/
>>   * https://patchwork.kernel.org/patch/10367889/
>>   * https://patchwork.kernel.org/patch/10367907/
>>   * https://patchwork.kernel.org/patch/10367909/
>>   * https://patchwork.kernel.org/patch/10367905/
>> * v2: No relevant discussion, see v3
>> * v1:
>>   * https://patchwork.kernel.org/patch/10016497/
>>   * https://patchwork.kernel.org/patch/10016499/
>>   * https://patchwork.kernel.org/patch/10016505/
>>   * https://patchwork.kernel.org/patch/10016507/
>>
>> Best regards,
>>  Enric
>>
>> Changes in v8:
>> - Be a builtin_platform_driver like other mediatek mmsys drivers.
>> - New patches introduced in this series.
>>
>> Changes in v7:
>> - Add R-by from CK
>> - Add R-by from CK
>> - Fix check of return value of of_clk_get
>> - Fix identation
>> - Free clk_data->clks as well
>> - Get rid of private data structure
>>
>> Enric Balletbo i Serra (2):
>>   drm/mediatek: Move MMSYS configuration to include/linux/platform_data
>>   clk/drm: mediatek: Fix mediatek-drm device probing
>>
>> Matthias Brugger (4):
>>   drm/mediatek: Use regmap for register access
>>   drm/mediatek: Omit warning on probe defers
>>   media: mtk-mdp: Check return value of of_clk_get
>>   clk: mediatek: mt8173: Switch MMSYS to platform driver
>>
>>  drivers/clk/mediatek/Kconfig                  |   6 +
>>  drivers/clk/mediatek/Makefile                 |   1 +
>>  drivers/clk/mediatek/clk-mt2701-mm.c          |  30 +++
>>  drivers/clk/mediatek/clk-mt2712-mm.c          |  44 +++++
>>  drivers/clk/mediatek/clk-mt8173-mm.c          | 172 ++++++++++++++++++
>>  drivers/clk/mediatek/clk-mt8173.c             | 104 -----------
>>  drivers/gpu/drm/mediatek/mtk_disp_color.c     |   5 +-
>>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c       |   5 +-
>>  drivers/gpu/drm/mediatek/mtk_disp_rdma.c      |   5 +-
>>  drivers/gpu/drm/mediatek/mtk_dpi.c            |  12 +-
>>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c       |   4 +-
>>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c        |  53 +++---
>>  drivers/gpu/drm/mediatek/mtk_drm_ddp.h        |   4 +-
>>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h   |  56 +-----
>>  drivers/gpu/drm/mediatek/mtk_drm_drv.c        | 113 +-----------
>>  drivers/gpu/drm/mediatek/mtk_drm_drv.h        |  13 +-
>>  drivers/gpu/drm/mediatek/mtk_dsi.c            |   8 +-
>>  drivers/gpu/drm/mediatek/mtk_hdmi.c           |   4 +-
>>  drivers/media/platform/mtk-mdp/mtk_mdp_comp.c |   6 +
>>  include/linux/platform_data/mtk_mmsys.h       |  73 ++++++++
>>  20 files changed, 401 insertions(+), 317 deletions(-)
>>  create mode 100644 drivers/clk/mediatek/clk-mt8173-mm.c
>>  create mode 100644 include/linux/platform_data/mtk_mmsys.h
>>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
