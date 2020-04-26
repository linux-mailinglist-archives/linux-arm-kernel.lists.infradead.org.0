Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 844011B8A91
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 02:58:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rMgLvZIfQ2iyBPHU9Oxl+wZB+g3PJ+hXdmU3hphitt8=; b=gcUuWaLRcFLDBA
	YXobU5Oczbqq8PkDqhoCzib4YXN2hy3TntdQZWRmG3u1ELNJSOvpgxTyztLRCqZJiYqC15FTVjHeW
	fzh148fYYp/ZDNXriCt79BLhM+lTxcXI8e/aBOcD0GG6970+b9569eqk5K8PFKfAi20tIhpd4bAbd
	2K3pC1sX6NY6wJ3kkRhXiNDPblJZWQMplWwQDBPP9UVmr1MXI5/4eJzqVRdy/1xcieiGzxVPJ9AIF
	qW/6kH6SiR9Dcc9GzCXqMS63dRIrBYuGhgbOFk/Lsj7rxXJ7At5lHhMA68IV2OCGrYgjtmk7lU6if
	b9Tlu1PqBVOjzErvJX+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSVcj-0001qR-N6; Sun, 26 Apr 2020 00:58:21 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSVca-0001pb-Fh
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 00:58:14 +0000
IronPort-SDR: hh4hcTtCceGz2pMnSB/pM0CfVuHducvD/9BvnGiRdF6xGUvwm368OXPrtWo3K/rkS9mtD75fJt
 nXrYbQITz9QA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2020 17:58:11 -0700
IronPort-SDR: oVWUQ9VURZGWdR1J9u0B4PrXNHZq//CApkovmD6aT2iypUp6S+7aEox8Or8mMz+gopsiCeWqP8
 iBATGseKY1wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,318,1583222400"; d="scan'208";a="366773507"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 25 Apr 2020 17:58:10 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jSVcX-0000W1-FP; Sun, 26 Apr 2020 08:58:09 +0800
Date: Sun, 26 Apr 2020 08:57:33 +0800
From: kbuild test robot <lkp@intel.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: [arm-soc:for-next] BUILD SUCCESS
 f42ae4cd4cae92408bffec2c0a4c110447e908e0
Message-ID: <5ea4dc7d.60FXxe/Nr4/p0daH%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_175812_597610_8299CA18 
X-CRM114-Status: UNSURE (   7.74  )
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
Cc: arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git  for-next
branch HEAD: f42ae4cd4cae92408bffec2c0a4c110447e908e0  Merge tag 'arm-soc/for-5.7/devicetree-fixes' of https://github.com/Broadcom/stblinux into arm/fixes

elapsed time: 3107m

