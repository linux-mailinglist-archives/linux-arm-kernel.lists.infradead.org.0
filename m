Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA311DE55C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 13:29:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q8MPmO7hTL5Mf7woUEeDYrEfPQ0hXJrlaZRK9KAlDxs=; b=rlVjsq8NAePaPN
	bRvvTTCjZ0koNBZlJ4/QKGO6yKcvzXvReP6iDAjdul9RG8Qk8uTM0cniRieiOiEwPyc2NaxUGYoal
	Q/XvfDTu1xXrZE/c3a3Pm5p0Iezi0SqbbMh+0nt1ETdPRjz0WV7XQh5w5oVqypjLizIihH4AQanu/
	yXxhf4jWggDs4Zr3ZynxrsVqiNV21l9K6Uq6Gy5e3KGCSkiP0XbZ0hO5JkHCu0CuqUfK6UgXrlxM2
	084j/Aq5WC/ULcIk+euzK0+CzqOtlES36H1iGdTKwHYlO53KA84UrURU5E+1DTA9STt/bKkjbmZIL
	W6nQpVjUcSScVoaizsZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc5rZ-0003eD-6I; Fri, 22 May 2020 11:29:17 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc5rO-0003dm-8E
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 11:29:08 +0000
IronPort-SDR: Gej3E/mw2Q+J8d2/Eohj59E0s4xd+jl+WjWKvVofeclZkmbi33MMQtov2hxPtEQazjJAes55Pl
 td/0GwZmhHIw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2020 04:29:00 -0700
IronPort-SDR: EIsJvsxcnOcEXPh6akajhGTvaiww1vKmqKQ7Qcj3KnbZCkvJk2i/1b39RdDU9kIEM0g0DXdHoK
 /8oh7yu1Yr7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,421,1583222400"; d="scan'208";a="268976041"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 22 May 2020 04:28:53 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jc5rB-000DsA-2I; Fri, 22 May 2020 19:28:53 +0800
Date: Fri, 22 May 2020 19:28:04 +0800
From: kbuild test robot <lkp@intel.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: [soc:mediatek/dt] BUILD REGRESSION
 189881af810d452b592ee958db43eb4c57df9803
