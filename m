Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F281DE016
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 08:46:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MGLvNxShv7S5dKIrY3ro6Wqta7zzXSwSbFrUZCqkc4I=; b=KHG2bTdsskHXr5
	yO8jDDG/ou6OpsB129TMnsRa6UVC2NG9ATrDXdfjADE3/fdLM7wEYj70Y0HeV8rIJxunzTMWwzLh9
	nJYH7uMczs6EGxuT4KCtDafCOHpE3RbPBShm+4WKV7reoAHrV+66hPMWNObZoe26t8Ur04Kjk1AJ5
	+8RRwaByCCl84wmwiFwkJKZiODxtHG/FZq2FBabc4/njyRolBMhgJDnNdPIn0qNTC1pFldaYml9A/
	NY+kY4vxCCW8raT6ACqrfYne4oJ05FuIFgCCC5tqdCbrYqYQGxgnmRylHsM/H0sfraGlIXiYESMeh
	zOP2ThiP3+PJ3jbUHHhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc1Rj-0007lm-0t; Fri, 22 May 2020 06:46:19 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc1Qz-0007K3-86
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 06:45:35 +0000
IronPort-SDR: GF+nXF7usEJkmMhx7xbyKB/7NLgTYh2JuBZ9011S06fTqul1rLPS4emYd/B8VHGFreJHoD5FlW
 FaV9GGur+h2w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2020 23:45:25 -0700
IronPort-SDR: U+Qa6Wn8b3/3bOcYi33ulvwkHUM7BUURdvmAF37fJ5i1OQraV7V2EP633DJ3FuGHxeC8kaQ9/Y
 d4mCullwVFpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,420,1583222400"; d="scan'208";a="344089940"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 21 May 2020 23:45:24 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jc1Qp-0007FI-J1; Fri, 22 May 2020 14:45:23 +0800
Date: Fri, 22 May 2020 14:44:45 +0800
From: kbuild test robot <lkp@intel.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: [soc:mmp/fixes] BUILD SUCCESS 24cf6eef79a7e85cfd2ef9dea52f769c9192fc6e
Message-ID: <5ec774dd.sJIcxZu7G/MhS0ej%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_234533_294383_FE79958D 
X-CRM114-Status: UNSURE (   6.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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
Cc: arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git  mmp/fixes
branch HEAD: 24cf6eef79a7e85cfd2ef9dea52f769c9192fc6e  ARM: dts: mmp3: Drop usb-nop-xceiv from HSIC phy

elapsed time: 529m

configs tested: 42
configs skipped: 94

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                               allnoconfig
sparc                            allyesconfig
mips                             allyesconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
i386                              allnoconfig
nds32                               defconfig
nds32                             allnoconfig
csky                             allyesconfig
csky                                defconfig
alpha                               defconfig
arc                                 defconfig
sh                               allmodconfig
sh                                allnoconfig
microblaze                        allnoconfig
mips                              allnoconfig
mips                             allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a013-20200520
x86_64               randconfig-a015-20200520
x86_64               randconfig-a016-20200520
x86_64               randconfig-a012-20200520
x86_64               randconfig-a014-20200520
x86_64               randconfig-a011-20200520
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                              defconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
