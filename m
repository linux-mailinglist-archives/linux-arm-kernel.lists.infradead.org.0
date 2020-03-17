Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22766188EF2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 21:25:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FZo6kX83MxeOg1B9JG8UENpnVDhmWpMJT9g6L/bmFhk=; b=iSrIjcmt9jhNhs
	LJjoYTXO4NRNaU53zP5AN1GXi1zyxD6cV671155DBXbNQHFcOD2wj2rl9BvxAP6Zv2BO+oYPJZive
	bHsupBGQRvw3hTIFNQIkkf/zK/Fz2clnwiqN/TrFuYVv1WalXO+d4iVLFNg30LIH8U0WaHLLJ49UN
	muWOuuWD87Zw2exWzKXRIaz+9aTTMOawVE3LGTHhPpbiXM9MHOrNt8KxeXYiH4OQAGjMBr7/CV64E
	UUFG+ya2Tg/rY1zxRbFbj165M6VhZOKlBdt5HRkDn1RMVVT4gaIlCyvi8f0z31KhteFEhjwXPpMNd
	IKgWzxogUDZu9YP4mang==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEIll-0006cw-PJ; Tue, 17 Mar 2020 20:24:57 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEIld-0006cK-7y
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 20:24:51 +0000
IronPort-SDR: TaI2kZ7120dQW5lOgG/HWgJlrhO+HbnhRRwq+wLHXVgf24Tyr+ugrTUQhkMZneAH5+1vZNA9zd
 +j73eXA7eP4Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 13:24:45 -0700
IronPort-SDR: EAGTgl6VPMzeUUaLheo6Y4VR2S8yS1JYlw9uPBBA1ve90QAJsLcT9yA1G2Uyh2au39ZeplhcOy
 N2XmL72RQ9ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,565,1574150400"; d="scan'208";a="279510334"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 17 Mar 2020 13:24:43 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jEIlX-0008TC-2o; Wed, 18 Mar 2020 04:24:43 +0800
