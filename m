Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9E7194EB3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 03:08:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Mnv3YhxF6xSqnPXPjv36+Rs4RPfd0S/RFFLTf4mVLDk=; b=miNQEbBtKyAZ7E
	/+Tv0bSj5A/PJpyLcdEjup3o7Djk6rd/PN0dXFqamGtPO3zUB15ELcHKuohWh+uPZk/0btcO+my72
	drcot+gs8okY0DHDhVHEdFMmog5tFbvz38noPcj4U7r3hkfaYOIYRndSqm0THBMBwirJ211kw1tGM
	57PTgzRRdyXELhAYDM79I6bnpH18zcoi0Q39h0pOr46Ci+c1ZemLbt4/i1uOhGKMUCnFmAWGO1SPZ
	r0hN43PcBJh+3V63ZRy5n/mMa1R6Q/RRD7j6CQPdXL4fRIjkBmT14Ob4can+qm9hZkOl3Uw4lO62/
	kq4MxF+rqJ6BDt48/88g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHePq-0005kW-LD; Fri, 27 Mar 2020 02:08:10 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHePi-0005jg-3I
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 02:08:04 +0000
IronPort-SDR: ZLRuwiSpK70v9K7OobT9Yxc5VUDHxaWNce6eg2KNq+Z9sNUHOMFVbbD3sZt9fBLV44PV+7dTA6
 vO2VpAyXfYtw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 19:08:01 -0700
IronPort-SDR: kLlzPUUq0iqNhKMTBG/ByZ6PdR820TNeqtCIRpjPvgaphR6xA3JfcoCfMdxP56vJemIiERub+L
 dTWOqw7SNZ0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,310,1580803200"; d="scan'208";a="236487124"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 26 Mar 2020 19:07:59 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jHePe-0006ed-QK; Fri, 27 Mar 2020 10:07:58 +0800
Date: Fri, 27 Mar 2020 10:07:27 +0800
From: kbuild test robot <lkp@intel.com>
To: Tony Lindgren <tony@atomide.com>
Subject: [arm-soc:omap/sysc-drop-pdata-ti81xx] BUILD SUCCESS
 0143b9fd06ed6da93fd8c6b3393f5d4de7a01ba9
