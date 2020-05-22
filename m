Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0751F1DE1D0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 10:29:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V+qIQRGIOWWf6Ym60KgJKZiJiwHxDwter7r0Teoy6V0=; b=uWs54PnoJ0HpEL
	Gr+NpEIv9R9FFcvloXCmiwOfniP+ttKdUN0GETRsmiiPP4Fz2EHLefBLUhNseo6uSLGdBnpYbAUOU
	lbXSgm2ef9/mw6ckH7gh4dkaDLoa6smrEBeJzFe0Rg5J7B9/GDE6gBkGH3BlsOpuVenz3V924Mgb6
	G9Kz3XidAbimCQoopSprOGnPrp7vkzEYDokaLLQ0psSMjsbYJFs1/V7Rq96HXx8LwoyMVXRooqrVA
	W3ypIFSLE7/s6/LxEtNkuzOMB2QCd3yt4wfq1GPr96bhP/qcwhRYpo2TnSoM4ew0OG2R3lmAX/Tmo
	eDYJ8cWJxogwpvUyYoTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc33S-0005oY-FY; Fri, 22 May 2020 08:29:22 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc31f-0004Vn-Gn
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 08:27:35 +0000
IronPort-SDR: n6T9iEjo3KXoXN/e3DfiMuAHd9XkXgpacxtQG58IJs4vJcl+6/1mTjTqJpTdpco+h2qBSRReW6
 Xp4QSyJ3Rksg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2020 01:27:30 -0700
IronPort-SDR: /z/niQVQzinZCV2yj+Ejgvi2NoHPr6xrLPaoNPhMB4scsDe5vQWQ18C/j9PsYg3PCExu2e3EGF
 HE/XKITfRU0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,421,1583222400"; d="scan'208";a="309316289"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 22 May 2020 01:27:28 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jc31c-00010J-2o; Fri, 22 May 2020 16:27:28 +0800
Date: Fri, 22 May 2020 16:27:13 +0800
From: kbuild test robot <lkp@intel.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: [soc:mediatek/dt64] BUILD SUCCESS
 f0e5405b9ebf084c34c41f5d38a0013bee166f4d
Message-ID: <5ec78ce1.nwxHfTmHC3aejQpq%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_012731_656530_464645EC 
X-CRM114-Status: UNSURE (   6.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git  mediatek/dt64
branch HEAD: f0e5405b9ebf084c34c41f5d38a0013bee166f4d  arm64: dts: mt8173: Add capacity-dmips-mhz attributes

elapsed time: 8029m

configs tested: 284
configs skipped: 57

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
s390                                defconfig
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
arm                         lpc32xx_defconfig
mips                 decstation_r4k_defconfig
m68k                        stmark2_defconfig
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
s390                       zfcpdump_defconfig
c6x                        evmc6678_defconfig
powerpc                mpc7448_hpc2_defconfig
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
arm                    vt8500_v6_v7_defconfig
mips                        workpad_defconfig
m68k                        m5272c3_defconfig
mips                         tb0287_defconfig
powerpc                      mgcoge_defconfig
um                           x86_64_defconfig
powerpc                  storcenter_defconfig
sh                            shmin_defconfig
xtensa                    xip_kc705_defconfig
mips                 pnx8335_stb225_defconfig
xtensa                              defconfig
ia64                             allyesconfig
powerpc                         ps3_defconfig
sparc64                             defconfig
arm                        keystone_defconfig
parisc                           allyesconfig
mips                     decstation_defconfig
mips                       lemote2f_defconfig
m68k                            q40_defconfig
powerpc                 mpc8272_ads_defconfig
mips                           ip32_defconfig
arm                         orion5x_defconfig
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
sh                           sh2007_defconfig
arm                              zx_defconfig
arm                        mvebu_v5_defconfig
arc                        nsim_700_defconfig
sh                        sh7757lcr_defconfig
parisc                            allnoconfig
mips                    maltaup_xpa_defconfig
mips                      malta_kvm_defconfig
mips                          ath79_defconfig
openrisc                 simple_smp_defconfig
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
m68k                             allmodconfig
m68k                              allnoconfig
m68k                           sun3_defconfig
nios2                               defconfig
c6x                              allyesconfig
nios2                            allyesconfig
openrisc                            defconfig
c6x                               allnoconfig
openrisc                         allyesconfig
nds32                             allnoconfig
csky                             allyesconfig
csky                                defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
arc                                 defconfig
arc                              allyesconfig
sh                               allmodconfig
sh                                allnoconfig
microblaze                        allnoconfig
mips                             allmodconfig
parisc                           allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
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
i386                 randconfig-a001-20200521
i386                 randconfig-a004-20200521
i386                 randconfig-a006-20200521
i386                 randconfig-a003-20200521
i386                 randconfig-a002-20200521
i386                 randconfig-a005-20200521
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
