Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FE31EC8B2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 07:22:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mdQYGOLguUs+bKAynqYTHG7IU0hXqCQwWnNBFh7rsY4=; b=hWGb/6AX6VDrnM
	Adwzzh8C4gzkRd9Z87lvb/sy7Hsslxt8L0hO607Dzqqxu/gUplTD+jlDMGmWlHX7zcW5OHc6Grz5a
	jrDPVSvVtRnTvU5wYrcMzDVLMzrcKZBymIxNJHxEzeVeaaWTVaV7AN8kjC0VICuCGqfy6Ndkp9uaw
	lupw50Hqj+dg4w0DLDGQbBjs0fITW4uE3Vg471kSSHQaFL7KoN0FJvLKoWm2+Rv7GpMFG8wWIpJHZ
	WiuSkPhaS5Ks06EI1DsDxCNJdzmwb8y7C9wU9+ecY0SleYq0TxiBCIXS4zpBs+ar0g8GX/TVwuXoy
	FfYZWipb272Ocejb/EoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgLqj-0001FY-IU; Wed, 03 Jun 2020 05:22:01 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgLqc-0001F5-TJ
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 05:21:56 +0000
IronPort-SDR: NoEx3vTQMTmq0koERKZVHbYnRrQJKWuYkxNP2tPg1PaWYdH8WrQc5fuqvjSfjSADze3TYSXeaJ
 4Twmfyc94Bhg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2020 22:21:54 -0700
IronPort-SDR: JwHJ+aiXwvY/8S4qEpPWKokToT+d2njsG3meZ/vKjR9VTD9B/JKMdDrQDaBIV9igMYvbdcWG2G
 Ba1yB4DC/8XQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,467,1583222400"; d="scan'208";a="257885175"
Received: from lkp-server01.sh.intel.com (HELO e5a7ad696f24) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 02 Jun 2020 22:21:52 -0700
Received: from kbuild by e5a7ad696f24 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jgLqZ-0000NX-KR; Wed, 03 Jun 2020 05:21:51 +0000
Date: Wed, 03 Jun 2020 13:21:14 +0800
From: kbuild test robot <lkp@intel.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: [soc:for-next] BUILD SUCCESS 536b63efd215900771a0269e9f457183b2c62a70
Message-ID: <5ed7334a.y61l5RRk5mtBh7v0%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_222154_967778_B23F116E 
X-CRM114-Status: UNSURE (   6.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -3.2 (---)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-3.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git  for-next
branch HEAD: 536b63efd215900771a0269e9f457183b2c62a70  soc: document merges

elapsed time: 482m

configs tested: 101
configs skipped: 11

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
sh                 kfr2r09-romimage_defconfig
arm                          prima2_defconfig
arc                        nsimosci_defconfig
m68k                             allyesconfig
arm                       imx_v4_v5_defconfig
h8300                     edosk2674_defconfig
parisc                generic-64bit_defconfig
m68k                         amcore_defconfig
arm                           corgi_defconfig
sparc                            allyesconfig
mips                      bmips_stb_defconfig
arm                        realview_defconfig
alpha                               defconfig
arm                          moxart_defconfig
sh                               j2_defconfig
sparc64                          allyesconfig
arm                            mps2_defconfig
powerpc                          alldefconfig
mips                        maltaup_defconfig
mips                        jmr3927_defconfig
s390                             alldefconfig
c6x                        evmc6472_defconfig
sh                          rsk7203_defconfig
arm                       netwinder_defconfig
arm                          badge4_defconfig
mips                  decstation_64_defconfig
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
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
xtensa                              defconfig
arc                                 defconfig
arc                              allyesconfig
sh                               allmodconfig
sh                                allnoconfig
microblaze                        allnoconfig
mips                             allyesconfig
mips                              allnoconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                              defconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
powerpc                             defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                                defconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allmodconfig
um                                allnoconfig
um                                  defconfig
um                               allmodconfig
um                               allyesconfig
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
