Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E4F129D4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 10:21:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nKf7dfMIjJ3eMQrQLu1y7LNEwXNN2ge+EVG5ld6fKGQ=; b=Ib6//BlEZYLFjr
	5Sn1RV0tI+9EDnaiqpRw9DXrGHxA8CPjuLVMgpNXkzvj3+SAqKze8FTWcMujplwuyroHU+WTVcLb3
	a0UQG5tr56O3ptpBozSFzROhYdDQ2b9IMntu2rrhDQKCil43g+mfs2NlFFVH3ZYV7YcZpd4kbqlwA
	4ialVLhHd2OLdQ3We+f6MKjL9BTux+mDN2eaPAV/s1yDTINcuDNM3xvLV0aGDi60DQHnyk0NSho8L
	B9PJSRFr5GlBAYRcxG85LrPzjepjrJ0+MYCifVMM46qibpPByJKaCeFf8Z3AwyIfyGE8zvn9hEtx1
	uxTPuQ5vTTM20cDSc49g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMTS3-0002Qr-Pf; Fri, 03 May 2019 08:21:51 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMTRw-0002QT-KA
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 08:21:46 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 01:21:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,425,1549958400"; d="scan'208";a="296629461"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 03 May 2019 01:21:42 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hMTRt-0005fY-PN; Fri, 03 May 2019 16:21:41 +0800
Date: Fri, 3 May 2019 16:21:21 +0800
From: kbuild test robot <lkp@intel.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: [clk:clk-sifive-fu540 3/3]
 drivers/clk/sifive/fu540-prci.c:534:41-42: WARNING: Use ARRAY_SIZE
Message-ID: <201905031619.nJ5l01Tg%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_012144_715476_813C2464 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Stephen Boyd <sboyd@kernel.org>, kbuild-all@01.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git clk-sifive-fu540
head:   85ed1c299cca9beb5df6006361cf18bfa2305836
commit: 85ed1c299cca9beb5df6006361cf18bfa2305836 [3/3] clk: sifive: add a driver for the SiFive FU540 PRCI IP block

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


coccinelle warnings: (new ones prefixed by >>)

>> drivers/clk/sifive/fu540-prci.c:534:41-42: WARNING: Use ARRAY_SIZE

vim +534 drivers/clk/sifive/fu540-prci.c

   508	
   509	/**
   510	 * __prci_register_clocks() - register clock controls in the PRCI with Linux
   511	 * @dev: Linux struct device *
   512	 *
   513	 * Register the list of clock controls described in __prci_init_plls[] with
   514	 * the Linux clock framework.
   515	 *
   516	 * Return: 0 upon success or a negative error code upon failure.
   517	 */
   518	static int __prci_register_clocks(struct device *dev, struct __prci_data *pd)
   519	{
   520		struct clk_init_data init;
   521		struct __prci_clock *pic;
   522		int parent_count, i, clk_hw_count, r;
   523	
   524		parent_count = of_clk_get_parent_count(dev->of_node);
   525		if (parent_count != EXPECTED_CLK_PARENT_COUNT) {
   526			dev_err(dev, "expected only two parent clocks, found %d\n",
   527				parent_count);
   528			return -EINVAL;
   529		}
   530	
   531		memset(&init, 0, sizeof(struct clk_init_data));
   532	
   533		/* Register PLLs */
 > 534		clk_hw_count = sizeof(__prci_init_clocks) / sizeof(struct __prci_clock);
   535	
   536		for (i = 0; i < clk_hw_count; ++i) {
   537			pic = &__prci_init_clocks[i];
   538	
   539			init.name = pic->name;
   540			init.parent_names = &pic->parent_name;
   541			init.num_parents = 1;
   542			init.ops = pic->ops;
   543			pic->hw.init = &init;
   544	
   545			pic->pd = pd;
   546	
   547			if (pic->pwd)
   548				__prci_wrpll_read_cfg(pd, pic->pwd);
   549	
   550			r = devm_clk_hw_register(dev, &pic->hw);
   551			if (r) {
   552				dev_warn(dev, "Failed to register clock %s: %d\n",
   553					 init.name, r);
   554				return r;
   555			}
   556	
   557			r = clk_hw_register_clkdev(&pic->hw, pic->name, dev_name(dev));
   558			if (r) {
   559				dev_warn(dev, "Failed to register clkdev for %s: %d\n",
   560					 init.name, r);
   561				return r;
   562			}
   563	
   564			pd->hw_clks.hws[i] = &pic->hw;
   565		}
   566	
   567		pd->hw_clks.num = i;
   568	
   569		r = devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get,
   570						&pd->hw_clks);
   571		if (r) {
   572			dev_err(dev, "could not add hw_provider: %d\n", r);
   573			return r;
   574		}
   575	
   576		return 0;
   577	}
   578	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
