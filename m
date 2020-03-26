Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5225D1939B0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 08:37:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y4bNoTFKjdf+84ZS4bvSjLf/weq/HPE7C2ZzOe392TQ=; b=eH0g/UY09/QtVP
	ury3V1kLRm8J7pyDoERWiP5s/SjB3lK0WP3fYrUnsTF8NCZ1F2ztT0JDTRn0tYFdC95BF6CuQdIx5
	9vQSOjb5lEw2blvWHQeswKsOdvXH3XLCnDQ4M0XoIFxLBZW5nz5IurhmByqBKpyVFhmXmaarn8mPf
	w7i2wHnmeZ/rSZCA5Ngur+yZp/6wYsqcM4ihMQTADKfUxXKQsTO3BRHFVtHOWQa7YENIneNpEHCOK
	KLVKRFhp/STlQPYdjNnoaCgkkoMuS5yAogLeqaMx70eA8EyYooBa5F1qEnSbWvu2tLWM84rPUp42H
	Va+uDbfWuvnZOKMnmhIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHN4g-0001dV-Mc; Thu, 26 Mar 2020 07:37:10 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHN4X-0001cx-Jd
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 07:37:03 +0000
IronPort-SDR: k3Kn1X7+cEP2t5WH1Io/UQ2KtVT+tuPzgrqGMU4y8Hb3ucP0kh0zZzOGVo2OSv0NHUqbxowRF5
 pIRyxBQ+u4fA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 00:36:59 -0700
IronPort-SDR: VM7/IKTBfnJr9Q7SjFLgzIedNZ7Uwvkz3beOyG99XuhJUc1aoOltwS/a07oL9DGB2WmF20vW+w
 GfSjDTDCQrag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,307,1580803200"; d="scan'208";a="265784994"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 26 Mar 2020 00:36:57 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jHN4S-0000xf-Vq; Thu, 26 Mar 2020 15:36:56 +0800
Date: Thu, 26 Mar 2020 15:36:23 +0800
From: kbuild test robot <lkp@intel.com>
To: Kevin Hilman <khilman@baylibre.com>
Subject: [arm-soc:amlogic/dt64] BUILD SUCCESS
 cd13d5f115f91065319c7604132d14db7048391e
Message-ID: <5e7c5b77.+r7W3HdYS+VxdRtM%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_003701_661428_5495F8E2 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -3.7 (---)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-3.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git  amlogic/dt64
branch HEAD: cd13d5f115f91065319c7604132d14db7048391e  arm64: dts: meson: add thermal zones to meson gx devices

elapsed time: 13782m

configs tested: 260
configs skipped: 211

The following configs have been built successfully.
More configs may be tested in the coming days.