Message-ID: <5e7d5fdf.aanhty/+/mE7Dxn9%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_190802_215084_1D2EEB7F 
X-CRM114-Status: UNSURE (   6.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.3 HEXHASH_WORD           Multiple instances of word + hexadecimal hash
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git  omap/sysc-drop-pdata-ti81xx
branch HEAD: 0143b9fd06ed6da93fd8c6b3393f5d4de7a01ba9  ARM: OMAP2+: Drop legacy platform data for ti81xx edma

elapsed time: 13511m

configs tested: 275
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                              allmodconfig
arm                               allnoconfig
arm                              allyesconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm64                            allyesconfig
arm                         at91_dt_defconfig
arm                           efm32_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                        shmobile_defconfig
arm                           sunxi_defconfig
arm64                               defconfig
sparc                            allyesconfig
m68k                          multi_defconfig
mips                      malta_kvm_defconfig
s390                              allnoconfig
h8300                       h8s-sim_defconfig
s390                             allyesconfig
ia64                              allnoconfig
powerpc                           allnoconfig
parisc                            allnoconfig
h8300                     edosk2674_defconfig
i386                              allnoconfig
i386                             alldefconfig
i386                             allyesconfig
i386                                defconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
nds32                               defconfig
h8300                    h8300h-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                           sun3_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
parisc                           allyesconfig
parisc                generic-32bit_defconfig
parisc                generic-64bit_defconfig
x86_64               randconfig-a001-20200318
x86_64               randconfig-a002-20200318
x86_64               randconfig-a003-20200318
i386                 randconfig-a001-20200318
i386                 randconfig-a002-20200318
i386                 randconfig-a003-20200318
x86_64               randconfig-a001-20200326
x86_64               randconfig-a002-20200326
x86_64               randconfig-a003-20200326
i386                 randconfig-a001-20200326
i386                 randconfig-a002-20200326
i386                 randconfig-a003-20200326
x86_64               randconfig-a001-20200317
x86_64               randconfig-a002-20200317
x86_64               randconfig-a003-20200317
i386                 randconfig-a001-20200317
i386                 randconfig-a002-20200317
i386                 randconfig-a003-20200317
alpha                randconfig-a001-20200318
m68k                 randconfig-a001-20200318
mips                 randconfig-a001-20200318
nds32                randconfig-a001-20200318
parisc               randconfig-a001-20200318
riscv                randconfig-a001-20200318
alpha                randconfig-a001-20200317
m68k                 randconfig-a001-20200317
mips                 randconfig-a001-20200317
nds32                randconfig-a001-20200317
parisc               randconfig-a001-20200317
riscv                randconfig-a001-20200317
alpha                randconfig-a001-20200326
m68k                 randconfig-a001-20200326
mips                 randconfig-a001-20200326
nds32                randconfig-a001-20200326
parisc               randconfig-a001-20200326
riscv                randconfig-a001-20200326
c6x                  randconfig-a001-20200317
h8300                randconfig-a001-20200317
microblaze           randconfig-a001-20200317
nios2                randconfig-a001-20200317
sparc64              randconfig-a001-20200317
c6x                  randconfig-a001-20200327
h8300                randconfig-a001-20200327
microblaze           randconfig-a001-20200327
nios2                randconfig-a001-20200327
sparc64              randconfig-a001-20200327
csky                 randconfig-a001-20200318
openrisc             randconfig-a001-20200318
s390                 randconfig-a001-20200318
sh                   randconfig-a001-20200318
xtensa               randconfig-a001-20200318
csky                 randconfig-a001-20200326
openrisc             randconfig-a001-20200326
s390                 randconfig-a001-20200326
xtensa               randconfig-a001-20200326
csky                 randconfig-a001-20200317
openrisc             randconfig-a001-20200317
s390                 randconfig-a001-20200317
sh                   randconfig-a001-20200317
xtensa               randconfig-a001-20200317
sh                   randconfig-a001-20200326
x86_64               randconfig-b001-20200317
x86_64               randconfig-b002-20200317
x86_64               randconfig-b003-20200317
i386                 randconfig-b001-20200317
i386                 randconfig-b002-20200317
i386                 randconfig-b003-20200317
x86_64               randconfig-b001-20200318
x86_64               randconfig-b002-20200318
x86_64               randconfig-b003-20200318
i386                 randconfig-b001-20200318
i386                 randconfig-b002-20200318
i386                 randconfig-b003-20200318
x86_64               randconfig-c001-20200326
x86_64               randconfig-c002-20200326
x86_64               randconfig-c003-20200326
i386                 randconfig-c001-20200326
i386                 randconfig-c002-20200326
i386                 randconfig-c003-20200326
x86_64               randconfig-c001-20200317
x86_64               randconfig-c002-20200317
x86_64               randconfig-c003-20200317
i386                 randconfig-c001-20200317
i386                 randconfig-c002-20200317
i386                 randconfig-c003-20200317
x86_64               randconfig-d001-20200318
x86_64               randconfig-d002-20200318
x86_64               randconfig-d003-20200318
i386                 randconfig-d001-20200318
i386                 randconfig-d002-20200318
i386                 randconfig-d003-20200318
x86_64               randconfig-d001-20200317
x86_64               randconfig-d002-20200317
x86_64               randconfig-d003-20200317
i386                 randconfig-d001-20200317
i386                 randconfig-d002-20200317
i386                 randconfig-d003-20200317
x86_64               randconfig-e001-20200317
x86_64               randconfig-e002-20200317
x86_64               randconfig-e003-20200317
i386                 randconfig-e001-20200317
i386                 randconfig-e002-20200317
i386                 randconfig-e003-20200317
x86_64               randconfig-e001-20200326
x86_64               randconfig-e002-20200326
x86_64               randconfig-e003-20200326
i386                 randconfig-e001-20200326
i386                 randconfig-e002-20200326
i386                 randconfig-e003-20200326
x86_64               randconfig-e001-20200318
x86_64               randconfig-e002-20200318
x86_64               randconfig-e003-20200318
i386                 randconfig-e001-20200318
i386                 randconfig-e002-20200318
i386                 randconfig-e003-20200318
x86_64               randconfig-f001-20200317
x86_64               randconfig-f002-20200317
x86_64               randconfig-f003-20200317
i386                 randconfig-f001-20200317
i386                 randconfig-f002-20200317
i386                 randconfig-f003-20200317
x86_64               randconfig-f001-20200318
x86_64               randconfig-f002-20200318
x86_64               randconfig-f003-20200318
i386                 randconfig-f001-20200318
i386                 randconfig-f002-20200318
i386                 randconfig-f003-20200318
x86_64               randconfig-f001-20200326
x86_64               randconfig-f002-20200326
x86_64               randconfig-f003-20200326
i386                 randconfig-f001-20200326
i386                 randconfig-f002-20200326
i386                 randconfig-f003-20200326
x86_64               randconfig-g001-20200317
x86_64               randconfig-g002-20200317
x86_64               randconfig-g003-20200317
i386                 randconfig-g001-20200317
i386                 randconfig-g002-20200317
i386                 randconfig-g003-20200317
x86_64               randconfig-g001-20200326
x86_64               randconfig-g002-20200326
x86_64               randconfig-g003-20200326
i386                 randconfig-g001-20200326
i386                 randconfig-g002-20200326
i386                 randconfig-g003-20200326
x86_64               randconfig-g001-20200318
x86_64               randconfig-g002-20200318
x86_64               randconfig-g003-20200318
i386                 randconfig-g001-20200318
i386                 randconfig-g002-20200318
i386                 randconfig-g003-20200318
x86_64               randconfig-h001-20200317
x86_64               randconfig-h002-20200317
x86_64               randconfig-h003-20200317
i386                 randconfig-h001-20200317
i386                 randconfig-h002-20200317
i386                 randconfig-h003-20200317
x86_64               randconfig-h001-20200326
x86_64               randconfig-h002-20200326
x86_64               randconfig-h003-20200326
i386                 randconfig-h001-20200326
i386                 randconfig-h002-20200326
i386                 randconfig-h003-20200326
arc                  randconfig-a001-20200326
arm                  randconfig-a001-20200326
arm64                randconfig-a001-20200326
ia64                 randconfig-a001-20200326
powerpc              randconfig-a001-20200326
sparc                randconfig-a001-20200326
arc                  randconfig-a001-20200317
arm                  randconfig-a001-20200317
arm64                randconfig-a001-20200317
ia64                 randconfig-a001-20200317
powerpc              randconfig-a001-20200317
sparc                randconfig-a001-20200317
arc                  randconfig-a001-20200318
arm                  randconfig-a001-20200318
arm64                randconfig-a001-20200318
ia64                 randconfig-a001-20200318
powerpc              randconfig-a001-20200318
sparc                randconfig-a001-20200318
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
s390                             alldefconfig
s390                             allmodconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
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
