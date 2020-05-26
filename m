Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED5F1E2B61
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 21:05:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LnT+tTNMKi7nm4SPDxIDDwljdMyxbr8R5fU4wBMX6DI=; b=SRKaG96O7bHE5R
	efLGLn07koAXK+huXBXcgLXtv4vApEkc8qvkSJSsGJVcqZEmdAyelwKHMwVjqAF6miswzsylVVRBK
	WHD/Q83yZqDPrtcit0qCOt7RWvxIvDzkiOH8BsyiRsyGnSTbKuUJzu40Mpgd993fDA3g9JDOV+fyA
	DlDQKkkIrFLHEVk5Evx4ho250V2sh1WywfZgzMyCr+agZXcmApD9A6nD7AjTVNbVZ2pHAmtYoBUZo
	K9SlgGrAeKqbB90Ufq6qzzs96NC4O29jqdINs20ZsCLx2L2wXz3fGPqOPJk0cqkK6jbKFq5/UvQSI
	ILqtBNPaglTLvke1Zi5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdet4-0005ge-5H; Tue, 26 May 2020 19:05:18 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdesl-0005UN-Py
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 19:05:01 +0000
IronPort-SDR: a+9WufrVbzCDL9Jpjrd6u14JvmwlYLYnw1kPyIrbrNToNQJvm9RNiXk/HQ+YKkYf9tOYZxytn5
 6ubncVrOuoSg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 12:04:56 -0700
IronPort-SDR: s3G3FxvQ0ajGlqKDQq7ksNhGhpFaOwtrkguR8zd0Ggz08pEHCM4UoiHP2Bb1fZBxi+tq1ZLba8
 x1i9mFjZ2WOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,437,1583222400"; d="scan'208";a="310341156"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 26 May 2020 12:04:54 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jdesg-0006yk-8K; Wed, 27 May 2020 03:04:54 +0800
