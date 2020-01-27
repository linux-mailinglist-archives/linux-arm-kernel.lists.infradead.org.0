Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A1F14AC69
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 00:07:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VGaWKwAQY30LFkGFOq4dejXI1Lgmeg8mo7SOu4LK5VY=; b=fEy2LUnKhle06Z
	WtpL3lqrVnRnK88VxLMGUBTFMY59HMqe1QDZvLmeF8+oSLRYkSfbO9mxuemBsgpsg/PE9/qAHTsy6
	DqrpN/EBhcuV4jXUfD0WQ5JCBbgIV/aM70Hr8KptxezMbcHEgYNnF7F+olKI9OkZglTX+CbyobQHo
	Z/Rc6PBMyszCD0M3VQ/e0GZG7uuQ+6wq1qClfsy4WNOLfbXwzWe/BVoLrUed8I0/631KtVAE1YevE
	CMi42LvJrp8FAoA2cEW2FZqd6wlofTc++p2kT7DHwvKYYzvukJyRP5KY5pR0FbacjpAxYAMb1SRe1
	F514ZzZIMeLlxq1px2jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwDTG-0007JY-6y; Mon, 27 Jan 2020 23:07:06 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwDT4-0007J8-3t
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 23:06:55 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 15:05:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,371,1574150400"; d="scan'208";a="223386124"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 27 Jan 2020 15:05:47 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iwDRy-000IaB-SY; Tue, 28 Jan 2020 07:05:46 +0800
Date: Tue, 28 Jan 2020 07:05:28 +0800
From: kbuild test robot <lkp@intel.com>
To: Tony Lindgren <tony@atomide.com>
Subject: [arm-soc:omap/more-ti-sysc] BUILD INCOMPLETE
 885d21e4956dd70fcd84ed653a8368c9729cfb3e
Message-ID: <5e2f6cb8.B3Q/G2jwnnibMHts%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_150654_243537_50538A64 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git  omap/more-ti-sysc
branch HEAD: 885d21e4956dd70fcd84ed653a8368c9729cfb3e  Merge branch 'omap-for-v5.6/ti-sysc-omap45-rng' into omap-for-v5.6/ti-sysc-drop-pdata

TIMEOUT after 2898m


Sorry we cannot finish the testset for your branch within a reasonable time.
It's our fault -- either some build server is down or some build worker is busy
doing bisects for _other_ trees. The branch will get more complete coverage and
possible error reports when our build infrastructure is restored or catches up.
There will be no more build success notification for this branch head, but you
can expect reasonably good test coverage after waiting for 1 day.

configs timed out: 12

arm                               allnoconfig
arm                              allyesconfig
arm                         at91_dt_defconfig
arm                           efm32_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                        shmobile_defconfig
arm                           sunxi_defconfig
arm64                             allnoconfig
arm64                            allyesconfig
arm64                               defconfig

configs tested: 141
configs skipped: 0

mips                      malta_kvm_defconfig
openrisc                 simple_smp_defconfig
ia64                                defconfig
powerpc                             defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                         rhel-7.2-clear
x86_64                               rhel-7.6
i386                             alldefconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
arc                  randconfig-a001-20200126
arm                  randconfig-a001-20200126
arm64                randconfig-a001-20200126
ia64                 randconfig-a001-20200126
powerpc              randconfig-a001-20200126
sparc                randconfig-a001-20200126
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
nds32                               defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
c6x                  randconfig-a001-20200126
h8300                randconfig-a001-20200126
microblaze           randconfig-a001-20200126
nios2                randconfig-a001-20200126
sparc64              randconfig-a001-20200126
alpha                randconfig-a001-20200126
m68k                 randconfig-a001-20200126
mips                 randconfig-a001-20200126
nds32                randconfig-a001-20200126
parisc               randconfig-a001-20200126
riscv                randconfig-a001-20200126
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
x86_64               randconfig-g001-20200126
x86_64               randconfig-g002-20200126
x86_64               randconfig-g003-20200126
i386                 randconfig-g001-20200126
i386                 randconfig-g002-20200126
i386                 randconfig-g003-20200126
x86_64               randconfig-e001-20200126
x86_64               randconfig-e002-20200126
x86_64               randconfig-e003-20200126
i386                 randconfig-e001-20200126
i386                 randconfig-e002-20200126
i386                 randconfig-e003-20200126
mips                             allmodconfig
mips                           32r2_defconfig
mips                             allyesconfig
mips                              allnoconfig
mips                         64r6el_defconfig
mips                      fuloong2e_defconfig
x86_64               randconfig-c001-20200126
x86_64               randconfig-c002-20200126
x86_64               randconfig-c003-20200126
i386                 randconfig-c001-20200126
i386                 randconfig-c002-20200126
i386                 randconfig-c003-20200126
x86_64               randconfig-b001-20200126
x86_64               randconfig-b002-20200126
x86_64               randconfig-b003-20200126
i386                 randconfig-b001-20200126
i386                 randconfig-b002-20200126
i386                 randconfig-b003-20200126
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
x86_64               randconfig-a001-20200126
x86_64               randconfig-a002-20200126
x86_64               randconfig-a003-20200126
i386                 randconfig-a001-20200126
i386                 randconfig-a002-20200126
i386                 randconfig-a003-20200126
arm                              allmodconfig
arm64                            allmodconfig
csky                 randconfig-a001-20200126
openrisc             randconfig-a001-20200126
s390                 randconfig-a001-20200126
sh                   randconfig-a001-20200126
xtensa               randconfig-a001-20200126
x86_64               randconfig-f001-20200126
x86_64               randconfig-f002-20200126
x86_64               randconfig-f003-20200126
i386                 randconfig-f001-20200126
i386                 randconfig-f002-20200126
i386                 randconfig-f003-20200126
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
parisc                            allnoconfig
parisc                            allyesonfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
