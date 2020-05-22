Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB1C1DE1C5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 10:27:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DPSgxF17SS3jE3IzkS9ZkTDdU3rNw2cRGs2mx4I6LaY=; b=uNwH3Q+yK6URWV
	ilQKFmIXf+7RpQf35FUGLx/ScTLrE13ZaPFtWoASdkL7wPDZZaO0f0QRI9CxfPoZ7hHux2NXylzw3
	LlcnnQHe0N3Kk3BL+lFymlLD3y0n1D/MZ/j8ETsSGIOpJvfZ1s2OLhokVFK720QzIo7eBpLIwsH4x
	cIsGMTr7gtw1hhKSpxG4CjLuIP8KvrxjQCyaoEJKbnzICH587F6SZNIQyJY2NK+wjcrcAfSKAxRUV
	Z6CnhGRx26H301W1LHfuBpdBYwN/pMKue0mU6jws2ctnoO15fg5JaDNjHw7FPILVGU1dUu33GhVY2
	mHUvdPfuv0tueQYKC3ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc31p-0004XY-8n; Fri, 22 May 2020 08:27:41 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc31f-0004Vi-Ac
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 08:27:32 +0000
IronPort-SDR: Ae1ONFnLj4OyjVbsTnVpbKbhtVnbKwUbnblhdVMafpUuCmMIRHZkOPaFvCfyBqWQSAFdDxOhcB
 tPXm+oFI1E/A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2020 01:27:30 -0700
IronPort-SDR: LP8HigdDMWXcy66Zz1GR42h482cZDrYBg8x8V6b4SwzjNDMo6aEQkv7R6Y46R9mOS6WEe+PXs1
 Xin26q0zRmqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,421,1583222400"; d="scan'208";a="467108943"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 22 May 2020 01:27:29 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jc31c-000177-KH; Fri, 22 May 2020 16:27:28 +0800
Date: Fri, 22 May 2020 16:26:58 +0800
From: kbuild test robot <lkp@intel.com>
To: Thierry Reding <treding@nvidia.com>
Subject: [soc:tegra/dt-bindings] BUILD SUCCESS
 4e79691d050e6d06ee7fa09002c52dd1ce9ac6e6
Message-ID: <5ec78cd2.VOEZrPB1+AK4P8Zp%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_012731_379630_CB5E3213 
X-CRM114-Status: UNSURE (   6.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.8 LONGWORDS              Long string of long words
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git  tegra/dt-bindings
branch HEAD: 4e79691d050e6d06ee7fa09002c52dd1ce9ac6e6  dt-bindings: i2c: tegra: Document Tegra210 VI I2C

elapsed time: 13602m

configs tested: 168
configs skipped: 30

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                               allnoconfig
arm64                            allyesconfig
arm64                               defconfig
arm64                            allmodconfig
arm64                             allnoconfig
sparc                            allyesconfig
m68k                             allyesconfig
mips                             allyesconfig
h8300                     edosk2674_defconfig
mips                     decstation_defconfig
sh                          rsk7201_defconfig
m68k                        stmark2_defconfig
arm                  colibri_pxa300_defconfig
c6x                        evmc6457_defconfig
powerpc                     powernv_defconfig
mips                 decstation_r4k_defconfig
arm                     davinci_all_defconfig
arc                          axs101_defconfig
m68k                        mvme16x_defconfig
arc                              alldefconfig
arm                              zx_defconfig
m68k                         amcore_defconfig
powerpc                      pmac32_defconfig
arc                          axs103_defconfig
arm64                            alldefconfig
arm                        vexpress_defconfig
m68k                        m5272c3_defconfig
s390                       zfcpdump_defconfig
m68k                       m5249evb_defconfig
m68k                          sun3x_defconfig
sh                           se7619_defconfig
sh                ecovec24-romimage_defconfig
arc                            hsdk_defconfig
arm                          iop32x_defconfig
riscv                             allnoconfig
arm                        shmobile_defconfig
powerpc                    gamecube_defconfig
sh                           se7343_defconfig
sh                             sh03_defconfig
riscv                            allyesconfig
arm                         lpc32xx_defconfig
sh                            titan_defconfig
arc                           tb10x_defconfig
powerpc                         wii_defconfig
s390                                defconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                              allnoconfig
m68k                           sun3_defconfig
m68k                                defconfig
nios2                               defconfig
nios2                            allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
c6x                               allnoconfig
openrisc                         allyesconfig
nds32                               defconfig
nds32                             allnoconfig
csky                             allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                              defconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
arc                                 defconfig
arc                              allyesconfig
sh                               allmodconfig
sh                                allnoconfig
microblaze                        allnoconfig
mips                              allnoconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                              defconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a006-20200512
i386                 randconfig-a005-20200512
i386                 randconfig-a003-20200512
i386                 randconfig-a001-20200512
i386                 randconfig-a004-20200512
i386                 randconfig-a002-20200512
i386                 randconfig-a006-20200513
i386                 randconfig-a005-20200513
i386                 randconfig-a003-20200513
i386                 randconfig-a001-20200513
i386                 randconfig-a004-20200513
i386                 randconfig-a002-20200513
i386                 randconfig-a001-20200521
i386                 randconfig-a004-20200521
i386                 randconfig-a006-20200521
i386                 randconfig-a003-20200521
i386                 randconfig-a002-20200521
i386                 randconfig-a005-20200521
x86_64               randconfig-a005-20200513
x86_64               randconfig-a003-20200513
x86_64               randconfig-a006-20200513
x86_64               randconfig-a004-20200513
x86_64               randconfig-a001-20200513
x86_64               randconfig-a002-20200513
x86_64               randconfig-a012-20200514
x86_64               randconfig-a016-20200514
x86_64               randconfig-a015-20200514
x86_64               randconfig-a013-20200514
x86_64               randconfig-a014-20200514
x86_64               randconfig-a011-20200514
x86_64               randconfig-a016-20200512
x86_64               randconfig-a012-20200512
x86_64               randconfig-a015-20200512
x86_64               randconfig-a013-20200512
x86_64               randconfig-a014-20200512
x86_64               randconfig-a011-20200512
x86_64               randconfig-a013-20200520
x86_64               randconfig-a015-20200520
x86_64               randconfig-a016-20200520
x86_64               randconfig-a012-20200520
x86_64               randconfig-a014-20200520
x86_64               randconfig-a011-20200520
i386                 randconfig-a012-20200512
i386                 randconfig-a016-20200512
i386                 randconfig-a014-20200512
i386                 randconfig-a011-20200512
i386                 randconfig-a013-20200512
i386                 randconfig-a015-20200512
i386                 randconfig-a012-20200513
i386                 randconfig-a016-20200513
i386                 randconfig-a014-20200513
i386                 randconfig-a011-20200513
i386                 randconfig-a013-20200513
i386                 randconfig-a015-20200513
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
x86_64                              defconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