Date: Wed, 27 May 2020 03:04:45 +0800
From: kbuild test robot <lkp@intel.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: [soc:arm/soc] BUILD SUCCESS 9d281a4f6fd61341da2fd08bf0b9449ed72b40e3
Message-ID: <5ecd684d.SJn6oZmRvN/yeK0G%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_120459_888975_6889112B 
X-CRM114-Status: UNSURE (   6.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git  arm/soc
branch HEAD: 9d281a4f6fd61341da2fd08bf0b9449ed72b40e3  ARM: socfpga: Drop unneeded select of PCI_DOMAINS_GENERIC

elapsed time: 15615m

configs tested: 381
configs skipped: 24

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                               allnoconfig
arm64                            allyesconfig
arm64                               defconfig
arm64                            allmodconfig
arm64                             allnoconfig
mips                             allyesconfig
m68k                             allyesconfig
sparc                            allyesconfig
sh                             sh03_defconfig
arm                         vf610m4_defconfig
h8300                               defconfig
m68k                          hp300_defconfig
powerpc                     pq2fads_defconfig
parisc                           alldefconfig
sh                   sh7770_generic_defconfig
arm                        mvebu_v7_defconfig
arm                            u300_defconfig
arm                           u8500_defconfig
arm                           spitz_defconfig
microblaze                          defconfig
mips                  cavium_octeon_defconfig
powerpc64                        alldefconfig
arm                      integrator_defconfig
arc                     nsimosci_hs_defconfig
s390                                defconfig
arm                         at91_dt_defconfig
sh                          sdk7786_defconfig
powerpc                    gamecube_defconfig
ia64                         bigsur_defconfig
sh                        sh7757lcr_defconfig
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
arm                         lpc32xx_defconfig
mips                 decstation_r4k_defconfig
m68k                        stmark2_defconfig
arm                           sama5_defconfig
arm                        realview_defconfig
arm                       spear13xx_defconfig
xtensa                         virt_defconfig
mips                malta_qemu_32r6_defconfig
powerpc                      pmac32_defconfig
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
c6x                        evmc6678_defconfig
parisc                              defconfig
mips                         tb0219_defconfig
s390                             allyesconfig
arm                           omap1_defconfig
arm                         lubbock_defconfig
arm                          badge4_defconfig
sh                           se7705_defconfig
sh                           se7724_defconfig
powerpc                          g5_defconfig
arm                           tegra_defconfig
powerpc                         ps3_defconfig
arm                         bcm2835_defconfig
arm                         hackkit_defconfig
mips                            e55_defconfig
sh                                allnoconfig
mips                          malta_defconfig
arm                         assabet_defconfig
m68k                                defconfig
arm                           h3600_defconfig
ia64                              allnoconfig
mips                      loongson3_defconfig
sh                           se7722_defconfig
arc                        vdk_hs38_defconfig
arm                          gemini_defconfig
sparc64                          allyesconfig
mips                          lasat_defconfig
mips                         tb0287_defconfig
powerpc                      mgcoge_defconfig
um                           x86_64_defconfig
powerpc                  storcenter_defconfig
sh                            shmin_defconfig
arm                              zx_defconfig
i386                              allnoconfig
sparc64                             defconfig
arm                        keystone_defconfig
m68k                        m5272c3_defconfig
parisc                           allyesconfig
mips                     decstation_defconfig
arm                          iop32x_defconfig
mips                       lemote2f_defconfig
m68k                            q40_defconfig
powerpc                 mpc8272_ads_defconfig
mips                           ip32_defconfig
arm                         orion5x_defconfig
powerpc                             defconfig
arm                         lpc18xx_defconfig
arm                       cns3420vb_defconfig
riscv                    nommu_virt_defconfig
microblaze                    nommu_defconfig
arm                        shmobile_defconfig
arm                          pcm027_defconfig
powerpc                       ppc64_defconfig
h8300                       h8s-sim_defconfig
m68k                       m5208evb_defconfig
sh                         ecovec24_defconfig
sh                           se7721_defconfig
mips                   sb1250_swarm_defconfig
sh                           se7712_defconfig
powerpc                    amigaone_defconfig
mips                           mtx1_defconfig
parisc                generic-64bit_defconfig
c6x                         dsk6455_defconfig
arm                         s3c6400_defconfig
arm                        mvebu_v5_defconfig
arc                        nsim_700_defconfig
parisc                            allnoconfig
mips                    maltaup_xpa_defconfig
arm                         axm55xx_defconfig
m68k                        m5307c3_defconfig
mips                        nlm_xlr_defconfig
sh                            migor_defconfig
powerpc                     mpc512x_defconfig
nds32                               defconfig
arm                          moxart_defconfig
um                               allyesconfig
mips                          rb532_defconfig
arm                          imote2_defconfig
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
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
xtensa                              defconfig
arc                                 defconfig
arc                              allyesconfig
sh                               allmodconfig
microblaze                        allnoconfig
mips                             allmodconfig
parisc                           allmodconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                           allnoconfig
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
i386                 randconfig-a001-20200521
i386                 randconfig-a004-20200521
i386                 randconfig-a006-20200521
i386                 randconfig-a003-20200521
i386                 randconfig-a002-20200521
i386                 randconfig-a005-20200521
i386                 randconfig-a006-20200515
i386                 randconfig-a005-20200515
i386                 randconfig-a003-20200515
i386                 randconfig-a001-20200515
i386                 randconfig-a004-20200515
i386                 randconfig-a002-20200515
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
i386                 randconfig-a001-20200526
i386                 randconfig-a004-20200526
i386                 randconfig-a003-20200526
i386                 randconfig-a002-20200526
i386                 randconfig-a005-20200526
i386                 randconfig-a006-20200526
i386                 randconfig-a006-20200516
i386                 randconfig-a005-20200516
i386                 randconfig-a003-20200516
i386                 randconfig-a001-20200516
i386                 randconfig-a004-20200516
i386                 randconfig-a002-20200516
i386                 randconfig-a001-20200524
i386                 randconfig-a004-20200524
i386                 randconfig-a006-20200524
i386                 randconfig-a003-20200524
i386                 randconfig-a002-20200524
i386                 randconfig-a005-20200524
x86_64               randconfig-a005-20200515
x86_64               randconfig-a003-20200515
x86_64               randconfig-a006-20200515
x86_64               randconfig-a004-20200515
x86_64               randconfig-a001-20200515
x86_64               randconfig-a002-20200515
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
x86_64               randconfig-a015-20200526
x86_64               randconfig-a013-20200526
x86_64               randconfig-a016-20200526
x86_64               randconfig-a012-20200526
x86_64               randconfig-a014-20200526
x86_64               randconfig-a011-20200526
x86_64               randconfig-a013-20200524
x86_64               randconfig-a015-20200524
x86_64               randconfig-a016-20200524
x86_64               randconfig-a012-20200524
x86_64               randconfig-a014-20200524
x86_64               randconfig-a011-20200524
x86_64               randconfig-a015-20200522
x86_64               randconfig-a013-20200522
x86_64               randconfig-a016-20200522
x86_64               randconfig-a012-20200522
x86_64               randconfig-a014-20200522
x86_64               randconfig-a011-20200522
x86_64               randconfig-a002-20200521
x86_64               randconfig-a006-20200521
x86_64               randconfig-a005-20200521
x86_64               randconfig-a004-20200521
x86_64               randconfig-a003-20200521
x86_64               randconfig-a001-20200521
i386                 randconfig-a012-20200515
i386                 randconfig-a016-20200515
i386                 randconfig-a014-20200515
i386                 randconfig-a011-20200515
i386                 randconfig-a013-20200515
i386                 randconfig-a015-20200515
i386                 randconfig-a012-20200517
i386                 randconfig-a016-20200517
i386                 randconfig-a014-20200517
i386                 randconfig-a011-20200517
i386                 randconfig-a013-20200517
i386                 randconfig-a015-20200517
i386                 randconfig-a012-20200518
i386                 randconfig-a014-20200518
i386                 randconfig-a016-20200518
i386                 randconfig-a011-20200518
i386                 randconfig-a015-20200518
i386                 randconfig-a013-20200518
i386                 randconfig-a013-20200520
i386                 randconfig-a012-20200520
i386                 randconfig-a015-20200520
i386                 randconfig-a011-20200520
i386                 randconfig-a016-20200520
i386                 randconfig-a014-20200520
i386                 randconfig-a013-20200522
i386                 randconfig-a012-20200522
i386                 randconfig-a015-20200522
i386                 randconfig-a011-20200522
i386                 randconfig-a016-20200522
i386                 randconfig-a014-20200522
i386                 randconfig-a012-20200519
i386                 randconfig-a014-20200519
i386                 randconfig-a016-20200519
i386                 randconfig-a011-20200519
i386                 randconfig-a015-20200519
i386                 randconfig-a013-20200519
i386                 randconfig-a013-20200526
i386                 randconfig-a015-20200526
i386                 randconfig-a012-20200526
i386                 randconfig-a011-20200526
i386                 randconfig-a016-20200526
i386                 randconfig-a014-20200526
i386                 randconfig-a013-20200521
i386                 randconfig-a012-20200521
i386                 randconfig-a015-20200521
i386                 randconfig-a011-20200521
i386                 randconfig-a016-20200521
i386                 randconfig-a014-20200521
i386                 randconfig-a013-20200524
i386                 randconfig-a015-20200524
i386                 randconfig-a012-20200524
i386                 randconfig-a011-20200524
i386                 randconfig-a016-20200524
i386                 randconfig-a014-20200524
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                              allnoconfig
s390                             allmodconfig
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
