Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB2686CE8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 00:02:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5zAoyJfiPE12HlNWZ1DbTAPHRYzelpPEvZLjrrp9TcE=; b=OuLxyHff7+KTCc
	Fyxwzv7cwGC4x4twU81iiaANQtSmxga/VjSokSYp0yC0Tv1btqkp9lV6wN8SBLI+g8iDcWcmkwzU/
	eMZmyv6J1Flo8ajD+2u0ALgUQsiECyWPRtXm0gYYoeOd2iqKhQdyeXrq2BNgfS8CZduliHwOSmkDd
	eyqCPqJXzNG6U9EXNdxsT63sYAcr2SN+aoEePiLMpX+VnIQKN8hkihVWDrgJijI6OY86j4ZqIlHgK
	9cAXRI3EtnEIzL2jSrlnAdnJ4fqCvsDDB7DoDz/4ud+o4y2FyXDrz5CL27MZPeyay8kptT5/MaZ+M
	dI3IXxkfSmWuxCRv5p4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvqUK-0007Ko-4L; Thu, 08 Aug 2019 22:02:24 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvqUC-0007KV-ON
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 22:02:17 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 15:02:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,363,1559545200"; d="scan'208";a="326447683"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 08 Aug 2019 15:02:12 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hvqU7-0001o2-N7; Fri, 09 Aug 2019 06:02:11 +0800
Date: Fri, 9 Aug 2019 06:01:20 +0800
From: kbuild test robot <lkp@intel.com>
To: Zeng Tao <prime.zeng@hisilicon.com>
Subject: Re: [PATCH] phy: Change the configuration interface param to void*
 to make it more general
Message-ID: <201908090527.lvf3vFhJ%lkp@intel.com>
References: <1562868255-31467-1-git-send-email-prime.zeng@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562868255-31467-1-git-send-email-prime.zeng@hisilicon.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_150216_836495_387A16FA 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 kishon@ti.com, Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, kbuild-all@01.org, prime.zeng@hisilicon.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Zeng,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on linus/master]
[cannot apply to v5.3-rc3 next-20190808]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/Zeng-Tao/phy-Change-the-configuration-interface-param-to-void-to-make-it-more-general/20190713-213420
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-rc1-7-g2b96cd8-dirty
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

   include/linux/sched.h:609:43: sparse: sparse: bad integer constant expression
   include/linux/sched.h:609:73: sparse: sparse: invalid named zero-width bitfield `value'
   include/linux/sched.h:610:43: sparse: sparse: bad integer constant expression
   include/linux/sched.h:610:67: sparse: sparse: invalid named zero-width bitfield `bucket_id'
>> drivers/gpu/drm/bridge/cdns-dsi.c:609:73: sparse: sparse: using member 'mipi_dphy' in incomplete union phy_configure_opts
   drivers/gpu/drm/bridge/cdns-dsi.c:784:73: sparse: sparse: using member 'mipi_dphy' in incomplete union phy_configure_opts
