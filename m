Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2D21939BB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 08:43:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4DSxsM+9q2yA5bp1JMm9CBddve6QRpqMZeyYD0suD/Q=; b=R3nzmn01L9gmSN
	uATQgL2bTq7LbXwHpZvC8JNaCboHMzsoJB33vJ6QUffNeEw5h90Uyi77s2C3QIYeL9ppivx1C9Aic
	OLMMBeZ1Zp9KmpFgVOXMU4S1qlyP7KME0GHKuJMnPfBxBgyGL9MzABIMln/qGkirHTji1rPncnl+9
	XRlI3SefBZZpMD8ee5qPEE0d7zdvPgopIvuXGhLUeNf+dpP9lIfgdwmzTxJ3GUsFLqW62oQEYES1n
	wSCCQ82fCJ/36wT8L4k++W6v81Vdqm8SJ3DEVN/kz7gNRCCRD6ogpMaZtPQVrUQxggQ3Bfi/7b8O8
	aFUZog4mU7NMfoeqeinw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHNB1-0005G0-GM; Thu, 26 Mar 2020 07:43:43 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHN9Z-0004Mk-Uf
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 07:42:20 +0000
IronPort-SDR: 3cdC7GBHTCONgmEabYCx+hDwMAcpy1cH9RfG1i1sh+FxoEowYwgiruQEJnz3c7z2gse8SoBHlK
 IqK0WI9DdX5A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 00:42:12 -0700
IronPort-SDR: 26A91F9NSZXRZLAoBbQL/GQcrHBzACThQHBkz2h90Zs7QGORN6UAQxTmR00j4jl3oIsoiDAFgP
 Ur5bDl5mRXkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,307,1580803200"; d="scan'208";a="446905118"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 26 Mar 2020 00:42:11 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jHN9W-000InH-Lx; Thu, 26 Mar 2020 15:42:10 +0800
Date: Thu, 26 Mar 2020 15:41:43 +0800
From: kbuild test robot <lkp@intel.com>
To: Tero Kristo <t-kristo@ti.com>
Subject: [arm-soc:keystone/dt64] BUILD SUCCESS
 ad3bcb0f484ceab287bb127f416ab4921c512396
