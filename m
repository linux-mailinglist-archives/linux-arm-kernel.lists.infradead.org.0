Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 232241DE67C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 14:15:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SExlRiDWd51e3FdbHMw45n7snJexE8Q/NGfl1SKXsOw=; b=SjdOAwBpwzjveK
	D8WdyZfjWmyCsP3efDCXDMKWeB+Vp+/AYVQKSh+NmDcRqR1WvReo2x4eeM77r8pzDgm9lQOYPe4y3
	4F1Xyuc6IIcjOw+Mxry6AvDmuHeAFO5eoEVP5q/MydfCQLNNXnFpNWvBMalsAPoH6zrnMLB81qYmR
	FKDzxtQWOOY2ny9PtcDijcRh8BEiGZcqcEl7iqNXD4x1EDFkzn4fRqGyao75/7AnU5/3VU1NHFfmW
	aNbj3vronGopKruLtVaKANYMWb7Fu3TgTmRIyxdWhsDiOhJId2+WKIwc3N7y9BW1joFb4U6l82JKw
	/lbdSGITmn31O9RQbtRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc6Zm-0002rd-Tc; Fri, 22 May 2020 12:14:58 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc6Z9-0002Rf-Dy
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 12:14:22 +0000
IronPort-SDR: djt1zXtcpeBlSPMRF0Q1/4nmLI2Rel1n7dJfoquSKrbhXTitFHWXC0KnzGJiiN3EVrhixlLR4Z
 INKSYDxY/HQQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2020 05:14:18 -0700
IronPort-SDR: 3h+Od8E6QvX3LeDCGQEFHs07M/gSKdY1aYM/iXnSzTsOaGxYdPK3jTp7dIyOSpwxMywAfc2AMN
 gPH/eWhqAePw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,421,1583222400"; d="scan'208";a="467164065"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 22 May 2020 05:14:17 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jc6Z6-0003SR-G0; Fri, 22 May 2020 20:14:16 +0800
Date: Fri, 22 May 2020 20:13:53 +0800
From: kbuild test robot <lkp@intel.com>
To: Wei Xu <xuwei5@hisilicon.com>
Subject: [soc:hisi/defconfig] BUILD SUCCESS
 528443e32a3d53000d30bb8be04a382b04e57470
Message-ID: <5ec7c201.0YMPG1uUS/Q6+cFt%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_051419_493187_E21386E7 
X-CRM114-Status: UNSURE (   6.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git  hisi/defconfig
branch HEAD: 528443e32a3d53000d30bb8be04a382b04e57470  arm64: defconfig: Enable UACCE/PCI PASID/SEC2/HPRE configs

elapsed time: 10705m

configs tested: 335
configs skipped: 147

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
arc                        vdk_hs38_defconfig
sh                           se7751_defconfig
arm                       netwinder_defconfig
arm                          iop32x_defconfig
mips                          ath25_defconfig
mips                          malta_defconfig
arm                         assabet_defconfig
arm                          exynos_defconfig
m68k                                defconfig
arm                           h3600_defconfig
ia64                              allnoconfig
mips                      loongson3_defconfig
sparc64                          allyesconfig
mips                         tb0287_defconfig
powerpc                      mgcoge_defconfig
um                           x86_64_defconfig
powerpc                  storcenter_defconfig
sh                            shmin_defconfig
arm                              zx_defconfig
i386                              allnoconfig
powerpc                         ps3_defconfig
sparc64                             defconfig
arm                        keystone_defconfig
m68k                        m5272c3_defconfig
parisc                           allyesconfig
mips                     decstation_defconfig
mips                       lemote2f_defconfig
arm                         axm55xx_defconfig
sh                           se7722_defconfig
sh                          rsk7203_defconfig
arm                           viper_defconfig
powerpc                      tqm8xx_defconfig
arm                           stm32_defconfig
powerpc                       holly_defconfig
mips                         tb0226_defconfig
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
parisc                            allnoconfig
mips                    maltaup_xpa_defconfig
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
arc                              allyesconfig
sh                               allmodconfig
microblaze                        allnoconfig
mips                              allnoconfig
mips                             allmodconfig
parisc                           allmodconfig
powerpc                             defconfig
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
i386                 randconfig-a012-20200515
i386                 randconfig-a016-20200515
i386                 randconfig-a014-20200515
i386                 randconfig-a011-20200515
i386                 randconfig-a013-20200515
i386                 randconfig-a015-20200515
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
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
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
