Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A42143A9C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:14:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tbG6w6cWx+p88Wgy57Ev3SYynRxPMTEJcps47HqzaOM=; b=G/552nnQehGRlG
	i3i4s3Rze7VQJmA1pNRQGmK1cmHk78wd0Y1Jyv2ea6TOhE6Ye+E4gDpELRRDvUGyji3uBWYYZq4dC
	t4P8w/Yxo5p47CXFBLC6Vo5ik5p/UOSDV6QVQ8UFLixJL+6SYBb20eNmeJunf7NloTvgMBgjHRo6c
	zQR/3l5+NN3xWWbRoAD+vBMqae4RiT7GRmN/OXzhmQnFvQEf3DNsuYgmWUkYv8adeZpO+hw6utnz/
	CU3HRwI+hKCb4hWgDkDHPM7SCCtQ4canKum+qKPRVKD5sIgI9x5HGzplY5Q0OwWf0k4pVg2Q+hvVS
	RP8NywOHYT/2InWK8R4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqYB-0005D4-IG; Tue, 21 Jan 2020 10:14:23 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqXt-0005CP-Cz
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:14:09 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 02:14:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,345,1574150400"; d="scan'208";a="427006159"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 21 Jan 2020 02:14:02 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1itqXq-0009m4-8R; Tue, 21 Jan 2020 18:14:02 +0800
Date: Tue, 21 Jan 2020 18:13:14 +0800
From: kbuild test robot <lkp@intel.com>
To: Olof Johansson <olof@lixom.net>
Subject: [arm-soc:arm/drivers] BUILD SUCCESS
 684415d0de3009cdc78dc0e8ab1b2bdcd919d834
Message-ID: <5e26ceba.c/1pC5Af3RvsAVnn%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_021405_494585_4B393315 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git  arm/drivers
branch HEAD: 684415d0de3009cdc78dc0e8ab1b2bdcd919d834  Merge tag 'v5.5-next-soc' of https://git.kernel.org/pub/scm/linux/kernel/git/matthias.bgg/linux into arm/drivers

elapsed time: 529m

configs tested: 158
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

alpha                randconfig-a001-20200121
m68k                 randconfig-a001-20200121
mips                 randconfig-a001-20200121
nds32                randconfig-a001-20200121
parisc               randconfig-a001-20200121
riscv                randconfig-a001-20200121
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
nds32                               defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
arc                  randconfig-a001-20200121
arm                  randconfig-a001-20200121
arm64                randconfig-a001-20200121
ia64                 randconfig-a001-20200121
powerpc              randconfig-a001-20200121
sparc                randconfig-a001-20200121
c6x                  randconfig-a001-20200121
h8300                randconfig-a001-20200121
microblaze           randconfig-a001-20200121
nios2                randconfig-a001-20200121
sparc64              randconfig-a001-20200121
ia64                                defconfig
powerpc                             defconfig
x86_64               randconfig-c001-20200121
x86_64               randconfig-c002-20200121
x86_64               randconfig-c003-20200121
i386                 randconfig-c001-20200121
i386                 randconfig-c002-20200121
i386                 randconfig-c003-20200121
x86_64               randconfig-d001-20200121
x86_64               randconfig-d002-20200121
x86_64               randconfig-d003-20200121
i386                 randconfig-d001-20200121
i386                 randconfig-d002-20200121
i386                 randconfig-d003-20200121
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
openrisc             randconfig-a001-20200121
csky                 randconfig-a001-20200121
xtensa               randconfig-a001-20200121
sh                   randconfig-a001-20200121
s390                 randconfig-a001-20200121
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
parisc                            allnoconfig
parisc                            allyesonfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
arm64                            allmodconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
x86_64               randconfig-e001-20200121
x86_64               randconfig-e002-20200121
x86_64               randconfig-e003-20200121
i386                 randconfig-e001-20200121
i386                 randconfig-e002-20200121
i386                 randconfig-e003-20200121
arm                              allmodconfig
arm                         at91_dt_defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
x86_64               randconfig-h001-20200121
x86_64               randconfig-h002-20200121
x86_64               randconfig-h003-20200121
i386                 randconfig-h001-20200121
i386                 randconfig-h002-20200121
i386                 randconfig-h003-20200121
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
x86_64               randconfig-f001-20200121
x86_64               randconfig-f002-20200121
x86_64               randconfig-f003-20200121
i386                 randconfig-f001-20200121
i386                 randconfig-f002-20200121
i386                 randconfig-f003-20200121
x86_64               randconfig-a001-20200121
x86_64               randconfig-a002-20200121
x86_64               randconfig-a003-20200121
i386                 randconfig-a001-20200121
i386                 randconfig-a002-20200121
i386                 randconfig-a003-20200121
arm                               allnoconfig
arm                              allyesconfig
arm                           efm32_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                        shmobile_defconfig
arm                           sunxi_defconfig
arm64                             allnoconfig
arm64                            allyesconfig
arm64                               defconfig
i386                             alldefconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
x86_64               randconfig-g001-20200121
x86_64               randconfig-g002-20200121
x86_64               randconfig-g003-20200121
i386                 randconfig-g001-20200121
i386                 randconfig-g002-20200121
i386                 randconfig-g003-20200121

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
