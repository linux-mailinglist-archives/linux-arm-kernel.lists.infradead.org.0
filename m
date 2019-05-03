Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F47E1265B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 04:45:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OeYkpY3Hy+/yvDN4H3OvOAV9DHe6GDIPHtLzHqIhWaY=; b=qrBhrSAevgDE2f
	G6yUXBNePhN+B3GK7s2DJtQumeQeN2wFPYQm6awYF0dwgcSzjj69cl6N4Q0UWKcAD8aR94EeyxgbA
	sy/G1yVHId+0DkEJhD/4/ni2upwWDaunYM3YuMtydHFIMIgs48/io4AeFm5g4yp8nvHl4rBPczqff
	kZgLmTKR2KQsybNFbEl6kJakcVb8toGl6NCuIeSibVi87Tsx9zIF2gxjapYcO3FhLIul4H27sqbBE
	KyHdfIbKOtovWsgH7cj3NxxtXpAJH4x/1m3Kmmg3YiQKHG2zMhkv3l1bmjTQ1UfxLDu+QRoiV6yKi
	9zc21NKo2Tfq+Uwin6vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMOCg-0002tT-P4; Fri, 03 May 2019 02:45:38 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMOCa-0002t1-9z
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 02:45:33 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 19:45:30 -0700
X-ExtLoop1: 1
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 02 May 2019 19:45:29 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hMOCX-0005Lh-4W; Fri, 03 May 2019 10:45:29 +0800
Date: Fri, 3 May 2019 10:44:38 +0800
From: kbuild test robot <lkp@intel.com>
To: Stephen Boyd <sboyd@kernel.org>
Subject: [clk:clk-parent-rewrite 70/78]
 drivers/clk/sunxi-ng/ccu_mux.c:271:37: sparse: sparse: incorrect type in
 assignment (different base types)
Message-ID: <201905031035.c6g9CPB4%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_194532_403221_7096ED8D 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
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
Cc: kbuild-all@01.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git clk-parent-rewrite
head:   f5e93ab2421d0dd27acac9159d9c4834cd5705e7
commit: c4e54e4bc72df9c60801981f828a62de2f5707f0 [70/78] clk: sunxi-ng: Migrate to .get_parent_hw clk op
reproduce:
        # apt-get install sparse
        git checkout c4e54e4bc72df9c60801981f828a62de2f5707f0
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/clk/sunxi-ng/ccu_mux.c:271:37: sparse: sparse: incorrect type in assignment (different base types) @@    expected unsigned char [usertype] original_index @@    got har [usertype] original_index @@
>> drivers/clk/sunxi-ng/ccu_mux.c:271:37: sparse:    expected unsigned char [usertype] original_index
>> drivers/clk/sunxi-ng/ccu_mux.c:271:37: sparse:    got struct clk_hw *
>> drivers/clk/sunxi-ng/ccu_mux.c:272:65: sparse: sparse: non size-preserving pointer to integer cast

vim +271 drivers/clk/sunxi-ng/ccu_mux.c

8adfb086 Chen-Yu Tsai 2016-08-25  257  
8adfb086 Chen-Yu Tsai 2016-08-25  258  /*
8adfb086 Chen-Yu Tsai 2016-08-25  259   * This clock notifier is called when the frequency of the of the parent
8adfb086 Chen-Yu Tsai 2016-08-25  260   * PLL clock is to be changed. The idea is to switch the parent to a
8adfb086 Chen-Yu Tsai 2016-08-25  261   * stable clock, such as the main oscillator, while the PLL frequency
8adfb086 Chen-Yu Tsai 2016-08-25  262   * stabilizes.
8adfb086 Chen-Yu Tsai 2016-08-25  263   */
8adfb086 Chen-Yu Tsai 2016-08-25  264  static int ccu_mux_notifier_cb(struct notifier_block *nb,
8adfb086 Chen-Yu Tsai 2016-08-25  265  			       unsigned long event, void *data)
8adfb086 Chen-Yu Tsai 2016-08-25  266  {
8adfb086 Chen-Yu Tsai 2016-08-25  267  	struct ccu_mux_nb *mux = to_ccu_mux_nb(nb);
8adfb086 Chen-Yu Tsai 2016-08-25  268  	int ret = 0;
8adfb086 Chen-Yu Tsai 2016-08-25  269  
8adfb086 Chen-Yu Tsai 2016-08-25  270  	if (event == PRE_RATE_CHANGE) {
8adfb086 Chen-Yu Tsai 2016-08-25 @271  		mux->original_index = ccu_mux_helper_get_parent(mux->common,
8adfb086 Chen-Yu Tsai 2016-08-25 @272  								mux->cm);
8adfb086 Chen-Yu Tsai 2016-08-25  273  		ret = ccu_mux_helper_set_parent(mux->common, mux->cm,
8adfb086 Chen-Yu Tsai 2016-08-25  274  						mux->bypass_index);
8adfb086 Chen-Yu Tsai 2016-08-25  275  	} else if (event == POST_RATE_CHANGE) {
8adfb086 Chen-Yu Tsai 2016-08-25  276  		ret = ccu_mux_helper_set_parent(mux->common, mux->cm,
8adfb086 Chen-Yu Tsai 2016-08-25  277  						mux->original_index);
8adfb086 Chen-Yu Tsai 2016-08-25  278  	}
8adfb086 Chen-Yu Tsai 2016-08-25  279  
8adfb086 Chen-Yu Tsai 2016-08-25  280  	udelay(mux->delay_us);
8adfb086 Chen-Yu Tsai 2016-08-25  281  
8adfb086 Chen-Yu Tsai 2016-08-25  282  	return notifier_from_errno(ret);
8adfb086 Chen-Yu Tsai 2016-08-25  283  }
8adfb086 Chen-Yu Tsai 2016-08-25  284  

:::::: The code at line 271 was first introduced by commit
:::::: 8adfb08605a99d742853ff8cf4da5bc68db2028a clk: sunxi-ng: mux: Add clk notifier functions

:::::: TO: Chen-Yu Tsai <wens@csie.org>
:::::: CC: Maxime Ripard <maxime.ripard@free-electrons.com>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
