Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A981AB0DC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 20:49:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=49ZpWJMKXEqUJI4sFR3eG9iwbA8PnP5N0WmhzQdgBXs=; b=u4yG5JfdoFevVC
	5ar3++dUll35m8tABFNPDgdauPDlvgQjhodLLkJdS0RerFVJS8oxYTmaAryb88/GCOYz8aCCwAkzc
	L00PxvjO5ovG7cNbgRlUr0eydoTK+S00gyr/UNsxZWEAKN+0Ipl2IHlvRKX61E/+8+39Ey6U8+8vo
	UKrGaPV1uVA/jcDf6UM+RdKewJZT5g2lUS2evtjBdL1xahkGqRWxhBzqteUlRA0btIevzGl04XuFd
	c8LW2fj9U+aZHNTD0jro6J6xFP0tWNoSvRZLRkTArL2UQgN9VgK3wRtZOaQz8of2jMWH1maGIxNcW
	LXWOWos8xfs6gdv+hTow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOn6I-0005nm-Sd; Wed, 15 Apr 2020 18:49:30 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOn6A-0005nD-4N
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 18:49:24 +0000
IronPort-SDR: qUQLxrbX0aNyltO2P9sefE4PlhmbhAt7AT2MWCjnIVuWVkTkazf3S3JmcfrCVZzY8n5d/zk8Xp
 xTdfiJaZ3/VA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 11:49:15 -0700
IronPort-SDR: i/85cU2X7IYPuqPmxpU/jDQQjLdWmniIw8yBfs0iFZkDqLtOyeYnDFRHdUt1kItpdaTnJgU/vC
 WCWLOvy1Z+7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,388,1580803200"; d="scan'208";a="427532636"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 15 Apr 2020 11:49:14 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jOn61-000AZQ-Ge; Thu, 16 Apr 2020 02:49:13 +0800
Date: Thu, 16 Apr 2020 02:48:56 +0800
From: kbuild test robot <lkp@intel.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [stericsson:stmpe] BUILD SUCCESS
 4f115ab2a9a69f1bbd73d9115df60b3b0093ce70
Message-ID: <5e975718.m+XxSe0kFSAqMDTM%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_114922_258795_5D1708C3 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-stericsson.git  stmpe
branch HEAD: 4f115ab2a9a69f1bbd73d9115df60b3b0093ce70  slask

elapsed time: 1989m

