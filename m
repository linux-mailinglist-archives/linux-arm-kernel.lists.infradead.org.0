Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74993149307
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 03:41:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a2W6Qc0TFe4b2sszuheDn6aBfuKBH8bjIKIF+6vDWFA=; b=KrNDl+wfSUcKiS
	F9/mNf54or7bEXztLUOydlUp1GCG5kUYL917G8UHcVl4fSG2btGcv0R+I9s6bNv6RsslWAGhkG7Ba
	Wa3Xg8Im27dGlLnNG70e/jyjeCUPj7Xt/m5VS1tqHy3QSHbbZoUAjV6eZHpoqKGSXWBZD2cieFni8
	dfT/144uuF2yl1tpwuV1o80y0uy+wMIcpqbseUuHd9RZ8pfyx9NqAV7JkKHm/ic68kcVEgMssJu1t
	PYBLrSuPU3joCB3rSdVsYL07D2hszHuejcUZK4LZPBtcb69Q3lihZnDlg09nxs21PBmEj8bVUUSaD
	osUaMgiyiiWgWhbAu4sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivBNx-0002L6-JI; Sat, 25 Jan 2020 02:41:21 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivBNp-0002Kg-Pz
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Jan 2020 02:41:15 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 18:41:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,360,1574150400"; d="scan'208";a="428480655"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 24 Jan 2020 18:41:09 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1ivBNk-00013o-N6; Sat, 25 Jan 2020 10:41:08 +0800
Date: Sat, 25 Jan 2020 10:40:08 +0800
From: kbuild test robot <lkp@intel.com>
To: Olof Johansson <olof@lixom.net>
Subject: [arm-soc:arm/soc] BUILD SUCCESS
 a9eeb0e61128ed6cdd0b910eab2df7b2729d7d15
Message-ID: <5e2baa88.jlX5QGQfYfjijMh7%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_184113_917613_7D266C3B 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git  arm/soc
branch HEAD: a9eeb0e61128ed6cdd0b910eab2df7b2729d7d15  Merge tag 'samsung-soc-5.6-2' of https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux into arm/soc

elapsed time: 2897m

configs tested: 305
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

