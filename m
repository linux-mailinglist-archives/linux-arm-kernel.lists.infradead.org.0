Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C611EC8B3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 07:22:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BZ+OS+6GtPU+LBh3/nqu1Zda5wy6sB75wU4/EVOG+ak=; b=UveO31z0b7uOpM
	GN+N4my74pNM+8YW/mFnnAIESp82BNNgl2dZeq4QIfkC5dLFBCwsgBOdPVy7fR/yqawqAOSE8w/Oz
	EY0s88vYiGikAOdGZ9lgaZT+iGTeTHMeuHjuc7mz/8ut36K0r3d56tqKul5nAheN24bDH174kqIf+
	bhuaMepn0efFL30uUnoBBc78FIpiLqqYXe3clQ+PAQpXwxfSyMuq3Hrb8bbsd0E5ZMIk48L58W4s+
	3BPlQwMnJtjtdjz9UEJfEFxwu4PTaPUjimcwF47jjLxhAgIZX8XTWY/NdxF23LiHB2WfGsjgjDTUY
	rpz9xi1GOERQsq/VbFTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgLqw-0001LL-8f; Wed, 03 Jun 2020 05:22:14 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgLqd-0001FH-Rk
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 05:21:57 +0000
IronPort-SDR: Xg8mxK9U9+RTqzFTTlPps7vZC4Ubek8oIhtwT1tqJUeRpOM1/lfELW892x0lez/Zg8gQRGEeGr
 1L6eu1bE763g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2020 22:21:53 -0700
IronPort-SDR: I5BhKWrzY4hM5wPB/TTk7PF/ORBb2n8aO+lc5LLWmDU/qWdR3UAipPyc11N8JbWuHvKlowLpwa
 bTcbewOj8Aww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,467,1583222400"; d="scan'208";a="470925216"
Received: from lkp-server01.sh.intel.com (HELO e5a7ad696f24) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 02 Jun 2020 22:21:51 -0700
Received: from kbuild by e5a7ad696f24 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jgLqZ-0000NU-4I; Wed, 03 Jun 2020 05:21:51 +0000
Date: Wed, 03 Jun 2020 13:21:05 +0800
From: kbuild test robot <lkp@intel.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: [soc:baikal/drivers-1] BUILD REGRESSION
 83ca8b3e8f213f49cc68b5c1fbcf88ebb24671eb
Message-ID: <5ed73341.aQm1XZ30CcJAqqYn%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_222155_921157_53D05DDE 
X-CRM114-Status: UNSURE (   6.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.8 LONGWORDS              Long string of long words
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git  baikal/drivers-1
branch HEAD: 83ca8b3e8f213f49cc68b5c1fbcf88ebb24671eb  memory: Add Baikal-T1 L2-cache Control Block driver

Error/Warning in current branch:

drivers/bus/bt1-apb.c:330:3: error: implicit declaration of function 'readl' [-Werror=implicit-function-declaration]

Error/Warning ids grouped by kconfigs:

recent_errors
`-- sparc64-allyesconfig
    `-- drivers-bus-bt1-apb.c:error:implicit-declaration-of-function-readl

elapsed time: 8168m

configs tested: 120
configs skipped: 7

arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                               allnoconfig
arm64                            allyesconfig
arm64                               defconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm                           corgi_defconfig
sparc                            allyesconfig
mips                      bmips_stb_defconfig
arm                        realview_defconfig
alpha                               defconfig
sh                           se7705_defconfig
sh                          urquell_defconfig
arm                     eseries_pxa_defconfig
powerpc                     powernv_defconfig
m68k                           sun3_defconfig
arm                          moxart_defconfig
sh                               j2_defconfig
sparc64                          allyesconfig
arm                            mps2_defconfig
s390                             alldefconfig
c6x                        evmc6472_defconfig
sh                          rsk7203_defconfig
arm                       netwinder_defconfig
arm                          badge4_defconfig
mips                  decstation_64_defconfig
arc                        nsimosci_defconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                              allnoconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
nios2                            allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
c6x                               allnoconfig
openrisc                         allyesconfig
nds32                               defconfig
nds32                             allnoconfig
csky                             allyesconfig
csky                                defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
xtensa                              defconfig
arc                                 defconfig
arc                              allyesconfig
sh                               allmodconfig
sh                                allnoconfig
microblaze                        allnoconfig
mips                             allyesconfig
mips                              allnoconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                              defconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
powerpc                             defconfig
i386                 randconfig-a001-20200602
i386                 randconfig-a006-20200602
i386                 randconfig-a002-20200602
i386                 randconfig-a005-20200602
i386                 randconfig-a003-20200602
i386                 randconfig-a004-20200602
x86_64               randconfig-a011-20200602
x86_64               randconfig-a016-20200602
x86_64               randconfig-a013-20200602
x86_64               randconfig-a012-20200602
x86_64               randconfig-a014-20200602
x86_64               randconfig-a015-20200602
i386                 randconfig-a014-20200602
i386                 randconfig-a015-20200602
i386                 randconfig-a011-20200602
i386                 randconfig-a016-20200602
i386                 randconfig-a012-20200602
i386                 randconfig-a013-20200602
i386                 randconfig-a013-20200529
i386                 randconfig-a011-20200529
i386                 randconfig-a012-20200529
i386                 randconfig-a015-20200529
i386                 randconfig-a016-20200529
i386                 randconfig-a014-20200529
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                              allnoconfig
s390                                defconfig
s390                             allyesconfig
s390                             allmodconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allmodconfig
um                               allmodconfig
um                                allnoconfig
um                                  defconfig
um                               allyesconfig
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
