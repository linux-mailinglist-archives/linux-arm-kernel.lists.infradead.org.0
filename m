Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E97165176
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 22:17:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PyVUbh1efy50h8Dtp1NiHoUjNXzGDy94JlembgSOUQ0=; b=b7SqVmlDh9Z36c
	rNJW97sHPIyDXac/Cy1/vK3kpnx5OAeU1kP0xA0dcuKrPvV6YcTAYIGu0IChkQxL7e6UxXulC2irN
	Puz/rmSPqabB+lSdeapFCXjTjhLoELUrgkl0SJYPZxyLe/qbfY6iIHlJIJUrpvTGK3aSjztX/4TfC
	/vz6/E8gOR/KXnWNSoISDI4fHkijikkY6g2RXGvjKH9VsyOfehJ6rv0LnCudRAh+mm7/PVl2ohlee
	Qc1xrSanJPoZmOfu9ue2Mb9elILmdCxh7797AxJwfAZYCc7QCEw9PRPD5frC02nSUnSdY0m6RVmOD
	nnM7iQtP+yDJwskJMU2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Wis-0006K3-0k; Wed, 19 Feb 2020 21:17:34 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Wih-0006JO-IF; Wed, 19 Feb 2020 21:17:25 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id C31D428DE65
Subject: Re: [RFC PATCH V5 0/3] media: support Mediatek sensor interface driver
To: Louis Kuo <louis.kuo@mediatek.com>, hans.verkuil@cisco.com,
 laurent.pinchart+renesas@ideasonboard.com, tfiga@chromium.org,
 keiichiw@chromium.org, matthias.bgg@gmail.com, mchehab@kernel.org
References: <20200129081650.8027-1-louis.kuo@mediatek.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <f825b943-610e-ba19-cbfd-eea2dae2245f@collabora.com>
Date: Wed, 19 Feb 2020 18:17:10 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200129081650.8027-1-louis.kuo@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_131723_734827_D4CF102C 
X-CRM114-Status: GOOD (  17.68  )
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
Cc: devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 "kernel@collabora.com" <kernel@collabora.com>, Rynn.Wu@mediatek.com,
 srv_heupstream@mediatek.com, Jerry-ch.Chen@mediatek.com,
 jungo.lin@mediatek.com, sj.huang@mediatek.com, yuzhao@chromium.org,
 linux-mediatek@lists.infradead.org, zwisler@chromium.org,
 christie.yu@mediatek.com, frederic.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Louis,

On 1/29/20 6:16 AM, Louis Kuo wrote:
> Hello,
> 
> This is the RFC patch adding Sensor Inferface(seninf) driver on Mediatek mt8183 SoC, which will be used
> in camera features on CrOS application.
> It belongs to the first Mediatek's camera driver series based on V4L2 and media controller framework.
> I posted the main part of the seninf driver as RFC to discuss first and would like some review comments
> on the overall structure of the driver.
> 
> The driver is implemented with V4L2 framework.
> 1. Register as a V4L2 sub-device.
> 2. Only one entity with sink pads linked to camera sensors for choosing desired camera sensor by setup link
>    and with source pads linked to cam-io for routing different types of decoded packet datas to PASS1 driver
>    to generate sensor image frame and meta-data.

If I understood correctly, the subdevice represents a bridge, with 4 sink pads and 8 source pads (12 total) right?
And you can only route a sink to a source at a time and you can't use multiple sensors simultaneously, correct?

> 
> The overall file structure of the seninf driver is as following:
> 
> * mtk_seninf.c: Implement software and HW control flow of seninf driver.
> * mtk_seninf_def.h: Define data structure and enumeration.
> * mtk_seninf_reg.h: Define HW register R/W macros and HW register names.
> 
> [ V5: use recommended coding style, revise DT binding documentation]
> 
>   media: platform: mtk-isp: Add Mediatek sensor interface driver

It looks like patch 1/3 didn't reach linux-media mailing list
    https://patchwork.linuxtv.org/project/linux-media/list/?series=1706
I guess it's because of its size, you might need to break it into smaller patches.
I see that mtk_seninf_reg.h is really big and not all of it is used, maybe you can split it up.


>   dt-bindings: mt8183: Add sensor interface dt-bindings
>   dts: arm64: mt8183: Add sensor interface nodes
> 
>  .../bindings/media/mediatek-seninf.txt        |   66 +
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi      |   12 +
>  drivers/media/platform/Makefile               |    1 +
>  drivers/media/platform/mtk-isp/Kconfig        |   17 +
>  .../media/platform/mtk-isp/isp_50/Makefile    |    3 +
>  .../platform/mtk-isp/isp_50/seninf/Makefile   |    6 +
>  .../mtk-isp/isp_50/seninf/mtk_seninf.c        | 1112 +++
>  .../mtk-isp/isp_50/seninf/mtk_seninf_def.h    |   72 +
>  .../mtk-isp/isp_50/seninf/mtk_seninf_reg.h    | 7747 +++++++++++++++++
>  9 files changed, 9036 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek-seninf.txt
>  create mode 100644 drivers/media/platform/mtk-isp/Kconfig
>  create mode 100644 drivers/media/platform/mtk-isp/isp_50/Makefile
>  create mode 100644 drivers/media/platform/mtk-isp/isp_50/seninf/Makefile
>  create mode 100644 drivers/media/platform/mtk-isp/isp_50/seninf/mtk_seninf.c
>  create mode 100644 drivers/media/platform/mtk-isp/isp_50/seninf/mtk_seninf_def.h
>  create mode 100644 drivers/media/platform/mtk-isp/isp_50/seninf/mtk_seninf_reg.h
> 

Thanks
Helen

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
