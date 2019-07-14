Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF2867F02
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jul 2019 14:47:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L8avg+YRWi+eY056NqcjMbPrs97KJNzfxulKJJcJP0Y=; b=BqH4efnJzISIZE+HpTww1HVSI
	ULcxQ7ujz5ytJOGM4jldlClEQYS/U3VvuQm3tMTTbhx9mVcy9YndMR8ov3OqNKHrX41kpmBskTcVl
	j6maSCwDqESDbk504+FE6D0e45UMUuLwcauN+WtRG46lh8Yk114n5aPQE2lvuqUCRO081tSNiTUqO
	S16dqUHsWWz/2/0li6IWQLguTBdnVMtm+rUtDCe2bqqtmFCOiix9H7s0Gbxlu2djHzF5/dFAvSyrA
	S5x/TZovp4wc2e4UY38E0xM8iti7EtZ+sKkkw53JPCqR9xXIh0Aq8B4eyDfvcMJGpwjBp876mZOcN
	ICCl8zANQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmdut-00038H-BQ; Sun, 14 Jul 2019 12:47:47 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmduT-00037k-Bj
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jul 2019 12:47:24 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jul 2019 05:46:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,490,1557212400"; d="scan'208";a="157573247"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 14 Jul 2019 05:46:50 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hmdtx-0008u5-If; Sun, 14 Jul 2019 20:46:49 +0800
Date: Sun, 14 Jul 2019 20:45:55 +0800
From: kbuild test robot <lkp@intel.com>
To: Zeng Tao <prime.zeng@hisilicon.com>
Subject: Re: [PATCH] phy: Change the configuration interface param to void*
 to make it more general
Message-ID: <201907142048.z6j6ntlc%lkp@intel.com>
References: <1562868255-31467-1-git-send-email-prime.zeng@hisilicon.com>
MIME-Version: 1.0
In-Reply-To: <1562868255-31467-1-git-send-email-prime.zeng@hisilicon.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_054721_479996_BCA6CA4A 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============3421726716200441785=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============3421726716200441785==
Content-Type: text/plain; charset=unknown-8bit
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Zeng,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on linus/master]
[cannot apply to v5.2 next-20190712]
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
--
   include/linux/sched.h:609:43: sparse: sparse: bad integer constant expression
   include/linux/sched.h:609:73: sparse: sparse: invalid named zero-width bitfield `value'
   include/linux/sched.h:610:43: sparse: sparse: bad integer constant expression
   include/linux/sched.h:610:67: sparse: sparse: invalid named zero-width bitfield `bucket_id'
>> drivers/gpu/drm/bridge/cdns-dsi.c:609:73: sparse: sparse: using member 'mipi_dphy' in incomplete union phy_configure_opts
   drivers/gpu/drm/bridge/cdns-dsi.c:784:73: sparse: sparse: using member 'mipi_dphy' in incomplete union phy_configure_opts

vim +/mipi_dphy +326 drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c