Message-ID: <5ec7b744.ZcxrA/L/3+XSTqYO%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_042906_317181_1339D760 
X-CRM114-Status: UNSURE (   6.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git  mediatek/dt
branch HEAD: 189881af810d452b592ee958db43eb4c57df9803  arm: dts: mt2701: Add usb2 device nodes

Error/Warning in current branch:

ERROR: Input tree has errors, aborting (use -f to force output)

Error/Warning ids grouped by kconfigs:

recent_errors
`-- arm-randconfig-r035-20200520
    `-- ERROR:Input-tree-has-errors-aborting-(use-f-to-force-output)

elapsed time: 7969m

configs tested: 274
configs skipped: 59

arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                               allnoconfig
arm64                            allyesconfig
arm64                               defconfig
arm64                            allmodconfig
arm64                             allnoconfig
sparc                            allyesconfig
mips                             allyesconfig
m68k                             allyesconfig
sh                             sh03_defconfig
arm                         vf610m4_defconfig
h8300                               defconfig
m68k                          hp300_defconfig
powerpc                     pq2fads_defconfig
parisc                           alldefconfig
sh                   sh7770_generic_defconfig
arm                        mvebu_v7_defconfig
arm                            u300_defconfig
mips                  cavium_octeon_defconfig
microblaze                          defconfig
powerpc64                        alldefconfig
arm                      integrator_defconfig
arc                     nsimosci_hs_defconfig
powerpc                     mpc5200_defconfig
arm                        clps711x_defconfig
mips                           xway_defconfig
mips                        maltaup_defconfig
arm                            hisi_defconfig
um                                  defconfig
arm                     davinci_all_defconfig
sh                          r7780mp_defconfig
arm                           sunxi_defconfig
arm                            mmp2_defconfig
mips                     loongson1c_defconfig
arm                          ep93xx_defconfig
arc                        nsimosci_defconfig
um                                allnoconfig
sh                   secureedge5410_defconfig
sh                        apsh4ad0a_defconfig
powerpc                          allmodconfig
s390                          debug_defconfig
sh                         ap325rxa_defconfig
c6x                                 defconfig
h8300                    h8300h-sim_defconfig
arc                      axs103_smp_defconfig
mips                        qi_lb60_defconfig
ia64                         bigsur_defconfig
openrisc                    or1ksim_defconfig
sh                          lboxre2_defconfig
powerpc                      chrp32_defconfig
sh                          polaris_defconfig
c6x                        evmc6457_defconfig
arm                           corgi_defconfig
mips                     cu1000-neo_defconfig
arm                          ixp4xx_defconfig
arm                            mps2_defconfig
sh                         microdev_defconfig
mips                              allnoconfig
arm                          exynos_defconfig
mips                         db1xxx_defconfig
arm64                            alldefconfig
sh                           sh2007_defconfig
arm                         bcm2835_defconfig
sparc                       sparc32_defconfig
ia64                             alldefconfig
sh                         ecovec24_defconfig
arm                         shannon_defconfig
riscv                    nommu_k210_defconfig
powerpc                      ppc64e_defconfig
parisc                generic-32bit_defconfig
arc                              alldefconfig
sh                     sh7710voipgw_defconfig
arm                            pleb_defconfig
h8300                            alldefconfig
microblaze                      mmu_defconfig
powerpc                      ppc44x_defconfig
mips                         tb0219_defconfig
parisc                              defconfig
s390                             allyesconfig
m68k                        m5307c3_defconfig
mips                           mtx1_defconfig
arm                         mv78xx0_defconfig
arm                        oxnas_v6_defconfig
arc                        vdk_hs38_defconfig
sh                           se7751_defconfig
arm                       netwinder_defconfig
arm                          iop32x_defconfig
mips                          ath25_defconfig
arm                             pxa_defconfig
arm                        mini2440_defconfig
alpha                               defconfig
mips                          malta_defconfig
arm                         assabet_defconfig
m68k                                defconfig
arm                           h3600_defconfig
ia64                              allnoconfig
mips                      loongson3_defconfig
mips                malta_kvm_guest_defconfig
arc                            hsdk_defconfig
arc                           tb10x_defconfig
powerpc                           allnoconfig
sh                          sdk7786_defconfig
arm                           u8500_defconfig
sparc64                          allyesconfig
mips                          lasat_defconfig
mips                         tb0287_defconfig
powerpc                      mgcoge_defconfig
um                           x86_64_defconfig
powerpc                  storcenter_defconfig
sh                            shmin_defconfig
powerpc                         ps3_defconfig
sparc64                             defconfig
arm                        keystone_defconfig
m68k                        m5272c3_defconfig
parisc                           allyesconfig
mips                     decstation_defconfig
mips                       lemote2f_defconfig
powerpc                      tqm8xx_defconfig
arm                        shmobile_defconfig
arm                           stm32_defconfig
powerpc                       holly_defconfig
mips                         tb0226_defconfig
mips                         rt305x_defconfig
sh                           se7750_defconfig
arm                         s3c6400_defconfig
arm                          pcm027_defconfig
powerpc                       ppc64_defconfig
h8300                       h8s-sim_defconfig
m68k                       m5208evb_defconfig
sh                           se7721_defconfig
mips                   sb1250_swarm_defconfig
powerpc                    amigaone_defconfig
parisc                generic-64bit_defconfig
c6x                         dsk6455_defconfig
arm                        multi_v5_defconfig
xtensa                           alldefconfig
arm                       spear13xx_defconfig
sh                   rts7751r2dplus_defconfig
mips                        nlm_xlr_defconfig
sh                            migor_defconfig
powerpc                     mpc512x_defconfig
nds32                               defconfig
arm                          moxart_defconfig
um                               allyesconfig
mips                          rb532_defconfig
arm                          imote2_defconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                              allnoconfig
m68k                           sun3_defconfig
nios2                               defconfig
nios2                            allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
c6x                               allnoconfig
openrisc                         allyesconfig
nds32                             allnoconfig
csky                             allyesconfig
csky                                defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
xtensa                              defconfig
arc                                 defconfig
arc                              allyesconfig
sh                               allmodconfig
sh                                allnoconfig
microblaze                        allnoconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                           allmodconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                             defconfig
x86_64               randconfig-a005-20200517
x86_64               randconfig-a003-20200517
x86_64               randconfig-a006-20200517
x86_64               randconfig-a004-20200517
x86_64               randconfig-a001-20200517
x86_64               randconfig-a002-20200517
i386                 randconfig-a006-20200518
i386                 randconfig-a005-20200518
i386                 randconfig-a001-20200518
i386                 randconfig-a003-20200518
i386                 randconfig-a004-20200518
i386                 randconfig-a002-20200518
i386                 randconfig-a006-20200519
i386                 randconfig-a005-20200519
i386                 randconfig-a001-20200519
i386                 randconfig-a003-20200519
i386                 randconfig-a004-20200519
i386                 randconfig-a002-20200519
i386                 randconfig-a006-20200517
i386                 randconfig-a005-20200517
i386                 randconfig-a003-20200517
i386                 randconfig-a001-20200517
i386                 randconfig-a004-20200517
i386                 randconfig-a002-20200517
i386                 randconfig-a001-20200520
i386                 randconfig-a004-20200520
i386                 randconfig-a006-20200520
i386                 randconfig-a003-20200520
i386                 randconfig-a002-20200520
i386                 randconfig-a005-20200520
x86_64               randconfig-a003-20200519
x86_64               randconfig-a005-20200519
x86_64               randconfig-a004-20200519
x86_64               randconfig-a006-20200519
x86_64               randconfig-a002-20200519
x86_64               randconfig-a001-20200519
x86_64               randconfig-a016-20200518
x86_64               randconfig-a012-20200518
x86_64               randconfig-a015-20200518
x86_64               randconfig-a013-20200518
x86_64               randconfig-a011-20200518
x86_64               randconfig-a014-20200518
x86_64               randconfig-a013-20200520
x86_64               randconfig-a015-20200520
x86_64               randconfig-a016-20200520
x86_64               randconfig-a012-20200520
x86_64               randconfig-a014-20200520
x86_64               randconfig-a011-20200520
i386                 randconfig-a012-20200518
i386                 randconfig-a014-20200518
i386                 randconfig-a016-20200518
i386                 randconfig-a011-20200518
i386                 randconfig-a015-20200518
i386                 randconfig-a013-20200518
i386                 randconfig-a012-20200517
i386                 randconfig-a016-20200517
i386                 randconfig-a014-20200517
i386                 randconfig-a011-20200517
i386                 randconfig-a013-20200517
i386                 randconfig-a015-20200517
i386                 randconfig-a012-20200519
i386                 randconfig-a014-20200519
i386                 randconfig-a016-20200519
i386                 randconfig-a011-20200519
i386                 randconfig-a015-20200519
i386                 randconfig-a013-20200519
i386                 randconfig-a013-20200520
i386                 randconfig-a012-20200520
i386                 randconfig-a015-20200520
i386                 randconfig-a011-20200520
i386                 randconfig-a016-20200520
i386                 randconfig-a014-20200520
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                              allnoconfig
s390                             allmodconfig
s390                                defconfig
x86_64                              defconfig
sparc                               defconfig
sparc64                           allnoconfig
sparc64                          allmodconfig
um                               allmodconfig
x86_64                    rhel-7.6-kselftests
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
