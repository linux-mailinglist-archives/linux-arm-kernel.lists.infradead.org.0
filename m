Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C93F71E9D0B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 07:17:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CtLXy3enmFsxYsnJsNuK4gpRCRSGbqmvr90d3HkK2/c=; b=LiVV4u8VRg/LT0
	LyH+PG30btPb6o3C9mbV4vdSjFbhbfEPu5t8lU9f7NnqtpePleqkFpAzxDmR6Yf41OJf3uZ8wwBk9
	1E4I+b86ALzV5o68dYd2ha4ul4qJCLY+T7J9KZLWonsrjRytLOQykye8owdcSU/Y0VycQ+SFzEYvq
	5m9+buay9OVBxAlgwC/PfmlxwvaW0I9lZN45BAXDFu6sNFkTXES23ebCkE+ZCA4ESxHiiI226OLrH
	8FQF+4wJ/kGfBuqVRp9D2TvAZitMFXE59TivP/L8CbzXtqqsI8azr4aO2Xr3xIZrsxJhHaIRJsDl+
	gOaGTB6xuYhuGWf9W2FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfcoj-0006qn-Nf; Mon, 01 Jun 2020 05:16:57 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfcoR-0006lX-Qx
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 05:16:41 +0000
IronPort-SDR: 5ugIqXEFcS7prh36wqccmBujW6y9/F8elaLyHQKCr+xVrgYCksD28agnfrrYio9IINoy4ttjwN
 V2fVx2r3Pj/Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2020 22:16:39 -0700
IronPort-SDR: k/NDkWIH0BGwY/Efjp36pXZlYWTsPeMLbYyNnrq64P5pstUuj+UlSu8Y6OS4ZrZRBVwKAztKdP
 FisX6/Dii/CA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,459,1583222400"; d="scan'208";a="415685274"
Received: from lkp-server01.sh.intel.com (HELO 49d03d9b0ee7) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 31 May 2020 22:16:38 -0700
Received: from kbuild by 49d03d9b0ee7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jfcoP-0000D1-HD; Mon, 01 Jun 2020 05:16:37 +0000
Date: Mon, 01 Jun 2020 13:15:58 +0800
From: kbuild test robot <lkp@intel.com>
To: Santosh Shilimkar <santosh.shilimkar@oracle.com>
Subject: [keystone:next] BUILD SUCCESS a158c2b7ec23cb32b1aace55938486c8de16d217
Message-ID: <5ed48f0e.P2eUt+iiv6iJgeTL%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_221639_897940_C4F8ABCE 
X-CRM114-Status: UNSURE (   7.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -3.2 (---)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-3.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/ssantosh/linux-keystone.git  next
branch HEAD: a158c2b7ec23cb32b1aace55938486c8de16d217  Merge branch 'for_5.8/driver-soc' into next

elapsed time: 5842m

configs tested: 171
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm                               allnoconfig
arm64                            allyesconfig
arm64                               defconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm                              allyesconfig
arm                              allmodconfig
sparc                       sparc64_defconfig
mips                  decstation_64_defconfig
mips                          ath79_defconfig
powerpc                      pasemi_defconfig
xtensa                         virt_defconfig
arm                   milbeaut_m10v_defconfig
arm                          lpd270_defconfig
arm                       mainstone_defconfig
arm                            hisi_defconfig
powerpc                     mpc83xx_defconfig
m68k                          multi_defconfig
m68k                             allyesconfig
m68k                            q40_defconfig
sh                           se7724_defconfig
mips                malta_qemu_32r6_defconfig
mips                            e55_defconfig
mips                       lemote2f_defconfig
arm                            pleb_defconfig
sh                             espt_defconfig
arm                           omap1_defconfig
arm                       spear13xx_defconfig
sparc64                          allyesconfig
microblaze                    nommu_defconfig
arm                        mvebu_v5_defconfig
arc                        nsim_700_defconfig
arm                        mvebu_v7_defconfig
mips                      maltaaprp_defconfig
nds32                            alldefconfig
arm                         s3c6400_defconfig
m68k                        mvme16x_defconfig
powerpc                       ppc64_defconfig
mips                      pistachio_defconfig
c6x                         dsk6455_defconfig
riscv                    nommu_virt_defconfig
sh                        apsh4ad0a_defconfig
sh                           se7343_defconfig
powerpc                      tqm8xx_defconfig
sh                           se7750_defconfig
sh                            shmin_defconfig
arm                        multi_v5_defconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                              allnoconfig
m68k                           sun3_defconfig
m68k                                defconfig
nios2                               defconfig
nios2                            allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
c6x                               allnoconfig
openrisc                         allyesconfig
nds32                               defconfig
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
sh                                allnoconfig
arc                                 defconfig
microblaze                        allnoconfig
mips                             allyesconfig
mips                              allnoconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                              defconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a002-20200529
x86_64               randconfig-a006-20200529
x86_64               randconfig-a005-20200529
x86_64               randconfig-a001-20200529
x86_64               randconfig-a004-20200529
x86_64               randconfig-a003-20200529
i386                 randconfig-a004-20200529
i386                 randconfig-a001-20200529
i386                 randconfig-a002-20200529
i386                 randconfig-a006-20200529
i386                 randconfig-a003-20200529
i386                 randconfig-a005-20200529
i386                 randconfig-a004-20200531
i386                 randconfig-a003-20200531
i386                 randconfig-a006-20200531
i386                 randconfig-a002-20200531
i386                 randconfig-a005-20200531
i386                 randconfig-a001-20200531
i386                 randconfig-a004-20200528
i386                 randconfig-a001-20200528
i386                 randconfig-a002-20200528
i386                 randconfig-a006-20200528
i386                 randconfig-a003-20200528
i386                 randconfig-a005-20200528
x86_64               randconfig-a011-20200531
x86_64               randconfig-a016-20200531
x86_64               randconfig-a012-20200531
x86_64               randconfig-a014-20200531
x86_64               randconfig-a013-20200531
x86_64               randconfig-a015-20200531
x86_64               randconfig-a013-20200528
x86_64               randconfig-a015-20200528
x86_64               randconfig-a012-20200528
x86_64               randconfig-a016-20200528
x86_64               randconfig-a014-20200528
x86_64               randconfig-a011-20200528
i386                 randconfig-a013-20200529
i386                 randconfig-a011-20200529
i386                 randconfig-a012-20200529
i386                 randconfig-a015-20200529
i386                 randconfig-a016-20200529
i386                 randconfig-a014-20200529
i386                 randconfig-a013-20200528
i386                 randconfig-a011-20200528
i386                 randconfig-a012-20200528
i386                 randconfig-a015-20200528
i386                 randconfig-a016-20200528
i386                 randconfig-a014-20200528
i386                 randconfig-a013-20200531
i386                 randconfig-a012-20200531
i386                 randconfig-a015-20200531
i386                 randconfig-a011-20200531
i386                 randconfig-a016-20200531
i386                 randconfig-a014-20200531
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                              allnoconfig
s390                                defconfig
s390                             allyesconfig
s390                             allmodconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allmodconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
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
