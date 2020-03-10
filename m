Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A60641801BB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 16:23:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4pE9+rETsE+O6YSn2HLB1IlS8yWnmvmWjXbFk/MNdz0=; b=epfpWqObOOnkFU
	jJHqMoh4tK0rvUhWUH/gvIs5L36VBYWorjwrroB2hAbOz1V843H1pKeoS6boN1Hnj2m0JZsZLg2E+
	2KCwXe/KBFOySyoyguIFVP532erZPUwlAFxUdcq6z0wHRyJRyXGssEU6Dxf771Ssm9jYorswGmr6e
	WPwLf/i4ro4ucU6eTULHmqUDH2EjI3dWuOoBjJAsRmg4B2ICeYDh3lxAOc+JoBQQU0IXTR+2dpk4F
	Nzt5n7FCvVpgG+wGxsNeQN3vOEa1qTzWirmN4kOfM4MHVPowAZfzYnhz7fDL5eNAZHmlVLet1uhoO
	li4fLaDznM+D+ObTVlAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBgjQ-00056u-37; Tue, 10 Mar 2020 15:23:44 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBghY-0003dp-JZ
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 15:21:53 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 08:21:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,537,1574150400"; d="scan'208";a="388963397"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 10 Mar 2020 08:21:43 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jBghS-000Bs0-Jx; Tue, 10 Mar 2020 23:21:42 +0800
Date: Tue, 10 Mar 2020 23:21:07 +0800
From: kbuild test robot <lkp@intel.com>
To: Santosh Shilimkar <santosh.shilimkar@oracle.com>
Subject: [keystone:for_5.7/keystone-dts] BUILD SUCCESS
 7856488bd83b0182548a84d05c07326321ae6138
