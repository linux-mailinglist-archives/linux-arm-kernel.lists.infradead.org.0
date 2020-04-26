Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7AE71B8AB7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 03:26:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XfTV0N/LeoMjJH2DbgZ3rTFhWnfudGelUGrt2Oo+l6A=; b=hikVsuiwWDdsev
	+apHSilPXyoBf3MvDo5XiDsgL6D9f8PeBaMSdl5tPnnM/eqhZaeRj0Qvu5kkDP2BAWAgL3QclK5Jb
	qgladfuZsBKpVa2BNENlH6b7s1d3fOBPyN5S6Dg1463NqiiBhPq1YellVKAzStK7QTA8B8q9hWknt
	Ux0DUwRyxH+Wp9JFTZMMVgH1uKZEf9b7bsa3bw6slL7DWe4j+afGYCStJWaRarywzzZJ/X6jl7BD0
	kMFfEWwR4GYtTSs42rMpQLA2pvLzunN6TiVA3SIZCuWzeGYBrmp1bjR3/3QpkvcwIHAIaaYQVeYbv
	0+CpAtvDVXIFDLnhEmrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSW3P-00057L-R8; Sun, 26 Apr 2020 01:25:55 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSW3I-00056S-UQ
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 01:25:50 +0000
IronPort-SDR: x6jZTa+hWDkohvloCJOPafoDCWpmx1TnP+WYT8i3++4K6gOad71O+IkoMZP9rLWUlK3Q/lcY9F
 4D4XdRePDCNw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2020 18:25:47 -0700
IronPort-SDR: GHnEmXrCMdV+mzrGFRDFGRlNUWIqa0Yz779uArlz/BPGRvH1CSPt96h1v2ewnXnCWKkCdsTzkP
 K52cmh+B8wnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,318,1583222400"; d="scan'208";a="457872910"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 25 Apr 2020 18:25:46 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jSW3F-0008oJ-O3; Sun, 26 Apr 2020 09:25:45 +0800
Date: Sun, 26 Apr 2020 09:25:29 +0800
From: kbuild test robot <lkp@intel.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [nomadik:ux500-skomer-v5.7-rc1] BUILD SUCCESS
 80bc4477056b38cc3e4049b05d56a374c2b4e1dc
Message-ID: <5ea4e309.A+wRBB4xVdZKdJBE%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_182549_056433_0A24CC98 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 3.0 HEXHASH_WORD           Multiple instances of word + hexadecimal hash
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-nomadik.git  ux500-skomer-v5.7-rc1
branch HEAD: 80bc4477056b38cc3e4049b05d56a374c2b4e1dc  NFC hack

Warning in current branch:

drivers/gpu/drm/panel/panel-samsung-s6e63m0-dsi.c:62:20: warning: format '%x' expects argument of type 'unsigned int', but argument 5 has type 'size_t {aka long unsigned int}' [-Wformat=]
drivers/gpu/drm/panel/panel-samsung-s6e63m0-dsi.c:62:20: warning: format '%x' expects argument of type 'unsigned int', but argument 5 has type 'size_t' {aka 'long unsigned int'} [-Wformat=]

Warning ids grouped by kconfigs:

