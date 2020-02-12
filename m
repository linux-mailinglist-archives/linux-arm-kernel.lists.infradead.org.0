Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EEC215AC3F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 16:44:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qI/w0axhmDplZdMkA9GO43giujt9aQa6xfH1HkufFwo=; b=Li4fyhtWQZksZm
	AEOjB2xzmssfsFG1lmC6uB92J7M3qXimDIdkynE4N2FKW/k5y1OIgmgEF0lSbTC+q1U7/nF2Sgup6
	y33Dtk9s/YXOe5KAm7kttwK+UQhT60Ot7O7A7+uPricrRiYPwOhxec7UamIvbC9A00qvDeBLNyc2P
	w8HFyMgzgStPOdEoS0K7gmXSfqPvg8oSNSddRAEhddBfqbd9EL5E/mze8FCuFiQrIksOifID1Id3y
	o7rE1DvQ4UfGnVZ1ZVFFckm8OaJaISZTERIiSsqaYpIsXEHFpM4lRURDIHq0dN8i0qdZzGfYjIKAw
	76p7pJpo3d8TpvLl8qXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1uBN-0006IX-OI; Wed, 12 Feb 2020 15:44:09 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1uAZ-0005hI-KR
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 15:43:23 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 07:43:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,433,1574150400"; d="scan'208";a="380796649"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 12 Feb 2020 07:43:17 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1j1uAW-0003Gl-JB; Wed, 12 Feb 2020 23:43:16 +0800
Date: Wed, 12 Feb 2020 23:42:45 +0800
From: kbuild test robot <lkp@intel.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [stericsson:earlydebug] BUILD REGRESSION
 e11ded06b26f2ad5c443a8838ef32d5c4d594008
