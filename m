Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 789C015AC3E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 16:44:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bWhriYSsUvmw79heIfz7G91HjC6IxgqwjB0LOd1XNxc=; b=hMgDVsgW7XHccO
	5mKwbJNa2cdae5Z4mC/92BhARGFsQPBXsrnVjYTzoYKPc4c1DB3pjicbaA19ML2m4PGRMyBCRHCPh
	8Bw6zpUC4hBUBX1rVG/0CU6Ztvec13/Yoj8ljt6Z5dyDMUJLTSp8LIjkzMTuUMPGBE7ZG5JQIXSQ1
	bgVL+uu377N8tvrszjXmgcfYlVUGSXY2/t5upvM143YHeyWWWDpiqtwjYZLynS0c4vA9cIEI82TF8
	TzmtyKI4yiKK/9rmQIHfaV+cMq2iocEvw2O1Lb4nMZOmxrQbSWMPRjh/sF0Ify8OGq3Cq/3v0wQP6
	I/R8jYGzkO6dP13Bc9iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1uBB-00064k-8B; Wed, 12 Feb 2020 15:43:57 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1uAb-0005hE-G3
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 15:43:23 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 07:43:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,433,1574150400"; d="scan'208";a="222321355"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 12 Feb 2020 07:43:17 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1j1uAW-0003HM-LR; Wed, 12 Feb 2020 23:43:16 +0800
Date: Wed, 12 Feb 2020 23:42:15 +0800
From: kbuild test robot <lkp@intel.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [stericsson:ux500-defconfig] BUILD SUCCESS
 0361aeb8a06abbe9ac50440b0b63d62d3a9cec08
Message-ID: <5e441cd7.zFXFqVquz9/R6sLZ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_074321_647211_F545FB51 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-stericsson.git  ux500-defconfig
branch HEAD: 0361aeb8a06abbe9ac50440b0b63d62d3a9cec08  ARM: defconfig: u8500: Enable new drivers for samsung-golden

elapsed time: 2891m