recent_errors
|-- alpha-allyesconfig
|   `-- drivers-gpu-drm-panel-panel-samsung-s6e63m0-dsi.c:warning:format-x-expects-argument-of-type-unsigned-int-but-argument-has-type-size_t-aka-long-unsigned-int
|-- arm64-allmodconfig
|   `-- drivers-gpu-drm-panel-panel-samsung-s6e63m0-dsi.c:warning:format-x-expects-argument-of-type-unsigned-int-but-argument-has-type-size_t-aka-long-unsigned-int
|-- arm64-allyesconfig
|   `-- drivers-gpu-drm-panel-panel-samsung-s6e63m0-dsi.c:warning:format-x-expects-argument-of-type-unsigned-int-but-argument-has-type-size_t-aka-long-unsigned-int
|-- ia64-allmodconfig
|   `-- drivers-gpu-drm-panel-panel-samsung-s6e63m0-dsi.c:warning:format-x-expects-argument-of-type-unsigned-int-but-argument-has-type-size_t-aka-long-unsigned-int
|-- ia64-allyesconfig
|   `-- drivers-gpu-drm-panel-panel-samsung-s6e63m0-dsi.c:warning:format-x-expects-argument-of-type-unsigned-int-but-argument-has-type-size_t-aka-long-unsigned-int
|-- riscv-allmodconfig
|   `-- drivers-gpu-drm-panel-panel-samsung-s6e63m0-dsi.c:warning:format-x-expects-argument-of-type-unsigned-int-but-argument-has-type-size_t-aka-long-unsigned-int
|-- riscv-allyesconfig
|   `-- drivers-gpu-drm-panel-panel-samsung-s6e63m0-dsi.c:warning:format-x-expects-argument-of-type-unsigned-int-but-argument-has-type-size_t-aka-long-unsigned-int
|-- s390-allmodconfig
|   `-- drivers-gpu-drm-panel-panel-samsung-s6e63m0-dsi.c:warning:format-x-expects-argument-of-type-unsigned-int-but-argument-has-type-size_t-aka-long-unsigned-int
|-- s390-allyesconfig
|   `-- drivers-gpu-drm-panel-panel-samsung-s6e63m0-dsi.c:warning:format-x-expects-argument-of-type-unsigned-int-but-argument-has-type-size_t-aka-long-unsigned-int
|-- sparc-allyesconfig
|   `-- drivers-gpu-drm-panel-panel-samsung-s6e63m0-dsi.c:warning:format-x-expects-argument-of-type-unsigned-int-but-argument-has-type-size_t-aka-long-unsigned-int
|-- sparc64-allmodconfig
|   `-- drivers-gpu-drm-panel-panel-samsung-s6e63m0-dsi.c:warning:format-x-expects-argument-of-type-unsigned-int-but-argument-has-type-size_t-aka-long-unsigned-int
|-- sparc64-allyesconfig
|   `-- drivers-gpu-drm-panel-panel-samsung-s6e63m0-dsi.c:warning:format-x-expects-argument-of-type-unsigned-int-but-argument-has-type-size_t-aka-long-unsigned-int
|-- x86_64-allmodconfig
|   `-- drivers-gpu-drm-panel-panel-samsung-s6e63m0-dsi.c:warning:format-x-expects-argument-of-type-unsigned-int-but-argument-has-type-size_t-aka-long-unsigned-int
`-- x86_64-allyesconfig
    `-- drivers-gpu-drm-panel-panel-samsung-s6e63m0-dsi.c:warning:format-x-expects-argument-of-type-unsigned-int-but-argument-has-type-size_t-aka-long-unsigned-int

elapsed time: 8322m

configs tested: 219
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm64                            allyesconfig
arm                              allyesconfig
arm64                             allnoconfig
arm                               allnoconfig
arm64                            allmodconfig
arm                              allmodconfig
arm                           efm32_defconfig
arm                         at91_dt_defconfig
arm                        shmobile_defconfig
arm64                               defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                           sunxi_defconfig
arm                        multi_v7_defconfig
sparc                            allyesconfig
ia64                          tiger_defconfig
mips                malta_kvm_guest_defconfig
ia64                              allnoconfig
microblaze                      mmu_defconfig
ia64                        generic_defconfig
powerpc                             defconfig
mips                      fuloong2e_defconfig
parisc                            allnoconfig
i386                             alldefconfig
mips                       capcella_defconfig
s390                       zfcpdump_defconfig
nds32                               defconfig
nds32                             allnoconfig
riscv                    nommu_virt_defconfig
um                           x86_64_defconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                                defconfig
ia64                         bigsur_defconfig
ia64                             allyesconfig
ia64                             alldefconfig
nios2                         3c120_defconfig
nios2                         10m50_defconfig
c6x                        evmc6678_defconfig
xtensa                          iss_defconfig
c6x                              allyesconfig
xtensa                       common_defconfig
openrisc                 simple_smp_defconfig
openrisc                    or1ksim_defconfig
csky                                defconfig
alpha                               defconfig
h8300                       h8s-sim_defconfig
h8300                     edosk2674_defconfig
m68k                       m5475evb_defconfig
m68k                             allmodconfig
h8300                    h8300h-sim_defconfig
m68k                           sun3_defconfig
m68k                          multi_defconfig
arc                                 defconfig
arc                              allyesconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
mips                      malta_kvm_defconfig
mips                            ar7_defconfig
mips                             allyesconfig
mips                         64r6el_defconfig
mips                              allnoconfig
mips                           32r2_defconfig
mips                             allmodconfig
mips                         tb0287_defconfig
mips                           ip32_defconfig
mips                  decstation_64_defconfig
mips                      loongson3_defconfig
mips                          ath79_defconfig
mips                        bcm63xx_defconfig
parisc                generic-64bit_defconfig
parisc                generic-32bit_defconfig
parisc                           allyesconfig
parisc                           allmodconfig
parisc               randconfig-a001-20200422
mips                 randconfig-a001-20200422
alpha                randconfig-a001-20200422
m68k                 randconfig-a001-20200422
riscv                randconfig-a001-20200422
nds32                randconfig-a001-20200422
parisc               randconfig-a001-20200421
alpha                randconfig-a001-20200421
mips                 randconfig-a001-20200421
m68k                 randconfig-a001-20200421
riscv                randconfig-a001-20200421
nds32                randconfig-a001-20200421
nios2                randconfig-a001-20200421
h8300                randconfig-a001-20200421
c6x                  randconfig-a001-20200421
sparc64              randconfig-a001-20200421
microblaze           randconfig-a001-20200421
sh                   randconfig-a001-20200421
csky                 randconfig-a001-20200421
s390                 randconfig-a001-20200421
xtensa               randconfig-a001-20200421
openrisc             randconfig-a001-20200421
sh                   randconfig-a001-20200422
csky                 randconfig-a001-20200422
s390                 randconfig-a001-20200422
xtensa               randconfig-a001-20200422
openrisc             randconfig-a001-20200422
i386                 randconfig-b002-20200421
i386                 randconfig-b001-20200421
x86_64               randconfig-b001-20200421
i386                 randconfig-b003-20200421
x86_64               randconfig-b002-20200421
x86_64               randconfig-b003-20200421
i386                 randconfig-b002-20200422
i386                 randconfig-b001-20200422
x86_64               randconfig-b001-20200422
i386                 randconfig-b003-20200422
x86_64               randconfig-b003-20200422
x86_64               randconfig-a001-20200420
i386                 randconfig-a003-20200420
x86_64               randconfig-a003-20200420
i386                 randconfig-a002-20200420
i386                 randconfig-a001-20200420
x86_64               randconfig-a002-20200420
x86_64               randconfig-a001-20200422
i386                 randconfig-a003-20200422
x86_64               randconfig-a003-20200422
i386                 randconfig-a002-20200422
i386                 randconfig-a001-20200422
x86_64               randconfig-a002-20200422
i386                 randconfig-c001-20200421
x86_64               randconfig-c002-20200421
x86_64               randconfig-c001-20200421
i386                 randconfig-c003-20200421
x86_64               randconfig-c003-20200421
i386                 randconfig-c002-20200421
x86_64               randconfig-d001-20200421
x86_64               randconfig-d002-20200421
i386                 randconfig-d002-20200421
i386                 randconfig-d001-20200421
x86_64               randconfig-d003-20200421
i386                 randconfig-d003-20200421
x86_64               randconfig-d002-20200422
i386                 randconfig-d002-20200422
i386                 randconfig-d001-20200422
i386                 randconfig-d003-20200422
x86_64               randconfig-e002-20200421
i386                 randconfig-e003-20200421
x86_64               randconfig-e003-20200421
i386                 randconfig-e002-20200421
i386                 randconfig-e001-20200421
x86_64               randconfig-e001-20200421
i386                 randconfig-e003-20200422
x86_64               randconfig-e003-20200422
i386                 randconfig-e002-20200422
i386                 randconfig-e001-20200422
x86_64               randconfig-e001-20200422
i386                 randconfig-f002-20200421
i386                 randconfig-f003-20200421
x86_64               randconfig-f003-20200421
i386                 randconfig-f001-20200421
x86_64               randconfig-f001-20200421
x86_64               randconfig-f002-20200422
i386                 randconfig-f002-20200422
x86_64               randconfig-f003-20200422
i386                 randconfig-f003-20200422
i386                 randconfig-f001-20200422
x86_64               randconfig-f001-20200422
i386                 randconfig-g003-20200422
x86_64               randconfig-g001-20200422
i386                 randconfig-g001-20200422
x86_64               randconfig-g002-20200422
i386                 randconfig-g002-20200422
x86_64               randconfig-g003-20200422
i386                 randconfig-h003-20200421
x86_64               randconfig-h001-20200421
x86_64               randconfig-h003-20200421
i386                 randconfig-h002-20200421
i386                 randconfig-h001-20200421
sparc                randconfig-a001-20200421
ia64                 randconfig-a001-20200421
powerpc              randconfig-a001-20200421
arm                  randconfig-a001-20200421
arc                  randconfig-a001-20200421
sparc                randconfig-a001-20200422
ia64                 randconfig-a001-20200422
powerpc              randconfig-a001-20200422
arm                  randconfig-a001-20200422
arm64                randconfig-a001-20200422
arc                  randconfig-a001-20200422
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
s390                          debug_defconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                             alldefconfig
s390                                defconfig
sh                          rsk7269_defconfig
sh                               allmodconfig
sh                            titan_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                             i386_defconfig
um                                  defconfig
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
x86_64                                    lkp
x86_64                              fedora-25
x86_64                                  kexec
x86_64                         rhel-7.2-clear

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
