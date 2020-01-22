Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F42145AB0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 18:20:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5dZr0VNiOf3VOARl0GeZ1/KslCEI2IurLjV13ryhM00=; b=BFG+g1GCVyNDBZ
	WUSUHxsIQF9qpNyXkTEyxv6VKmQ/ej56ORZrSBkPJOXjDMablx/Q0eaqnQqMK6DINgPP5iIxpA12V
	btiYQAKxbgUgDlp16qLS6IKpRrEHOHtvficcvvqbrMjcHNeuvPuRiic6h20863zYJLeUnP/aJRaD0
	5Q+Agej8bQ7RqQS7RoN4dcOquc8zml4uVxsFIMsma2qv6PF2ZVhAxatDx4ZvexR3F4sHQua/c5eea
	xUkTc0HurvPzjrQHgEizwwaao1g8hmS9Qoc+F47nl5784vUaCfrodIpXuGYniEYLSM9yGnpxJft8C
	HaVVK1dB0RJtCpvWAH4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuJfr-00014D-RA; Wed, 22 Jan 2020 17:20:15 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuJfT-00013o-IA
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 17:19:53 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 09:18:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,350,1574150400"; d="scan'208";a="427474969"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 22 Jan 2020 09:18:20 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iuJe0-000CqP-1U; Thu, 23 Jan 2020 01:18:20 +0800
Date: Thu, 23 Jan 2020 01:17:28 +0800
From: kbuild test robot <lkp@intel.com>
To: Olof Johansson <olof@lixom.net>
Subject: [arm-soc:arm/soc] BUILD SUCCESS
 31a7d26fbc51a39292bf9911f9e9efdf6d8e22b2
Message-ID: <5e2883a8.5hlscd0yWvZnP7cW%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_091951_650287_FCB29AC0 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git  arm/soc
branch HEAD: 31a7d26fbc51a39292bf9911f9e9efdf6d8e22b2  Merge tag 'zynq-soc-for-v5.6' of https://github.com/Xilinx/linux-xlnx into arm/soc

elapsed time: 529m

configs tested: 158
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
h8300                    h8300h-sim_defconfig
alpha                randconfig-a001-20200122
m68k                 randconfig-a001-20200122
mips                 randconfig-a001-20200122
nds32                randconfig-a001-20200122
parisc               randconfig-a001-20200122
riscv                randconfig-a001-20200122
x86_64               randconfig-a001-20200122
x86_64               randconfig-a002-20200122
x86_64               randconfig-a003-20200122
i386                 randconfig-a001-20200122
i386                 randconfig-a002-20200122
i386                 randconfig-a003-20200122
h8300                     edosk2674_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
csky                 randconfig-a001-20200122
openrisc             randconfig-a001-20200122
s390                 randconfig-a001-20200122
sh                   randconfig-a001-20200122
xtensa               randconfig-a001-20200122
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
sparc                            allyesconfig
x86_64               randconfig-g001-20200122
x86_64               randconfig-g002-20200122
x86_64               randconfig-g003-20200122
i386                 randconfig-g001-20200122
i386                 randconfig-g002-20200122
i386                 randconfig-g003-20200122
i386                                defconfig
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
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
nds32                               defconfig
x86_64               randconfig-c001-20200122
x86_64               randconfig-c002-20200122
x86_64               randconfig-c003-20200122
i386                 randconfig-c001-20200122
i386                 randconfig-c002-20200122
i386                 randconfig-c003-20200122
c6x                  randconfig-a001-20200122
h8300                randconfig-a001-20200122
microblaze           randconfig-a001-20200122
nios2                randconfig-a001-20200122
sparc64              randconfig-a001-20200122
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
x86_64               randconfig-d001-20200122
x86_64               randconfig-d002-20200122
x86_64               randconfig-d003-20200122
i386                 randconfig-d001-20200122
i386                 randconfig-d002-20200122
i386                 randconfig-d003-20200122
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
x86_64               randconfig-b001-20200122
x86_64               randconfig-b002-20200122
x86_64               randconfig-b003-20200122
i386                 randconfig-b001-20200122
i386                 randconfig-b002-20200122
i386                 randconfig-b003-20200122
i386                             alldefconfig
i386                              allnoconfig
i386                             allyesconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
arc                  randconfig-a001-20200122
arm                  randconfig-a001-20200122
arm64                randconfig-a001-20200122
ia64                 randconfig-a001-20200122
powerpc              randconfig-a001-20200122
sparc                randconfig-a001-20200122
parisc                            allnoconfig
parisc                            allyesonfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
x86_64               randconfig-h001-20200122
x86_64               randconfig-h002-20200122
x86_64               randconfig-h003-20200122
i386                 randconfig-h001-20200122
i386                 randconfig-h002-20200122
i386                 randconfig-h003-20200122
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                                defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
x86_64               randconfig-e001-20200122
x86_64               randconfig-e002-20200122
x86_64               randconfig-e003-20200122
i386                 randconfig-e001-20200122
i386                 randconfig-e002-20200122
i386                 randconfig-e003-20200122

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