configs tested: 219
configs skipped: 141

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
um                                  defconfig
xtensa                       common_defconfig
um                             i386_defconfig
ia64                                defconfig
s390                          debug_defconfig
sparc64                           allnoconfig
ia64                             allyesconfig
ia64                              allnoconfig
arc                              allyesconfig
nios2                         10m50_defconfig
h8300                       h8s-sim_defconfig
riscv                          rv32_defconfig
powerpc                       ppc64_defconfig
nios2                         3c120_defconfig
powerpc                           allnoconfig
um                           x86_64_defconfig
powerpc                             defconfig
parisc                           allyesconfig
nds32                               defconfig
mips                      malta_kvm_defconfig
sh                  sh7785lcr_32bit_defconfig
mips                      fuloong2e_defconfig
riscv                               defconfig
s390                             alldefconfig
sh                          rsk7269_defconfig
m68k                       m5475evb_defconfig
mips                              allnoconfig
s390                             allyesconfig
sparc                               defconfig
h8300                     edosk2674_defconfig
sparc64                          allyesconfig
parisc                generic-32bit_defconfig
microblaze                    nommu_defconfig
i386                                defconfig
i386                              allnoconfig
i386                             alldefconfig
i386                              debian-10.3
i386                             allyesconfig
ia64                             alldefconfig
ia64                             allmodconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                          iss_defconfig
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
h8300                    h8300h-sim_defconfig
m68k                             allmodconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
arc                                 defconfig
microblaze                      mmu_defconfig
powerpc                          rhel-kconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                             allyesconfig
parisc                            allnoconfig
parisc                generic-64bit_defconfig
x86_64               randconfig-a001-20200414
x86_64               randconfig-a002-20200414
x86_64               randconfig-a003-20200414
i386                 randconfig-a001-20200414
i386                 randconfig-a002-20200414
i386                 randconfig-a003-20200414
i386                 randconfig-a002-20200415
x86_64               randconfig-a001-20200415
x86_64               randconfig-a002-20200415
i386                 randconfig-a003-20200415
i386                 randconfig-a001-20200415
x86_64               randconfig-a003-20200415
alpha                randconfig-a001-20200414
m68k                 randconfig-a001-20200414
nds32                randconfig-a001-20200414
parisc               randconfig-a001-20200414
riscv                randconfig-a001-20200414
alpha                randconfig-a001-20200415
m68k                 randconfig-a001-20200415
mips                 randconfig-a001-20200415
nds32                randconfig-a001-20200415
parisc               randconfig-a001-20200415
riscv                randconfig-a001-20200415
c6x                  randconfig-a001-20200415
h8300                randconfig-a001-20200415
microblaze           randconfig-a001-20200415
nios2                randconfig-a001-20200415
sparc64              randconfig-a001-20200415
c6x                  randconfig-a001-20200414
h8300                randconfig-a001-20200414
microblaze           randconfig-a001-20200414
nios2                randconfig-a001-20200414
sparc64              randconfig-a001-20200414
csky                 randconfig-a001-20200414
openrisc             randconfig-a001-20200414
s390                 randconfig-a001-20200414
sh                   randconfig-a001-20200414
xtensa               randconfig-a001-20200414
s390                 randconfig-a001-20200415
xtensa               randconfig-a001-20200415
sh                   randconfig-a001-20200415
openrisc             randconfig-a001-20200415
csky                 randconfig-a001-20200415
x86_64               randconfig-b003-20200415
i386                 randconfig-b001-20200415
i386                 randconfig-b003-20200415
x86_64               randconfig-b002-20200415
x86_64               randconfig-b001-20200415
i386                 randconfig-b002-20200415
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
x86_64               randconfig-c003-20200415
i386                 randconfig-c003-20200415
x86_64               randconfig-c002-20200415
i386                 randconfig-c002-20200415
x86_64               randconfig-c001-20200415
i386                 randconfig-c001-20200415
x86_64               randconfig-d001-20200415
x86_64               randconfig-d002-20200415
x86_64               randconfig-d003-20200415
i386                 randconfig-d001-20200415
i386                 randconfig-d002-20200415
i386                 randconfig-d003-20200415
x86_64               randconfig-e001-20200415
x86_64               randconfig-e002-20200415
x86_64               randconfig-e003-20200415
i386                 randconfig-e001-20200415
i386                 randconfig-e002-20200415
i386                 randconfig-e003-20200415
i386                 randconfig-f003-20200415
i386                 randconfig-f002-20200415
i386                 randconfig-f001-20200415
x86_64               randconfig-f001-20200414
x86_64               randconfig-f002-20200414
x86_64               randconfig-f003-20200414
i386                 randconfig-f001-20200414
i386                 randconfig-f002-20200414
i386                 randconfig-f003-20200414
x86_64               randconfig-g001-20200414
x86_64               randconfig-g002-20200414
x86_64               randconfig-g003-20200414
i386                 randconfig-g001-20200414
i386                 randconfig-g002-20200414
i386                 randconfig-g003-20200414
x86_64               randconfig-g001-20200415
x86_64               randconfig-g003-20200415
i386                 randconfig-g001-20200415
i386                 randconfig-g002-20200415
i386                 randconfig-g003-20200415
x86_64               randconfig-g002-20200415
x86_64               randconfig-h001-20200414
x86_64               randconfig-h002-20200414
x86_64               randconfig-h003-20200414
i386                 randconfig-h001-20200414
i386                 randconfig-h002-20200414
i386                 randconfig-h003-20200414
x86_64               randconfig-h001-20200415
i386                 randconfig-h003-20200415
i386                 randconfig-h002-20200415
i386                 randconfig-h001-20200415
x86_64               randconfig-h002-20200415
powerpc              randconfig-a001-20200415
arm64                randconfig-a001-20200415
ia64                 randconfig-a001-20200415
arc                  randconfig-a001-20200415
arm                  randconfig-a001-20200415
arc                  randconfig-a001-20200414
arm                  randconfig-a001-20200414
arm64                randconfig-a001-20200414
ia64                 randconfig-a001-20200414
powerpc              randconfig-a001-20200414
sparc                randconfig-a001-20200414
sparc                randconfig-a001-20200415
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
s390                             allmodconfig
s390                              allnoconfig
s390                                defconfig
s390                       zfcpdump_defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                            titan_defconfig
sparc64                          allmodconfig
sparc64                             defconfig
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
