Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B3B1A87CC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:43:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tjUWlgpcn/+QQjs5xSJFKz8k3Ho2zVAW+E9yTvyKsNw=; b=OPNNjQHfTbepNP
	gMq4f6MQ92qvdcKJkEQabsBaekhkgDGfhnz9Mm+OJMYn7Frocm/0LCeUozTejb5kceQ04jO/HKgzN
	YFn6v6razmgCO1KlxkV+450VmM+73z7mrLIdI79XNIPYURSNZWGgncLfWlaejGBOBdpRx4KoMHP1y
	fWoVij/8X15t5wFrljoU1TNSrsIv4iy9WSy55B3MhE0m/h/Kb+q96PUUiSMs6LkiwMmb5B5xZ521U
	mjDIpVZxak+5o4FcbZxX6kWdQxOKKuZZOL3pWMjCrb+f9Vy3yXAQ4Dujz3+vQQIhxLqfFRiKXe0fG
	OYRGa+1+vCR8YplH+Vfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOPas-0004QZ-Su; Tue, 14 Apr 2020 17:43:30 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOPaG-0003zq-Bk
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 17:42:55 +0000
IronPort-SDR: LnCZkNvk+5YNLIMKsliZCVN3d5R5TsZMcQK0RdliZW2VLGHIB6zqGJ/d6k0b94o+8YBUwnVnTr
 kYCMoshO7b1w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 10:42:49 -0700
IronPort-SDR: A9Ti0RJkjcqeFuLoNTLTtOG+RcFwvvlaEIitI7M2LF/l6QcnnyCeTw6HFgxRd2Ih/hvBNO+QFI
 gyuC7eWgwbZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,383,1580803200"; d="scan'208";a="245480190"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 14 Apr 2020 10:42:48 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jOPaB-0007ZN-NB; Wed, 15 Apr 2020 01:42:47 +0800
Date: Wed, 15 Apr 2020 01:42:31 +0800
From: kbuild test robot <lkp@intel.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [stericsson:ux500-defconfig] BUILD SUCCESS
 cca968a1de4cf7e82eb205be176de65dc4912ab8
Message-ID: <5e95f607.crhOc52XAK1rA+U6%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_104253_186331_9EED6637 
X-CRM114-Status: UNSURE (   7.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-stericsson.git  ux500-defconfig
branch HEAD: cca968a1de4cf7e82eb205be176de65dc4912ab8  ARM: defconfig: u8500: Enable new drivers for ux500

elapsed time: 483m

configs tested: 167
configs skipped: 116

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
ia64                             allyesconfig
mips                      malta_kvm_defconfig
h8300                       h8s-sim_defconfig
riscv                          rv32_defconfig
powerpc                       ppc64_defconfig
i386                              allnoconfig
i386                             alldefconfig
i386                              debian-10.3
i386                                defconfig
i386                             allyesconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
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
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                          rhel-kconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
parisc                            allnoconfig
parisc                           allyesconfig
parisc                generic-32bit_defconfig
parisc                generic-64bit_defconfig
x86_64               randconfig-a001-20200414
x86_64               randconfig-a002-20200414
x86_64               randconfig-a003-20200414
i386                 randconfig-a001-20200414
i386                 randconfig-a002-20200414
i386                 randconfig-a003-20200414
alpha                randconfig-a001-20200414
m68k                 randconfig-a001-20200414
nds32                randconfig-a001-20200414
parisc               randconfig-a001-20200414
riscv                randconfig-a001-20200414
alpha                randconfig-a001-20200415
m68k                 randconfig-a001-20200415
nds32                randconfig-a001-20200415
riscv                randconfig-a001-20200415
c6x                  randconfig-a001-20200414
h8300                randconfig-a001-20200414
microblaze           randconfig-a001-20200414
nios2                randconfig-a001-20200414
sparc64              randconfig-a001-20200414
c6x                  randconfig-a001-20200415
h8300                randconfig-a001-20200415
microblaze           randconfig-a001-20200415
nios2                randconfig-a001-20200415
sparc64              randconfig-a001-20200415
csky                 randconfig-a001-20200414
openrisc             randconfig-a001-20200414
s390                 randconfig-a001-20200414
sh                   randconfig-a001-20200414
xtensa               randconfig-a001-20200414
x86_64               randconfig-b001-20200414
x86_64               randconfig-b002-20200414
x86_64               randconfig-b003-20200414
i386                 randconfig-b001-20200414
i386                 randconfig-b002-20200414
i386                 randconfig-b003-20200414
x86_64               randconfig-c001-20200414
x86_64               randconfig-c002-20200414
x86_64               randconfig-c003-20200414
i386                 randconfig-c001-20200414
i386                 randconfig-c002-20200414
i386                 randconfig-c003-20200414
x86_64               randconfig-d001-20200414
x86_64               randconfig-d002-20200414
x86_64               randconfig-d003-20200414
i386                 randconfig-d001-20200414
i386                 randconfig-d002-20200414
i386                 randconfig-d003-20200414
x86_64               randconfig-f001-20200414
x86_64               randconfig-f002-20200414
x86_64               randconfig-f003-20200414
i386                 randconfig-f001-20200414
i386                 randconfig-f002-20200414
i386                 randconfig-f003-20200414
x86_64               randconfig-h001-20200414
x86_64               randconfig-h002-20200414
x86_64               randconfig-h003-20200414
i386                 randconfig-h001-20200414
i386                 randconfig-h002-20200414
i386                 randconfig-h003-20200414
arc                  randconfig-a001-20200414
arm                  randconfig-a001-20200414
arm64                randconfig-a001-20200414
ia64                 randconfig-a001-20200414
powerpc              randconfig-a001-20200414
sparc                randconfig-a001-20200414
arc                  randconfig-a001-20200415
arm64                randconfig-a001-20200415
ia64                 randconfig-a001-20200415
powerpc              randconfig-a001-20200415
sparc                randconfig-a001-20200415
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
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
x86_64                    rhel-7.6-kselftests

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
