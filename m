Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0CF017A193
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 09:42:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BGKM0JE06VOiLdRCL09BokVtSNlaqgdJXx8uA3m00Xc=; b=SdtKz4Y3qX/kkV
	nDemPCz4tpJk04UKYc2KeEtqQrDjZm9CbYyWrT92sjDmGcsg15wrFaTWzI0eADmQRpFIjU9fIHvbQ
	W2sFfHAIEQ7EhNr9MeeKyquV9QlVKT9bS2fonXAOYEjMMGY40gxFXB02IYliNiLIBNev7YcpUN4hc
	G6qO3Nei0e4Qdwx+zscYf29Ad1H5p41lh5Ct0mQTQWuOwdyEfEzDrlJTyuxXz/u4hdFH4RiKkvQfX
	A1wPvIgJlgocMgk2I05nEYLvCE5ABGE01HjZX2PU2oxpyXiNZIrpTSp7GaoxOwJF8cvAo+8yWobhw
	NO7OsuDwZlw4A+tW+lZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9m5X-0005Fh-Fn; Thu, 05 Mar 2020 08:42:39 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9m4t-00057V-3Z
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 08:42:00 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 00:41:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,517,1574150400"; d="scan'208";a="240745741"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 05 Mar 2020 00:41:55 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1j9m4o-0007K3-Kb; Thu, 05 Mar 2020 16:41:54 +0800
Date: Thu, 05 Mar 2020 16:41:25 +0800
From: kbuild test robot <lkp@intel.com>
To: Olof Johansson <olof@lixom.net>
Subject: [arm-soc:for-next] BUILD SUCCESS
 09e7f9a4c8e2025f05b2af253db75ba360eb204b
Message-ID: <5e60bb35.SADkNPhyrUPA+5qt%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_004159_157664_007D7CC5 
X-CRM114-Status: UNSURE (   7.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git  for-next
branch HEAD: 09e7f9a4c8e2025f05b2af253db75ba360eb204b  Merge branch 'arm/fixes' into for-next

elapsed time: 483m

configs tested: 205
configs skipped: 0

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
i386                              allnoconfig
s390                       zfcpdump_defconfig
sparc64                          allmodconfig
m68k                          multi_defconfig
sh                               allmodconfig
ia64                             allmodconfig
sh                          rsk7269_defconfig
i386                             alldefconfig
i386                             allyesconfig
i386                                defconfig
ia64                             alldefconfig
ia64                              allnoconfig
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
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                           sun3_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
parisc                            allnoconfig
parisc                           allyesconfig
parisc                generic-32bit_defconfig
parisc                generic-64bit_defconfig
x86_64               randconfig-a001-20200305
x86_64               randconfig-a002-20200305
x86_64               randconfig-a003-20200305
i386                 randconfig-a001-20200305
i386                 randconfig-a002-20200305
i386                 randconfig-a003-20200305
x86_64               randconfig-a001-20200304
x86_64               randconfig-a002-20200304
x86_64               randconfig-a003-20200304
i386                 randconfig-a001-20200304
i386                 randconfig-a002-20200304
i386                 randconfig-a003-20200304
alpha                randconfig-a001-20200305
m68k                 randconfig-a001-20200305
mips                 randconfig-a001-20200305
nds32                randconfig-a001-20200305
parisc               randconfig-a001-20200305
riscv                randconfig-a001-20200305
alpha                randconfig-a001-20200304
m68k                 randconfig-a001-20200304
mips                 randconfig-a001-20200304
nds32                randconfig-a001-20200304
parisc               randconfig-a001-20200304
riscv                randconfig-a001-20200304
c6x                  randconfig-a001-20200305
h8300                randconfig-a001-20200305
microblaze           randconfig-a001-20200305
nios2                randconfig-a001-20200305
sparc64              randconfig-a001-20200305
c6x                  randconfig-a001-20200304
h8300                randconfig-a001-20200304
microblaze           randconfig-a001-20200304
nios2                randconfig-a001-20200304
sparc64              randconfig-a001-20200304
sh                   randconfig-a001-20200304
openrisc             randconfig-a001-20200304
csky                 randconfig-a001-20200304
s390                 randconfig-a001-20200304
xtensa               randconfig-a001-20200304
x86_64               randconfig-b001-20200305
x86_64               randconfig-b002-20200305
x86_64               randconfig-b003-20200305
i386                 randconfig-b001-20200305
i386                 randconfig-b002-20200305
i386                 randconfig-b003-20200305
x86_64               randconfig-c001-20200304
x86_64               randconfig-c002-20200304
x86_64               randconfig-c003-20200304
i386                 randconfig-c001-20200304
i386                 randconfig-c002-20200304
i386                 randconfig-c003-20200304
x86_64               randconfig-d001-20200304
x86_64               randconfig-d002-20200304
x86_64               randconfig-d003-20200304
i386                 randconfig-d001-20200304
i386                 randconfig-d002-20200304
i386                 randconfig-d003-20200304
x86_64               randconfig-d001-20200305
x86_64               randconfig-d002-20200305
x86_64               randconfig-d003-20200305
i386                 randconfig-d001-20200305
i386                 randconfig-d002-20200305
i386                 randconfig-d003-20200305
x86_64               randconfig-e001-20200305
x86_64               randconfig-e002-20200305
x86_64               randconfig-e003-20200305
i386                 randconfig-e001-20200305
i386                 randconfig-e002-20200305
i386                 randconfig-e003-20200305
x86_64               randconfig-e001-20200304
x86_64               randconfig-e002-20200304
x86_64               randconfig-e003-20200304
i386                 randconfig-e001-20200304
i386                 randconfig-e002-20200304
i386                 randconfig-e003-20200304
x86_64               randconfig-f001-20200304
x86_64               randconfig-f002-20200304
x86_64               randconfig-f003-20200304
i386                 randconfig-f001-20200304
i386                 randconfig-f002-20200304
i386                 randconfig-f003-20200304
x86_64               randconfig-g001-20200304
x86_64               randconfig-g002-20200304
x86_64               randconfig-g003-20200304
i386                 randconfig-g001-20200304
i386                 randconfig-g002-20200304
i386                 randconfig-g003-20200304
x86_64               randconfig-g001-20200305
x86_64               randconfig-g002-20200305
x86_64               randconfig-g003-20200305
i386                 randconfig-g001-20200305
i386                 randconfig-g002-20200305
i386                 randconfig-g003-20200305
x86_64               randconfig-h001-20200305
x86_64               randconfig-h002-20200305
x86_64               randconfig-h003-20200305
i386                 randconfig-h001-20200305
i386                 randconfig-h002-20200305
i386                 randconfig-h003-20200305
x86_64               randconfig-h001-20200304
x86_64               randconfig-h002-20200304
x86_64               randconfig-h003-20200304
i386                 randconfig-h001-20200304
i386                 randconfig-h002-20200304
i386                 randconfig-h003-20200304
arc                  randconfig-a001-20200304
arm                  randconfig-a001-20200304
arm64                randconfig-a001-20200304
ia64                 randconfig-a001-20200304
powerpc              randconfig-a001-20200304
sparc                randconfig-a001-20200304
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
s390                          debug_defconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                             alldefconfig
s390                                defconfig
sh                                allnoconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
sparc                               defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
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
