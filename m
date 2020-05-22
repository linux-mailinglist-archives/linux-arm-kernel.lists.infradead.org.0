Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8EA1DE1CE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 10:29:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kjQq+mDWxuDac7PtjZLyclzlktezU7wC6uZRNVO3O40=; b=IloVJx3SHR+kyj
	+9D18JzDJPwPoeV3DC2JQ+JyzwanVu7CVrnbGcCzXt9t/CInV8cGF5cdi2eRhAUkStv73ol63pURw
	9xQGWyGzj6t/kG90E9sgJJWUyMdDG1LxojR/w9RGRf7u33p3Te545P4l5pa3K18ifWy5nq0c3DfSQ
	970A+Ew1Fl4Zsi0ghmQ17m3lUyWXYFsT3t55eG0rSjxkRrq6J+V3i0/DM/AI7SWGy9qKbyR4a2UyS
	o2q4aKko9ZXIFIRwEQHQkj/DUHqTeinUHK2AK5WzAlkpdoh2ijq6r5sv1w30B0r3GmENY2DaOClgy
	BbXugwaErkv7NFMZgUiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc339-0005c1-Rr; Fri, 22 May 2020 08:29:03 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc31g-0004Vi-Rd
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 08:27:35 +0000
IronPort-SDR: GV/I8zyVQoP+kpikz4Y0jmyo8Pyj0aNvNxhbzfsjleit1RHBYfMV4WE578t4GQTTMUF7MntG/V
 cY8nrD0j3pVg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2020 01:27:31 -0700
IronPort-SDR: Wdylbh7ymAD20S/Uz00m29cI64UXI/pnuD24O+D+u8pxAlMRPyrv9HKI86R6dfWH+nCBBV+DI8
 zP+p9N9x8rlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,421,1583222400"; d="scan'208";a="467108944"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 22 May 2020 01:27:30 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jc31d-0001IP-PI; Fri, 22 May 2020 16:27:29 +0800
Date: Fri, 22 May 2020 16:27:25 +0800
From: kbuild test robot <lkp@intel.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: [soc:sunxi/dt] BUILD SUCCESS b3a0a2f910c7ae29074415e07f8d830935df19e2
Message-ID: <5ec78ced.hnL4fGL7DdO/aOYT%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_012732_908442_18F80B4E 
X-CRM114-Status: UNSURE (   6.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git  sunxi/dt
branch HEAD: b3a0a2f910c7ae29074415e07f8d830935df19e2  arm64: dts: allwinner: h6: Add IOMMU

elapsed time: 9958m

configs tested: 321
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
c6x                        evmc6457_defconfig
arm                           corgi_defconfig
mips                     cu1000-neo_defconfig
arm                          ixp4xx_defconfig
arm                            mps2_defconfig
arm                     davinci_all_defconfig
mips                         db1xxx_defconfig
arm64                            alldefconfig
sh                           sh2007_defconfig
arm                           sama5_defconfig
arm                        realview_defconfig
arm                       spear13xx_defconfig
powerpc                      chrp32_defconfig
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
arc                                 defconfig
arm                        shmobile_defconfig
m68k                       m5208evb_defconfig
sparc64                          allmodconfig
mips                          lasat_defconfig
arm                         hackkit_defconfig
mips                            e55_defconfig
sh                                allnoconfig
mips                          malta_defconfig
arm                         assabet_defconfig
arm                          exynos_defconfig
m68k                                defconfig
arm                           h3600_defconfig
ia64                              allnoconfig
mips                      loongson3_defconfig
sparc64                          allyesconfig
arm                              zx_defconfig
i386                              allnoconfig
mips                malta_kvm_guest_defconfig
xtensa                    xip_kc705_defconfig
mips                 pnx8335_stb225_defconfig
xtensa                              defconfig
ia64                             allyesconfig
powerpc                         ps3_defconfig
sparc64                             defconfig
arm                        keystone_defconfig
m68k                        m5272c3_defconfig
parisc                           allyesconfig
mips                     decstation_defconfig
arm                          iop32x_defconfig
mips                       lemote2f_defconfig
powerpc                             defconfig
powerpc                  storcenter_defconfig
m68k                        stmark2_defconfig
arm                         lpc18xx_defconfig
arm                       cns3420vb_defconfig
riscv                    nommu_virt_defconfig
microblaze                    nommu_defconfig
sh                          r7780mp_defconfig
arm                          pcm027_defconfig
powerpc                       ppc64_defconfig
h8300                       h8s-sim_defconfig
sh                         ecovec24_defconfig
sh                           se7721_defconfig
mips                   sb1250_swarm_defconfig
sh                           se7712_defconfig
powerpc                    amigaone_defconfig
mips                           mtx1_defconfig
parisc                generic-64bit_defconfig
c6x                         dsk6455_defconfig
arm                         axm55xx_defconfig
parisc                            allnoconfig
m68k                        m5307c3_defconfig
mips                        nlm_xlr_defconfig
sh                            migor_defconfig
powerpc                     mpc512x_defconfig
nds32                               defconfig
arm                          moxart_defconfig
um                               allyesconfig
mips                          rb532_defconfig
arm                          imote2_defconfig
i386                                defconfig
i386                              debian-10.3
i386                             allyesconfig
ia64                             allmodconfig
ia64                                defconfig
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
arc                              allyesconfig
sh                               allmodconfig
microblaze                        allnoconfig
mips                              allnoconfig
mips                             allmodconfig
parisc                           allmodconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                           allnoconfig
x86_64               randconfig-a005-20200515
x86_64               randconfig-a003-20200515
x86_64               randconfig-a006-20200515
x86_64               randconfig-a004-20200515
x86_64               randconfig-a001-20200515
x86_64               randconfig-a002-20200515
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
i386                 randconfig-a001-20200521
i386                 randconfig-a004-20200521
i386                 randconfig-a006-20200521
i386                 randconfig-a003-20200521
i386                 randconfig-a002-20200521
i386                 randconfig-a005-20200521
i386                 randconfig-a006-20200516
i386                 randconfig-a005-20200516
i386                 randconfig-a003-20200516
i386                 randconfig-a001-20200516
i386                 randconfig-a004-20200516
i386                 randconfig-a002-20200516
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
x86_64               randconfig-a015-20200522
x86_64               randconfig-a013-20200522
x86_64               randconfig-a016-20200522
x86_64               randconfig-a012-20200522
x86_64               randconfig-a014-20200522
x86_64               randconfig-a011-20200522
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
i386                 randconfig-a012-20200519
i386                 randconfig-a014-20200519
i386                 randconfig-a016-20200519
i386                 randconfig-a011-20200519
i386                 randconfig-a015-20200519
i386                 randconfig-a013-20200519
i386                 randconfig-a013-20200521
i386                 randconfig-a012-20200521
i386                 randconfig-a015-20200521
i386                 randconfig-a011-20200521
i386                 randconfig-a016-20200521
i386                 randconfig-a014-20200521
x86_64               randconfig-a002-20200521
x86_64               randconfig-a006-20200521
x86_64               randconfig-a005-20200521
x86_64               randconfig-a004-20200521
x86_64               randconfig-a003-20200521
x86_64               randconfig-a001-20200521
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
