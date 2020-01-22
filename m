Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0794145AAD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 18:18:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v13y2ra8c6i+8hEuNnlwGlKBD+MgXjQeylTvLVgrIU4=; b=CA4NWYBo8lueHJ
	qd5a2tO2ka7Nv9MrDvIXhDFt0YXQrXYxQtW3VRT7aI/V5EBGAnSQLHiJptuWNN4vBkv4iqm7SGJgm
	6imHxj0kWyW8vzu5OyXdlJPtJmz+hfmjzAGkyyBxg8sEM9et9kudCvPrNHp4mhxiMPWJ+/yeCPGDk
	2XpTX1Y5n274/Xnz7N2/HIIL+Nw0jv/W4ZpWfQMIzRoRBX+WVJxIvAIMrsdA7eCBd0unEXz3XHq4n
	x/3vtzDNLjegfDsnkzaBS9Wxc+K9+sl16EQ74Ty+w/ipDQyx/sHIzvcr46wCXVcOIeBwMRtI28nVk
	98tQQa8Zk6dv6n7O0chA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuJeM-0000Yw-JD; Wed, 22 Jan 2020 17:18:42 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuJeB-0000Xm-KV
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 17:18:33 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 09:18:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,350,1574150400"; d="scan'208";a="245116074"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 22 Jan 2020 09:18:22 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iuJe2-000D89-FF; Thu, 23 Jan 2020 01:18:22 +0800
Date: Thu, 23 Jan 2020 01:17:29 +0800
From: kbuild test robot <lkp@intel.com>
To: Olof Johansson <olof@lixom.net>
Subject: [arm-soc:arm/dt] BUILD SUCCESS
 9b0b308a1586f620a49c50605ae8abf509190661
Message-ID: <5e2883a9.QZXsVfc5doXXjq6w%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_091831_726094_277518BD 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git  arm/dt
branch HEAD: 9b0b308a1586f620a49c50605ae8abf509190661  Merge tag 'zynq-dt-for-v5.6-v2' of https://github.com/Xilinx/linux-xlnx into arm/dt

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
