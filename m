Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A9F77781
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 09:52:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cw/RsZD9BJOhoSxuL7c9lnAxn9Zhu9fTZNVXhKddAcg=; b=U6x4GJmwEjpv2c
	BmpXyZrhnTBJiExI1tHPtEl8RKo2S0Bg/MGIkEYGpZhs0q2HhLIKB/M7H0/CQ2HaLBNccXfh0xt7T
	S7lXvIDX6r2wKMao5EdjxY9yggj+YQ47e9Z+6YBqG5+71ex6iuEIvWJOtPUlwIIk3oqzjRmNir4Hz
	fklCWP/9ikT/y9jRKAjT0qqKjj5luFqe8ZJf8iJ7PC7pHkKsuqPaKeGg5TQbKHcjYSa8k1XvWPEnN
	wFrjL2EqYIgHdPwIp403/PMDEDM65TAI1bCHyGk1PiKLrmZnZZ9f5RSIpmThoBeBWooBJJ9+uf2/y
	KOajaN/WFs3J3i3PQSMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrHVJ-00079p-KV; Sat, 27 Jul 2019 07:52:33 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrHUZ-00078o-Ny; Sat, 27 Jul 2019 07:51:51 +0000
X-UUID: 9ca9e355a0f94c99a2b7e85a0092f97a-20190726
X-UUID: 9ca9e355a0f94c99a2b7e85a0092f97a-20190726
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 424597790; Fri, 26 Jul 2019 23:51:37 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 27 Jul 2019 00:51:36 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sat, 27 Jul 2019 15:51:28 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 27 Jul 2019 15:51:28 +0800
Message-ID: <1564213888.22908.4.camel@mhfsdcap03>
Subject: Re: [PATCH v2 00/12] Clean up "mediatek,larb" after adding device_link
From: Yong Wu <yong.wu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>
Date: Sat, 27 Jul 2019 15:51:28 +0800
In-Reply-To: <1563849109.27558.14.camel@mtksdaap41>
References: <1560171313-28299-1-git-send-email-yong.wu@mediatek.com>
 <1563849109.27558.14.camel@mtksdaap41>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: B3B5B4BEFFF99C65728AE2E1DD572EDEE773F4B9A5223F313A27C88854DAF4DC2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_005147_788180_24338952 
X-CRM114-Status: GOOD (  24.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>, Tomasz
 Figa <tfiga@google.com>, iommu@lists.linux-foundation.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 joey.pan@mediatek.com, Matthias Brugger <matthias.bgg@gmail.com>,
 yingjoe.chen@mediatek.com, anan.sun@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-07-23 at 10:31 +0800, CK Hu wrote:
> Hi, Yong:
> 
> I've added log  in mtk_smi_clk_enable() and mtk_smi_clk_disable(), and I
> boot MT8183 with display, the log is
> 
> [    4.020340] mtk-smi-common 14019000.smi: mtk_smi_clk_enable()
> [    4.331371] mtk-smi-common 14019000.smi: mtk_smi_clk_disable()
> [    4.429578] mtk-smi-common 14019000.smi: mtk_smi_clk_enable()
> [    4.719743] mtk-smi-common 14019000.smi: mtk_smi_clk_disable()
> [    5.084770] mtk-smi-common 14019000.smi: mtk_smi_clk_enable()
> [    5.904310] mtk-smi-common 14019000.smi: mtk_smi_clk_disable()
> 
> From the log, the clock is finally turned off, but the display works
> normally. This is because scpsys has turn the clock on,
> 
> 		scpsys: syscon@10006000 {
> 			compatible = "mediatek,mt8183-scpsys", "syscon";
> 			#power-domain-cells = <1>;
> 			reg = <0 0x10006000 0 0x1000>;
> 			clocks = <&topckgen CLK_TOP_MUX_AUD_INTBUS>,
> 				 <&mmsys CLK_MM_SMI_COMMON>,
> 				 <&mmsys CLK_MM_GALS_COMM0>,
> 				 <&mmsys CLK_MM_GALS_COMM1>,
> 			clock-names = "audio","mm-0",
> 				      "mm-1", "mm-2";
> 		}
> 
> I'm worried that for MT8173, scpsys would not turn on subsys clock, this
> series would let display work abnormally, so I think smi common should
> not depend on scpsys to turn on the clock.
> 
> You could simply remove the clock parameter in scpsys device node, and
> you would see the display works abnormally.

Thanks for the report. I have reproduced this issue by removing the smi
clock in scpsys node.

Now the probe sequence is like this:
a) mtk scpsys (genpd) probe
b) smi probe
c) iommu probe
d) display and the other MM probe.

The log above are called from device_link_add and rpm_idle which is
called between iommu-probe and display-probe.

