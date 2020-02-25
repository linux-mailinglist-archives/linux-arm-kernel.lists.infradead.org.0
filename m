Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3FF16B7F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 04:13:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ARx5L7ekOdRLd7S0Uyc7846NSfSlLAHOdOKdPplSOfc=; b=kwBIQfzx2be6cR
	myL/fwIUWj+yPJJME9KJsupkQ6mCat/s9p9FRDPJtTxEepMvxnFH4hdVQ89R2pqoQ+Apyt9vdAyVL
	SMJLqzJ9exCDVy8Adqo/szHbMNCxMyv3EBlqS3SnmRrpXigjbQq/midDzFp33BiFCCWcyvRXjjMNQ
	Z64HqQPumfrpBfHYg2pRU69ORmSblkcMgkU2PQLhz11G/SES/8Q/A2fSkzdGzRV+glazf97VJrx5a
	Xwzwlb48+Eg+aXH72JZAYIOlEr78yoiOwKhqDjDHkoOJVtg56IG2hT6L+Z39YD/OJQamHDkm5cmpd
	3OOhw32N+cZmGIWv820g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6QeX-0004hc-SP; Tue, 25 Feb 2020 03:12:57 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Qe3-0004V9-Q4
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 03:12:29 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 19:12:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,482,1574150400"; d="scan'208";a="350058235"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 24 Feb 2020 19:12:21 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1j6Qdx-0004Mn-6B; Tue, 25 Feb 2020 11:12:21 +0800
Date: Tue, 25 Feb 2020 11:12:19 +0800
From: kbuild test robot <lkp@intel.com>
To: Olof Johansson <olof@lixom.net>
Subject: [arm-soc:arm/fixes] BUILD SUCCESS
 f1e4920fe3303aa983073197bcbc97d6c6119ba7
Message-ID: <5e549093.WE2RiL0qur2Hb2Qm%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_191227_892096_54DAB7B6 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 HEXHASH_WORD           Multiple instances of word + hexadecimal hash
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git  arm/fixes
branch HEAD: f1e4920fe3303aa983073197bcbc97d6c6119ba7  Merge tag 'imx-fixes-5.6' of git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux into arm/fixes

elapsed time: 505m

configs tested: 162
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                              allmodconfig
arm                               allnoconfig
arm                              allyesconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm64                            allyesconfig
arm                           efm32_defconfig
arm                         at91_dt_defconfig
arm                        shmobile_defconfig
arm64                               defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                           sunxi_defconfig
arm                        multi_v7_defconfig
sparc                            allyesconfig
h8300                    h8300h-sim_defconfig
mips                             allmodconfig
mips                      malta_kvm_defconfig
m68k                           sun3_defconfig
ia64                                defconfig
microblaze                    nommu_defconfig
xtensa                          iss_defconfig
mips                      fuloong2e_defconfig
i386                                defconfig
sh                                allnoconfig
i386                              allnoconfig
i386                             alldefconfig
i386                             allyesconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
h8300                       h8s-sim_defconfig
h8300                     edosk2674_defconfig
m68k                       m5475evb_defconfig
m68k                             allmodconfig
m68k                          multi_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                              allnoconfig
mips                             allyesconfig
parisc                            allnoconfig
parisc                           allyesconfig
parisc                generic-32bit_defconfig
parisc                generic-64bit_defconfig
x86_64               randconfig-a001-20200225
x86_64               randconfig-a002-20200225
x86_64               randconfig-a003-20200225
i386                 randconfig-a001-20200225
i386                 randconfig-a002-20200225
i386                 randconfig-a003-20200225
alpha                randconfig-a001-20200225
m68k                 randconfig-a001-20200225
mips                 randconfig-a001-20200225
nds32                randconfig-a001-20200225
parisc               randconfig-a001-20200225
riscv                randconfig-a001-20200225
nios2                randconfig-a001-20200225
c6x                  randconfig-a001-20200225
microblaze           randconfig-a001-20200225
sparc64              randconfig-a001-20200225
h8300                randconfig-a001-20200225
csky                 randconfig-a001-20200224
openrisc             randconfig-a001-20200224
s390                 randconfig-a001-20200224
sh                   randconfig-a001-20200224
xtensa               randconfig-a001-20200224
csky                 randconfig-a001-20200225
openrisc             randconfig-a001-20200225
s390                 randconfig-a001-20200225
sh                   randconfig-a001-20200225
xtensa               randconfig-a001-20200225
x86_64               randconfig-b001-20200225
x86_64               randconfig-b002-20200225
x86_64               randconfig-b003-20200225
i386                 randconfig-b001-20200225
i386                 randconfig-b002-20200225
i386                 randconfig-b003-20200225
x86_64               randconfig-c001-20200225
x86_64               randconfig-c002-20200225
x86_64               randconfig-c003-20200225
i386                 randconfig-c001-20200225
i386                 randconfig-c002-20200225
i386                 randconfig-c003-20200225
x86_64               randconfig-d001-20200225
x86_64               randconfig-d002-20200225
x86_64               randconfig-d003-20200225
i386                 randconfig-d001-20200225
i386                 randconfig-d002-20200225
i386                 randconfig-d003-20200225
x86_64               randconfig-e001-20200225
x86_64               randconfig-e002-20200225
x86_64               randconfig-e003-20200225
i386                 randconfig-e001-20200225
i386                 randconfig-e002-20200225
i386                 randconfig-e003-20200225
x86_64               randconfig-f001-20200224
x86_64               randconfig-f002-20200224
x86_64               randconfig-f003-20200224
i386                 randconfig-f001-20200224
i386                 randconfig-f002-20200224
i386                 randconfig-f003-20200224
x86_64               randconfig-g001-20200225
x86_64               randconfig-g002-20200225
x86_64               randconfig-g003-20200225
i386                 randconfig-g001-20200225
i386                 randconfig-g002-20200225
i386                 randconfig-g003-20200225
x86_64               randconfig-h001-20200225
x86_64               randconfig-h002-20200225
x86_64               randconfig-h003-20200225
i386                 randconfig-h001-20200225
i386                 randconfig-h002-20200225
i386                 randconfig-h003-20200225
arc                  randconfig-a001-20200225
arm                  randconfig-a001-20200225
arm64                randconfig-a001-20200225
ia64                 randconfig-a001-20200225
powerpc              randconfig-a001-20200225
sparc                randconfig-a001-20200225
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
sh                          rsk7269_defconfig
sh                               allmodconfig
sh                            titan_defconfig
sh                  sh7785lcr_32bit_defconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                         rhel-7.2-clear
x86_64                               rhel-7.6

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
