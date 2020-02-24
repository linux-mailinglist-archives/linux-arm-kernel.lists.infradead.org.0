Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B5716B0F0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 21:25:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dlanBIyH/Hv0w8zo70X5Y01fftPKf7aa/assGhlipg8=; b=j7+uIY1CCxYn3R
	xkl3pm5T6tMwZ51CejMHfrvrv7BgXfY1nAPWFPcbs5csftxUmn2tBAayKNWNJ1+z2k+WmRwubdpu5
	dT0OMuuQVCe2Uy5jIcunyk6LT6VJPiZbB+PYUnYqZCT1oVcGhKCvg79Kw/JtaybfsACvaFT31+BPA
	chALLF5bcJr27Cz3ZV2dQPsSUiVRrD5eSsI3S1NCL/7bLm3YiEQFXQap2DEkyjr4VBfhLBgXsV3AX
	OwMFMc1zzFRKUtA3Fdoa9VIu4c6HaIlMxQ+MM1pKqve3tI8K5xAezpwsyG+Rce+DLNF7OE6vy93su
	iinwE8MRzRpguTHxxf0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6KHz-0008T6-4o; Mon, 24 Feb 2020 20:25:15 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6KHl-0007mG-DW; Mon, 24 Feb 2020 20:25:02 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 12:25:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,481,1574150400"; d="scan'208";a="231233867"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 24 Feb 2020 12:24:57 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1j6KHg-0001Dc-NC; Tue, 25 Feb 2020 04:24:56 +0800
Date: Tue, 25 Feb 2020 04:24:16 +0800
From: kbuild test robot <lkp@intel.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 22/89] clk: bcm: rpi: Discover the firmware clocks
Message-ID: <202002250442.Rqp31Tng%lkp@intel.com>
References: <d197ab836d84b89b94ff1927872126767d921e94.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d197ab836d84b89b94ff1927872126767d921e94.1582533919.git-series.maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_122501_472302_582059F5 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org, kbuild-all@lists.01.org,
 Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-clk@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

I love your patch! Perhaps something to improve:

[auto build test WARNING on clk/clk-next]
[also build test WARNING on robh/for-next anholt/for-next v5.6-rc3 next-20200224]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Maxime-Ripard/drm-vc4-Support-BCM2711-Display-Pipeline/20200224-172730
base:   https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git clk-next
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-173-ge0787745-dirty
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/clk/bcm/clk-raspberrypi.c:365:56: sparse: sparse: incorrect type in argument 2 (different base types)
>> drivers/clk/bcm/clk-raspberrypi.c:365:56: sparse:    expected unsigned int parent
>> drivers/clk/bcm/clk-raspberrypi.c:365:56: sparse:    got restricted __le32 [usertype] parent
   drivers/clk/bcm/clk-raspberrypi.c:365:70: sparse: sparse: incorrect type in argument 3 (different base types)
>> drivers/clk/bcm/clk-raspberrypi.c:365:70: sparse:    expected unsigned int id
>> drivers/clk/bcm/clk-raspberrypi.c:365:70: sparse:    got restricted __le32 [usertype] id
>> drivers/clk/bcm/clk-raspberrypi.c:369:31: sparse: sparse: restricted __le32 degrades to integer
   drivers/clk/bcm/clk-raspberrypi.c:370:33: sparse: sparse: restricted __le32 degrades to integer

vim +365 drivers/clk/bcm/clk-raspberrypi.c

   345	
   346	static int raspberrypi_discover_clocks(struct raspberrypi_clk *rpi,
   347					       struct clk_hw_onecell_data *data)
   348	{
   349		struct rpi_firmware_get_clocks_response *clks;
   350		size_t clks_size = NUM_FW_CLKS * sizeof(*clks);
   351		int ret;
   352	
   353		clks = devm_kzalloc(rpi->dev, clks_size, GFP_KERNEL);
   354		if (!clks)
   355			return -ENOMEM;
   356	
   357		ret = rpi_firmware_property(rpi->firmware, RPI_FIRMWARE_GET_CLOCKS,
   358					    clks, clks_size);
   359		if (ret)
   360			return ret;
   361	
   362		while (clks->id) {
   363			struct clk_hw *hw;
   364	
 > 365			hw = raspberrypi_clk_register(rpi, clks->parent, clks->id);
   366			if (IS_ERR(hw))
   367				return PTR_ERR(hw);
   368	
 > 369			data->hws[clks->id] = hw;
   370			data->num = clks->id + 1;
   371			clks++;
   372		}
   373	
   374		return 0;
   375	}
   376	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