--
   include/linux/sched.h:609:43: sparse: sparse: bad integer constant expression
   include/linux/sched.h:609:73: sparse: sparse: invalid named zero-width bitfield `value'
   include/linux/sched.h:610:43: sparse: sparse: bad integer constant expression
   include/linux/sched.h:610:67: sparse: sparse: invalid named zero-width bitfield `bucket_id'
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:165:22: sparse: sparse: using member 'hs_clk_rate' in incomplete struct phy_configure_opts_mipi_dphy
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:169:30: sparse: sparse: using member 'hs_clk_rate' in incomplete struct phy_configure_opts_mipi_dphy
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:173:17: sparse: sparse: using member 'hs_clk_rate' in incomplete struct phy_configure_opts_mipi_dphy
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:200:17: sparse: sparse: using member 'hs_clk_rate' in incomplete struct phy_configure_opts_mipi_dphy
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:206:9: sparse: sparse: using member 'hs_clk_rate' in incomplete struct phy_configure_opts_mipi_dphy
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:211:9: sparse: sparse: using member 'lp_clk_rate' in incomplete struct phy_configure_opts_mipi_dphy
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:216:9: sparse: sparse: using member 'lp_clk_rate' in incomplete struct phy_configure_opts_mipi_dphy
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:220:26: sparse: sparse: using member 'hs_prepare' in incomplete struct phy_configure_opts_mipi_dphy
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:221:17: sparse: sparse: using member 'hs_prepare' in incomplete struct phy_configure_opts_mipi_dphy
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:227:22: sparse: sparse: using member 'hs_prepare' in incomplete struct phy_configure_opts_mipi_dphy
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:230:37: sparse: sparse: using member 'hs_prepare' in incomplete struct phy_configure_opts_mipi_dphy
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:237:26: sparse: sparse: using member 'clk_prepare' in incomplete struct phy_configure_opts_mipi_dphy
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:238:17: sparse: sparse: using member 'clk_prepare' in incomplete struct phy_configure_opts_mipi_dphy
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:244:43: sparse: sparse: using member 'clk_prepare' in incomplete struct phy_configure_opts_mipi_dphy
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:247:30: sparse: sparse: using member 'hs_clk_rate' in incomplete struct phy_configure_opts_mipi_dphy
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:251:29: sparse: sparse: using member 'hs_clk_rate' in incomplete struct phy_configure_opts_mipi_dphy
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:255:30: sparse: sparse: using member 'hs_clk_rate' in incomplete struct phy_configure_opts_mipi_dphy
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:264:22: sparse: sparse: using member 'hs_clk_rate' in incomplete struct phy_configure_opts_mipi_dphy
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:266:27: sparse: sparse: using member 'hs_clk_rate' in incomplete struct phy_configure_opts_mipi_dphy
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:268:27: sparse: sparse: using member 'hs_clk_rate' in incomplete struct phy_configure_opts_mipi_dphy
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:270:27: sparse: sparse: using member 'hs_clk_rate' in incomplete struct phy_configure_opts_mipi_dphy
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:272:27: sparse: sparse: using member 'hs_clk_rate' in incomplete struct phy_configure_opts_mipi_dphy
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:274:27: sparse: sparse: using member 'hs_clk_rate' in incomplete struct phy_configure_opts_mipi_dphy
>> drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:326:53: sparse: sparse: using member 'mipi_dphy' in incomplete union phy_configure_opts
   drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:356:54: sparse: sparse: using member 'mipi_dphy' in incomplete union phy_configure_opts

vim +/mipi_dphy +609 drivers/gpu/drm/bridge/cdns-dsi.c