Message-ID: <5e67b063.tYKKhV8s3d5sPMhl%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_082148_743084_7FE2D43F 
X-CRM114-Status: UNSURE (   7.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/ssantosh/linux-keystone.git  for_5.7/keystone-dts
branch HEAD: 7856488bd83b0182548a84d05c07326321ae6138  ARM: dts: keystone-k2g-evm: add HDMI video support

elapsed time: 4166m

configs tested: 229
configs skipped: 153

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                              allmodconfig
arm                               allnoconfig
arm                              allyesconfig
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
openrisc                 simple_smp_defconfig
sh                            titan_defconfig
ia64                              allnoconfig
powerpc                       ppc64_defconfig
ia64                             allmodconfig
ia64                             allyesconfig
s390                                defconfig
mips                              allnoconfig
mips                             allyesconfig
openrisc                    or1ksim_defconfig
riscv                               defconfig
s390                              allnoconfig
um                             i386_defconfig
xtensa                       common_defconfig
ia64                                defconfig
h8300                     edosk2674_defconfig
i386                              allnoconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
xtensa                          iss_defconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
x86_64               randconfig-a001-20200308
x86_64               randconfig-a002-20200308
x86_64               randconfig-a003-20200308
i386                 randconfig-a001-20200308
i386                 randconfig-a002-20200308
i386                 randconfig-a003-20200308
x86_64               randconfig-a001-20200310
x86_64               randconfig-a002-20200310
x86_64               randconfig-a003-20200310
i386                 randconfig-a001-20200310
i386                 randconfig-a002-20200310
i386                 randconfig-a003-20200310
alpha                randconfig-a001-20200309
m68k                 randconfig-a001-20200309
mips                 randconfig-a001-20200309
nds32                randconfig-a001-20200309
parisc               randconfig-a001-20200309
riscv                randconfig-a001-20200309
alpha                randconfig-a001-20200308
m68k                 randconfig-a001-20200308
mips                 randconfig-a001-20200308
nds32                randconfig-a001-20200308
parisc               randconfig-a001-20200308
c6x                  randconfig-a001-20200310
h8300                randconfig-a001-20200310
microblaze           randconfig-a001-20200310
nios2                randconfig-a001-20200310
sparc64              randconfig-a001-20200310
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
x86_64               randconfig-b001-20200308
x86_64               randconfig-b002-20200308
x86_64               randconfig-b003-20200308
i386                 randconfig-b001-20200308
i386                 randconfig-b002-20200308
i386                 randconfig-b003-20200308
x86_64               randconfig-b001-20200310
x86_64               randconfig-b002-20200310
x86_64               randconfig-b003-20200310
i386                 randconfig-b001-20200310
i386                 randconfig-b002-20200310
i386                 randconfig-b003-20200310
x86_64               randconfig-b001-20200309
x86_64               randconfig-b002-20200309
x86_64               randconfig-b003-20200309
i386                 randconfig-b001-20200309
i386                 randconfig-b002-20200309
i386                 randconfig-b003-20200309
x86_64               randconfig-c001-20200310
x86_64               randconfig-c002-20200310
x86_64               randconfig-c003-20200310
i386                 randconfig-c001-20200310
i386                 randconfig-c002-20200310
i386                 randconfig-c003-20200310
x86_64               randconfig-c001-20200308
x86_64               randconfig-c002-20200308
x86_64               randconfig-c003-20200308
i386                 randconfig-c001-20200308
i386                 randconfig-c002-20200308
i386                 randconfig-c003-20200308
x86_64               randconfig-c001-20200309
x86_64               randconfig-c002-20200309
x86_64               randconfig-c003-20200309
i386                 randconfig-c001-20200309
i386                 randconfig-c002-20200309
i386                 randconfig-c003-20200309
x86_64               randconfig-d001-20200310
x86_64               randconfig-d002-20200310
x86_64               randconfig-d003-20200310
i386                 randconfig-d001-20200310
i386                 randconfig-d002-20200310
i386                 randconfig-d003-20200310
x86_64               randconfig-d001-20200308
x86_64               randconfig-d002-20200308
x86_64               randconfig-d003-20200308
i386                 randconfig-d001-20200308
i386                 randconfig-d002-20200308
i386                 randconfig-d003-20200308
x86_64               randconfig-d001-20200309
x86_64               randconfig-d002-20200309
x86_64               randconfig-d003-20200309
i386                 randconfig-d001-20200309
i386                 randconfig-d002-20200309
i386                 randconfig-d003-20200309
x86_64               randconfig-e001-20200308
x86_64               randconfig-e002-20200308
x86_64               randconfig-e003-20200308
i386                 randconfig-e001-20200308
i386                 randconfig-e002-20200308
i386                 randconfig-e003-20200308
x86_64               randconfig-e001-20200310
x86_64               randconfig-e002-20200310
x86_64               randconfig-e003-20200310
i386                 randconfig-e001-20200310
i386                 randconfig-e002-20200310
i386                 randconfig-e003-20200310
x86_64               randconfig-f001-20200310
x86_64               randconfig-f002-20200310
x86_64               randconfig-f003-20200310
i386                 randconfig-f001-20200310
i386                 randconfig-f002-20200310
i386                 randconfig-f003-20200310
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
x86_64               randconfig-g001-20200308
x86_64               randconfig-g002-20200308
x86_64               randconfig-g003-20200308
i386                 randconfig-g001-20200308
i386                 randconfig-g002-20200308
i386                 randconfig-g003-20200308
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
x86_64               randconfig-h001-20200309
x86_64               randconfig-h002-20200309
x86_64               randconfig-h003-20200309
i386                 randconfig-h001-20200309
i386                 randconfig-h002-20200309
i386                 randconfig-h003-20200309
arc                  randconfig-a001-20200308
arm                  randconfig-a001-20200308
arm64                randconfig-a001-20200308
ia64                 randconfig-a001-20200308
powerpc              randconfig-a001-20200308
sparc                randconfig-a001-20200308
s390                             alldefconfig
s390                             allmodconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                       zfcpdump_defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
i386                             allyesconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
i386                             alldefconfig
um                                  defconfig
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
