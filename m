Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8EE186CEA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 15:19:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aXPUIY09+yLuifjOCYWjm5QkrLJYCbzU2HnIjXvENrs=; b=ZtHBARgYN3HiSq
	TG6sziZ0HPedX6J7NpUkZrzx7el3wsmUlTf0LtEtkLd7+acC2doTd5hB7zEGZt3/Trnt0N8lMFJKQ
	fHs96rX3HOQ2hM3qePk9cCaC9Anu3b7KE1jRxPxkndujwwFsC2hJ9LPFwxahtozg2xoWYv6yU/HJr
	h/dXIWLjve5jSNsv7dcXnyRKNCtSTK/82gPLF4hfgBAkWRToKHoAq5np20FOWr6AHFhp1SekUIson
	XzxAY/PKk6CVWHHWygbspVgJcEk7H2U0qlG2OPfqVKs/U/YhgxUoYQpj+Vj9g1ZBBL+tPe27TIVvK
	z4fJHL9UN6AvlKp1zf4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDqaS-0000Zv-8o; Mon, 16 Mar 2020 14:19:24 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDqaK-0000ZP-HX
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 14:19:18 +0000
IronPort-SDR: XR94o5A8gaOs9wtbcFxfTB+8mhHG+bDtJS5hFq140MW4tpDklzpEbjvwTOKGEA7IEYVSHZ4BYD
 UXvqAENWgH8A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 07:19:15 -0700
IronPort-SDR: fM/cIyGrttPPgAuvXUUYLZJV08JNqAf8QrsL949yXd5ZQGfdryRcpuPoRcvsEFDOEiQ+Plv046
 9meaIlyvy9YA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,560,1574150400"; d="scan'208";a="237633280"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 16 Mar 2020 07:19:14 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jDqaH-000HKZ-EB; Mon, 16 Mar 2020 22:19:13 +0800
Date: Mon, 16 Mar 2020 22:18:25 +0800
From: kbuild test robot <lkp@intel.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [stericsson:ux500-dts] BUILD SUCCESS
 2118c8fd9889a5e76fe91547dcaa6f16ef165172
Message-ID: <5e6f8ab1.FM34vR9QPVTmvH3+%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_071916_594884_B822D604 
X-CRM114-Status: UNSURE (   7.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEXHASH_WORD           Multiple instances of word + hexadecimal hash
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-stericsson.git  ux500-dts
branch HEAD: 2118c8fd9889a5e76fe91547dcaa6f16ef165172  ARM: dts: Add devicetree for Samsung GT-S7710

elapsed time: 485m

configs tested: 133
configs skipped: 130

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
mips                             allyesconfig
riscv                    nommu_virt_defconfig
h8300                       h8s-sim_defconfig
i386                              allnoconfig
i386                             alldefconfig
i386                             allyesconfig
i386                                defconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                                defconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
nds32                               defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
parisc                            allnoconfig
parisc                           allyesconfig
parisc                generic-32bit_defconfig
parisc                generic-64bit_defconfig
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
csky                 randconfig-a001-20200316
openrisc             randconfig-a001-20200316
s390                 randconfig-a001-20200316
sh                   randconfig-a001-20200316
xtensa               randconfig-a001-20200316
x86_64               randconfig-b001-20200316
x86_64               randconfig-b002-20200316
x86_64               randconfig-b003-20200316
i386                 randconfig-b001-20200316
i386                 randconfig-b002-20200316
i386                 randconfig-b003-20200316
x86_64               randconfig-d001-20200316
x86_64               randconfig-d002-20200316
x86_64               randconfig-d003-20200316
i386                 randconfig-d001-20200316
i386                 randconfig-d002-20200316
i386                 randconfig-d003-20200316
x86_64               randconfig-e001-20200316
x86_64               randconfig-e002-20200316
x86_64               randconfig-e003-20200316
i386                 randconfig-e001-20200316
i386                 randconfig-e002-20200316
i386                 randconfig-e003-20200316
x86_64               randconfig-f001-20200316
x86_64               randconfig-f002-20200316
x86_64               randconfig-f003-20200316
i386                 randconfig-f001-20200316
i386                 randconfig-f002-20200316
i386                 randconfig-f003-20200316
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
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                          rv32_defconfig
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
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