4dad3e7f12f702 Maxime Ripard   2019-01-21  602  
4dad3e7f12f702 Maxime Ripard   2019-01-21  603  static int cdns_dsi_check_conf(struct cdns_dsi *dsi,
4dad3e7f12f702 Maxime Ripard   2019-01-21  604  			       const struct drm_display_mode *mode,
4dad3e7f12f702 Maxime Ripard   2019-01-21  605  			       struct cdns_dsi_cfg *dsi_cfg,
4dad3e7f12f702 Maxime Ripard   2019-01-21  606  			       bool mode_valid_check)
4dad3e7f12f702 Maxime Ripard   2019-01-21  607  {
4dad3e7f12f702 Maxime Ripard   2019-01-21  608  	struct cdns_dsi_output *output = &dsi->output;
fced5a364dee9d Maxime Ripard   2019-01-21 @609  	struct phy_configure_opts_mipi_dphy *phy_cfg = &output->phy_opts.mipi_dphy;
4dad3e7f12f702 Maxime Ripard   2019-01-21  610  	unsigned long dsi_hss_hsa_hse_hbp;
4dad3e7f12f702 Maxime Ripard   2019-01-21  611  	unsigned int nlanes = output->dev->lanes;
4dad3e7f12f702 Maxime Ripard   2019-01-21  612  	int ret;
4dad3e7f12f702 Maxime Ripard   2019-01-21  613  
4dad3e7f12f702 Maxime Ripard   2019-01-21  614  	ret = cdns_dsi_mode2cfg(dsi, mode, dsi_cfg, mode_valid_check);
4dad3e7f12f702 Maxime Ripard   2019-01-21  615  	if (ret)
4dad3e7f12f702 Maxime Ripard   2019-01-21  616  		return ret;
4dad3e7f12f702 Maxime Ripard   2019-01-21  617  
fced5a364dee9d Maxime Ripard   2019-01-21  618  	phy_mipi_dphy_get_default_config(mode->crtc_clock * 1000,
fced5a364dee9d Maxime Ripard   2019-01-21  619  					 mipi_dsi_pixel_format_to_bpp(output->dev->format),
fced5a364dee9d Maxime Ripard   2019-01-21  620  					 nlanes, phy_cfg);
fced5a364dee9d Maxime Ripard   2019-01-21  621  
fced5a364dee9d Maxime Ripard   2019-01-21  622  	ret = cdns_dsi_adjust_phy_config(dsi, dsi_cfg, phy_cfg, mode, mode_valid_check);
fced5a364dee9d Maxime Ripard   2019-01-21  623  	if (ret)
fced5a364dee9d Maxime Ripard   2019-01-21  624  		return ret;
fced5a364dee9d Maxime Ripard   2019-01-21  625  
fced5a364dee9d Maxime Ripard   2019-01-21  626  	ret = phy_validate(dsi->dphy, PHY_MODE_MIPI_DPHY, 0, &output->phy_opts);
4dad3e7f12f702 Maxime Ripard   2019-01-21  627  	if (ret)
4dad3e7f12f702 Maxime Ripard   2019-01-21  628  		return ret;
4dad3e7f12f702 Maxime Ripard   2019-01-21  629  
4dad3e7f12f702 Maxime Ripard   2019-01-21  630  	dsi_hss_hsa_hse_hbp = dsi_cfg->hbp + DSI_HBP_FRAME_OVERHEAD;
4dad3e7f12f702 Maxime Ripard   2019-01-21  631  	if (output->dev->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE)
4dad3e7f12f702 Maxime Ripard   2019-01-21  632  		dsi_hss_hsa_hse_hbp += dsi_cfg->hsa + DSI_HSA_FRAME_OVERHEAD;
e19233955d9e9a Boris Brezillon 2018-04-21  633  
e19233955d9e9a Boris Brezillon 2018-04-21  634  	/*
e19233955d9e9a Boris Brezillon 2018-04-21  635  	 * Make sure DPI(HFP) > DSI(HSS+HSA+HSE+HBP) to guarantee that the FIFO
e19233955d9e9a Boris Brezillon 2018-04-21  636  	 * is empty before we start a receiving a new line on the DPI
e19233955d9e9a Boris Brezillon 2018-04-21  637  	 * interface.
e19233955d9e9a Boris Brezillon 2018-04-21  638  	 */
fced5a364dee9d Maxime Ripard   2019-01-21  639  	if ((u64)phy_cfg->hs_clk_rate *
4dad3e7f12f702 Maxime Ripard   2019-01-21  640  	    mode_to_dpi_hfp(mode, mode_valid_check) * nlanes <
e19233955d9e9a Boris Brezillon 2018-04-21  641  	    (u64)dsi_hss_hsa_hse_hbp *
e19233955d9e9a Boris Brezillon 2018-04-21  642  	    (mode_valid_check ? mode->clock : mode->crtc_clock) * 1000)
e19233955d9e9a Boris Brezillon 2018-04-21  643  		return -EINVAL;
e19233955d9e9a Boris Brezillon 2018-04-21  644  
e19233955d9e9a Boris Brezillon 2018-04-21  645  	return 0;
e19233955d9e9a Boris Brezillon 2018-04-21  646  }
e19233955d9e9a Boris Brezillon 2018-04-21  647  

:::::: The code at line 609 was first introduced by commit
:::::: fced5a364dee9d3a3ed1e3290ea3b83984b78007 drm/bridge: cdns: Convert to phy framework

:::::: TO: Maxime Ripard <maxime.ripard@bootlin.com>
:::::: CC: Maxime Ripard <maxime.ripard@bootlin.com>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
