Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE55EC4F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 23:55:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SlyyFoD+vaqspnYQZ2mY5ZubtDwTNWPEQMXKWtHV0ng=; b=ATMVXn1/G53EQP
	eT5Uis4Xl6jpGuw3BHh7gcWlJaVWiGGq+g+6XMcyZ+XPyRo1c2Du65lMyTslYBgldJTep4HS2xArX
	/WN5csA6Slt6NVuXshiBX12Ag7cPBvD8UPm7VG0ZM1TfbjH55C4eVdE9njob5vomMBbMdAUMuKq9p
	SjxMzwmS+gLTxHVYMqgX8h5eSFgJhkqlNLZbJiTIQCZ5mVPpp6mhGTqZkoCVyfq/qHWzWIe7Ig0kZ
	8JyOP5lesu9od5TliIFkZPgMtZqvJ6M9ZMmhmZwef14vsdT8t3rrua79fT/mvaHOMxPGLTj3hsYqF
	IYxVywqhDjiQfQ/c7QyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLEFK-0001vY-R8; Mon, 29 Apr 2019 21:55:34 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLEFD-0001v7-MF
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 21:55:29 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 14:55:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,411,1549958400"; d="scan'208";a="341940164"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 29 Apr 2019 14:55:20 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hLEF5-000I4v-UO; Tue, 30 Apr 2019 05:55:19 +0800
Date: Tue, 30 Apr 2019 05:55:09 +0800
From: kbuild test robot <lkp@intel.com>
To: Patrick Venture <venture@google.com>
Subject: [arm-soc:arm/drivers 14/19] drivers/soc/Kconfig:23: 'menu' in
 different file than 'menu'
Message-ID: <201904300559.PtG9UZ3T%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_145527_777785_D58BD1D4 
X-CRM114-Status: GOOD (  12.80  )
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
Cc: Olof Johansson <olof@lixom.net>, arm@kernel.org, kbuild-all@01.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git arm/drivers
head:   80d0c649244253d8cb3ba32d708c1431e7ac8fbf
commit: 524feb799408e5d45c6aa82763a9f52489d1e19f [14/19] soc: add aspeed folder and misc drivers
config: riscv-tinyconfig
compiler: riscv64-linux-gcc (GCC) 8.1.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 524feb799408e5d45c6aa82763a9f52489d1e19f
        GCC_VERSION=8.1.0 make.cross ARCH=riscv  tinyconfig
        GCC_VERSION=8.1.0 make.cross ARCH=riscv 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/soc/Kconfig:23: 'menu' in different file than 'menu'
>> drivers/soc/aspeed/Kconfig:1: location of the 'menu'
>> drivers/Kconfig:233: 'menu' in different file than 'menu'
>> drivers/soc/aspeed/Kconfig:1: location of the 'menu'
   <none>:34: syntax error
>> drivers/Kconfig:2: missing end statement for this entry
   make[2]: *** [oldconfig] Error 1
   make[1]: *** [oldconfig] Error 2
   make: *** [sub-make] Error 2
--
>> drivers/soc/Kconfig:23: 'menu' in different file than 'menu'
>> drivers/soc/aspeed/Kconfig:1: location of the 'menu'
>> drivers/Kconfig:233: 'menu' in different file than 'menu'
>> drivers/soc/aspeed/Kconfig:1: location of the 'menu'
   <none>:34: syntax error
>> drivers/Kconfig:2: missing end statement for this entry
   make[2]: *** [olddefconfig] Error 1
   make[1]: *** [olddefconfig] Error 2
   make: *** [sub-make] Error 2
--
>> drivers/soc/Kconfig:23: 'menu' in different file than 'menu'
>> drivers/soc/aspeed/Kconfig:1: location of the 'menu'
>> drivers/Kconfig:233: 'menu' in different file than 'menu'
>> drivers/soc/aspeed/Kconfig:1: location of the 'menu'
   <none>:34: syntax error
>> drivers/Kconfig:2: missing end statement for this entry
   make[5]: *** [allnoconfig] Error 1
   make[4]: *** [allnoconfig] Error 2
   make[3]: *** [__build_one_by_one] Error 2
   make[3]: Target 'allnoconfig' not remade because of errors.
   make[3]: Target 'tiny.config' not remade because of errors.
   make[2]: *** [tinyconfig] Error 2
   make[1]: *** [tinyconfig] Error 2
   make: *** [sub-make] Error 2

vim +23 drivers/soc/Kconfig

5d144e36 Andy Gross        2014-04-24  22  
3a6e0821 Santosh Shilimkar 2014-04-23 @23  endmenu

:::::: The code at line 23 was first introduced by commit
:::::: 3a6e08218f36baa9c49282ad2fe0dfbf001d8f23 soc: Introduce drivers/soc place-holder for SOC specific drivers

:::::: TO: Santosh Shilimkar <santosh.shilimkar@ti.com>
:::::: CC: Kumar Gala <galak@codeaurora.org>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