configs tested: 268
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm64                            allyesconfig
arm                              allyesconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm                               allnoconfig
arm                              allmodconfig
arm64                               defconfig
arm                           sunxi_defconfig
arm                           efm32_defconfig
arm                         at91_dt_defconfig
arm                        shmobile_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
sparc                            allyesconfig
powerpc                             defconfig
ia64                                defconfig
mips                malta_kvm_guest_defconfig
ia64                        generic_defconfig
arc                                 defconfig
ia64                         bigsur_defconfig
xtensa                          iss_defconfig
mips                             allyesconfig
microblaze                      mmu_defconfig
sparc64                             defconfig
sh                  sh7785lcr_32bit_defconfig
s390                             alldefconfig
m68k                           sun3_defconfig
powerpc                       ppc64_defconfig
riscv                            allyesconfig
xtensa                       common_defconfig
sparc64                           allnoconfig
mips                          ath79_defconfig
openrisc                    or1ksim_defconfig
i386                              allnoconfig
i386                             allyesconfig
i386                             alldefconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                              allnoconfig
ia64                          tiger_defconfig
ia64                             allyesconfig
ia64                             alldefconfig
nios2                         3c120_defconfig
nios2                         10m50_defconfig
c6x                        evmc6678_defconfig
c6x                              allyesconfig
openrisc                 simple_smp_defconfig
nds32                               defconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
h8300                       h8s-sim_defconfig
h8300                     edosk2674_defconfig
m68k                       m5475evb_defconfig
m68k                             allmodconfig
h8300                    h8300h-sim_defconfig
m68k                          multi_defconfig
arc                              allyesconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                          rhel-kconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
mips                            ar7_defconfig
mips                         64r6el_defconfig
mips                              allnoconfig
mips                           32r2_defconfig
mips                             allmodconfig
mips                         tb0287_defconfig
mips                       capcella_defconfig
mips                           ip32_defconfig
mips                  decstation_64_defconfig
mips                      loongson3_defconfig
mips                        bcm63xx_defconfig
parisc                            allnoconfig
parisc                generic-64bit_defconfig
parisc                generic-32bit_defconfig
parisc                           allyesconfig
parisc                           allmodconfig
parisc               randconfig-a001-20200424
alpha                randconfig-a001-20200424
m68k                 randconfig-a001-20200424
riscv                randconfig-a001-20200424
nds32                randconfig-a001-20200424
parisc               randconfig-a001-20200426
mips                 randconfig-a001-20200426
alpha                randconfig-a001-20200426
m68k                 randconfig-a001-20200426
nds32                randconfig-a001-20200426
nios2                randconfig-a001-20200424
c6x                  randconfig-a001-20200424
h8300                randconfig-a001-20200424
sparc64              randconfig-a001-20200424
microblaze           randconfig-a001-20200424
nios2                randconfig-a001-20200423
h8300                randconfig-a001-20200423
c6x                  randconfig-a001-20200423
sparc64              randconfig-a001-20200423
microblaze           randconfig-a001-20200423
nios2                randconfig-a001-20200425
c6x                  randconfig-a001-20200425
h8300                randconfig-a001-20200425
sparc64              randconfig-a001-20200425
microblaze           randconfig-a001-20200425
sh                   randconfig-a001-20200424
csky                 randconfig-a001-20200424
s390                 randconfig-a001-20200424
xtensa               randconfig-a001-20200424
openrisc             randconfig-a001-20200424
xtensa               randconfig-a001-20200423
sh                   randconfig-a001-20200423
csky                 randconfig-a001-20200423
openrisc             randconfig-a001-20200423
sh                   randconfig-a001-20200425
csky                 randconfig-a001-20200425
s390                 randconfig-a001-20200425
xtensa               randconfig-a001-20200425
openrisc             randconfig-a001-20200425
i386                 randconfig-b002-20200426
x86_64               randconfig-b001-20200426
i386                 randconfig-b001-20200426
i386                 randconfig-b003-20200426
x86_64               randconfig-b003-20200426
i386                 randconfig-b002-20200425
x86_64               randconfig-b001-20200425
i386                 randconfig-b001-20200425
i386                 randconfig-b003-20200425
x86_64               randconfig-b002-20200425
x86_64               randconfig-b003-20200425
x86_64               randconfig-a001-20200422
i386                 randconfig-a003-20200422
x86_64               randconfig-a003-20200422
i386                 randconfig-a002-20200422
i386                 randconfig-a001-20200422
x86_64               randconfig-a002-20200422
x86_64               randconfig-a001-20200424
i386                 randconfig-a003-20200424
x86_64               randconfig-a003-20200424
i386                 randconfig-a002-20200424
i386                 randconfig-a001-20200424
x86_64               randconfig-a002-20200424
i386                 randconfig-c002-20200424
i386                 randconfig-c001-20200424
x86_64               randconfig-c001-20200424
i386                 randconfig-c003-20200424
x86_64               randconfig-c003-20200424
i386                 randconfig-c002-20200425
i386                 randconfig-c001-20200425
x86_64               randconfig-c002-20200425
x86_64               randconfig-c001-20200425
i386                 randconfig-c003-20200425
x86_64               randconfig-c003-20200425
x86_64               randconfig-d001-20200424
i386                 randconfig-d002-20200424
i386                 randconfig-d001-20200424
x86_64               randconfig-d003-20200424
i386                 randconfig-d003-20200424
x86_64               randconfig-d002-20200426
i386                 randconfig-d002-20200426
i386                 randconfig-d001-20200426
i386                 randconfig-d003-20200426
x86_64               randconfig-a001-20200426
i386                 randconfig-a003-20200426
x86_64               randconfig-a003-20200426
i386                 randconfig-a002-20200426
i386                 randconfig-a001-20200426
x86_64               randconfig-a002-20200426
i386                 randconfig-e003-20200425
x86_64               randconfig-e002-20200425
x86_64               randconfig-e003-20200425
i386                 randconfig-e002-20200425
i386                 randconfig-e001-20200425
x86_64               randconfig-e001-20200425
i386                 randconfig-e003-20200426
x86_64               randconfig-e003-20200426
i386                 randconfig-e002-20200426
i386                 randconfig-e001-20200426
x86_64               randconfig-e001-20200426
i386                 randconfig-a003-20200423
i386                 randconfig-a001-20200423
i386                 randconfig-a002-20200423
x86_64               randconfig-a002-20200423
x86_64               randconfig-f002-20200424
i386                 randconfig-f002-20200424
i386                 randconfig-f003-20200424
x86_64               randconfig-f003-20200424
i386                 randconfig-f001-20200424
x86_64               randconfig-f001-20200424
i386                 randconfig-f002-20200425
i386                 randconfig-f003-20200425
x86_64               randconfig-f003-20200425
i386                 randconfig-f001-20200425
x86_64               randconfig-f001-20200425
x86_64               randconfig-f002-20200426
i386                 randconfig-f002-20200426
x86_64               randconfig-f003-20200426
i386                 randconfig-f003-20200426
i386                 randconfig-f001-20200426
x86_64               randconfig-f001-20200426
i386                 randconfig-g003-20200424
i386                 randconfig-g001-20200424
x86_64               randconfig-g001-20200424
x86_64               randconfig-g002-20200424
i386                 randconfig-g002-20200424
x86_64               randconfig-g003-20200424
i386                 randconfig-g003-20200426
i386                 randconfig-g001-20200426
x86_64               randconfig-g001-20200426
x86_64               randconfig-g002-20200426
i386                 randconfig-g002-20200426
x86_64               randconfig-g003-20200426
i386                 randconfig-h003-20200424
x86_64               randconfig-h001-20200424
x86_64               randconfig-h003-20200424
x86_64               randconfig-h002-20200424
i386                 randconfig-h001-20200424
i386                 randconfig-h002-20200424
i386                 randconfig-h003-20200426
x86_64               randconfig-h001-20200426
x86_64               randconfig-h003-20200426
x86_64               randconfig-h002-20200426
i386                 randconfig-h001-20200426
i386                 randconfig-h002-20200426
sparc                randconfig-a001-20200425
ia64                 randconfig-a001-20200425
powerpc              randconfig-a001-20200425
arm                  randconfig-a001-20200425
arc                  randconfig-a001-20200425
sparc                randconfig-a001-20200423
ia64                 randconfig-a001-20200423
arm                  randconfig-a001-20200423
arm64                randconfig-a001-20200423
arc                  randconfig-a001-20200423
sparc                randconfig-a001-20200424
ia64                 randconfig-a001-20200424
powerpc              randconfig-a001-20200424
arm64                randconfig-a001-20200424
arc                  randconfig-a001-20200424
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
s390                       zfcpdump_defconfig
s390                          debug_defconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                                defconfig
sh                          rsk7269_defconfig
sh                               allmodconfig
sh                            titan_defconfig
sh                                allnoconfig
sparc                               defconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
x86_64                                   rhel
x86_64                                    lkp
x86_64                              fedora-25
x86_64                                  kexec
x86_64                         rhel-7.2-clear
x86_64                    rhel-7.6-kselftests
x86_64                               rhel-7.6

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
