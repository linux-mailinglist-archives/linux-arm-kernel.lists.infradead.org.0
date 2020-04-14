Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 557371A87D4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:44:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ND9Gs70Zzic7cA183/W3AqzE6A/jYTSISBE1gGmqkU4=; b=Bm/lPsfqRdlhZc
	xdXgemNasw0wgzX5c8dBTdf1V62KQVDMCiPDSns8AMIT+4Ql/9JZFyjalsXhIAH/nZ7cFMHnh7KH+
	UoFrWCc4fVoym1YYATrpCvQGbrB41N9dpCJE353VaM1zFAUfpJ8PBdkLIx8S+ET4F7sfYPAkgqKWy
	1PKfdStWZVM1mBxBBgofYIQI/ciCaSEM0fGd4QQMpuAwVD4Ro8m03RkNfTTYuRUTvzJDzmDvMdfhG
	ya4/5ENXBIOrTvz/6j6pOQWMLbY6yV92sRhkUG5KzSHF5jxzqsIwhb0cDB6MSB+sqrjhflDazakiT
	V5o1pMFSfEvrh6lu+jpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOPbq-0005Ec-9R; Tue, 14 Apr 2020 17:44:30 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOPbJ-0004qV-1L
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 17:43:59 +0000
IronPort-SDR: k3CdnVtq68VtMKei6NgwcMJ2H/CI6e2KgbjnaYDbhgbnfgUnonrxWpskeiEYmYPFLMhrKzP/Io
 t+Nx+PHTApjQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 10:43:54 -0700
IronPort-SDR: MFpwAelBKPE6kFSS1JyQ+vGiXp9whUCSNfdKtCXyyd3PpMriEBiPzS4FfAoiBaSJTyaZBpo/ll
 DUmFH/U/r8Hw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,383,1580803200"; d="scan'208";a="243882447"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 14 Apr 2020 10:43:53 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jOPbE-000DRG-PE; Wed, 15 Apr 2020 01:43:52 +0800
Date: Wed, 15 Apr 2020 01:42:43 +0800
From: kbuild test robot <lkp@intel.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [stericsson:ux500-dts] BUILD SUCCESS
 2ae6193a1b95a128d040f0181d592bbf2705407b
Message-ID: <5e95f613.3z1EtplmHxLfFbf5%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_104357_585091_B758AF8E 
X-CRM114-Status: UNSURE (   6.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-stericsson.git  ux500-dts
branch HEAD: 2ae6193a1b95a128d040f0181d592bbf2705407b  ARM: dts: ux500: samsung-golden: Add proximity sensor

elapsed time: 483m

configs tested: 161
configs skipped: 122

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
mips                      malta_kvm_defconfig
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
