Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E8112911
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 09:49:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YMRUxXe1YoaSQOiBr1zts8MyFJlEgDYgnegYzXmm9+U=; b=ceKQ0j7802ciIh
	Sw3UYuz7+AgeRWO5OQfvEwvj3mQhlgXhagcmNf72zzAEnrQ85YVsOJv1SLjkkXSFK70XEWWYLtndz
	UH3hNTKNQpD79AicOP0W5dZu/1mv+I7CJdUvg5JjVeep+4h0Obl3/9DFRXSXTZAYVN1FRZzxQb2xC
	8Lj/ua29GTZBKZDG7Hq87BQ9vqh0IvRfFLSOZopKnKRTzjYH79ptfFzppMmuMiGMJjXUXwf8yCCNu
	DxwopQaAdJCVBOsCiUOWhi5wLWJv/JXkOB9XkjEoCa28fRVqoN8R108YKJt6jXN6RrISxXO3uI3U7
	jRwO4Zx2pEKw1d2zScgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMSwY-00060b-6Y; Fri, 03 May 2019 07:49:18 +0000
Received: from mail2-relais-roc.national.inria.fr ([192.134.164.83])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMSwQ-0005zk-Tw
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 07:49:13 +0000
X-IronPort-AV: E=Sophos;i="5.60,424,1549926000"; d="scan'208";a="381465281"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 09:38:15 +0200
Date: Fri, 3 May 2019 09:38:12 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Stephen Boyd <sboyd@kernel.org>
Subject: [clk:clk-parent-rewrite 18/78] drivers/clk/clk.c:371:11-16: WARNING:
 Unsigned expression compared with zero: index >= 0 (fwd)
Message-ID: <alpine.DEB.2.20.1905030937270.3572@hadrien>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_004911_248279_A5D229FA 
X-CRM114-Status: GOOD (  15.57  )
X-Spam-Score: -4.3 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.134.164.83 listed in list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kbuild-all@01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On line 371, index is unsigned, so it is always >= 0.

julia

---------- Forwarded message ----------
Date: Fri, 3 May 2019 15:30:37 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Julia Lawall <julia.lawall@lip6.fr>
Subject: [clk:clk-parent-rewrite 18/78] drivers/clk/clk.c:371:11-16: WARNING:
    Unsigned expression compared with zero: index >= 0

CC: kbuild-all@01.org
CC: linux-clk@vger.kernel.org
CC: linux-arm-kernel@lists.infradead.org
TO: Stephen Boyd <sboyd@kernel.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git clk-parent-rewrite
head:   f5e93ab2421d0dd27acac9159d9c4834cd5705e7
commit: 9fd6fd58989e06bc5fe92f5aef85a64f63340ab1 [18/78] clk: Cache core in clk_fetch_parent_index() without names
:::::: branch date: 12 hours ago
:::::: commit date: 34 hours ago

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Julia Lawall <julia.lawall@lip6.fr>

>> drivers/clk/clk.c:371:11-16: WARNING: Unsigned expression compared with zero: index >= 0

# https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git/commit/?id=9fd6fd58989e06bc5fe92f5aef85a64f63340ab1
git remote add clk https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git
git remote update clk
git checkout 9fd6fd58989e06bc5fe92f5aef85a64f63340ab1
vim +371 drivers/clk/clk.c