Date: Wed, 18 Mar 2020 04:23:50 +0800
From: kbuild test robot <lkp@intel.com>
To: Santosh Shilimkar <santosh.shilimkar@oracle.com>
Subject: [keystone:next] BUILD SUCCESS 560b4d4691b07819f8d3e0cb030f72f863ec1ba3
Message-ID: <5e7131d6.E65EeEH5k8IxQGLx%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_132449_355839_8BB6BFF8 
X-CRM114-Status: UNSURE (   5.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/ssantosh/linux-keystone.git  next
branch HEAD: 560b4d4691b07819f8d3e0cb030f72f863ec1ba3  Merge branch 'for_5.7/keystone-dts' into next

elapsed time: 14540m

configs tested: 551
configs skipped: 150

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                              allyesconfig
arm                               allnoconfig
arm                              allmodconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm64                            allyesconfig
arm                           efm32_defconfig
arm                         at91_dt_defconfig
arm                        shmobile_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                           sunxi_defconfig
arm                        multi_v7_defconfig
arm64                               defconfig
sparc                            allyesconfig
sparc64                          allyesconfig
sh                                allnoconfig
sparc64                          allmodconfig
openrisc                 simple_smp_defconfig
h8300                     edosk2674_defconfig
ia64                              allnoconfig
powerpc                       ppc64_defconfig
c6x                        evmc6678_defconfig
ia64                             allmodconfig
ia64                             allyesconfig
riscv                             allnoconfig
openrisc                    or1ksim_defconfig
mips                              allnoconfig
mips                             allyesconfig
riscv                               defconfig
um                             i386_defconfig
sh                               allmodconfig
um                           x86_64_defconfig
sh                            titan_defconfig
i386                                defconfig
ia64                                defconfig
powerpc                             defconfig
parisc                generic-32bit_defconfig
s390                             alldefconfig
um                                  defconfig
nds32                             allnoconfig
sparc                               defconfig
s390                                defconfig
i386                              allnoconfig
i386                             alldefconfig
i386                             allyesconfig
ia64                             alldefconfig
c6x                              allyesconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
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
powerpc                          rhel-kconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
parisc                            allnoconfig
parisc                           allyesconfig
parisc                generic-64bit_defconfig
x86_64               randconfig-a001-20200312
x86_64               randconfig-a002-20200312
x86_64               randconfig-a003-20200312
i386                 randconfig-a001-20200312
i386                 randconfig-a002-20200312
i386                 randconfig-a003-20200312
x86_64               randconfig-a001-20200316
x86_64               randconfig-a002-20200316
x86_64               randconfig-a003-20200316
i386                 randconfig-a001-20200316
i386                 randconfig-a002-20200316
i386                 randconfig-a003-20200316
x86_64               randconfig-a001-20200317
x86_64               randconfig-a002-20200317
x86_64               randconfig-a003-20200317
i386                 randconfig-a001-20200317
i386                 randconfig-a002-20200317
i386                 randconfig-a003-20200317
x86_64               randconfig-a001-20200310
x86_64               randconfig-a002-20200310
x86_64               randconfig-a003-20200310
i386                 randconfig-a001-20200310
i386                 randconfig-a002-20200310
i386                 randconfig-a003-20200310
x86_64               randconfig-a001-20200311
x86_64               randconfig-a002-20200311
x86_64               randconfig-a003-20200311
i386                 randconfig-a001-20200311
i386                 randconfig-a002-20200311
i386                 randconfig-a003-20200311
x86_64               randconfig-a001-20200308
x86_64               randconfig-a002-20200308
x86_64               randconfig-a003-20200308
i386                 randconfig-a001-20200308
i386                 randconfig-a002-20200308
i386                 randconfig-a003-20200308
x86_64               randconfig-a001-20200313
x86_64               randconfig-a002-20200313
x86_64               randconfig-a003-20200313
i386                 randconfig-a001-20200313
i386                 randconfig-a002-20200313
i386                 randconfig-a003-20200313
alpha                randconfig-a001-20200311
m68k                 randconfig-a001-20200311
mips                 randconfig-a001-20200311
nds32                randconfig-a001-20200311
parisc               randconfig-a001-20200311
riscv                randconfig-a001-20200311
alpha                randconfig-a001-20200312
m68k                 randconfig-a001-20200312
mips                 randconfig-a001-20200312
nds32                randconfig-a001-20200312
parisc               randconfig-a001-20200312
riscv                randconfig-a001-20200312
alpha                randconfig-a001-20200316
m68k                 randconfig-a001-20200316
mips                 randconfig-a001-20200316
nds32                randconfig-a001-20200316
parisc               randconfig-a001-20200316
riscv                randconfig-a001-20200316
alpha                randconfig-a001-20200309
m68k                 randconfig-a001-20200309
mips                 randconfig-a001-20200309
nds32                randconfig-a001-20200309
parisc               randconfig-a001-20200309
riscv                randconfig-a001-20200309
alpha                randconfig-a001-20200317
m68k                 randconfig-a001-20200317
mips                 randconfig-a001-20200317
nds32                randconfig-a001-20200317
parisc               randconfig-a001-20200317
riscv                randconfig-a001-20200317
c6x                  randconfig-a001-20200317
h8300                randconfig-a001-20200317
microblaze           randconfig-a001-20200317
nios2                randconfig-a001-20200317
sparc64              randconfig-a001-20200317
c6x                  randconfig-a001-20200311
h8300                randconfig-a001-20200311
microblaze           randconfig-a001-20200311
nios2                randconfig-a001-20200311
sparc64              randconfig-a001-20200311
c6x                  randconfig-a001-20200312
h8300                randconfig-a001-20200312
microblaze           randconfig-a001-20200312
nios2                randconfig-a001-20200312
sparc64              randconfig-a001-20200312
c6x                  randconfig-a001-20200316
h8300                randconfig-a001-20200316
microblaze           randconfig-a001-20200316
nios2                randconfig-a001-20200316
sparc64              randconfig-a001-20200316
c6x                  randconfig-a001-20200310
h8300                randconfig-a001-20200310
microblaze           randconfig-a001-20200310
nios2                randconfig-a001-20200310
sparc64              randconfig-a001-20200310
c6x                  randconfig-a001-20200309
h8300                randconfig-a001-20200309
microblaze           randconfig-a001-20200309
nios2                randconfig-a001-20200309
sparc64              randconfig-a001-20200309
csky                 randconfig-a001-20200311
openrisc             randconfig-a001-20200311
s390                 randconfig-a001-20200311
sh                   randconfig-a001-20200311
xtensa               randconfig-a001-20200311
csky                 randconfig-a001-20200316
s390                 randconfig-a001-20200316
sh                   randconfig-a001-20200316
xtensa               randconfig-a001-20200316
openrisc             randconfig-a001-20200316
csky                 randconfig-a001-20200317
openrisc             randconfig-a001-20200317
s390                 randconfig-a001-20200317
sh                   randconfig-a001-20200317
xtensa               randconfig-a001-20200317
csky                 randconfig-a001-20200309
openrisc             randconfig-a001-20200309
s390                 randconfig-a001-20200309
sh                   randconfig-a001-20200309
xtensa               randconfig-a001-20200309
csky                 randconfig-a001-20200310
openrisc             randconfig-a001-20200310
s390                 randconfig-a001-20200310
sh                   randconfig-a001-20200310
xtensa               randconfig-a001-20200310
csky                 randconfig-a001-20200308
openrisc             randconfig-a001-20200308
s390                 randconfig-a001-20200308
sh                   randconfig-a001-20200308
xtensa               randconfig-a001-20200308
x86_64               randconfig-b001-20200317
x86_64               randconfig-b002-20200317
x86_64               randconfig-b003-20200317
i386                 randconfig-b001-20200317
i386                 randconfig-b002-20200317
i386                 randconfig-b003-20200317
x86_64               randconfig-b001-20200312
x86_64               randconfig-b002-20200312
x86_64               randconfig-b003-20200312
i386                 randconfig-b001-20200312
i386                 randconfig-b002-20200312
i386                 randconfig-b003-20200312
x86_64               randconfig-b001-20200311
x86_64               randconfig-b002-20200311
x86_64               randconfig-b003-20200311
i386                 randconfig-b001-20200311
i386                 randconfig-b002-20200311
i386                 randconfig-b003-20200311
x86_64               randconfig-b001-20200308
x86_64               randconfig-b002-20200308
x86_64               randconfig-b003-20200308
i386                 randconfig-b001-20200308
i386                 randconfig-b002-20200308
i386                 randconfig-b003-20200308
x86_64               randconfig-b001-20200316
x86_64               randconfig-b002-20200316
x86_64               randconfig-b003-20200316
i386                 randconfig-b001-20200316
i386                 randconfig-b002-20200316
i386                 randconfig-b003-20200316
x86_64               randconfig-b001-20200309
x86_64               randconfig-b002-20200309
x86_64               randconfig-b003-20200309
i386                 randconfig-b001-20200309
i386                 randconfig-b002-20200309
i386                 randconfig-b003-20200309
x86_64               randconfig-b001-20200310
x86_64               randconfig-b002-20200310
x86_64               randconfig-b003-20200310
i386                 randconfig-b001-20200310
i386                 randconfig-b002-20200310
i386                 randconfig-b003-20200310
x86_64               randconfig-c001-20200310
x86_64               randconfig-c002-20200310
x86_64               randconfig-c003-20200310
i386                 randconfig-c001-20200310
i386                 randconfig-c002-20200310
i386                 randconfig-c003-20200310
x86_64               randconfig-c001-20200312
x86_64               randconfig-c002-20200312
x86_64               randconfig-c003-20200312
i386                 randconfig-c001-20200312
i386                 randconfig-c002-20200312
i386                 randconfig-c003-20200312
x86_64               randconfig-c001-20200316
x86_64               randconfig-c002-20200316
x86_64               randconfig-c003-20200316
i386                 randconfig-c001-20200316
i386                 randconfig-c002-20200316
i386                 randconfig-c003-20200316
x86_64               randconfig-c001-20200317
x86_64               randconfig-c002-20200317
x86_64               randconfig-c003-20200317
i386                 randconfig-c001-20200317
i386                 randconfig-c002-20200317
i386                 randconfig-c003-20200317
x86_64               randconfig-c001-20200308
x86_64               randconfig-c002-20200308
x86_64               randconfig-c003-20200308
i386                 randconfig-c001-20200308
i386                 randconfig-c002-20200308
i386                 randconfig-c003-20200308
x86_64               randconfig-c001-20200311
x86_64               randconfig-c002-20200311
x86_64               randconfig-c003-20200311
i386                 randconfig-c001-20200311
i386                 randconfig-c002-20200311
i386                 randconfig-c003-20200311
x86_64               randconfig-c001-20200309
x86_64               randconfig-c002-20200309
x86_64               randconfig-c003-20200309
i386                 randconfig-c001-20200309
i386                 randconfig-c002-20200309
i386                 randconfig-c003-20200309
x86_64               randconfig-c001-20200313
x86_64               randconfig-c002-20200313
x86_64               randconfig-c003-20200313
i386                 randconfig-c001-20200313
i386                 randconfig-c002-20200313
i386                 randconfig-c003-20200313
x86_64               randconfig-d001-20200310
x86_64               randconfig-d002-20200310
x86_64               randconfig-d003-20200310
i386                 randconfig-d001-20200310
i386                 randconfig-d002-20200310
i386                 randconfig-d003-20200310
x86_64               randconfig-d001-20200312
x86_64               randconfig-d002-20200312
x86_64               randconfig-d003-20200312
i386                 randconfig-d001-20200312
i386                 randconfig-d002-20200312
i386                 randconfig-d003-20200312
x86_64               randconfig-d001-20200316
x86_64               randconfig-d002-20200316
x86_64               randconfig-d003-20200316
i386                 randconfig-d001-20200316
i386                 randconfig-d002-20200316
i386                 randconfig-d003-20200316
x86_64               randconfig-d001-20200311
x86_64               randconfig-d002-20200311
x86_64               randconfig-d003-20200311
i386                 randconfig-d001-20200311
i386                 randconfig-d002-20200311
i386                 randconfig-d003-20200311
x86_64               randconfig-d001-20200313
x86_64               randconfig-d002-20200313
x86_64               randconfig-d003-20200313
i386                 randconfig-d001-20200313
i386                 randconfig-d002-20200313
i386                 randconfig-d003-20200313
x86_64               randconfig-d001-20200317
x86_64               randconfig-d002-20200317
x86_64               randconfig-d003-20200317
i386                 randconfig-d001-20200317
i386                 randconfig-d002-20200317
i386                 randconfig-d003-20200317
x86_64               randconfig-d001-20200309
x86_64               randconfig-d002-20200309
x86_64               randconfig-d003-20200309
i386                 randconfig-d001-20200309
i386                 randconfig-d002-20200309
i386                 randconfig-d003-20200309
x86_64               randconfig-d001-20200308
x86_64               randconfig-d002-20200308
x86_64               randconfig-d003-20200308
i386                 randconfig-d001-20200308
i386                 randconfig-d002-20200308
i386                 randconfig-d003-20200308
x86_64               randconfig-e001-20200310
x86_64               randconfig-e002-20200310
x86_64               randconfig-e003-20200310
i386                 randconfig-e001-20200310
i386                 randconfig-e002-20200310
i386                 randconfig-e003-20200310
x86_64               randconfig-e001-20200316
x86_64               randconfig-e002-20200316
x86_64               randconfig-e003-20200316
i386                 randconfig-e001-20200316
i386                 randconfig-e002-20200316
i386                 randconfig-e003-20200316
x86_64               randconfig-e001-20200311
x86_64               randconfig-e002-20200311
x86_64               randconfig-e003-20200311
i386                 randconfig-e001-20200311
i386                 randconfig-e002-20200311
i386                 randconfig-e003-20200311
x86_64               randconfig-e001-20200312
x86_64               randconfig-e002-20200312
x86_64               randconfig-e003-20200312
i386                 randconfig-e001-20200312
i386                 randconfig-e002-20200312
i386                 randconfig-e003-20200312
x86_64               randconfig-e001-20200317
x86_64               randconfig-e002-20200317
x86_64               randconfig-e003-20200317
i386                 randconfig-e001-20200317
i386                 randconfig-e002-20200317
i386                 randconfig-e003-20200317
x86_64               randconfig-f001-20200316
x86_64               randconfig-f002-20200316
x86_64               randconfig-f003-20200316
i386                 randconfig-f001-20200316
i386                 randconfig-f002-20200316
i386                 randconfig-f003-20200316
x86_64               randconfig-f001-20200310
x86_64               randconfig-f002-20200310
x86_64               randconfig-f003-20200310
i386                 randconfig-f001-20200310
i386                 randconfig-f002-20200310
i386                 randconfig-f003-20200310
x86_64               randconfig-f001-20200317
x86_64               randconfig-f002-20200317
x86_64               randconfig-f003-20200317
i386                 randconfig-f001-20200317
i386                 randconfig-f002-20200317
i386                 randconfig-f003-20200317
x86_64               randconfig-f001-20200311
x86_64               randconfig-f002-20200311
x86_64               randconfig-f003-20200311
i386                 randconfig-f001-20200311
i386                 randconfig-f002-20200311
i386                 randconfig-f003-20200311
x86_64               randconfig-f001-20200312
x86_64               randconfig-f002-20200312
x86_64               randconfig-f003-20200312
i386                 randconfig-f001-20200312
i386                 randconfig-f002-20200312
i386                 randconfig-f003-20200312
x86_64               randconfig-f001-20200308
x86_64               randconfig-f002-20200308
x86_64               randconfig-f003-20200308
i386                 randconfig-f001-20200308
i386                 randconfig-f002-20200308
i386                 randconfig-f003-20200308
x86_64               randconfig-f001-20200309
x86_64               randconfig-f002-20200309
x86_64               randconfig-f003-20200309
i386                 randconfig-f001-20200309
i386                 randconfig-f002-20200309
i386                 randconfig-f003-20200309
x86_64               randconfig-g001-20200310
x86_64               randconfig-g002-20200310
x86_64               randconfig-g003-20200310
i386                 randconfig-g001-20200310
i386                 randconfig-g002-20200310
i386                 randconfig-g003-20200310
x86_64               randconfig-g001-20200312
x86_64               randconfig-g002-20200312
x86_64               randconfig-g003-20200312
i386                 randconfig-g001-20200312
i386                 randconfig-g002-20200312
i386                 randconfig-g003-20200312
x86_64               randconfig-g001-20200316
x86_64               randconfig-g002-20200316
x86_64               randconfig-g003-20200316
i386                 randconfig-g001-20200316
i386                 randconfig-g002-20200316
i386                 randconfig-g003-20200316
x86_64               randconfig-g001-20200317
x86_64               randconfig-g002-20200317
x86_64               randconfig-g003-20200317
i386                 randconfig-g001-20200317
i386                 randconfig-g002-20200317
i386                 randconfig-g003-20200317
x86_64               randconfig-g001-20200308
x86_64               randconfig-g002-20200308
x86_64               randconfig-g003-20200308
i386                 randconfig-g001-20200308
i386                 randconfig-g002-20200308
i386                 randconfig-g003-20200308
x86_64               randconfig-g001-20200311
x86_64               randconfig-g002-20200311
x86_64               randconfig-g003-20200311
i386                 randconfig-g001-20200311
i386                 randconfig-g002-20200311
i386                 randconfig-g003-20200311
x86_64               randconfig-g001-20200309
x86_64               randconfig-g002-20200309
x86_64               randconfig-g003-20200309
i386                 randconfig-g001-20200309
i386                 randconfig-g002-20200309
i386                 randconfig-g003-20200309
x86_64               randconfig-h001-20200308
x86_64               randconfig-h002-20200308
x86_64               randconfig-h003-20200308
i386                 randconfig-h001-20200308
i386                 randconfig-h002-20200308
i386                 randconfig-h003-20200308
x86_64               randconfig-h001-20200310
x86_64               randconfig-h002-20200310
x86_64               randconfig-h003-20200310
i386                 randconfig-h001-20200310
i386                 randconfig-h002-20200310
i386                 randconfig-h003-20200310
x86_64               randconfig-h001-20200311
x86_64               randconfig-h002-20200311
x86_64               randconfig-h003-20200311
i386                 randconfig-h001-20200311
i386                 randconfig-h002-20200311
i386                 randconfig-h003-20200311
x86_64               randconfig-h001-20200317
x86_64               randconfig-h002-20200317
x86_64               randconfig-h003-20200317
i386                 randconfig-h001-20200317
i386                 randconfig-h002-20200317
i386                 randconfig-h003-20200317
x86_64               randconfig-h001-20200316
x86_64               randconfig-h002-20200316
x86_64               randconfig-h003-20200316
i386                 randconfig-h001-20200316
i386                 randconfig-h002-20200316
i386                 randconfig-h003-20200316
x86_64               randconfig-h001-20200312
x86_64               randconfig-h002-20200312
x86_64               randconfig-h003-20200312
i386                 randconfig-h001-20200312
i386                 randconfig-h002-20200312
i386                 randconfig-h003-20200312
x86_64               randconfig-h001-20200309
x86_64               randconfig-h002-20200309
x86_64               randconfig-h003-20200309
i386                 randconfig-h001-20200309
i386                 randconfig-h002-20200309
i386                 randconfig-h003-20200309
arc                  randconfig-a001-20200317
arm                  randconfig-a001-20200317
arm64                randconfig-a001-20200317
ia64                 randconfig-a001-20200317
powerpc              randconfig-a001-20200317
sparc                randconfig-a001-20200317
arc                  randconfig-a001-20200312
arm                  randconfig-a001-20200312
arm64                randconfig-a001-20200312
ia64                 randconfig-a001-20200312
powerpc              randconfig-a001-20200312
sparc                randconfig-a001-20200312
arm                  randconfig-a001-20200308
arc                  randconfig-a001-20200310
arm                  randconfig-a001-20200310
arm64                randconfig-a001-20200310
ia64                 randconfig-a001-20200310
powerpc              randconfig-a001-20200310
sparc                randconfig-a001-20200310
arc                  randconfig-a001-20200311
arm                  randconfig-a001-20200311
arm64                randconfig-a001-20200311
ia64                 randconfig-a001-20200311
powerpc              randconfig-a001-20200311
sparc                randconfig-a001-20200311
arc                  randconfig-a001-20200316
arm                  randconfig-a001-20200316
arm64                randconfig-a001-20200316
ia64                 randconfig-a001-20200316
powerpc              randconfig-a001-20200316
sparc                randconfig-a001-20200316
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                       zfcpdump_defconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sparc64                           allnoconfig
sparc64                             defconfig
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
