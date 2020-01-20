Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F721432A6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 20:52:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uTXgy6JzgZ+DxxB/kS8ftFf5Cf89f/SGpZ1g27DDoSk=; b=R+6CxnD/2btQho
	cmnokNKJochWYxItZXe/roWA03RLyxLzCcyo/SdW38ON3PCJqpMj4AO+eQED24bFaEBinuXcpIBvu
	4XoT9f5T8gsDeCvwHBVYtQQKwJQxpnCO8yiAh2lMDMwqZ7zAeiKNAPuc8tH+DHB+HrE/h1nTke1dQ
	8YZNskMtIL0NKwSaduweqSR0vh60PeNCUcBw+dgpeaIK+9ZXMZtMdocUMNWftGv6oR/D02eKcIUlv
	Ig6iXVCxgpd7Uc1Z7nsHMmi6Kq873ekGIouhpXBcldKYG0Cb+gwSXZRhWY9rke8Ojbxt3wUuyvnd4
	Ja9Yc0bMsEQVwZtLyUww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itd6O-0003R7-L7; Mon, 20 Jan 2020 19:52:48 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itd6B-0003Po-GB
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 19:52:37 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jan 2020 11:52:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,343,1574150400"; d="scan'208";a="307002453"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 20 Jan 2020 11:52:33 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1itd68-0007DR-NW; Tue, 21 Jan 2020 03:52:32 +0800
Date: Tue, 21 Jan 2020 03:52:04 +0800
From: kbuild test robot <lkp@intel.com>
To: Olof Johansson <olof@lixom.net>
Subject: [arm-soc:for-next] BUILD SUCCESS
 648ad183ef198cf9d7f053e52e0407bea2262927
Message-ID: <5e2604e4.CKKb/D4SA84ImKCa%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_115235_569571_F21A782D 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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
Cc: arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git  for-next
branch HEAD: 648ad183ef198cf9d7f053e52e0407bea2262927  ARM: Document merges

elapsed time: 432m

configs tested: 163
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

x86_64               randconfig-e001-20200120
x86_64               randconfig-e002-20200120
x86_64               randconfig-e003-20200120
i386                 randconfig-e001-20200120
i386                 randconfig-e002-20200120
i386                 randconfig-e003-20200120
i386                             alldefconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
parisc                            allnoconfig
parisc                            allyesonfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
csky                 randconfig-a001-20200120
openrisc             randconfig-a001-20200120
s390                 randconfig-a001-20200120
sh                   randconfig-a001-20200120
xtensa               randconfig-a001-20200120
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
x86_64               randconfig-g001-20200120
x86_64               randconfig-g002-20200120
x86_64               randconfig-g003-20200120
i386                 randconfig-g001-20200120
i386                 randconfig-g002-20200120
i386                 randconfig-g003-20200120
ia64                                defconfig
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
alpha                randconfig-a001-20200121
m68k                 randconfig-a001-20200121
mips                 randconfig-a001-20200121
nds32                randconfig-a001-20200121
parisc               randconfig-a001-20200121
riscv                randconfig-a001-20200121
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
csky                 randconfig-a001-20200121
openrisc             randconfig-a001-20200121
s390                 randconfig-a001-20200121
sh                   randconfig-a001-20200121
xtensa               randconfig-a001-20200121
x86_64               randconfig-d001-20200121
x86_64               randconfig-d002-20200121
x86_64               randconfig-d003-20200121
i386                 randconfig-d001-20200121
i386                 randconfig-d002-20200121
i386                 randconfig-d003-20200121
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
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
x86_64               randconfig-f001-20200121
x86_64               randconfig-f002-20200121
x86_64               randconfig-f003-20200121
i386                 randconfig-f001-20200121
i386                 randconfig-f002-20200121
i386                 randconfig-f003-20200121
c6x                  randconfig-a001-20200121
h8300                randconfig-a001-20200121
microblaze           randconfig-a001-20200121
nios2                randconfig-a001-20200121
sparc64              randconfig-a001-20200121
x86_64               randconfig-e001-20200121
x86_64               randconfig-e002-20200121
x86_64               randconfig-e003-20200121
i386                 randconfig-e001-20200121
i386                 randconfig-e002-20200121
i386                 randconfig-e003-20200121
sparc                            allyesconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
x86_64               randconfig-a001-20200120
x86_64               randconfig-a002-20200120
x86_64               randconfig-a003-20200120
i386                 randconfig-a001-20200120
i386                 randconfig-a002-20200120
i386                 randconfig-a003-20200120
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
x86_64               randconfig-c001-20200121
x86_64               randconfig-c002-20200121
x86_64               randconfig-c003-20200121
i386                 randconfig-c001-20200121
i386                 randconfig-c002-20200121
i386                 randconfig-c003-20200121
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
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
x86_64               randconfig-d001-20200120
x86_64               randconfig-d002-20200120
x86_64               randconfig-d003-20200120
i386                 randconfig-d001-20200120
i386                 randconfig-d002-20200120
i386                 randconfig-d003-20200120

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