bddca894 Prashant Gaikwad 2012-12-26  326
fc0c209c Stephen Boyd     2019-04-12  327  /**
dde4eff4 Stephen Boyd     2019-04-12  328   * clk_core_get - Find the clk_core parent of a clk
fc0c209c Stephen Boyd     2019-04-12  329   * @core: clk to find parent of
9fd6fd58 Stephen Boyd     2019-04-30  330   * @p_index: parent index to search for
fc0c209c Stephen Boyd     2019-04-12  331   *
fc0c209c Stephen Boyd     2019-04-12  332   * This is the preferred method for clk providers to find the parent of a
fc0c209c Stephen Boyd     2019-04-12  333   * clk when that parent is external to the clk controller. The parent_names
fc0c209c Stephen Boyd     2019-04-12  334   * array is indexed and treated as a local name matching a string in the device
dde4eff4 Stephen Boyd     2019-04-12  335   * node's 'clock-names' property or as the 'con_id' matching the device's
dde4eff4 Stephen Boyd     2019-04-12  336   * dev_name() in a clk_lookup. This allows clk providers to use their own
fc0c209c Stephen Boyd     2019-04-12  337   * namespace instead of looking for a globally unique parent string.
fc0c209c Stephen Boyd     2019-04-12  338   *
fc0c209c Stephen Boyd     2019-04-12  339   * For example the following DT snippet would allow a clock registered by the
fc0c209c Stephen Boyd     2019-04-12  340   * clock-controller@c001 that has a clk_init_data::parent_data array
fc0c209c Stephen Boyd     2019-04-12  341   * with 'xtal' in the 'name' member to find the clock provided by the
fc0c209c Stephen Boyd     2019-04-12  342   * clock-controller@f00abcd without needing to get the globally unique name of
fc0c209c Stephen Boyd     2019-04-12  343   * the xtal clk.
fc0c209c Stephen Boyd     2019-04-12  344   *
fc0c209c Stephen Boyd     2019-04-12  345   *      parent: clock-controller@f00abcd {
fc0c209c Stephen Boyd     2019-04-12  346   *              reg = <0xf00abcd 0xabcd>;
fc0c209c Stephen Boyd     2019-04-12  347   *              #clock-cells = <0>;
fc0c209c Stephen Boyd     2019-04-12  348   *      };
fc0c209c Stephen Boyd     2019-04-12  349   *
fc0c209c Stephen Boyd     2019-04-12  350   *      clock-controller@c001 {
fc0c209c Stephen Boyd     2019-04-12  351   *              reg = <0xc001 0xf00d>;
fc0c209c Stephen Boyd     2019-04-12  352   *              clocks = <&parent>;
fc0c209c Stephen Boyd     2019-04-12  353   *              clock-names = "xtal";
fc0c209c Stephen Boyd     2019-04-12  354   *              #clock-cells = <1>;
fc0c209c Stephen Boyd     2019-04-12  355   *      };
fc0c209c Stephen Boyd     2019-04-12  356   *
fc0c209c Stephen Boyd     2019-04-12  357   * Returns: -ENOENT when the provider can't be found or the clk doesn't
fc0c209c Stephen Boyd     2019-04-12  358   * exist in the provider. -EINVAL when the name can't be found. NULL when the
fc0c209c Stephen Boyd     2019-04-12  359   * provider knows about the clk but it isn't provided on this system.
fc0c209c Stephen Boyd     2019-04-12  360   * A valid clk_core pointer when the clk can be found in the provider.
fc0c209c Stephen Boyd     2019-04-12  361   */
9fd6fd58 Stephen Boyd     2019-04-30  362  static struct clk_core *clk_core_get(struct clk_core *core, u8 p_index)
fc0c209c Stephen Boyd     2019-04-12  363  {
9fd6fd58 Stephen Boyd     2019-04-30  364  	const char *name = core->parents[p_index].fw_name;
9fd6fd58 Stephen Boyd     2019-04-30  365  	u8 index = core->parents[p_index].index;
dde4eff4 Stephen Boyd     2019-04-12  366  	struct clk_hw *hw = ERR_PTR(-ENOENT);
dde4eff4 Stephen Boyd     2019-04-12  367  	struct device *dev = core->dev;
dde4eff4 Stephen Boyd     2019-04-12  368  	const char *dev_id = dev ? dev_name(dev) : NULL;
fc0c209c Stephen Boyd     2019-04-12  369  	struct device_node *np = core->of_node;
fc0c209c Stephen Boyd     2019-04-12  370
601b6e93 Stephen Boyd     2019-04-12 @371  	if (np && index >= 0)
601b6e93 Stephen Boyd     2019-04-12  372  		hw = of_clk_get_hw(np, index, name);
dde4eff4 Stephen Boyd     2019-04-12  373
dde4eff4 Stephen Boyd     2019-04-12  374  	/*
dde4eff4 Stephen Boyd     2019-04-12  375  	 * If the DT search above couldn't find the provider or the provider
dde4eff4 Stephen Boyd     2019-04-12  376  	 * didn't know about this clk, fallback to looking up via clkdev based
dde4eff4 Stephen Boyd     2019-04-12  377  	 * clk_lookups
dde4eff4 Stephen Boyd     2019-04-12  378  	 */
601b6e93 Stephen Boyd     2019-04-12  379  	if (PTR_ERR(hw) == -ENOENT && name)
dde4eff4 Stephen Boyd     2019-04-12  380  		hw = clk_find_hw(dev_id, name);
dde4eff4 Stephen Boyd     2019-04-12  381
dde4eff4 Stephen Boyd     2019-04-12  382  	if (IS_ERR(hw))
fc0c209c Stephen Boyd     2019-04-12  383  		return ERR_CAST(hw);
fc0c209c Stephen Boyd     2019-04-12  384
fc0c209c Stephen Boyd     2019-04-12  385  	return hw->core;
fc0c209c Stephen Boyd     2019-04-12  386  }
fc0c209c Stephen Boyd     2019-04-12  387

:::::: The code at line 371 was first introduced by commit
:::::: 601b6e93304a65f8f7c37168763ab9ba5b195ce5 clk: Allow parents to be specified via clkspec index

:::::: TO: Stephen Boyd <sboyd@kernel.org>
:::::: CC: Stephen Boyd <sboyd@kernel.org>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