At the beginning, all the clocks are enabled. But after this
mtk_smi_clk_enable and mtk_smi_clk_disable, the display clock will be
turned off. If the fastlogo is displayed before kernel, then the display
HW will work abnormally.

I have no mt8173 evb board now, I remembered that the screen only is
showed in display driver of kernel in mt8173, It may be ok in that case.
But It really is a problem when the fastlogo is showed before kernel.

This clock issue happened before display driver, It looks display driver
can not help this. I will try to fix it in SMI(smi try to help
display(larb0) to pm_runtime_get_sync one time and put later).


> 
> Regards,
> CK
> 
> 
> On Mon, 2019-06-10 at 20:55 +0800, Yong Wu wrote:
> > MediaTek IOMMU block diagram always like below:
> > 
> >         M4U
> >          |
> >     smi-common
> >          |
> >   -------------
> >   |         |  ...
> >   |         |
> > larb1     larb2
> >   |         |
> > vdec       venc
> > 
> > All the consumer connect with smi-larb, then connect with smi-common.
> > 
> > MediaTek IOMMU don't have its power-domain. When the consumer works,
> > it should enable the smi-larb's power which also need enable the smi-common's
> > power firstly.
> > 
> > Thus, Firstly, use the device link connect the consumer and the
> > smi-larbs. then add device link between the smi-larb and smi-common.
> > 
> > After adding the device_link, then "mediatek,larb" property can be removed.
> > the iommu consumer don't need call the mtk_smi_larb_get/put to enable
> > the power and clock of smi-larb and smi-common.
> > 
> > This patchset depends on "MT8183 IOMMU SUPPORT"[1].
> > 
> > [1] https://lists.linuxfoundation.org/pipermail/iommu/2019-June/036552.html
> > 
> > Change notes:
> > v2:
> >    1) rebase on v5.2-rc1.
> >    2) Move adding device_link between the consumer and smi-larb into
> > iommu_add_device from Robin.
> >    3) add DL_FLAG_AUTOREMOVE_CONSUMER even though the smi is built-in from Evan.
> >    4) Remove the shutdown callback in iommu.   
> > 
> > v1: https://lists.linuxfoundation.org/pipermail/iommu/2019-January/032387.html
> > 
> > Yong Wu (12):
> >   dt-binding: mediatek: Get rid of mediatek,larb for multimedia HW
> >   iommu/mediatek: Add probe_defer for smi-larb
> >   iommu/mediatek: Add device_link between the consumer and the larb
> >     devices
> >   memory: mtk-smi: Add device-link between smi-larb and smi-common
> >   media: mtk-jpeg: Get rid of mtk_smi_larb_get/put
> >   media: mtk-mdp: Get rid of mtk_smi_larb_get/put
> >   media: mtk-vcodec: Get rid of mtk_smi_larb_get/put
> >   drm/mediatek: Get rid of mtk_smi_larb_get/put
> >   memory: mtk-smi: Get rid of mtk_smi_larb_get/put
> >   iommu/mediatek: Use builtin_platform_driver
> >   arm: dts: mediatek: Get rid of mediatek,larb for MM nodes
> >   arm64: dts: mediatek: Get rid of mediatek,larb for MM nodes
> > 
> >  .../bindings/display/mediatek/mediatek,disp.txt    |  9 -----
> >  .../bindings/media/mediatek-jpeg-decoder.txt       |  4 --
> >  .../devicetree/bindings/media/mediatek-mdp.txt     |  8 ----
> >  .../devicetree/bindings/media/mediatek-vcodec.txt  |  4 --
> >  arch/arm/boot/dts/mt2701.dtsi                      |  1 -
> >  arch/arm/boot/dts/mt7623.dtsi                      |  1 -
> >  arch/arm64/boot/dts/mediatek/mt8173.dtsi           | 15 -------
> >  drivers/gpu/drm/mediatek/mtk_drm_crtc.c            | 11 -----
> >  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c        | 26 ------------
> >  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h        |  1 -
> >  drivers/iommu/mtk_iommu.c                          | 45 +++++++--------------
> >  drivers/iommu/mtk_iommu_v1.c                       | 39 +++++++-----------
> >  drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c    | 22 ----------
> >  drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h    |  2 -
> >  drivers/media/platform/mtk-mdp/mtk_mdp_comp.c      | 38 -----------------
> >  drivers/media/platform/mtk-mdp/mtk_mdp_comp.h      |  2 -
> >  drivers/media/platform/mtk-mdp/mtk_mdp_core.c      |  1 -
> >  .../media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c  | 21 ----------
> >  drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h |  3 --
> >  drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c |  1 -
> >  .../media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c  | 47 ----------------------
> >  drivers/memory/mtk-smi.c                           | 31 ++++----------
> >  include/soc/mediatek/smi.h                         | 20 ---------
> >  23 files changed, 36 insertions(+), 316 deletions(-)
> > 
> 
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
