Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC6413F36A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:44:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HM4LTBO//vCJ5D3atSwmu1omgH/q1b4ckHhWKRGRpw4=; b=BAnSnkKl5JF1F3
	uhhvvogE8gkaNOGfODkdI9bRFu7ANUE8c78JEXOPE5UQEu4PrB3igMsMAYHVvzfP3AlZ3cD9AOIUl
	Fchz4iusk83Wgfcfe235hjVDKq2Vi12tuk2Y+o11h6QiEztb2k1Hs2hsAM+TXhqvCHbOqWeDKmBc0
	jXriDRXTtJ4YSjV2gYQrde6RDXhLHcmqcHBi7470HxSt+dfH9pH/+RMf02WrsDgcOtoDkH30n4H3A
	XVWk0rwlLjOmfIceqcK80+bEO8IopTWLVAhD+eXQKDeGDy7xFh+J/t4Eg+jL+1WyHfde3LkgWERzg
	xmOCksAjxNpe0qQx6a3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isA88-0006wf-EZ; Thu, 16 Jan 2020 18:44:32 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is9fm-0006yh-R0
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 18:15:25 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 10:15:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,327,1574150400"; d="scan'208";a="424143460"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 16 Jan 2020 10:15:12 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1is9fj-0003hu-Mu; Fri, 17 Jan 2020 02:15:11 +0800
Date: Fri, 17 Jan 2020 02:13:57 +0800
From: kbuild test robot <lkp@intel.com>
To: Santosh Shilimkar <santosh.shilimkar@oracle.com>
Subject: [keystone:for_5.6/driver-soc] BUILD SUCCESS
 3277e8aa2504d97e022ecb9777d784ac1a439d36
Message-ID: <5e20a7e5.4Az5WuEnoQBdAKvD%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_101514_928754_9618424B 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/ssantosh/linux-keystone.git  for_5.6/driver-soc
branch HEAD: 3277e8aa2504d97e022ecb9777d784ac1a439d36  soc: ti: k3: add navss ringacc driver

elapsed time: 806m

configs tested: 148
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

parisc                            allnoconfig
parisc                            allyesonfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
nds32                               defconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
x86_64               randconfig-b001-20200116
x86_64               randconfig-b002-20200116
x86_64               randconfig-b003-20200116
i386                 randconfig-b001-20200116
i386                 randconfig-b002-20200116
i386                 randconfig-b003-20200116
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
alpha                randconfig-a001-20200116
m68k                 randconfig-a001-20200116
mips                 randconfig-a001-20200116
nds32                randconfig-a001-20200116
parisc               randconfig-a001-20200116
riscv                randconfig-a001-20200116
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
i386                             alldefconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
x86_64               randconfig-d001-20200116
x86_64               randconfig-d002-20200116
x86_64               randconfig-d003-20200116
i386                 randconfig-d001-20200116
i386                 randconfig-d002-20200116
i386                 randconfig-d003-20200116
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                                defconfig
x86_64               randconfig-a001-20200116
x86_64               randconfig-a002-20200116
x86_64               randconfig-a003-20200116
i386                 randconfig-a001-20200116
i386                 randconfig-a002-20200116
i386                 randconfig-a003-20200116
arc                  randconfig-a001-20200116
arm                  randconfig-a001-20200116
arm64                randconfig-a001-20200116
ia64                 randconfig-a001-20200116
powerpc              randconfig-a001-20200116
sparc                randconfig-a001-20200116
arc                  randconfig-a001-20200117
arm                  randconfig-a001-20200117
arm64                randconfig-a001-20200117
ia64                 randconfig-a001-20200117
powerpc              randconfig-a001-20200117
sparc                randconfig-a001-20200117
arm                              allmodconfig
arm                               allnoconfig
arm                              allyesconfig
arm                         at91_dt_defconfig
arm                           efm32_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                        shmobile_defconfig
arm                           sunxi_defconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm64                            allyesconfig
arm64                               defconfig
x86_64               randconfig-d001-20200117
x86_64               randconfig-d002-20200117
x86_64               randconfig-d003-20200117
i386                 randconfig-d001-20200117
i386                 randconfig-d002-20200117
i386                 randconfig-d003-20200117
alpha                randconfig-a001-20200117
m68k                 randconfig-a001-20200117
mips                 randconfig-a001-20200117
nds32                randconfig-a001-20200117
parisc               randconfig-a001-20200117
riscv                randconfig-a001-20200117
x86_64               randconfig-e001-20200117
x86_64               randconfig-e002-20200117
x86_64               randconfig-e003-20200117
i386                 randconfig-e001-20200117
i386                 randconfig-e002-20200117
i386                 randconfig-e003-20200117

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