sparc                            allyesconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
nds32                               defconfig
c6x                  randconfig-a001-20200123
h8300                randconfig-a001-20200123
microblaze           randconfig-a001-20200123
nios2                randconfig-a001-20200123
sparc64              randconfig-a001-20200123
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
x86_64               randconfig-e001-20200123
x86_64               randconfig-e002-20200123
x86_64               randconfig-e003-20200123
i386                 randconfig-e001-20200123
i386                 randconfig-e002-20200123
i386                 randconfig-e003-20200123
x86_64               randconfig-g001-20200123
x86_64               randconfig-g002-20200123
x86_64               randconfig-g003-20200123
i386                 randconfig-g001-20200123
i386                 randconfig-g002-20200123
i386                 randconfig-g003-20200123
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
c6x                  randconfig-a001-20200124
h8300                randconfig-a001-20200124
microblaze           randconfig-a001-20200124
nios2                randconfig-a001-20200124
sparc64              randconfig-a001-20200124
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
x86_64               randconfig-e001-20200125
x86_64               randconfig-e002-20200125
x86_64               randconfig-e003-20200125
i386                 randconfig-e001-20200125
i386                 randconfig-e002-20200125
i386                 randconfig-e003-20200125
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                         rhel-7.2-clear
x86_64                               rhel-7.6
arm                              allmodconfig
arm64                            allmodconfig
x86_64               randconfig-b001-20200123
x86_64               randconfig-b002-20200123
x86_64               randconfig-b003-20200123
i386                 randconfig-b001-20200123
i386                 randconfig-b002-20200123
i386                 randconfig-b003-20200123
ia64                                defconfig
i386                             alldefconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
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
x86_64               randconfig-g001-20200124
x86_64               randconfig-g002-20200124
x86_64               randconfig-g003-20200124
i386                 randconfig-g001-20200124
i386                 randconfig-g002-20200124
i386                 randconfig-g003-20200124
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
x86_64               randconfig-e001-20200124
x86_64               randconfig-e002-20200124
x86_64               randconfig-e003-20200124
i386                 randconfig-e001-20200124
i386                 randconfig-e002-20200124
i386                 randconfig-e003-20200124
x86_64               randconfig-a001-20200124
x86_64               randconfig-a002-20200124
x86_64               randconfig-a003-20200124
i386                 randconfig-a001-20200124
i386                 randconfig-a002-20200124
i386                 randconfig-a003-20200124
x86_64               randconfig-d001-20200124
x86_64               randconfig-d002-20200124
x86_64               randconfig-d003-20200124
i386                 randconfig-d001-20200124
i386                 randconfig-d002-20200124
i386                 randconfig-d003-20200124
x86_64               randconfig-a001-20200123
x86_64               randconfig-a002-20200123
x86_64               randconfig-a003-20200123
i386                 randconfig-a001-20200123
i386                 randconfig-a002-20200123
i386                 randconfig-a003-20200123
arc                  randconfig-a001-20200124
arm                  randconfig-a001-20200124
arm64                randconfig-a001-20200124
ia64                 randconfig-a001-20200124
powerpc              randconfig-a001-20200124
sparc                randconfig-a001-20200124
x86_64               randconfig-c001-20200124
x86_64               randconfig-c002-20200124
x86_64               randconfig-c003-20200124
i386                 randconfig-c001-20200124
i386                 randconfig-c002-20200124
i386                 randconfig-c003-20200124
parisc                            allnoconfig
parisc                            allyesonfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
csky                 randconfig-a001-20200125
openrisc             randconfig-a001-20200125
s390                 randconfig-a001-20200125
xtensa               randconfig-a001-20200125
arc                  randconfig-a001-20200125
arm                  randconfig-a001-20200125
arm64                randconfig-a001-20200125
ia64                 randconfig-a001-20200125
powerpc              randconfig-a001-20200125
sparc                randconfig-a001-20200125
x86_64               randconfig-f001-20200124
x86_64               randconfig-f002-20200124
x86_64               randconfig-f003-20200124
i386                 randconfig-f001-20200124
i386                 randconfig-f002-20200124
i386                 randconfig-f003-20200124
alpha                randconfig-a001-20200124
m68k                 randconfig-a001-20200124
mips                 randconfig-a001-20200124
nds32                randconfig-a001-20200124
parisc               randconfig-a001-20200124
riscv                randconfig-a001-20200124
x86_64               randconfig-d001-20200123
x86_64               randconfig-d002-20200123
x86_64               randconfig-d003-20200123
i386                 randconfig-d001-20200123
i386                 randconfig-d002-20200123
i386                 randconfig-d003-20200123
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
csky                 randconfig-a001-20200124
openrisc             randconfig-a001-20200124
s390                 randconfig-a001-20200124
sh                   randconfig-a001-20200124
xtensa               randconfig-a001-20200124
x86_64               randconfig-f001-20200123
x86_64               randconfig-f002-20200123
x86_64               randconfig-f003-20200123
i386                 randconfig-f001-20200123
i386                 randconfig-f002-20200123
i386                 randconfig-f003-20200123
alpha                randconfig-a001-20200123
m68k                 randconfig-a001-20200123
mips                 randconfig-a001-20200123
nds32                randconfig-a001-20200123
parisc               randconfig-a001-20200123
riscv                randconfig-a001-20200123
csky                 randconfig-a001-20200123
openrisc             randconfig-a001-20200123
s390                 randconfig-a001-20200123
sh                   randconfig-a001-20200123
xtensa               randconfig-a001-20200123
x86_64               randconfig-h001-20200123
x86_64               randconfig-h002-20200123
x86_64               randconfig-h003-20200123
i386                 randconfig-h001-20200123
i386                 randconfig-h002-20200123
i386                 randconfig-h003-20200123
x86_64               randconfig-b001-20200124
x86_64               randconfig-b002-20200124
x86_64               randconfig-b003-20200124
i386                 randconfig-b001-20200124
i386                 randconfig-b002-20200124
i386                 randconfig-b003-20200124
x86_64               randconfig-h001-20200125
x86_64               randconfig-h002-20200125
x86_64               randconfig-h003-20200125
i386                 randconfig-h001-20200125
i386                 randconfig-h002-20200125
i386                 randconfig-h003-20200125
x86_64               randconfig-b001-20200125
x86_64               randconfig-b002-20200125
x86_64               randconfig-b003-20200125
i386                 randconfig-b001-20200125
i386                 randconfig-b002-20200125
i386                 randconfig-b003-20200125
arc                  randconfig-a001-20200123
arm                  randconfig-a001-20200123
arm64                randconfig-a001-20200123
ia64                 randconfig-a001-20200123
powerpc              randconfig-a001-20200123
sparc                randconfig-a001-20200123
x86_64               randconfig-g001-20200125
x86_64               randconfig-g002-20200125
x86_64               randconfig-g003-20200125
i386                 randconfig-g001-20200125
i386                 randconfig-g002-20200125
i386                 randconfig-g003-20200125
c6x                  randconfig-a001-20200125
h8300                randconfig-a001-20200125
microblaze           randconfig-a001-20200125
nios2                randconfig-a001-20200125
sparc64              randconfig-a001-20200125
x86_64               randconfig-c001-20200125
x86_64               randconfig-c002-20200125
x86_64               randconfig-c003-20200125
i386                 randconfig-c001-20200125
i386                 randconfig-c002-20200125
i386                 randconfig-c003-20200125
x86_64               randconfig-c001-20200123
x86_64               randconfig-c002-20200123
x86_64               randconfig-c003-20200123
i386                 randconfig-c001-20200123
i386                 randconfig-c002-20200123
i386                 randconfig-c003-20200123
x86_64               randconfig-f001-20200125
x86_64               randconfig-f002-20200125
x86_64               randconfig-f003-20200125
i386                 randconfig-f001-20200125
i386                 randconfig-f002-20200125
i386                 randconfig-f003-20200125
alpha                randconfig-a001-20200125
m68k                 randconfig-a001-20200125
mips                 randconfig-a001-20200125
nds32                randconfig-a001-20200125
parisc               randconfig-a001-20200125
riscv                randconfig-a001-20200125
x86_64               randconfig-a001-20200125
x86_64               randconfig-a002-20200125
x86_64               randconfig-a003-20200125
i386                 randconfig-a001-20200125
i386                 randconfig-a002-20200125
i386                 randconfig-a003-20200125
x86_64               randconfig-h001-20200124
x86_64               randconfig-h002-20200124
x86_64               randconfig-h003-20200124
i386                 randconfig-h001-20200124
i386                 randconfig-h002-20200124
i386                 randconfig-h003-20200124
sh                   randconfig-a001-20200125
x86_64               randconfig-d001-20200125
x86_64               randconfig-d002-20200125
x86_64               randconfig-d003-20200125
i386                 randconfig-d001-20200125
i386                 randconfig-d002-20200125
i386                 randconfig-d003-20200125

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