f4c8116e294b12c Guido Günther 2019-06-20  153  
f4c8116e294b12c Guido Günther 2019-06-20  154  static int mixel_dphy_config_from_opts(struct phy *phy,
f4c8116e294b12c Guido Günther 2019-06-20  155  	       struct phy_configure_opts_mipi_dphy *dphy_opts,
f4c8116e294b12c Guido Günther 2019-06-20  156  	       struct mixel_dphy_cfg *cfg)
f4c8116e294b12c Guido Günther 2019-06-20  157  {
f4c8116e294b12c Guido Günther 2019-06-20  158  	struct mixel_dphy_priv *priv = dev_get_drvdata(phy->dev.parent);
f4c8116e294b12c Guido Günther 2019-06-20  159  	unsigned long ref_clk = clk_get_rate(priv->phy_ref_clk);
f4c8116e294b12c Guido Günther 2019-06-20  160  	u32 lp_t, numerator, denominator;
f4c8116e294b12c Guido Günther 2019-06-20  161  	unsigned long long tmp;
f4c8116e294b12c Guido Günther 2019-06-20  162  	u32 n;
f4c8116e294b12c Guido Günther 2019-06-20  163  	int i;
f4c8116e294b12c Guido Günther 2019-06-20  164  
f4c8116e294b12c Guido Günther 2019-06-20  165  	if (dphy_opts->hs_clk_rate > DATA_RATE_MAX_SPEED ||
f4c8116e294b12c Guido Günther 2019-06-20  166  	    dphy_opts->hs_clk_rate < DATA_RATE_MIN_SPEED)
f4c8116e294b12c Guido Günther 2019-06-20  167  		return -EINVAL;
f4c8116e294b12c Guido Günther 2019-06-20  168  
f4c8116e294b12c Guido Günther 2019-06-20  169  	numerator = dphy_opts->hs_clk_rate;
f4c8116e294b12c Guido Günther 2019-06-20  170  	denominator = ref_clk;
f4c8116e294b12c Guido Günther 2019-06-20  171  	get_best_ratio(&numerator, &denominator, 255, 256);
f4c8116e294b12c Guido Günther 2019-06-20  172  	if (!numerator || !denominator) {
f4c8116e294b12c Guido Günther 2019-06-20  173  		dev_err(&phy->dev, "Invalid %d/%d for %ld/%ld\n",
f4c8116e294b12c Guido Günther 2019-06-20  174  			numerator, denominator,
f4c8116e294b12c Guido Günther 2019-06-20  175  			dphy_opts->hs_clk_rate, ref_clk);
f4c8116e294b12c Guido Günther 2019-06-20  176  		return -EINVAL;
f4c8116e294b12c Guido Günther 2019-06-20  177  	}
f4c8116e294b12c Guido Günther 2019-06-20  178  
f4c8116e294b12c Guido Günther 2019-06-20  179  	while ((numerator < 16) && (denominator <= 128)) {
f4c8116e294b12c Guido Günther 2019-06-20  180  		numerator <<= 1;
f4c8116e294b12c Guido Günther 2019-06-20  181  		denominator <<= 1;
f4c8116e294b12c Guido Günther 2019-06-20  182  	}
f4c8116e294b12c Guido Günther 2019-06-20  183  	/*
f4c8116e294b12c Guido Günther 2019-06-20  184  	 * CM ranges between 16 and 255
f4c8116e294b12c Guido Günther 2019-06-20  185  	 * CN ranges between 1 and 32
f4c8116e294b12c Guido Günther 2019-06-20  186  	 * CO is power of 2: 1, 2, 4, 8
f4c8116e294b12c Guido Günther 2019-06-20  187  	 */
f4c8116e294b12c Guido Günther 2019-06-20  188  	i = __ffs(denominator);
f4c8116e294b12c Guido Günther 2019-06-20  189  	if (i > 3)
f4c8116e294b12c Guido Günther 2019-06-20  190  		i = 3;
f4c8116e294b12c Guido Günther 2019-06-20  191  	cfg->cn = denominator >> i;
f4c8116e294b12c Guido Günther 2019-06-20  192  	cfg->co = 1 << i;
f4c8116e294b12c Guido Günther 2019-06-20  193  	cfg->cm = numerator;
f4c8116e294b12c Guido Günther 2019-06-20  194  
f4c8116e294b12c Guido Günther 2019-06-20  195  	if (cfg->cm < 16 || cfg->cm > 255 ||
f4c8116e294b12c Guido Günther 2019-06-20  196  	    cfg->cn < 1 || cfg->cn > 32 ||
f4c8116e294b12c Guido Günther 2019-06-20  197  	    cfg->co < 1 || cfg->co > 8) {
f4c8116e294b12c Guido Günther 2019-06-20  198  		dev_err(&phy->dev, "Invalid CM/CN/CO values: %u/%u/%u\n",
f4c8116e294b12c Guido Günther 2019-06-20  199  			cfg->cm, cfg->cn, cfg->co);
f4c8116e294b12c Guido Günther 2019-06-20  200  		dev_err(&phy->dev, "for hs_clk/ref_clk=%ld/%ld ~ %d/%d\n",
f4c8116e294b12c Guido Günther 2019-06-20  201  			dphy_opts->hs_clk_rate, ref_clk,
f4c8116e294b12c Guido Günther 2019-06-20  202  			numerator, denominator);
f4c8116e294b12c Guido Günther 2019-06-20  203  		return -EINVAL;
f4c8116e294b12c Guido Günther 2019-06-20  204  	}
f4c8116e294b12c Guido Günther 2019-06-20  205  
f4c8116e294b12c Guido Günther 2019-06-20  206  	dev_dbg(&phy->dev, "hs_clk/ref_clk=%ld/%ld ~ %d/%d\n",
f4c8116e294b12c Guido Günther 2019-06-20  207  		dphy_opts->hs_clk_rate, ref_clk, numerator, denominator);
f4c8116e294b12c Guido Günther 2019-06-20  208  
f4c8116e294b12c Guido Günther 2019-06-20  209  	/* LP clock period */
f4c8116e294b12c Guido Günther 2019-06-20  210  	tmp = 1000000000000LL;
f4c8116e294b12c Guido Günther 2019-06-20  211  	do_div(tmp, dphy_opts->lp_clk_rate); /* ps */
f4c8116e294b12c Guido Günther 2019-06-20  212  	if (tmp > ULONG_MAX)
f4c8116e294b12c Guido Günther 2019-06-20  213  		return -EINVAL;
f4c8116e294b12c Guido Günther 2019-06-20  214  
f4c8116e294b12c Guido Günther 2019-06-20  215  	lp_t = tmp;
f4c8116e294b12c Guido Günther 2019-06-20  216  	dev_dbg(&phy->dev, "LP clock %lu, period: %u ps\n",
f4c8116e294b12c Guido Günther 2019-06-20  217  		dphy_opts->lp_clk_rate, lp_t);
f4c8116e294b12c Guido Günther 2019-06-20  218  
f4c8116e294b12c Guido Günther 2019-06-20  219  	/* hs_prepare: in lp clock periods */
f4c8116e294b12c Guido Günther 2019-06-20  220  	if (2 * dphy_opts->hs_prepare > 5 * lp_t) {
f4c8116e294b12c Guido Günther 2019-06-20  221  		dev_err(&phy->dev,
f4c8116e294b12c Guido Günther 2019-06-20  222  			"hs_prepare (%u) > 2.5 * lp clock period (%u)\n",
f4c8116e294b12c Guido Günther 2019-06-20  223  			dphy_opts->hs_prepare, lp_t);
f4c8116e294b12c Guido Günther 2019-06-20  224  		return -EINVAL;
f4c8116e294b12c Guido Günther 2019-06-20  225  	}
f4c8116e294b12c Guido Günther 2019-06-20  226  	/* 00: lp_t, 01: 1.5 * lp_t, 10: 2 * lp_t, 11: 2.5 * lp_t */
f4c8116e294b12c Guido Günther 2019-06-20  227  	if (dphy_opts->hs_prepare < lp_t) {
f4c8116e294b12c Guido Günther 2019-06-20  228  		n = 0;
f4c8116e294b12c Guido Günther 2019-06-20  229  	} else {
f4c8116e294b12c Guido Günther 2019-06-20  230  		tmp = 2 * (dphy_opts->hs_prepare - lp_t);
f4c8116e294b12c Guido Günther 2019-06-20  231  		do_div(tmp, lp_t);
f4c8116e294b12c Guido Günther 2019-06-20  232  		n = tmp;
f4c8116e294b12c Guido Günther 2019-06-20  233  	}
f4c8116e294b12c Guido Günther 2019-06-20  234  	cfg->m_prg_hs_prepare = n;
f4c8116e294b12c Guido Günther 2019-06-20  235  
f4c8116e294b12c Guido Günther 2019-06-20  236  	/* clk_prepare: in lp clock periods */
f4c8116e294b12c Guido Günther 2019-06-20  237  	if (2 * dphy_opts->clk_prepare > 3 * lp_t) {
f4c8116e294b12c Guido Günther 2019-06-20  238  		dev_err(&phy->dev,
f4c8116e294b12c Guido Günther 2019-06-20  239  			"clk_prepare (%u) > 1.5 * lp clock period (%u)\n",
f4c8116e294b12c Guido Günther 2019-06-20  240  			dphy_opts->clk_prepare, lp_t);
f4c8116e294b12c Guido Günther 2019-06-20  241  		return -EINVAL;
f4c8116e294b12c Guido Günther 2019-06-20  242  	}
f4c8116e294b12c Guido Günther 2019-06-20  243  	/* 00: lp_t, 01: 1.5 * lp_t */
f4c8116e294b12c Guido Günther 2019-06-20  244  	cfg->mc_prg_hs_prepare = dphy_opts->clk_prepare > lp_t ? 1 : 0;
f4c8116e294b12c Guido Günther 2019-06-20  245  
f4c8116e294b12c Guido Günther 2019-06-20  246  	/* hs_zero: formula from NXP BSP */
f4c8116e294b12c Guido Günther 2019-06-20 @247  	n = (144 * (dphy_opts->hs_clk_rate / 1000000) - 47500) / 10000;
f4c8116e294b12c Guido Günther 2019-06-20  248  	cfg->m_prg_hs_zero = n < 1 ? 1 : n;
f4c8116e294b12c Guido Günther 2019-06-20  249  
f4c8116e294b12c Guido Günther 2019-06-20  250  	/* clk_zero: formula from NXP BSP */
f4c8116e294b12c Guido Günther 2019-06-20  251  	n = (34 * (dphy_opts->hs_clk_rate / 1000000) - 2500) / 1000;
f4c8116e294b12c Guido Günther 2019-06-20  252  	cfg->mc_prg_hs_zero = n < 1 ? 1 : n;
f4c8116e294b12c Guido Günther 2019-06-20  253  
f4c8116e294b12c Guido Günther 2019-06-20  254  	/* clk_trail, hs_trail: formula from NXP BSP */
f4c8116e294b12c Guido Günther 2019-06-20  255  	n = (103 * (dphy_opts->hs_clk_rate / 1000000) + 10000) / 10000;
f4c8116e294b12c Guido Günther 2019-06-20  256  	if (n > 15)
f4c8116e294b12c Guido Günther 2019-06-20  257  		n = 15;
f4c8116e294b12c Guido Günther 2019-06-20  258  	if (n < 1)
f4c8116e294b12c Guido Günther 2019-06-20  259  		n = 1;
f4c8116e294b12c Guido Günther 2019-06-20  260  	cfg->m_prg_hs_trail = n;
f4c8116e294b12c Guido Günther 2019-06-20  261  	cfg->mc_prg_hs_trail = n;
f4c8116e294b12c Guido Günther 2019-06-20  262  
f4c8116e294b12c Guido Günther 2019-06-20  263  	/* rxhs_settle: formula from NXP BSP */
f4c8116e294b12c Guido Günther 2019-06-20  264  	if (dphy_opts->hs_clk_rate < MBPS(80))
f4c8116e294b12c Guido Günther 2019-06-20  265  		cfg->rxhs_settle = 0x0d;
f4c8116e294b12c Guido Günther 2019-06-20  266  	else if (dphy_opts->hs_clk_rate < MBPS(90))
f4c8116e294b12c Guido Günther 2019-06-20  267  		cfg->rxhs_settle = 0x0c;
f4c8116e294b12c Guido Günther 2019-06-20  268  	else if (dphy_opts->hs_clk_rate < MBPS(125))
f4c8116e294b12c Guido Günther 2019-06-20  269  		cfg->rxhs_settle = 0x0b;
f4c8116e294b12c Guido Günther 2019-06-20  270  	else if (dphy_opts->hs_clk_rate < MBPS(150))
f4c8116e294b12c Guido Günther 2019-06-20  271  		cfg->rxhs_settle = 0x0a;
f4c8116e294b12c Guido Günther 2019-06-20  272  	else if (dphy_opts->hs_clk_rate < MBPS(225))
f4c8116e294b12c Guido Günther 2019-06-20  273  		cfg->rxhs_settle = 0x09;
f4c8116e294b12c Guido Günther 2019-06-20  274  	else if (dphy_opts->hs_clk_rate < MBPS(500))
f4c8116e294b12c Guido Günther 2019-06-20  275  		cfg->rxhs_settle = 0x08;
f4c8116e294b12c Guido Günther 2019-06-20  276  	else
f4c8116e294b12c Guido Günther 2019-06-20  277  		cfg->rxhs_settle = 0x07;
f4c8116e294b12c Guido Günther 2019-06-20  278  
f4c8116e294b12c Guido Günther 2019-06-20  279  	dev_dbg(&phy->dev, "phy_config: %u %u %u %u %u %u %u\n",
f4c8116e294b12c Guido Günther 2019-06-20  280  		cfg->m_prg_hs_prepare, cfg->mc_prg_hs_prepare,
f4c8116e294b12c Guido Günther 2019-06-20  281  		cfg->m_prg_hs_zero, cfg->mc_prg_hs_zero,
f4c8116e294b12c Guido Günther 2019-06-20  282  		cfg->m_prg_hs_trail, cfg->mc_prg_hs_trail,
f4c8116e294b12c Guido Günther 2019-06-20  283  		cfg->rxhs_settle);
f4c8116e294b12c Guido Günther 2019-06-20  284  
f4c8116e294b12c Guido Günther 2019-06-20  285  	return 0;
f4c8116e294b12c Guido Günther 2019-06-20  286  }
f4c8116e294b12c Guido Günther 2019-06-20  287  
f4c8116e294b12c Guido Günther 2019-06-20  288  static void mixel_phy_set_hs_timings(struct phy *phy)
f4c8116e294b12c Guido Günther 2019-06-20  289  {
f4c8116e294b12c Guido Günther 2019-06-20  290  	struct mixel_dphy_priv *priv = phy_get_drvdata(phy);
f4c8116e294b12c Guido Günther 2019-06-20  291  
f4c8116e294b12c Guido Günther 2019-06-20  292  	phy_write(phy, priv->cfg.m_prg_hs_prepare, DPHY_M_PRG_HS_PREPARE);
f4c8116e294b12c Guido Günther 2019-06-20  293  	phy_write(phy, priv->cfg.mc_prg_hs_prepare, DPHY_MC_PRG_HS_PREPARE);
f4c8116e294b12c Guido Günther 2019-06-20  294  	phy_write(phy, priv->cfg.m_prg_hs_zero, DPHY_M_PRG_HS_ZERO);
f4c8116e294b12c Guido Günther 2019-06-20  295  	phy_write(phy, priv->cfg.mc_prg_hs_zero, DPHY_MC_PRG_HS_ZERO);
f4c8116e294b12c Guido Günther 2019-06-20  296  	phy_write(phy, priv->cfg.m_prg_hs_trail, DPHY_M_PRG_HS_TRAIL);
f4c8116e294b12c Guido Günther 2019-06-20  297  	phy_write(phy, priv->cfg.mc_prg_hs_trail, DPHY_MC_PRG_HS_TRAIL);
f4c8116e294b12c Guido Günther 2019-06-20  298  	phy_write(phy, priv->cfg.rxhs_settle, priv->devdata->reg_rxhs_settle);
f4c8116e294b12c Guido Günther 2019-06-20  299  }
f4c8116e294b12c Guido Günther 2019-06-20  300  
f4c8116e294b12c Guido Günther 2019-06-20  301  static int mixel_dphy_set_pll_params(struct phy *phy)
f4c8116e294b12c Guido Günther 2019-06-20  302  {
f4c8116e294b12c Guido Günther 2019-06-20  303  	struct mixel_dphy_priv *priv = dev_get_drvdata(phy->dev.parent);
f4c8116e294b12c Guido Günther 2019-06-20  304  
f4c8116e294b12c Guido Günther 2019-06-20  305  	if (priv->cfg.cm < 16 || priv->cfg.cm > 255 ||
f4c8116e294b12c Guido Günther 2019-06-20  306  	    priv->cfg.cn < 1 || priv->cfg.cn > 32 ||
f4c8116e294b12c Guido Günther 2019-06-20  307  	    priv->cfg.co < 1 || priv->cfg.co > 8) {
f4c8116e294b12c Guido Günther 2019-06-20  308  		dev_err(&phy->dev, "Invalid CM/CN/CO values! (%u/%u/%u)\n",
f4c8116e294b12c Guido Günther 2019-06-20  309  			priv->cfg.cm, priv->cfg.cn, priv->cfg.co);
f4c8116e294b12c Guido Günther 2019-06-20  310  		return -EINVAL;
f4c8116e294b12c Guido Günther 2019-06-20  311  	}
f4c8116e294b12c Guido Günther 2019-06-20  312  	dev_dbg(&phy->dev, "Using CM:%u CN:%u CO:%u\n",
f4c8116e294b12c Guido Günther 2019-06-20  313  		priv->cfg.cm, priv->cfg.cn, priv->cfg.co);
f4c8116e294b12c Guido Günther 2019-06-20  314  	phy_write(phy, CM(priv->cfg.cm), DPHY_CM);
f4c8116e294b12c Guido Günther 2019-06-20  315  	phy_write(phy, CN(priv->cfg.cn), DPHY_CN);
f4c8116e294b12c Guido Günther 2019-06-20  316  	phy_write(phy, CO(priv->cfg.co), DPHY_CO);
f4c8116e294b12c Guido Günther 2019-06-20  317  	return 0;
f4c8116e294b12c Guido Günther 2019-06-20  318  }
f4c8116e294b12c Guido Günther 2019-06-20  319  
f4c8116e294b12c Guido Günther 2019-06-20  320  static int mixel_dphy_configure(struct phy *phy, union phy_configure_opts *opts)
f4c8116e294b12c Guido Günther 2019-06-20  321  {
f4c8116e294b12c Guido Günther 2019-06-20  322  	struct mixel_dphy_priv *priv = phy_get_drvdata(phy);
f4c8116e294b12c Guido Günther 2019-06-20  323  	struct mixel_dphy_cfg cfg = { 0 };
f4c8116e294b12c Guido Günther 2019-06-20  324  	int ret;
f4c8116e294b12c Guido Günther 2019-06-20  325  
f4c8116e294b12c Guido Günther 2019-06-20 @326  	ret = mixel_dphy_config_from_opts(phy, &opts->mipi_dphy, &cfg);
f4c8116e294b12c Guido Günther 2019-06-20  327  	if (ret)
f4c8116e294b12c Guido Günther 2019-06-20  328  		return ret;
f4c8116e294b12c Guido Günther 2019-06-20  329  
f4c8116e294b12c Guido Günther 2019-06-20  330  	/* Update the configuration */
f4c8116e294b12c Guido Günther 2019-06-20  331  	memcpy(&priv->cfg, &cfg, sizeof(struct mixel_dphy_cfg));
f4c8116e294b12c Guido Günther 2019-06-20  332  
f4c8116e294b12c Guido Günther 2019-06-20  333  	phy_write(phy, 0x00, DPHY_LOCK_BYP);
f4c8116e294b12c Guido Günther 2019-06-20  334  	phy_write(phy, 0x01, priv->devdata->reg_tx_rcal);
f4c8116e294b12c Guido Günther 2019-06-20  335  	phy_write(phy, 0x00, priv->devdata->reg_auto_pd_en);
f4c8116e294b12c Guido Günther 2019-06-20  336  	phy_write(phy, 0x02, priv->devdata->reg_rxlprp);
f4c8116e294b12c Guido Günther 2019-06-20  337  	phy_write(phy, 0x02, priv->devdata->reg_rxcdrp);
f4c8116e294b12c Guido Günther 2019-06-20  338  	phy_write(phy, 0x25, DPHY_TST);
f4c8116e294b12c Guido Günther 2019-06-20  339  
f4c8116e294b12c Guido Günther 2019-06-20  340  	mixel_phy_set_hs_timings(phy);
f4c8116e294b12c Guido Günther 2019-06-20  341  	ret = mixel_dphy_set_pll_params(phy);
f4c8116e294b12c Guido Günther 2019-06-20  342  	if (ret < 0)
f4c8116e294b12c Guido Günther 2019-06-20  343  		return ret;
f4c8116e294b12c Guido Günther 2019-06-20  344  
f4c8116e294b12c Guido Günther 2019-06-20  345  	return 0;
f4c8116e294b12c Guido Günther 2019-06-20  346  }
f4c8116e294b12c Guido Günther 2019-06-20  347  
f4c8116e294b12c Guido Günther 2019-06-20  348  static int mixel_dphy_validate(struct phy *phy, enum phy_mode mode, int submode,
f4c8116e294b12c Guido Günther 2019-06-20  349  			       union phy_configure_opts *opts)
f4c8116e294b12c Guido Günther 2019-06-20  350  {
f4c8116e294b12c Guido Günther 2019-06-20  351  	struct mixel_dphy_cfg cfg = { 0 };
f4c8116e294b12c Guido Günther 2019-06-20  352  
f4c8116e294b12c Guido Günther 2019-06-20  353  	if (mode != PHY_MODE_MIPI_DPHY)
f4c8116e294b12c Guido Günther 2019-06-20  354  		return -EINVAL;
f4c8116e294b12c Guido Günther 2019-06-20  355  
f4c8116e294b12c Guido Günther 2019-06-20  356  	return mixel_dphy_config_from_opts(phy, &opts->mipi_dphy, &cfg);
f4c8116e294b12c Guido Günther 2019-06-20  357  }
f4c8116e294b12c Guido Günther 2019-06-20  358  
f4c8116e294b12c Guido Günther 2019-06-20  359  static int mixel_dphy_init(struct phy *phy)
f4c8116e294b12c Guido Günther 2019-06-20  360  {
f4c8116e294b12c Guido Günther 2019-06-20  361  	phy_write(phy, PWR_OFF, DPHY_PD_PLL);
f4c8116e294b12c Guido Günther 2019-06-20  362  	phy_write(phy, PWR_OFF, DPHY_PD_DPHY);
f4c8116e294b12c Guido Günther 2019-06-20  363  
f4c8116e294b12c Guido Günther 2019-06-20  364  	return 0;
f4c8116e294b12c Guido Günther 2019-06-20  365  }
f4c8116e294b12c Guido Günther 2019-06-20  366  
f4c8116e294b12c Guido Günther 2019-06-20  367  static int mixel_dphy_exit(struct phy *phy)
f4c8116e294b12c Guido Günther 2019-06-20  368  {
f4c8116e294b12c Guido Günther 2019-06-20  369  	phy_write(phy, 0, DPHY_CM);
f4c8116e294b12c Guido Günther 2019-06-20  370  	phy_write(phy, 0, DPHY_CN);
f4c8116e294b12c Guido Günther 2019-06-20  371  	phy_write(phy, 0, DPHY_CO);
f4c8116e294b12c Guido Günther 2019-06-20  372  
f4c8116e294b12c Guido Günther 2019-06-20  373  	return 0;
f4c8116e294b12c Guido Günther 2019-06-20  374  }
f4c8116e294b12c Guido Günther 2019-06-20  375  
f4c8116e294b12c Guido Günther 2019-06-20  376  static int mixel_dphy_power_on(struct phy *phy)
f4c8116e294b12c Guido Günther 2019-06-20  377  {
f4c8116e294b12c Guido Günther 2019-06-20  378  	struct mixel_dphy_priv *priv = phy_get_drvdata(phy);
f4c8116e294b12c Guido Günther 2019-06-20  379  	u32 locked;
f4c8116e294b12c Guido Günther 2019-06-20  380  	int ret;
f4c8116e294b12c Guido Günther 2019-06-20  381  
f4c8116e294b12c Guido Günther 2019-06-20  382  	ret = clk_prepare_enable(priv->phy_ref_clk);
f4c8116e294b12c Guido Günther 2019-06-20  383  	if (ret < 0)
f4c8116e294b12c Guido Günther 2019-06-20  384  		return ret;
f4c8116e294b12c Guido Günther 2019-06-20  385  
f4c8116e294b12c Guido Günther 2019-06-20  386  	phy_write(phy, PWR_ON, DPHY_PD_PLL);
f4c8116e294b12c Guido Günther 2019-06-20  387  	ret = regmap_read_poll_timeout(priv->regmap, DPHY_LOCK, locked,
f4c8116e294b12c Guido Günther 2019-06-20  388  				       locked, PLL_LOCK_SLEEP,
f4c8116e294b12c Guido Günther 2019-06-20  389  				       PLL_LOCK_TIMEOUT);
f4c8116e294b12c Guido Günther 2019-06-20  390  	if (ret < 0) {
f4c8116e294b12c Guido Günther 2019-06-20  391  		dev_err(&phy->dev, "Could not get DPHY lock (%d)!\n", ret);
f4c8116e294b12c Guido Günther 2019-06-20  392  		goto clock_disable;
f4c8116e294b12c Guido Günther 2019-06-20  393  	}
f4c8116e294b12c Guido Günther 2019-06-20  394  	phy_write(phy, PWR_ON, DPHY_PD_DPHY);
f4c8116e294b12c Guido Günther 2019-06-20  395  
f4c8116e294b12c Guido Günther 2019-06-20  396  	return 0;
f4c8116e294b12c Guido Günther 2019-06-20  397  clock_disable:
f4c8116e294b12c Guido Günther 2019-06-20  398  	clk_disable_unprepare(priv->phy_ref_clk);
f4c8116e294b12c Guido Günther 2019-06-20  399  	return ret;
f4c8116e294b12c Guido Günther 2019-06-20  400  }
f4c8116e294b12c Guido Günther 2019-06-20  401  
f4c8116e294b12c Guido Günther 2019-06-20  402  static int mixel_dphy_power_off(struct phy *phy)
f4c8116e294b12c Guido Günther 2019-06-20  403  {
f4c8116e294b12c Guido Günther 2019-06-20  404  	struct mixel_dphy_priv *priv = phy_get_drvdata(phy);
f4c8116e294b12c Guido Günther 2019-06-20  405  
f4c8116e294b12c Guido Günther 2019-06-20  406  	phy_write(phy, PWR_OFF, DPHY_PD_PLL);
f4c8116e294b12c Guido Günther 2019-06-20  407  	phy_write(phy, PWR_OFF, DPHY_PD_DPHY);
f4c8116e294b12c Guido Günther 2019-06-20  408  
f4c8116e294b12c Guido Günther 2019-06-20  409  	clk_disable_unprepare(priv->phy_ref_clk);
f4c8116e294b12c Guido Günther 2019-06-20  410  
f4c8116e294b12c Guido Günther 2019-06-20  411  	return 0;
f4c8116e294b12c Guido Günther 2019-06-20  412  }
f4c8116e294b12c Guido Günther 2019-06-20  413  
f4c8116e294b12c Guido Günther 2019-06-20  414  static const struct phy_ops mixel_dphy_phy_ops = {
f4c8116e294b12c Guido Günther 2019-06-20  415  	.init = mixel_dphy_init,
f4c8116e294b12c Guido Günther 2019-06-20  416  	.exit = mixel_dphy_exit,
f4c8116e294b12c Guido Günther 2019-06-20  417  	.power_on = mixel_dphy_power_on,
f4c8116e294b12c Guido Günther 2019-06-20  418  	.power_off = mixel_dphy_power_off,
f4c8116e294b12c Guido Günther 2019-06-20  419  	.configure = mixel_dphy_configure,
f4c8116e294b12c Guido Günther 2019-06-20  420  	.validate = mixel_dphy_validate,
f4c8116e294b12c Guido Günther 2019-06-20  421  	.owner = THIS_MODULE,
f4c8116e294b12c Guido Günther 2019-06-20  422  };
f4c8116e294b12c Guido Günther 2019-06-20  423  
f4c8116e294b12c Guido Günther 2019-06-20  424  static const struct of_device_id mixel_dphy_of_match[] = {
f4c8116e294b12c Guido Günther 2019-06-20  425  	{ .compatible = "fsl,imx8mq-mipi-dphy",
f4c8116e294b12c Guido Günther 2019-06-20  426  	  .data = &mixel_dphy_devdata[MIXEL_IMX8MQ] },
f4c8116e294b12c Guido Günther 2019-06-20  427  	{ /* sentinel */ },
f4c8116e294b12c Guido Günther 2019-06-20  428  };
f4c8116e294b12c Guido Günther 2019-06-20  429  MODULE_DEVICE_TABLE(of, mixel_dphy_of_match);
f4c8116e294b12c Guido Günther 2019-06-20  430  
f4c8116e294b12c Guido Günther 2019-06-20  431  static int mixel_dphy_probe(struct platform_device *pdev)
f4c8116e294b12c Guido Günther 2019-06-20  432  {
f4c8116e294b12c Guido Günther 2019-06-20  433  	struct device *dev = &pdev->dev;
f4c8116e294b12c Guido Günther 2019-06-20  434  	struct device_node *np = dev->of_node;
f4c8116e294b12c Guido Günther 2019-06-20  435  	struct phy_provider *phy_provider;
f4c8116e294b12c Guido Günther 2019-06-20  436  	struct mixel_dphy_priv *priv;
f4c8116e294b12c Guido Günther 2019-06-20  437  	struct resource *res;
f4c8116e294b12c Guido Günther 2019-06-20  438  	struct phy *phy;
f4c8116e294b12c Guido Günther 2019-06-20  439  	void __iomem *base;
f4c8116e294b12c Guido Günther 2019-06-20  440  
f4c8116e294b12c Guido Günther 2019-06-20  441  	if (!np)
f4c8116e294b12c Guido Günther 2019-06-20  442  		return -ENODEV;
f4c8116e294b12c Guido Günther 2019-06-20  443  
f4c8116e294b12c Guido Günther 2019-06-20  444  	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
f4c8116e294b12c Guido Günther 2019-06-20  445  	if (!priv)
f4c8116e294b12c Guido Günther 2019-06-20  446  		return -ENOMEM;
f4c8116e294b12c Guido Günther 2019-06-20  447  
f4c8116e294b12c Guido Günther 2019-06-20  448  	priv->devdata = of_device_get_match_data(&pdev->dev);
f4c8116e294b12c Guido Günther 2019-06-20  449  	if (!priv->devdata)
f4c8116e294b12c Guido Günther 2019-06-20  450  		return -EINVAL;
f4c8116e294b12c Guido Günther 2019-06-20  451  
f4c8116e294b12c Guido Günther 2019-06-20  452  	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
f4c8116e294b12c Guido Günther 2019-06-20  453  	base = devm_ioremap_resource(dev, res);
f4c8116e294b12c Guido Günther 2019-06-20  454  	if (IS_ERR(base))
f4c8116e294b12c Guido Günther 2019-06-20  455  		return PTR_ERR(base);
f4c8116e294b12c Guido Günther 2019-06-20  456  
f4c8116e294b12c Guido Günther 2019-06-20  457  	priv->regmap = devm_regmap_init_mmio(&pdev->dev, base,
f4c8116e294b12c Guido Günther 2019-06-20  458  					     &mixel_dphy_regmap_config);
f4c8116e294b12c Guido Günther 2019-06-20  459  	if (IS_ERR(priv->regmap)) {
f4c8116e294b12c Guido Günther 2019-06-20  460  		dev_err(dev, "Couldn't create the DPHY regmap\n");
f4c8116e294b12c Guido Günther 2019-06-20  461  		return PTR_ERR(priv->regmap);
f4c8116e294b12c Guido Günther 2019-06-20  462  	}
f4c8116e294b12c Guido Günther 2019-06-20  463  
f4c8116e294b12c Guido Günther 2019-06-20  464  	priv->phy_ref_clk = devm_clk_get(&pdev->dev, "phy_ref");
f4c8116e294b12c Guido Günther 2019-06-20  465  	if (IS_ERR(priv->phy_ref_clk)) {
f4c8116e294b12c Guido Günther 2019-06-20  466  		dev_err(dev, "No phy_ref clock found\n");
f4c8116e294b12c Guido Günther 2019-06-20  467  		return PTR_ERR(priv->phy_ref_clk);
f4c8116e294b12c Guido Günther 2019-06-20  468  	}
f4c8116e294b12c Guido Günther 2019-06-20  469  	dev_dbg(dev, "phy_ref clock rate: %lu\n",
f4c8116e294b12c Guido Günther 2019-06-20  470  		clk_get_rate(priv->phy_ref_clk));
f4c8116e294b12c Guido Günther 2019-06-20  471  
f4c8116e294b12c Guido Günther 2019-06-20  472  	dev_set_drvdata(dev, priv);
f4c8116e294b12c Guido Günther 2019-06-20  473  
f4c8116e294b12c Guido Günther 2019-06-20  474  	phy = devm_phy_create(dev, np, &mixel_dphy_phy_ops);
f4c8116e294b12c Guido Günther 2019-06-20  475  	if (IS_ERR(phy)) {
f4c8116e294b12c Guido Günther 2019-06-20  476  		dev_err(dev, "Failed to create phy %ld\n", PTR_ERR(phy));
f4c8116e294b12c Guido Günther 2019-06-20  477  		return PTR_ERR(phy);
f4c8116e294b12c Guido Günther 2019-06-20  478  	}
f4c8116e294b12c Guido Günther 2019-06-20  479  	phy_set_drvdata(phy, priv);
f4c8116e294b12c Guido Günther 2019-06-20  480  
f4c8116e294b12c Guido Günther 2019-06-20  481  	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
f4c8116e294b12c Guido Günther 2019-06-20  482  
f4c8116e294b12c Guido Günther 2019-06-20  483  	return PTR_ERR_OR_ZERO(phy_provider);
f4c8116e294b12c Guido Günther 2019-06-20  484  }
f4c8116e294b12c Guido Günther 2019-06-20  485  
f4c8116e294b12c Guido Günther 2019-06-20  486  static struct platform_driver mixel_dphy_driver = {
f4c8116e294b12c Guido Günther 2019-06-20  487  	.probe	= mixel_dphy_probe,
f4c8116e294b12c Guido Günther 2019-06-20  488  	.driver = {
f4c8116e294b12c Guido Günther 2019-06-20  489  		.name = "mixel-mipi-dphy",
f4c8116e294b12c Guido Günther 2019-06-20  490  		.of_match_table	= mixel_dphy_of_match,
f4c8116e294b12c Guido Günther 2019-06-20  491  	}
f4c8116e294b12c Guido Günther 2019-06-20  492  };
f4c8116e294b12c Guido Günther 2019-06-20  493  module_platform_driver(mixel_dphy_driver);
f4c8116e294b12c Guido Günther 2019-06-20  494  
f4c8116e294b12c Guido Günther 2019-06-20  495  MODULE_AUTHOR("NXP Semiconductor");
f4c8116e294b12c Guido Günther 2019-06-20  496  MODULE_DESCRIPTION("Mixel MIPI-DSI PHY driver");
f4c8116e294b12c Guido Günther 2019-06-20  497  MODULE_LICENSE("GPL");

:::::: The code at line 326 was first introduced by commit
:::::: f4c8116e294b12c360b724173f4b79f232573fb1 phy: Add driver for mixel mipi dphy found on NXP's i.MX8 SoCs

:::::: TO: Guido Günther <agx@sigxcpu.org>
:::::: CC: Kishon Vijay Abraham I <kishon@ti.com>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation


--===============3421726716200441785==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3421726716200441785==--
