Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7114E1E1EA7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 11:34:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1W6kPhliuBTAOkWyNENCqQWIu3BhWuBj0hA3VpQ64/E=; b=DRJdELyidZpIkf
	dJ1FhnX19n786KKJgl046p4B+2jp6HtRljeFHEhYAz59suiX4pXvPPtDLgzLNpzRB9p7DxZx9FEDU
	1p5UPrXPwKNyxFxRY3pt/tiSqpeotSRL36C29Tw+2/Qfo5DkQel9UIThnK/Nd7+ZLmzZSnd4+nFTa
	plX1F6RGPHONvtlp6hTIA0Yy6No8WNNhDTSU1YpbGEjeqeJ8X1dOenettpnwrPOOzPbDKSUVtu/MG
	QFoidLKISRByK+77SG4u0IeDu8njMy1De0cMtqbYZ+atfN7p1dczUTYjkFblg4eWUH0l/Ml1q+6K/
	AJ2UgxRqqCwqwp8hkW8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdVys-0001Dd-8x; Tue, 26 May 2020 09:34:42 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdVxw-0000hs-Pf
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 09:33:48 +0000
IronPort-SDR: JLN1i3yZEwHIkC4/uRrrNYJyYwkpm+1xgIjCzFEFgivrDm1sUHFlM0dfZC8XSOTsJ/c2H+Awrh
 k73P4HK2TfMg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 02:33:44 -0700
IronPort-SDR: USGcGhvIJIMcRPg7PjAQSiV4SVVieZt5YSaGKP/7ePm42bRkG9XpNBmGVnJAd/pJBbs7FyZ47L
 OLK3SLGI2PLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,436,1583222400"; d="scan'208";a="345115706"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 26 May 2020 02:33:42 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jdVxt-000Abg-SP; Tue, 26 May 2020 17:33:41 +0800
Date: Tue, 26 May 2020 17:33:04 +0800
From: kbuild test robot <lkp@intel.com>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: [soc:mvebu/arm] BUILD SUCCESS b5321c304eb5150f1d37423943205cbd857d69df
Message-ID: <5ecce250.T7lrjAKAxAhXKCRP%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_023344_849573_2907B988 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -3.2 (---)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-3.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 1.8 LONGWORDS              Long string of long words
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git  mvebu/arm
branch HEAD: b5321c304eb5150f1d37423943205cbd857d69df  MAINTAINERS: clarify maintenance of ARM Dove drivers

elapsed time: 12459m

configs tested: 303
configs skipped: 11

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
mips                  cavium_octeon_defconfig
microblaze                          defconfig
powerpc64                        alldefconfig
arm                      integrator_defconfig
arc                     nsimosci_hs_defconfig
s390                                defconfig
um                                allnoconfig
sh                   secureedge5410_defconfig
sh                        apsh4ad0a_defconfig
powerpc                          allmodconfig
s390                          debug_defconfig
sh                         ap325rxa_defconfig
c6x                                 defconfig
h8300                    h8300h-sim_defconfig
arm                            u300_defconfig
c6x                        evmc6457_defconfig
arm                           corgi_defconfig
mips                     cu1000-neo_defconfig
mips                           xway_defconfig
arm                          ixp4xx_defconfig
arm                            mps2_defconfig
arm                     davinci_all_defconfig
mips                         db1xxx_defconfig
arm64                            alldefconfig
sh                           sh2007_defconfig
arm                            pleb_defconfig
h8300                            alldefconfig
microblaze                      mmu_defconfig
powerpc                      ppc44x_defconfig
arm                  colibri_pxa300_defconfig
arm                        clps711x_defconfig
mips                  maltasmvp_eva_defconfig
arm                        magician_defconfig
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
powerpc                 linkstation_defconfig
csky                             allyesconfig
powerpc                     skiroot_defconfig
riscv                          rv32_defconfig
sh                           se7722_defconfig
arm                          gemini_defconfig
sh                          sdk7786_defconfig
powerpc                      ppc64e_defconfig
arm                           u8500_defconfig
parisc                generic-32bit_defconfig
sparc64                          allyesconfig
mips                          lasat_defconfig
mips                         tb0287_defconfig
powerpc                      mgcoge_defconfig
um                           x86_64_defconfig
powerpc                  storcenter_defconfig
sh                            shmin_defconfig
mips                     decstation_defconfig
mips                       lemote2f_defconfig
powerpc                      tqm8xx_defconfig
arm                        shmobile_defconfig
arm                           stm32_defconfig
powerpc                       holly_defconfig
mips                         tb0226_defconfig
arm                       imx_v4_v5_defconfig
arm                       cns3420vb_defconfig
m68k                         amcore_defconfig
mips                  decstation_64_defconfig
h8300                       h8s-sim_defconfig
m68k                       m5208evb_defconfig
sh                         ecovec24_defconfig
sh                           se7721_defconfig
mips                   sb1250_swarm_defconfig
powerpc                         ps3_defconfig
sh                          r7780mp_defconfig
arm                           sama5_defconfig
sh                           se7712_defconfig
powerpc                    amigaone_defconfig
mips                           mtx1_defconfig
parisc                generic-64bit_defconfig
c6x                         dsk6455_defconfig
parisc                            allnoconfig
mips                    maltaup_xpa_defconfig
sh                          lboxre2_defconfig
m68k                        m5307c3_defconfig
mips                        nlm_xlr_defconfig
sh                            migor_defconfig
powerpc                     mpc512x_defconfig
nds32                               defconfig
arm                          moxart_defconfig
um                               allyesconfig
mips                          rb532_defconfig
arm                          imote2_defconfig
i386                              allnoconfig
i386                                defconfig
i386                              debian-10.3
i386                             allyesconfig
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
mips                              allnoconfig
mips                             allmodconfig
parisc                              defconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                           allnoconfig
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
i386                 randconfig-a001-20200521
i386                 randconfig-a004-20200521
i386                 randconfig-a006-20200521
i386                 randconfig-a003-20200521
i386                 randconfig-a002-20200521
i386                 randconfig-a005-20200521
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
i386                 randconfig-a006-20200517
i386                 randconfig-a005-20200517
i386                 randconfig-a003-20200517
i386                 randconfig-a001-20200517
i386                 randconfig-a004-20200517
i386                 randconfig-a002-20200517
i386                 randconfig-a001-20200524
i386                 randconfig-a004-20200524
i386                 randconfig-a006-20200524
i386                 randconfig-a003-20200524
i386                 randconfig-a002-20200524
i386                 randconfig-a005-20200524
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
x86_64               randconfig-a013-20200524
x86_64               randconfig-a015-20200524
x86_64               randconfig-a016-20200524
x86_64               randconfig-a012-20200524
x86_64               randconfig-a014-20200524
x86_64               randconfig-a011-20200524
x86_64               randconfig-a015-20200526
x86_64               randconfig-a013-20200526
x86_64               randconfig-a016-20200526
x86_64               randconfig-a012-20200526
x86_64               randconfig-a014-20200526
x86_64               randconfig-a011-20200526
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
i386                 randconfig-a015-20200521
i386                 randconfig-a011-20200521
i386                 randconfig-a014-20200521
i386                 randconfig-a012-20200521
i386                 randconfig-a016-20200521
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
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
x86_64                              defconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allmodconfig
um                               allmodconfig
um                                  defconfig
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