Message-ID: <5e7c5cb7.WArPKNOP+Ako8P0Y%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_004214_114563_424FD65D 
X-CRM114-Status: UNSURE (   6.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 HEXHASH_WORD           Multiple instances of word + hexadecimal hash
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git  keystone/dt64
branch HEAD: ad3bcb0f484ceab287bb127f416ab4921c512396  arm64: dts: ti: k3-j721e-mcu: add scm node and phy-gmii-sel nodes

elapsed time: 9864m

configs tested: 619
configs skipped: 216

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                              allmodconfig
arm                               allnoconfig
arm                              allyesconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm64                            allyesconfig
arm                         at91_dt_defconfig
arm                           efm32_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                        shmobile_defconfig
arm                           sunxi_defconfig
arm64                               defconfig
sparc                            allyesconfig
h8300                     edosk2674_defconfig
ia64                             allmodconfig
parisc                            allnoconfig
powerpc                             defconfig
csky                                defconfig
ia64                                defconfig
m68k                       m5475evb_defconfig
mips                             allmodconfig
parisc                generic-64bit_defconfig
um                             i386_defconfig
arc                              allyesconfig
s390                              allnoconfig
ia64                             alldefconfig
alpha                               defconfig
um                           x86_64_defconfig
powerpc                       ppc64_defconfig
microblaze                    nommu_defconfig
c6x                        evmc6678_defconfig
ia64                             allyesconfig
powerpc                           allnoconfig
riscv                          rv32_defconfig
nds32                               defconfig
sh                               allmodconfig
mips                      fuloong2e_defconfig
i386                              allnoconfig
openrisc                 simple_smp_defconfig
mips                              allnoconfig
arc                                 defconfig
i386                             allyesconfig
s390                                defconfig
i386                             alldefconfig
i386                                defconfig
ia64                              allnoconfig
c6x                              allyesconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
nds32                             allnoconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
microblaze                      mmu_defconfig
powerpc                          rhel-kconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allyesconfig
mips                      malta_kvm_defconfig
parisc                           allyesconfig
parisc                generic-32bit_defconfig
x86_64               randconfig-a001-20200322
x86_64               randconfig-a002-20200322
x86_64               randconfig-a003-20200322
i386                 randconfig-a001-20200322
i386                 randconfig-a002-20200322
i386                 randconfig-a003-20200322
x86_64               randconfig-a001-20200323
x86_64               randconfig-a002-20200323
x86_64               randconfig-a003-20200323
i386                 randconfig-a001-20200323
i386                 randconfig-a002-20200323
i386                 randconfig-a003-20200323
x86_64               randconfig-a001-20200324
x86_64               randconfig-a002-20200324
x86_64               randconfig-a003-20200324
i386                 randconfig-a001-20200324
i386                 randconfig-a002-20200324
i386                 randconfig-a003-20200324
x86_64               randconfig-a001-20200326
x86_64               randconfig-a002-20200326
x86_64               randconfig-a003-20200326
i386                 randconfig-a001-20200326
i386                 randconfig-a002-20200326
i386                 randconfig-a003-20200326
x86_64               randconfig-a001-20200319
x86_64               randconfig-a002-20200319
x86_64               randconfig-a003-20200319
i386                 randconfig-a001-20200319
i386                 randconfig-a002-20200319
i386                 randconfig-a003-20200319
x86_64               randconfig-a001-20200320
x86_64               randconfig-a002-20200320
x86_64               randconfig-a003-20200320
i386                 randconfig-a001-20200320
i386                 randconfig-a002-20200320
i386                 randconfig-a003-20200320
x86_64               randconfig-a001-20200325
x86_64               randconfig-a002-20200325
x86_64               randconfig-a003-20200325
i386                 randconfig-a001-20200325
i386                 randconfig-a002-20200325
i386                 randconfig-a003-20200325
x86_64               randconfig-a001-20200321
x86_64               randconfig-a002-20200321
x86_64               randconfig-a003-20200321
i386                 randconfig-a001-20200321
i386                 randconfig-a002-20200321
i386                 randconfig-a003-20200321
alpha                randconfig-a001-20200321
m68k                 randconfig-a001-20200321
mips                 randconfig-a001-20200321
nds32                randconfig-a001-20200321
parisc               randconfig-a001-20200321
riscv                randconfig-a001-20200321
alpha                randconfig-a001-20200322
m68k                 randconfig-a001-20200322
mips                 randconfig-a001-20200322
nds32                randconfig-a001-20200322
parisc               randconfig-a001-20200322
riscv                randconfig-a001-20200322
alpha                randconfig-a001-20200326
m68k                 randconfig-a001-20200326
mips                 randconfig-a001-20200326
nds32                randconfig-a001-20200326
parisc               randconfig-a001-20200326
riscv                randconfig-a001-20200326
alpha                randconfig-a001-20200323
m68k                 randconfig-a001-20200323
mips                 randconfig-a001-20200323
nds32                randconfig-a001-20200323
parisc               randconfig-a001-20200323
riscv                randconfig-a001-20200323
alpha                randconfig-a001-20200324
m68k                 randconfig-a001-20200324
mips                 randconfig-a001-20200324
nds32                randconfig-a001-20200324
parisc               randconfig-a001-20200324
riscv                randconfig-a001-20200324
alpha                randconfig-a001-20200320
m68k                 randconfig-a001-20200320
mips                 randconfig-a001-20200320
nds32                randconfig-a001-20200320
parisc               randconfig-a001-20200320
alpha                randconfig-a001-20200319
m68k                 randconfig-a001-20200319
mips                 randconfig-a001-20200319
nds32                randconfig-a001-20200319
parisc               randconfig-a001-20200319
riscv                randconfig-a001-20200319
alpha                randconfig-a001-20200325
m68k                 randconfig-a001-20200325
nds32                randconfig-a001-20200325
parisc               randconfig-a001-20200325
riscv                randconfig-a001-20200325
c6x                  randconfig-a001-20200319
h8300                randconfig-a001-20200319
microblaze           randconfig-a001-20200319
nios2                randconfig-a001-20200319
sparc64              randconfig-a001-20200319
c6x                  randconfig-a001-20200321
h8300                randconfig-a001-20200321
microblaze           randconfig-a001-20200321
nios2                randconfig-a001-20200321
sparc64              randconfig-a001-20200321
c6x                  randconfig-a001-20200322
h8300                randconfig-a001-20200322
microblaze           randconfig-a001-20200322
nios2                randconfig-a001-20200322
sparc64              randconfig-a001-20200322
c6x                  randconfig-a001-20200323
h8300                randconfig-a001-20200323
microblaze           randconfig-a001-20200323
nios2                randconfig-a001-20200323
sparc64              randconfig-a001-20200323
c6x                  randconfig-a001-20200324
h8300                randconfig-a001-20200324
microblaze           randconfig-a001-20200324
nios2                randconfig-a001-20200324
sparc64              randconfig-a001-20200324
c6x                  randconfig-a001-20200320
h8300                randconfig-a001-20200320
microblaze           randconfig-a001-20200320
nios2                randconfig-a001-20200320
sparc64              randconfig-a001-20200320
c6x                  randconfig-a001-20200325
h8300                randconfig-a001-20200325
microblaze           randconfig-a001-20200325
nios2                randconfig-a001-20200325
sparc64              randconfig-a001-20200325
csky                 randconfig-a001-20200320
openrisc             randconfig-a001-20200320
s390                 randconfig-a001-20200320
sh                   randconfig-a001-20200320
xtensa               randconfig-a001-20200320
csky                 randconfig-a001-20200324
openrisc             randconfig-a001-20200324
s390                 randconfig-a001-20200324
xtensa               randconfig-a001-20200324
csky                 randconfig-a001-20200322
openrisc             randconfig-a001-20200322
s390                 randconfig-a001-20200322
sh                   randconfig-a001-20200322
xtensa               randconfig-a001-20200322
csky                 randconfig-a001-20200323
openrisc             randconfig-a001-20200323
s390                 randconfig-a001-20200323
sh                   randconfig-a001-20200323
xtensa               randconfig-a001-20200323
csky                 randconfig-a001-20200319
openrisc             randconfig-a001-20200319
s390                 randconfig-a001-20200319
sh                   randconfig-a001-20200319
xtensa               randconfig-a001-20200319
csky                 randconfig-a001-20200325
openrisc             randconfig-a001-20200325
s390                 randconfig-a001-20200325
sh                   randconfig-a001-20200325
xtensa               randconfig-a001-20200325
csky                 randconfig-a001-20200326
openrisc             randconfig-a001-20200326
s390                 randconfig-a001-20200326
xtensa               randconfig-a001-20200326
csky                 randconfig-a001-20200321
openrisc             randconfig-a001-20200321
s390                 randconfig-a001-20200321
sh                   randconfig-a001-20200321
xtensa               randconfig-a001-20200321
x86_64               randconfig-b001-20200319
x86_64               randconfig-b002-20200319
x86_64               randconfig-b003-20200319
i386                 randconfig-b001-20200319
i386                 randconfig-b002-20200319
i386                 randconfig-b003-20200319
x86_64               randconfig-b001-20200321
x86_64               randconfig-b002-20200321
x86_64               randconfig-b003-20200321
i386                 randconfig-b001-20200321
i386                 randconfig-b002-20200321
i386                 randconfig-b003-20200321
x86_64               randconfig-b001-20200323
x86_64               randconfig-b002-20200323
x86_64               randconfig-b003-20200323
i386                 randconfig-b001-20200323
i386                 randconfig-b002-20200323
i386                 randconfig-b003-20200323
x86_64               randconfig-b001-20200324
x86_64               randconfig-b002-20200324
x86_64               randconfig-b003-20200324
i386                 randconfig-b001-20200324
i386                 randconfig-b002-20200324
i386                 randconfig-b003-20200324
x86_64               randconfig-b001-20200325
x86_64               randconfig-b002-20200325
x86_64               randconfig-b003-20200325
i386                 randconfig-b001-20200325
i386                 randconfig-b002-20200325
i386                 randconfig-b003-20200325
x86_64               randconfig-b001-20200320
x86_64               randconfig-b002-20200320
x86_64               randconfig-b003-20200320
i386                 randconfig-b001-20200320
i386                 randconfig-b002-20200320
i386                 randconfig-b003-20200320
x86_64               randconfig-c001-20200319
x86_64               randconfig-c002-20200319
x86_64               randconfig-c003-20200319
i386                 randconfig-c001-20200319
i386                 randconfig-c002-20200319
i386                 randconfig-c003-20200319
x86_64               randconfig-c001-20200320
x86_64               randconfig-c002-20200320
x86_64               randconfig-c003-20200320
i386                 randconfig-c001-20200320
i386                 randconfig-c002-20200320
i386                 randconfig-c003-20200320
x86_64               randconfig-c001-20200321
x86_64               randconfig-c002-20200321
x86_64               randconfig-c003-20200321
i386                 randconfig-c001-20200321
i386                 randconfig-c002-20200321
i386                 randconfig-c003-20200321
x86_64               randconfig-c001-20200322
x86_64               randconfig-c002-20200322
x86_64               randconfig-c003-20200322
i386                 randconfig-c001-20200322
i386                 randconfig-c002-20200322
i386                 randconfig-c003-20200322
x86_64               randconfig-c001-20200324
x86_64               randconfig-c002-20200324
x86_64               randconfig-c003-20200324
i386                 randconfig-c001-20200324
i386                 randconfig-c002-20200324
i386                 randconfig-c003-20200324
x86_64               randconfig-c001-20200325
x86_64               randconfig-c002-20200325
x86_64               randconfig-c003-20200325
i386                 randconfig-c001-20200325
i386                 randconfig-c002-20200325
i386                 randconfig-c003-20200325
x86_64               randconfig-c001-20200326
x86_64               randconfig-c002-20200326
x86_64               randconfig-c003-20200326
i386                 randconfig-c001-20200326
i386                 randconfig-c002-20200326
i386                 randconfig-c003-20200326
x86_64               randconfig-c001-20200323
x86_64               randconfig-c002-20200323
x86_64               randconfig-c003-20200323
i386                 randconfig-c001-20200323
i386                 randconfig-c002-20200323
i386                 randconfig-c003-20200323
x86_64               randconfig-d001-20200319
x86_64               randconfig-d002-20200319
x86_64               randconfig-d003-20200319
i386                 randconfig-d001-20200319
i386                 randconfig-d002-20200319
i386                 randconfig-d003-20200319
x86_64               randconfig-d001-20200320
x86_64               randconfig-d002-20200320
x86_64               randconfig-d003-20200320
i386                 randconfig-d001-20200320
i386                 randconfig-d002-20200320
i386                 randconfig-d003-20200320
x86_64               randconfig-d001-20200323
x86_64               randconfig-d002-20200323
x86_64               randconfig-d003-20200323
i386                 randconfig-d001-20200323
i386                 randconfig-d002-20200323
i386                 randconfig-d003-20200323
x86_64               randconfig-d001-20200324
x86_64               randconfig-d002-20200324
x86_64               randconfig-d003-20200324
i386                 randconfig-d001-20200324
i386                 randconfig-d002-20200324
i386                 randconfig-d003-20200324
x86_64               randconfig-d001-20200321
x86_64               randconfig-d002-20200321
x86_64               randconfig-d003-20200321
i386                 randconfig-d001-20200321
i386                 randconfig-d002-20200321
i386                 randconfig-d003-20200321
x86_64               randconfig-d001-20200325
x86_64               randconfig-d002-20200325
x86_64               randconfig-d003-20200325
i386                 randconfig-d001-20200325
i386                 randconfig-d002-20200325
i386                 randconfig-d003-20200325
x86_64               randconfig-d001-20200322
x86_64               randconfig-d002-20200322
x86_64               randconfig-d003-20200322
i386                 randconfig-d001-20200322
i386                 randconfig-d002-20200322
i386                 randconfig-d003-20200322
x86_64               randconfig-e001-20200325
x86_64               randconfig-e002-20200325
x86_64               randconfig-e003-20200325
i386                 randconfig-e001-20200325
i386                 randconfig-e002-20200325
i386                 randconfig-e003-20200325
x86_64               randconfig-e001-20200319
x86_64               randconfig-e002-20200319
x86_64               randconfig-e003-20200319
i386                 randconfig-e001-20200319
i386                 randconfig-e002-20200319
i386                 randconfig-e003-20200319
x86_64               randconfig-e001-20200320
x86_64               randconfig-e002-20200320
x86_64               randconfig-e003-20200320
i386                 randconfig-e001-20200320
i386                 randconfig-e002-20200320
i386                 randconfig-e003-20200320
x86_64               randconfig-e001-20200321
x86_64               randconfig-e002-20200321
x86_64               randconfig-e003-20200321
i386                 randconfig-e001-20200321
i386                 randconfig-e002-20200321
i386                 randconfig-e003-20200321
x86_64               randconfig-e001-20200324
x86_64               randconfig-e002-20200324
x86_64               randconfig-e003-20200324
i386                 randconfig-e001-20200324
i386                 randconfig-e002-20200324
i386                 randconfig-e003-20200324
x86_64               randconfig-e001-20200322
x86_64               randconfig-e002-20200322
x86_64               randconfig-e003-20200322
i386                 randconfig-e001-20200322
i386                 randconfig-e002-20200322
i386                 randconfig-e003-20200322
x86_64               randconfig-e001-20200323
x86_64               randconfig-e002-20200323
x86_64               randconfig-e003-20200323
i386                 randconfig-e001-20200323
i386                 randconfig-e002-20200323
i386                 randconfig-e003-20200323
x86_64               randconfig-e001-20200326
x86_64               randconfig-e002-20200326
x86_64               randconfig-e003-20200326
i386                 randconfig-e001-20200326
i386                 randconfig-e002-20200326
i386                 randconfig-e003-20200326
x86_64               randconfig-f001-20200319
x86_64               randconfig-f002-20200319
x86_64               randconfig-f003-20200319
i386                 randconfig-f001-20200319
i386                 randconfig-f002-20200319
i386                 randconfig-f003-20200319
x86_64               randconfig-f001-20200320
x86_64               randconfig-f002-20200320
x86_64               randconfig-f003-20200320
i386                 randconfig-f001-20200320
i386                 randconfig-f002-20200320
i386                 randconfig-f003-20200320
x86_64               randconfig-f001-20200322
x86_64               randconfig-f002-20200322
x86_64               randconfig-f003-20200322
i386                 randconfig-f001-20200322
i386                 randconfig-f002-20200322
i386                 randconfig-f003-20200322
x86_64               randconfig-f001-20200324
x86_64               randconfig-f002-20200324
x86_64               randconfig-f003-20200324
i386                 randconfig-f001-20200324
i386                 randconfig-f002-20200324
i386                 randconfig-f003-20200324
x86_64               randconfig-f001-20200321
x86_64               randconfig-f002-20200321
x86_64               randconfig-f003-20200321
i386                 randconfig-f001-20200321
i386                 randconfig-f002-20200321
i386                 randconfig-f003-20200321
x86_64               randconfig-f001-20200323
x86_64               randconfig-f002-20200323
x86_64               randconfig-f003-20200323
i386                 randconfig-f001-20200323
i386                 randconfig-f002-20200323
i386                 randconfig-f003-20200323
x86_64               randconfig-f001-20200326
x86_64               randconfig-f002-20200326
x86_64               randconfig-f003-20200326
i386                 randconfig-f001-20200326
i386                 randconfig-f002-20200326
i386                 randconfig-f003-20200326
x86_64               randconfig-f001-20200325
x86_64               randconfig-f002-20200325
x86_64               randconfig-f003-20200325
i386                 randconfig-f001-20200325
i386                 randconfig-f002-20200325
i386                 randconfig-f003-20200325
x86_64               randconfig-g001-20200320
x86_64               randconfig-g002-20200320
x86_64               randconfig-g003-20200320
i386                 randconfig-g001-20200320
i386                 randconfig-g002-20200320
i386                 randconfig-g003-20200320
x86_64               randconfig-g001-20200323
x86_64               randconfig-g002-20200323
x86_64               randconfig-g003-20200323
i386                 randconfig-g001-20200323
i386                 randconfig-g002-20200323
i386                 randconfig-g003-20200323
x86_64               randconfig-g001-20200324
x86_64               randconfig-g002-20200324
x86_64               randconfig-g003-20200324
i386                 randconfig-g001-20200324
i386                 randconfig-g002-20200324
i386                 randconfig-g003-20200324
x86_64               randconfig-g001-20200325
x86_64               randconfig-g002-20200325
x86_64               randconfig-g003-20200325
i386                 randconfig-g001-20200325
i386                 randconfig-g002-20200325
i386                 randconfig-g003-20200325
x86_64               randconfig-g001-20200319
x86_64               randconfig-g002-20200319
x86_64               randconfig-g003-20200319
i386                 randconfig-g001-20200319
i386                 randconfig-g002-20200319
i386                 randconfig-g003-20200319
x86_64               randconfig-g001-20200321
x86_64               randconfig-g002-20200321
x86_64               randconfig-g003-20200321
i386                 randconfig-g001-20200321
i386                 randconfig-g002-20200321
i386                 randconfig-g003-20200321
x86_64               randconfig-g001-20200322
x86_64               randconfig-g002-20200322
x86_64               randconfig-g003-20200322
i386                 randconfig-g001-20200322
i386                 randconfig-g002-20200322
i386                 randconfig-g003-20200322
x86_64               randconfig-h001-20200322
x86_64               randconfig-h002-20200322
x86_64               randconfig-h003-20200322
i386                 randconfig-h001-20200322
i386                 randconfig-h002-20200322
i386                 randconfig-h003-20200322
x86_64               randconfig-h001-20200323
x86_64               randconfig-h002-20200323
x86_64               randconfig-h003-20200323
i386                 randconfig-h001-20200323
i386                 randconfig-h002-20200323
i386                 randconfig-h003-20200323
x86_64               randconfig-h001-20200324
x86_64               randconfig-h002-20200324
x86_64               randconfig-h003-20200324
i386                 randconfig-h001-20200324
i386                 randconfig-h002-20200324
i386                 randconfig-h003-20200324
x86_64               randconfig-h001-20200320
x86_64               randconfig-h002-20200320
x86_64               randconfig-h003-20200320
i386                 randconfig-h001-20200320
i386                 randconfig-h002-20200320
i386                 randconfig-h003-20200320
x86_64               randconfig-h001-20200321
x86_64               randconfig-h002-20200321
x86_64               randconfig-h003-20200321
i386                 randconfig-h001-20200321
i386                 randconfig-h002-20200321
i386                 randconfig-h003-20200321
x86_64               randconfig-h001-20200319
x86_64               randconfig-h002-20200319
x86_64               randconfig-h003-20200319
i386                 randconfig-h001-20200319
i386                 randconfig-h002-20200319
i386                 randconfig-h003-20200319
x86_64               randconfig-h001-20200326
x86_64               randconfig-h002-20200326
x86_64               randconfig-h003-20200326
i386                 randconfig-h001-20200326
i386                 randconfig-h002-20200326
i386                 randconfig-h003-20200326
x86_64               randconfig-h001-20200325
x86_64               randconfig-h002-20200325
x86_64               randconfig-h003-20200325
i386                 randconfig-h001-20200325
i386                 randconfig-h002-20200325
i386                 randconfig-h003-20200325
arm                  randconfig-a001-20200321
arm64                randconfig-a001-20200321
ia64                 randconfig-a001-20200321
powerpc              randconfig-a001-20200321
arc                  randconfig-a001-20200322
arm                  randconfig-a001-20200322
arm64                randconfig-a001-20200322
ia64                 randconfig-a001-20200322
powerpc              randconfig-a001-20200322
sparc                randconfig-a001-20200322
arc                  randconfig-a001-20200323
arm                  randconfig-a001-20200323
arm64                randconfig-a001-20200323
ia64                 randconfig-a001-20200323
powerpc              randconfig-a001-20200323
sparc                randconfig-a001-20200323
arc                  randconfig-a001-20200324
arm                  randconfig-a001-20200324
arm64                randconfig-a001-20200324
ia64                 randconfig-a001-20200324
powerpc              randconfig-a001-20200324
sparc                randconfig-a001-20200324
arc                  randconfig-a001-20200319
arm                  randconfig-a001-20200319
arm64                randconfig-a001-20200319
ia64                 randconfig-a001-20200319
powerpc              randconfig-a001-20200319
sparc                randconfig-a001-20200319
arc                  randconfig-a001-20200325
arm                  randconfig-a001-20200325
arm64                randconfig-a001-20200325
ia64                 randconfig-a001-20200325
powerpc              randconfig-a001-20200325
sparc                randconfig-a001-20200325
arc                  randconfig-a001-20200320
arm                  randconfig-a001-20200320
arm64                randconfig-a001-20200320
ia64                 randconfig-a001-20200320
powerpc              randconfig-a001-20200320
sparc                randconfig-a001-20200320
arc                  randconfig-a001-20200326
arm                  randconfig-a001-20200326
arm64                randconfig-a001-20200326
ia64                 randconfig-a001-20200326
powerpc              randconfig-a001-20200326
sparc                randconfig-a001-20200326
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
s390                             alldefconfig
s390                             allmodconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                       zfcpdump_defconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
sparc                               defconfig
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
