Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD5116AC8E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 18:02:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ZjhpJ0wrqguIFgyO2k4+VJhOvVNMnoj7nkOUVZoIa8=; b=HjMmlgiS7D9PYy
	NZ9UGk6auFVJZa2kuW3cXS+2+Jv32PeC1pgLl24ah4lad/80EPV5rMPMJVcgHQ38SksTt2mtu95rz
	VQW2SCZDkUAvavsBzzQjkBaPYTd1nIyX3kRcJ11ywzP7SF2/wUZakFWarodQlR2eedVHgS7mTHVsA
	gDm5nhmbxp6hjpQMAF2A/OR+vFAkIoAOwaQeMcz44LQPDm2LXlNz1ZF6DuSKnMG1yCTlcP17GzkIF
	pkbAEtmGSVhKhqOUhQwC4uxXA62wMtJbeAtCxIhIxFh+OOWsVOONyoVMweF2VdJZj8r2/CZu+RirW
	c+JHi/6jGVIsaKaVi3wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6H7d-0006Pu-F3; Mon, 24 Feb 2020 17:02:21 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6H7G-0005LA-P8; Mon, 24 Feb 2020 17:01:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=2VvM3lboTem8DIEdR5Hta0xeZY3GBVsMd3V4LQLFdyY=; b=dIc+ElHvzBqoU+KpUTbSTTY7wC
 qhdlXNCB8JrN1Uqbk3N/E50n4wcXHXX+6q/R+J3iYMnbL0ouQt1hWAew1cUBGGzWr1X9cnF01Ay4Z
 ZpZrcBYJRdzChBbuZOjQwz0LINEmkwtxbVOSw8D9suMYhwUbfe0jc7SMhtxjHsgNfrrJI0YtRhrbK
 3zGkMMZ0rFa05p8XkF8q8/cDGqExuI35FOFIKaYfhs3DHWhfkeMEEHwv9wyWlIf28JYsUnmVKOjBT
 xOFTZ462/xrhakmHR3oQ1Hms7+dB/grr+eb4VUmzUCe3OBAvU3+q7NZaNyUIdplXyxqTQI9eUupPe
 pcoHo/uQ==;
Received: from mga12.intel.com ([192.55.52.136])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Gtn-0002JR-6Y; Mon, 24 Feb 2020 16:48:04 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP; 24 Feb 2020 08:47:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,480,1574150400"; d="scan'208";a="229890996"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 24 Feb 2020 08:47:50 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1j6Gta-000FUS-Ae; Tue, 25 Feb 2020 00:47:50 +0800
Date: Tue, 25 Feb 2020 00:47:41 +0800
From: kbuild test robot <lkp@intel.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: [PATCH] clk: bcm: rpi: fix noderef.cocci warnings
Message-ID: <20200224164741.GA25223@e50d7db646c3>
References: <d197ab836d84b89b94ff1927872126767d921e94.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d197ab836d84b89b94ff1927872126767d921e94.1582533919.git-series.maxime@cerno.tech>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

From: kbuild test robot <lkp@intel.com>

drivers/clk/bcm/clk-raspberrypi.c:327:31-37: ERROR: application of sizeof to pointer

 sizeof when applied to a pointer typed expression gives the size of
 the pointer

Generated by: scripts/coccinelle/misc/noderef.cocci

Fixes: 56ccc5cfbb47 ("clk: bcm: rpi: Discover the firmware clocks")
CC: Maxime Ripard <maxime@cerno.tech>
Signed-off-by: kbuild test robot <lkp@intel.com>
---

url:    https://github.com/0day-ci/linux/commits/Maxime-Ripard/drm-vc4-Support-BCM2711-Display-Pipeline/20200224-172730
base:   https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git clk-next

 clk-raspberrypi.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -324,7 +324,7 @@ static struct clk_hw *raspberrypi_clk_re
 		return hw;
 	}
 
-	data = devm_kzalloc(rpi->dev, sizeof(data), GFP_KERNEL);
+	data = devm_kzalloc(rpi->dev, sizeof(*data), GFP_KERNEL);
 	if (!data)
 		return ERR_PTR(-ENOMEM);
 	data->rpi = rpi;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