arm64                            allyesconfig
arm64                            allmodconfig
arm64                             allnoconfig
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
c6x                        evmc6678_defconfig
ia64                             allyesconfig
nds32                             allnoconfig
sh                               allmodconfig
i386                              allnoconfig
i386                             alldefconfig
i386                             allyesconfig
i386                                defconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
arm                              allmodconfig
c6x                              allyesconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
alpha                               defconfig
csky                                defconfig
nds32                               defconfig
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
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
parisc                            allnoconfig
parisc                           allyesconfig
parisc                generic-32bit_defconfig
parisc                generic-64bit_defconfig
x86_64               randconfig-a001-20200316
x86_64               randconfig-a002-20200316
x86_64               randconfig-a003-20200316
i386                 randconfig-a001-20200316
i386                 randconfig-a002-20200316
i386                 randconfig-a003-20200316
x86_64               randconfig-a001-20200326
x86_64               randconfig-a002-20200326
x86_64               randconfig-a003-20200326
i386                 randconfig-a001-20200326
i386                 randconfig-a002-20200326
i386                 randconfig-a003-20200326
alpha                randconfig-a001-20200326
m68k                 randconfig-a001-20200326
mips                 randconfig-a001-20200326
nds32                randconfig-a001-20200326
parisc               randconfig-a001-20200326
riscv                randconfig-a001-20200326
alpha                randconfig-a001-20200316
m68k                 randconfig-a001-20200316
mips                 randconfig-a001-20200316
nds32                randconfig-a001-20200316
parisc               randconfig-a001-20200316
riscv                randconfig-a001-20200316
c6x                  randconfig-a001-20200316
h8300                randconfig-a001-20200316
microblaze           randconfig-a001-20200316
nios2                randconfig-a001-20200316
sparc64              randconfig-a001-20200316
c6x                  randconfig-a001-20200325
h8300                randconfig-a001-20200325
microblaze           randconfig-a001-20200325
nios2                randconfig-a001-20200325
sparc64              randconfig-a001-20200325
c6x                  randconfig-a001-20200317
h8300                randconfig-a001-20200317
microblaze           randconfig-a001-20200317
nios2                randconfig-a001-20200317
sparc64              randconfig-a001-20200317
csky                 randconfig-a001-20200316
openrisc             randconfig-a001-20200316
s390                 randconfig-a001-20200316
sh                   randconfig-a001-20200316
xtensa               randconfig-a001-20200316
csky                 randconfig-a001-20200326
openrisc             randconfig-a001-20200326
s390                 randconfig-a001-20200326
xtensa               randconfig-a001-20200326
x86_64               randconfig-b001-20200325
x86_64               randconfig-b002-20200325
x86_64               randconfig-b003-20200325
i386                 randconfig-b001-20200325
i386                 randconfig-b002-20200325
i386                 randconfig-b003-20200325
x86_64               randconfig-b001-20200317
x86_64               randconfig-b002-20200317
x86_64               randconfig-b003-20200317
i386                 randconfig-b001-20200317
i386                 randconfig-b002-20200317
i386                 randconfig-b003-20200317
x86_64               randconfig-c001-20200326
x86_64               randconfig-c002-20200326
x86_64               randconfig-c003-20200326
i386                 randconfig-c001-20200326
i386                 randconfig-c002-20200326
i386                 randconfig-c003-20200326
x86_64               randconfig-c001-20200316
x86_64               randconfig-c002-20200316
x86_64               randconfig-c003-20200316
i386                 randconfig-c001-20200316
i386                 randconfig-c002-20200316
i386                 randconfig-c003-20200316
x86_64               randconfig-c001-20200325
x86_64               randconfig-c002-20200325
x86_64               randconfig-c003-20200325
i386                 randconfig-c001-20200325
i386                 randconfig-c002-20200325
i386                 randconfig-c003-20200325
x86_64               randconfig-d001-20200317
x86_64               randconfig-d002-20200317
x86_64               randconfig-d003-20200317
i386                 randconfig-d001-20200317
i386                 randconfig-d002-20200317
i386                 randconfig-d003-20200317
x86_64               randconfig-d001-20200316
x86_64               randconfig-d002-20200316
x86_64               randconfig-d003-20200316
i386                 randconfig-d001-20200316
i386                 randconfig-d002-20200316
i386                 randconfig-d003-20200316
x86_64               randconfig-d001-20200325
x86_64               randconfig-d002-20200325
x86_64               randconfig-d003-20200325
i386                 randconfig-d001-20200325
i386                 randconfig-d002-20200325
i386                 randconfig-d003-20200325
x86_64               randconfig-e001-20200316
x86_64               randconfig-e002-20200316
x86_64               randconfig-e003-20200316
i386                 randconfig-e001-20200316
i386                 randconfig-e002-20200316
i386                 randconfig-e003-20200316
x86_64               randconfig-e001-20200325
x86_64               randconfig-e002-20200325
x86_64               randconfig-e003-20200325
i386                 randconfig-e001-20200325
i386                 randconfig-e002-20200325
i386                 randconfig-e003-20200325
x86_64               randconfig-e001-20200326
x86_64               randconfig-e002-20200326
x86_64               randconfig-e003-20200326
i386                 randconfig-e001-20200326
i386                 randconfig-e002-20200326
i386                 randconfig-e003-20200326
x86_64               randconfig-f001-20200316
x86_64               randconfig-f002-20200316
x86_64               randconfig-f003-20200316
i386                 randconfig-f001-20200316
i386                 randconfig-f002-20200316
i386                 randconfig-f003-20200316
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
x86_64               randconfig-g001-20200316
x86_64               randconfig-g002-20200316
x86_64               randconfig-g003-20200316
i386                 randconfig-g001-20200316
i386                 randconfig-g002-20200316
i386                 randconfig-g003-20200316
x86_64               randconfig-h001-20200316
x86_64               randconfig-h002-20200316
x86_64               randconfig-h003-20200316
i386                 randconfig-h001-20200316
i386                 randconfig-h002-20200316
i386                 randconfig-h003-20200316
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
arc                  randconfig-a001-20200325
arm                  randconfig-a001-20200325
arm64                randconfig-a001-20200325
ia64                 randconfig-a001-20200325
powerpc              randconfig-a001-20200325
sparc                randconfig-a001-20200325
arc                  randconfig-a001-20200316
arm                  randconfig-a001-20200316
arm64                randconfig-a001-20200316
ia64                 randconfig-a001-20200316
powerpc              randconfig-a001-20200316
sparc                randconfig-a001-20200316
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
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
um                             i386_defconfig
um                           x86_64_defconfig
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