configs tested: 251
configs skipped: 82

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                              allmodconfig
arm                               allnoconfig
arm                              allyesconfig
arm                         at91_dt_defconfig
arm                           efm32_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                        shmobile_defconfig
arm                           sunxi_defconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm64                            allyesconfig
arm64                               defconfig
sparc                            allyesconfig
m68k                             allmodconfig
riscv                    nommu_virt_defconfig
sparc                               defconfig
riscv                               defconfig
s390                          debug_defconfig
nds32                               defconfig
alpha                               defconfig
s390                                defconfig
sh                          rsk7269_defconfig
sh                            titan_defconfig
s390                             allmodconfig
riscv                          rv32_defconfig
openrisc                    or1ksim_defconfig
sparc64                          allyesconfig
m68k                       m5475evb_defconfig
um                           x86_64_defconfig
microblaze                      mmu_defconfig
m68k                           sun3_defconfig
ia64                             allyesconfig
csky                                defconfig
s390                             alldefconfig
ia64                                defconfig
powerpc                             defconfig
riscv                            allyesconfig
ia64                             alldefconfig
um                                  defconfig
s390                       zfcpdump_defconfig
h8300                       h8s-sim_defconfig
sparc64                           allnoconfig
sparc64                             defconfig
nios2                         3c120_defconfig
mips                              allnoconfig
nios2                         10m50_defconfig
riscv                             allnoconfig
i386                             alldefconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
ia64                             allmodconfig
ia64                              allnoconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
nds32                             allnoconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
m68k                          multi_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
parisc                            allnoconfig
parisc                           allyesconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
x86_64               randconfig-a001-20200212
x86_64               randconfig-a002-20200212
x86_64               randconfig-a003-20200212
i386                 randconfig-a001-20200212
i386                 randconfig-a002-20200212
i386                 randconfig-a003-20200212
x86_64               randconfig-a001-20200211
x86_64               randconfig-a002-20200211
x86_64               randconfig-a003-20200211
i386                 randconfig-a001-20200211
i386                 randconfig-a002-20200211
i386                 randconfig-a003-20200211
alpha                randconfig-a001-20200212
m68k                 randconfig-a001-20200212
nds32                randconfig-a001-20200212
parisc               randconfig-a001-20200212
riscv                randconfig-a001-20200212
alpha                randconfig-a001-20200211
m68k                 randconfig-a001-20200211
mips                 randconfig-a001-20200211
nds32                randconfig-a001-20200211
parisc               randconfig-a001-20200211
riscv                randconfig-a001-20200211
c6x                  randconfig-a001-20200211
h8300                randconfig-a001-20200211
microblaze           randconfig-a001-20200211
nios2                randconfig-a001-20200211
sparc64              randconfig-a001-20200211
c6x                  randconfig-a001-20200210
h8300                randconfig-a001-20200210
microblaze           randconfig-a001-20200210
nios2                randconfig-a001-20200210
sparc64              randconfig-a001-20200210
c6x                  randconfig-a001-20200212
h8300                randconfig-a001-20200212
microblaze           randconfig-a001-20200212
nios2                randconfig-a001-20200212
sparc64              randconfig-a001-20200212
csky                 randconfig-a001-20200211
openrisc             randconfig-a001-20200211
s390                 randconfig-a001-20200211
sh                   randconfig-a001-20200211
xtensa               randconfig-a001-20200211
csky                 randconfig-a001-20200212
openrisc             randconfig-a001-20200212
s390                 randconfig-a001-20200212
sh                   randconfig-a001-20200212
xtensa               randconfig-a001-20200212
x86_64               randconfig-b001-20200211
x86_64               randconfig-b002-20200211
x86_64               randconfig-b003-20200211
i386                 randconfig-b001-20200211
i386                 randconfig-b002-20200211
i386                 randconfig-b003-20200211
x86_64               randconfig-b001-20200212
x86_64               randconfig-b002-20200212
x86_64               randconfig-b003-20200212
i386                 randconfig-b001-20200212
i386                 randconfig-b002-20200212
i386                 randconfig-b003-20200212
x86_64               randconfig-c001-20200211
x86_64               randconfig-c002-20200211
x86_64               randconfig-c003-20200211
i386                 randconfig-c001-20200211
i386                 randconfig-c002-20200211
i386                 randconfig-c003-20200211
x86_64               randconfig-c001-20200212
x86_64               randconfig-c002-20200212
x86_64               randconfig-c003-20200212
i386                 randconfig-c001-20200212
i386                 randconfig-c002-20200212
i386                 randconfig-c003-20200212
x86_64               randconfig-d001-20200211
x86_64               randconfig-d002-20200211
x86_64               randconfig-d003-20200211
i386                 randconfig-d001-20200211
i386                 randconfig-d002-20200211
i386                 randconfig-d003-20200211
x86_64               randconfig-d001-20200212
x86_64               randconfig-d002-20200212
x86_64               randconfig-d003-20200212
i386                 randconfig-d001-20200212
i386                 randconfig-d002-20200212
i386                 randconfig-d003-20200212
x86_64               randconfig-e001-20200211
x86_64               randconfig-e002-20200211
x86_64               randconfig-e003-20200211
i386                 randconfig-e001-20200211
i386                 randconfig-e002-20200211
i386                 randconfig-e003-20200211
x86_64               randconfig-e001-20200212
x86_64               randconfig-e002-20200212
x86_64               randconfig-e003-20200212
i386                 randconfig-e001-20200212
i386                 randconfig-e002-20200212
i386                 randconfig-e003-20200212
x86_64               randconfig-f001-20200210
x86_64               randconfig-f002-20200210
x86_64               randconfig-f003-20200210
i386                 randconfig-f001-20200210
i386                 randconfig-f002-20200210
i386                 randconfig-f003-20200210
x86_64               randconfig-f001-20200212
x86_64               randconfig-f002-20200212
x86_64               randconfig-f003-20200212
i386                 randconfig-f001-20200212
i386                 randconfig-f002-20200212
i386                 randconfig-f003-20200212
x86_64               randconfig-f001-20200211
x86_64               randconfig-f002-20200211
x86_64               randconfig-f003-20200211
i386                 randconfig-f001-20200211
i386                 randconfig-f002-20200211
i386                 randconfig-f003-20200211
x86_64               randconfig-g001-20200210
x86_64               randconfig-g002-20200210
x86_64               randconfig-g003-20200210
i386                 randconfig-g001-20200210
i386                 randconfig-g002-20200210
i386                 randconfig-g003-20200210
x86_64               randconfig-g001-20200211
x86_64               randconfig-g002-20200211
x86_64               randconfig-g003-20200211
i386                 randconfig-g001-20200211
i386                 randconfig-g002-20200211
i386                 randconfig-g003-20200211
x86_64               randconfig-g001-20200212
x86_64               randconfig-g002-20200212
x86_64               randconfig-g003-20200212
i386                 randconfig-g001-20200212
i386                 randconfig-g002-20200212
i386                 randconfig-g003-20200212
x86_64               randconfig-h001-20200211
x86_64               randconfig-h002-20200211
x86_64               randconfig-h003-20200211
i386                 randconfig-h001-20200211
i386                 randconfig-h002-20200211
i386                 randconfig-h003-20200211
x86_64               randconfig-h001-20200212
x86_64               randconfig-h002-20200212
x86_64               randconfig-h003-20200212
i386                 randconfig-h001-20200212
i386                 randconfig-h002-20200212
i386                 randconfig-h003-20200212
arc                  randconfig-a001-20200211
arm                  randconfig-a001-20200211
arm64                randconfig-a001-20200211
ia64                 randconfig-a001-20200211
powerpc              randconfig-a001-20200211
sparc                randconfig-a001-20200211
arc                  randconfig-a001-20200212
arm                  randconfig-a001-20200212
arm64                randconfig-a001-20200212
ia64                 randconfig-a001-20200212
powerpc              randconfig-a001-20200212
sparc                randconfig-a001-20200212
riscv                            allmodconfig
s390                              allnoconfig
s390                             allyesconfig
sh                               allmodconfig
sh                                allnoconfig
sh                  sh7785lcr_32bit_defconfig
sparc64                          allmodconfig
um                             i386_defconfig
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
