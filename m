Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0191BDFFEC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 10:45:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sP/klw3R7yabT6TifFubN3TaXmKJuS3rgcQmpp8TwU0=; b=pyz00l6pDPnEPW
	lmrGflJEundKPrSpz6yvjA22oJ7gEXncEyAU5rnKJ1oSOhEvhPoVfK2eO5PdWfp3QytgPvDzw7pJi
	wUb+/KiJBUasRLRNCujjgTzo567h1R0lUgG9sk2MT6TIFaDqMiHxBRfQUrbgjzpGWbeaP5g/iPKVn
	V0WQw/BoTyUNCvaYHVZLhAtw9bAgzi5fpvPNUnV/QgJbvm+0cd8ggtKuoHR2dh6uD94ghtkzYN8CQ
	V442A6er9fpAtzOUL5st3r0BDs+YDf5Hw3C/XzYWcf0IwFCzQQEJTKO8YKOmeyl9Rxq10IWJDGrm4
	FJ0vxiPAP7PE7WtQICVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMpnY-0006ET-BY; Tue, 22 Oct 2019 08:45:48 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMpn9-00061C-DF
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 08:45:25 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 37CFAFB03;
 Tue, 22 Oct 2019 10:45:17 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J_7FrQl3FDaI; Tue, 22 Oct 2019 10:45:15 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 1D2F949BFC; Tue, 22 Oct 2019 10:45:15 +0200 (CEST)
Date: Tue, 22 Oct 2019 10:45:14 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH v7 2/2] drm/bridge: Add NWL MIPI DSI host controller
 support
Message-ID: <20191022084514.GA30274@bogon.m.sigxcpu.org>
References: <e0304ab9320cbbf3e63d78449e50975c036b2633.1571494140.git.agx@sigxcpu.org>
 <201910211901.yB3b4mYu%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201910211901.yB3b4mYu%lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_014523_763054_9AAB5E14 
X-CRM114-Status: GOOD (  20.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Sam Ravnborg <sam@ravnborg.org>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Fabio Estevam <festevam@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Robert Chiras <robert.chiras@nxp.com>,
 devicetree@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 Arnd Bergmann <arnd@arndb.de>, Jonas Karlman <jonas@kwiboo.se>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 kbuild-all@lists.01.org, linux-kernel@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
On Mon, Oct 21, 2019 at 07:11:12PM +0800, kbuild test robot wrote:
> Hi "Guido,
> 
> I love your patch! Yet something to improve:
> 
> [auto build test ERROR on linus/master]
> [cannot apply to v5.4-rc4 next-20191018]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see
> https://stackoverflow.com/a/37406982]

The base for this series is next-20191018 where drm_panel_bridge_add()
list it's second argument (89958b7cd9555a5d82556cc9a1f4c62fffda6f96).

Cheers,
 -- Guido

> 
> url:    https://github.com/0day-ci/linux/commits/Guido-G-nther/dt-bindings-display-bridge-Add-binding-for-NWL-mipi-dsi-host-controller/20191021-180825
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 7d194c2100ad2a6dded545887d02754948ca5241
> config: mips-allmodconfig (attached as .config)
> compiler: mips-linux-gcc (GCC) 7.4.0
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         GCC_VERSION=7.4.0 make.cross ARCH=mips 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    drivers/gpu/drm/bridge/nwl-dsi.c: In function 'nwl_dsi_host_attach':
> >> drivers/gpu/drm/bridge/nwl-dsi.c:384:12: error: too few arguments to function 'drm_panel_bridge_add'
>       bridge = drm_panel_bridge_add(panel);
>                ^~~~~~~~~~~~~~~~~~~~
>    In file included from include/drm/drm_crtc.h:44:0,
>                     from include/drm/drm_atomic_helper.h:31,
>                     from drivers/gpu/drm/bridge/nwl-dsi.c:24:
>    include/drm/drm_bridge.h:432:20: note: declared here
>     struct drm_bridge *drm_panel_bridge_add(struct drm_panel *panel,
>                        ^~~~~~~~~~~~~~~~~~~~
> 
> vim +/drm_panel_bridge_add +384 drivers/gpu/drm/bridge/nwl-dsi.c
> 
>    358	
>    359	static int nwl_dsi_host_attach(struct mipi_dsi_host *dsi_host,
>    360				       struct mipi_dsi_device *device)
>    361	{
>    362		struct nwl_dsi *dsi = container_of(dsi_host, struct nwl_dsi, dsi_host);
>    363		struct device *dev = dsi->dev;
>    364		struct drm_bridge *bridge;
>    365		struct drm_panel *panel;
>    366		int ret;
>    367	
>    368		DRM_DEV_INFO(dev, "lanes=%u, format=0x%x flags=0x%lx\n", device->lanes,
>    369			     device->format, device->mode_flags);
>    370	
>    371		if (device->lanes < 1 || device->lanes > 4)
>    372			return -EINVAL;
>    373	
>    374		dsi->lanes = device->lanes;
>    375		dsi->format = device->format;
>    376		dsi->dsi_mode_flags = device->mode_flags;
>    377	
>    378		ret = drm_of_find_panel_or_bridge(dsi->dev->of_node, 1, 0, &panel,
>    379						  &bridge);
>    380		if (ret)
>    381			return ret;
>    382	
>    383		if (panel) {
>  > 384			bridge = drm_panel_bridge_add(panel);
>    385			if (IS_ERR(bridge))
>    386				return PTR_ERR(bridge);
>    387		}
>    388	
>    389		dsi->panel_bridge = bridge;
>    390		drm_bridge_add(&dsi->bridge);
>    391	
>    392		return 0;
>    393	}
>    394	
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation


> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
