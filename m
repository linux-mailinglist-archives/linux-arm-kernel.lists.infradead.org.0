Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9483D1EF0E8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 07:34:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M85Pd6gu3xBWjutnlWlLqCmYDkjAQlGHu9NpZlg+8DE=; b=No7hb5mQRE5sHU
	JAE/52j+bNX04Xt+yv3ZZSHDj0UAMZkepGWHdpbSPQdT/RKJgTe3AdboZKEwQR47LGZO6Sb9ZPNMk
	N7SisKspX2h5m5R5k/yYQUQ2ohRh/EW/xcAa/gDRiX92kMaYGnvTtaXYPBrIysJ3E+XZs3V2Ut/0F
	9QS1T6mIQL5NwTWvHI7QeQghaoNhfjWoIjJ/MXUC3dLwD4kc3wx5gVzpCPYN2z6fkaOc3hPazYE/k
	HsQ3PsE1PTDHLCIAoRcAr9jKHY8aDHal0mNX00EKDkkxmtZXgz5iECJr1BoFwXzLtWlOP1kO3h0WY
	SYqA2/Y4YR4ECPvD/Y9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh4zp-0006RD-99; Fri, 05 Jun 2020 05:34:25 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh4zh-0006Qg-Rx
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 05:34:19 +0000
IronPort-SDR: kHtKefhgOUwo0+JShWODmCO0zPzr8d2vIS9AV4zYu4+TI4gAVMZm/N3XwSgkFsGQK1gARSV4Gq
 tOJqmqB6TpNg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 22:34:16 -0700
IronPort-SDR: M9D6MjUBUxmFr9miPotFCGdXct8HF3K2Ygu7Mx+q46kRMVY98WczFpZQFmhCNOQBItiNr4dWrB
 tEiozBnlp2pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,475,1583222400"; d="scan'208";a="417161346"
Received: from lkp-server02.sh.intel.com (HELO 85fa322b0eb2) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 04 Jun 2020 22:34:15 -0700
Received: from kbuild by 85fa322b0eb2 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jh4ze-00005a-A3; Fri, 05 Jun 2020 05:34:14 +0000
Date: Fri, 05 Jun 2020 13:33:44 +0800
From: kernel test robot <lkp@intel.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: [soc:for-next] BUILD SUCCESS 28107944fb709b04afc82ca626f334a490571e28
Message-ID: <5ed9d938.PSM+tXZq5gT58szU%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_223418_068370_570E5D2F 
X-CRM114-Status: UNSURE (   6.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git  for-next
branch HEAD: 28107944fb709b04afc82ca626f334a490571e28  soc: document merges

elapsed time: 482m

configs tested: 103
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                               allnoconfig
arm64                            allyesconfig
arm64                               defconfig
arm64                            allmodconfig
arm64                             allnoconfig
mips                            ar7_defconfig
csky                             alldefconfig
sh                             shx3_defconfig
mips                  cavium_octeon_defconfig
um                           x86_64_defconfig
ia64                          tiger_defconfig
arc                             nps_defconfig
arc                           tb10x_defconfig
arm                       spear13xx_defconfig
nios2                               defconfig
mips                        jmr3927_defconfig
alpha                               defconfig
powerpc                  mpc866_ads_defconfig
mips                        workpad_defconfig
s390                             alldefconfig
sh                        sh7757lcr_defconfig
m68k                            q40_defconfig
sh                           sh2007_defconfig
h8300                               defconfig
sh                              ul2_defconfig
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
m68k                           sun3_defconfig
m68k                                defconfig
m68k                             allyesconfig
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
nios2                            allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
c6x                               allnoconfig
openrisc                         allyesconfig
mips                             allyesconfig
mips                              allnoconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                              defconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a002-20200605
x86_64               randconfig-a001-20200605
x86_64               randconfig-a006-20200605
x86_64               randconfig-a003-20200605
x86_64               randconfig-a004-20200605
x86_64               randconfig-a005-20200605
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                                allnoconfig
um                                  defconfig
um                               allmodconfig
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
