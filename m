Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB021403A7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 06:44:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HTNul41igaK5eRn79xrOWTZXcyDL+C1QoDKQI6gg2Ik=; b=C/sHk6OU34BDdD
	/rfTAbbjYn9nJ5+p8xocv4KGrTY4rhNIS4aqHGHgTj5F8yz/KZGV7n+gdyrGBRS6i7BGnZr0DGSnX
	oRWyGmOO9F4cBJq6YwmsQstxtKtDnJFesZMSewIHNkJ8ta7aq52VTN8d+aNdb7UGhCYhEuZuV5CYd
	nJkf3dnti60OF7M8amPiEOdY4UmcZV/Ou2oxtfhVM4rCfyNQv+E9IUN1aFwqYnylk8ciXRCRvK4LH
	3T70hQ91h6PLR3Y5vkCyr0SQf+AlEaugFJRG9raQY/VEBvoJf37jVNhdd5XavVZFC2OEu5asgRpmE
	qF4cOGO8SMCgZ229XEQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isKQP-0000yG-Qq; Fri, 17 Jan 2020 05:44:05 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isKPV-0000Kq-V4
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 05:43:13 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 21:43:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,328,1574150400"; d="scan'208";a="226235063"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 16 Jan 2020 21:43:07 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1isKPS-0002I0-Iq; Fri, 17 Jan 2020 13:43:06 +0800
Date: Fri, 17 Jan 2020 13:42:52 +0800
From: kbuild test robot <lkp@intel.com>
To: Olof Johansson <olof@lixom.net>
Subject: [arm-soc:arm/drivers] BUILD SUCCESS
 0f827273178f5656edf1210dc94b8653df7580bf
Message-ID: <5e21495c.DiGHow5hQenDgsMn%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_214310_043179_923CB15D 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git  arm/drivers
branch HEAD: 0f827273178f5656edf1210dc94b8653df7580bf  Merge tag 'imx-driver-5.6' of git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux into arm/drivers

elapsed time: 473m

configs tested: 152
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
alpha                randconfig-a001-20200117
m68k                 randconfig-a001-20200117
mips                 randconfig-a001-20200117
nds32                randconfig-a001-20200117
parisc               randconfig-a001-20200117
riscv                randconfig-a001-20200117
c6x                  randconfig-a001-20200117
h8300                randconfig-a001-20200117
microblaze           randconfig-a001-20200117
nios2                randconfig-a001-20200117
sparc64              randconfig-a001-20200117
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
nds32                               defconfig
parisc                            allnoconfig
parisc                            allyesonfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
ia64                                defconfig
powerpc                             defconfig
i386                             alldefconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64               randconfig-e001-20200117
x86_64               randconfig-e002-20200117
x86_64               randconfig-e003-20200117
i386                 randconfig-e001-20200117
i386                 randconfig-e002-20200117
i386                 randconfig-e003-20200117
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
x86_64               randconfig-b001-20200117
x86_64               randconfig-b002-20200117
x86_64               randconfig-b003-20200117
i386                 randconfig-b001-20200117
i386                 randconfig-b002-20200117
i386                 randconfig-b003-20200117
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
x86_64               randconfig-c001-20200117
x86_64               randconfig-c002-20200117
x86_64               randconfig-c003-20200117
i386                 randconfig-c001-20200117
i386                 randconfig-c002-20200117
i386                 randconfig-c003-20200117
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
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
csky                 randconfig-a001-20200117
openrisc             randconfig-a001-20200117
s390                 randconfig-a001-20200117
sh                   randconfig-a001-20200117
xtensa               randconfig-a001-20200117
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
x86_64               randconfig-d001-20200117
x86_64               randconfig-d002-20200117
x86_64               randconfig-d003-20200117
i386                 randconfig-d001-20200117
i386                 randconfig-d002-20200117
i386                 randconfig-d003-20200117
x86_64               randconfig-g001-20200117
x86_64               randconfig-g002-20200117
x86_64               randconfig-g003-20200117
i386                 randconfig-g001-20200117
i386                 randconfig-g002-20200117
i386                 randconfig-g003-20200117
arc                  randconfig-a001-20200117
arm                  randconfig-a001-20200117
arm64                randconfig-a001-20200117
ia64                 randconfig-a001-20200117
powerpc              randconfig-a001-20200117
sparc                randconfig-a001-20200117
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
x86_64               randconfig-h001-20200117
x86_64               randconfig-h002-20200117
x86_64               randconfig-h003-20200117
i386                 randconfig-h001-20200117
i386                 randconfig-h002-20200117
i386                 randconfig-h003-20200117

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