Message-ID: <5e441cf5.FX8J2EfYOkJA/DqU%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_074319_766950_A201014E 
X-CRM114-Status: UNSURE (   7.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-stericsson.git  earlydebug
branch HEAD: e11ded06b26f2ad5c443a8838ef32d5c4d594008  Uglygack for earlydebug printascii

Regressions in current branch:

main.c:(.init.text+0x306): undefined reference to `printascii'
main.c:(.init.text+0x424): undefined reference to `printascii'
main.c:(.init.text+0x5c4): undefined reference to `printascii'
main.c:(.init.text+0x620): undefined reference to `printascii'
main.c:(.init.text+0x6fc): undefined reference to `printascii'
main.c:(.init.text+0x7b0): undefined reference to `printascii'
main.c:(.init.text+0x7fc): undefined reference to `printascii'
main.c:(.init.text+0x800): undefined reference to `printascii'
main.c:(.init.text+0x808): undefined reference to `printascii'
main.c:(.init.text+0x834): undefined reference to `printascii'
main.c:(.init.text+0x84c): undefined reference to `printascii'
main.c:(.init.text+0x860): undefined reference to `printascii'
main.c:(.init.text+0x864): undefined reference to `printascii'
main.c:(.init.text+0x890): undefined reference to `printascii'
main.c:(.init.text+0x8a8): undefined reference to `printascii'
main.c:(.init.text+0x920): undefined reference to `printascii'
main.c:(.init.text+0x95c): undefined reference to `printascii'
main.c:(.init.text+0x9c8): undefined reference to `printascii'
main.c:(.init.text+0xa3c): undefined reference to `printascii'
printk.c:(.text+0x1080): undefined reference to `printascii'
printk.c:(.text+0x12d4): undefined reference to `printascii'
printk.c:(.text+0x25b4): undefined reference to `printascii'
printk.c:(.text+0x2a34): undefined reference to `printascii'
printk.c:(.text+0x2a40): undefined reference to `printascii'
printk.c:(.text+0x2a68): undefined reference to `printascii'
printk.c:(.text+0x2b34): undefined reference to `printascii'
printk.c:(.text+0x2c34): undefined reference to `printascii'
printk.c:(.text+0x2ccc): undefined reference to `printascii'
printk.c:(.text+0x2cf4): undefined reference to `printascii'
printk.c:(.text+0x2e40): undefined reference to `printascii'
printk.c:(.text+0x2e8c): undefined reference to `printascii'
printk.c:(.text+0x2fac): undefined reference to `printascii'
printk.c:(.text+0x2ff8): undefined reference to `printascii'
printk.c:(.text+0x309c): undefined reference to `printascii'
printk.c:(.text+0x30b0): undefined reference to `printascii'
printk.c:(.text+0x3158): undefined reference to `printascii'
printk.c:(.text+0x3160): undefined reference to `printascii'
printk.c:(.text+0xa86): undefined reference to `printascii'
printk.c:(.text+0xaf2): undefined reference to `printascii'

Error ids grouped by kconfigs:

recent_errors
|-- arm-allnoconfig
|   `-- main.c:(.init.text):undefined-reference-to-printascii
|-- arm-at91_dt_defconfig
|   |-- main.c:(.init.text):undefined-reference-to-printascii
|   `-- printk.c:(.text):undefined-reference-to-printascii
|-- arm-axm55xx_defconfig
|   |-- main.c:(.init.text):undefined-reference-to-printascii
|   `-- printk.c:(.text):undefined-reference-to-printascii
|-- arm-bcm2835_defconfig
|   |-- main.c:(.init.text):undefined-reference-to-printascii
|   `-- printk.c:(.text):undefined-reference-to-printascii
|-- arm-collie_defconfig
|   |-- main.c:(.init.text):undefined-reference-to-printascii
|   `-- printk.c:(.text):undefined-reference-to-printascii
|-- arm-ebsa110_defconfig
|   |-- main.c:(.init.text):undefined-reference-to-printascii
|   `-- printk.c:(.text):undefined-reference-to-printascii
|-- arm-efm32_defconfig
|   |-- main.c:(.init.text):undefined-reference-to-printascii
|   `-- printk.c:(.text):undefined-reference-to-printascii
|-- arm-exynos_defconfig
|   |-- main.c:(.init.text):undefined-reference-to-printascii
|   `-- printk.c:(.text):undefined-reference-to-printascii
|-- arm-imx_v6_v7_defconfig
|   |-- main.c:(.init.text):undefined-reference-to-printascii
|   `-- printk.c:(.text):undefined-reference-to-printascii
|-- arm-multi_v5_defconfig
|   |-- main.c:(.init.text):undefined-reference-to-printascii
|   `-- printk.c:(.text):undefined-reference-to-printascii
|-- arm-multi_v7_defconfig
|   |-- main.c:(.init.text):undefined-reference-to-printascii
|   `-- printk.c:(.text):undefined-reference-to-printascii
|-- arm-mvebu_v7_defconfig
|   |-- main.c:(.init.text):undefined-reference-to-printascii
|   `-- printk.c:(.text):undefined-reference-to-printascii
|-- arm-mxs_defconfig
|   |-- main.c:(.init.text):undefined-reference-to-printascii
|   `-- printk.c:(.text):undefined-reference-to-printascii
|-- arm-netwinder_defconfig
|   |-- main.c:(.init.text):undefined-reference-to-printascii
|   `-- printk.c:(.text):undefined-reference-to-printascii
|-- arm-omap2plus_defconfig
|   |-- main.c:(.init.text):undefined-reference-to-printascii
|   `-- printk.c:(.text):undefined-reference-to-printascii
|-- arm-shmobile_defconfig
|   |-- main.c:(.init.text):undefined-reference-to-printascii
|   `-- printk.c:(.text):undefined-reference-to-printascii
|-- arm-spear3xx_defconfig
|   |-- main.c:(.init.text):undefined-reference-to-printascii
|   `-- printk.c:(.text):undefined-reference-to-printascii
|-- arm-spear6xx_defconfig
|   |-- main.c:(.init.text):undefined-reference-to-printascii
|   `-- printk.c:(.text):undefined-reference-to-printascii
|-- arm-sunxi_defconfig
|   |-- main.c:(.init.text):undefined-reference-to-printascii
|   `-- printk.c:(.text):undefined-reference-to-printascii
|-- arm-tango4_defconfig
|   |-- main.c:(.init.text):undefined-reference-to-printascii
|   `-- printk.c:(.text):undefined-reference-to-printascii
|-- arm-trizeps4_defconfig
|   |-- main.c:(.init.text):undefined-reference-to-printascii
|   `-- printk.c:(.text):undefined-reference-to-printascii
`-- arm-vf610m4_defconfig
    |-- main.c:(.init.text):undefined-reference-to-printascii
    `-- printk.c:(.text):undefined-reference-to-printascii

elapsed time: 2892m

configs tested: 258
configs skipped: 0

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
sparc                            allyesconfig
riscv                    nommu_virt_defconfig
sparc                               defconfig
nds32                             allnoconfig
riscv                          rv32_defconfig
s390                                defconfig
s390                             allyesconfig
riscv                               defconfig
powerpc                             defconfig
i386                              allnoconfig
ia64                                defconfig
m68k                       m5475evb_defconfig
um                           x86_64_defconfig
um                             i386_defconfig
csky                                defconfig
nds32                               defconfig
sh                               allmodconfig
i386                             alldefconfig
parisc                              defconfig
alpha                               defconfig
ia64                             alldefconfig
s390                       zfcpdump_defconfig
m68k                           sun3_defconfig
mips                      malta_kvm_defconfig
s390                             alldefconfig
xtensa                       common_defconfig
i386                             allyesconfig
i386                                defconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                          iss_defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                          multi_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
parisc                         b180_defconfig
parisc                            allnoconfig
parisc                        c3000_defconfig
parisc                           allyesconfig
x86_64               randconfig-a001-20200212
x86_64               randconfig-a002-20200212
x86_64               randconfig-a003-20200212
i386                 randconfig-a001-20200212
i386                 randconfig-a002-20200212
i386                 randconfig-a003-20200212
x86_64               randconfig-a001-20200211
x86_64               randconfig-a002-20200211
x86_64               randconfig-a003-20200211
i386                 randconfig-a001-20200211
i386                 randconfig-a002-20200211
i386                 randconfig-a003-20200211
alpha                randconfig-a001-20200212
m68k                 randconfig-a001-20200212
nds32                randconfig-a001-20200212
parisc               randconfig-a001-20200212
riscv                randconfig-a001-20200212
riscv                randconfig-a001-20200210
parisc               randconfig-a001-20200210
m68k                 randconfig-a001-20200210
nds32                randconfig-a001-20200210
mips                 randconfig-a001-20200210
alpha                randconfig-a001-20200210
alpha                randconfig-a001-20200211
m68k                 randconfig-a001-20200211
mips                 randconfig-a001-20200211
nds32                randconfig-a001-20200211
parisc               randconfig-a001-20200211
riscv                randconfig-a001-20200211
c6x                  randconfig-a001-20200211
h8300                randconfig-a001-20200211
microblaze           randconfig-a001-20200211
nios2                randconfig-a001-20200211
sparc64              randconfig-a001-20200211
c6x                  randconfig-a001-20200210
h8300                randconfig-a001-20200210
microblaze           randconfig-a001-20200210
nios2                randconfig-a001-20200210
sparc64              randconfig-a001-20200210
c6x                  randconfig-a001-20200212
h8300                randconfig-a001-20200212
microblaze           randconfig-a001-20200212
nios2                randconfig-a001-20200212
sparc64              randconfig-a001-20200212
csky                 randconfig-a001-20200212
openrisc             randconfig-a001-20200212
s390                 randconfig-a001-20200212
sh                   randconfig-a001-20200212
xtensa               randconfig-a001-20200212
sh                   randconfig-a001-20200210
csky                 randconfig-a001-20200211
openrisc             randconfig-a001-20200211
s390                 randconfig-a001-20200211
sh                   randconfig-a001-20200211
xtensa               randconfig-a001-20200211
x86_64               randconfig-b001-20200211
x86_64               randconfig-b002-20200211
x86_64               randconfig-b003-20200211
i386                 randconfig-b001-20200211
i386                 randconfig-b002-20200211
i386                 randconfig-b003-20200211
x86_64               randconfig-b001-20200212
x86_64               randconfig-b002-20200212
x86_64               randconfig-b003-20200212
i386                 randconfig-b001-20200212
i386                 randconfig-b002-20200212
i386                 randconfig-b003-20200212
x86_64               randconfig-c001-20200211
x86_64               randconfig-c002-20200211
x86_64               randconfig-c003-20200211
i386                 randconfig-c001-20200211
i386                 randconfig-c002-20200211
i386                 randconfig-c003-20200211
x86_64               randconfig-c001-20200212
x86_64               randconfig-c002-20200212
x86_64               randconfig-c003-20200212
i386                 randconfig-c001-20200212
i386                 randconfig-c002-20200212
i386                 randconfig-c003-20200212
x86_64               randconfig-d001-20200212
x86_64               randconfig-d002-20200212
x86_64               randconfig-d003-20200212
i386                 randconfig-d001-20200212
i386                 randconfig-d002-20200212
i386                 randconfig-d003-20200212
x86_64               randconfig-d001-20200211
x86_64               randconfig-d002-20200211
x86_64               randconfig-d003-20200211
i386                 randconfig-d001-20200211
i386                 randconfig-d002-20200211
i386                 randconfig-d003-20200211
x86_64               randconfig-e001-20200212
x86_64               randconfig-e002-20200212
x86_64               randconfig-e003-20200212
i386                 randconfig-e001-20200212
i386                 randconfig-e002-20200212
i386                 randconfig-e003-20200212
x86_64               randconfig-e001-20200211
x86_64               randconfig-e002-20200211
x86_64               randconfig-e003-20200211
i386                 randconfig-e001-20200211
i386                 randconfig-e002-20200211
i386                 randconfig-e003-20200211
x86_64               randconfig-f001-20200210
x86_64               randconfig-f002-20200210
x86_64               randconfig-f003-20200210
i386                 randconfig-f001-20200210
i386                 randconfig-f002-20200210
i386                 randconfig-f003-20200210
x86_64               randconfig-f001-20200212
x86_64               randconfig-f002-20200212
x86_64               randconfig-f003-20200212
i386                 randconfig-f001-20200212
i386                 randconfig-f002-20200212
i386                 randconfig-f003-20200212
x86_64               randconfig-f001-20200211
x86_64               randconfig-f002-20200211
x86_64               randconfig-f003-20200211
i386                 randconfig-f001-20200211
i386                 randconfig-f002-20200211
i386                 randconfig-f003-20200211
x86_64               randconfig-g001-20200210
x86_64               randconfig-g002-20200210
x86_64               randconfig-g003-20200210
i386                 randconfig-g001-20200210
i386                 randconfig-g002-20200210
i386                 randconfig-g003-20200210
x86_64               randconfig-g001-20200211
x86_64               randconfig-g002-20200211
x86_64               randconfig-g003-20200211
i386                 randconfig-g001-20200211
i386                 randconfig-g002-20200211
i386                 randconfig-g003-20200211
x86_64               randconfig-g001-20200212
x86_64               randconfig-g002-20200212
x86_64               randconfig-g003-20200212
i386                 randconfig-g001-20200212
i386                 randconfig-g002-20200212
i386                 randconfig-g003-20200212
x86_64               randconfig-h001-20200211
x86_64               randconfig-h002-20200211
x86_64               randconfig-h003-20200211
i386                 randconfig-h001-20200211
i386                 randconfig-h002-20200211
i386                 randconfig-h003-20200211
x86_64               randconfig-h001-20200212
x86_64               randconfig-h002-20200212
x86_64               randconfig-h003-20200212
i386                 randconfig-h001-20200212
i386                 randconfig-h002-20200212
i386                 randconfig-h003-20200212
arc                  randconfig-a001-20200211
arm                  randconfig-a001-20200211
arm64                randconfig-a001-20200211
ia64                 randconfig-a001-20200211
powerpc              randconfig-a001-20200211
sparc                randconfig-a001-20200211
arc                  randconfig-a001-20200212
arm                  randconfig-a001-20200212
arm64                randconfig-a001-20200212
ia64                 randconfig-a001-20200212
powerpc              randconfig-a001-20200212
sparc                randconfig-a001-20200212
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
s390                             allmodconfig
s390                              allnoconfig
s390                          debug_defconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
um                                  defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                         rhel-7.2-clear
x86_64                               rhel-7.6

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
