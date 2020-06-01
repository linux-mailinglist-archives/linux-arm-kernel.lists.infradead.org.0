Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E84B61E9DCC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 08:01:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FwUOjDuqwv379ltW74KT99Lp3WqmGsn1nDDNMBI20Oc=; b=u170z09FQelURX
	QP026Zo+7LRvRn1hJLMyfW+/KPmLEzV69D/DCMOQ4TLFrn6uvqAgJwYcrQGwL6J4NK2oJc1xE0wIQ
	GWYza8C8pecpOhWekx3RbSmw1lAXMk9th1+Bauh4uJxSfwMA760gBBd1sYjmfSvNl5ZXf18a4HHp1
	fY0FHNDevPbkVMB73OjwWL8s9Q61kVNiJOv2mPhVqbGaN0Xoezg9idpEncWAkZ2vHIgjxBD0TBTnc
	lj+S295EguJYwh6OkGv6uJTzV2FWFNO6KZ6EkFZi/0vzszQ3dOQEICH+aaIzr6V+f4l6EpTD9tKT9
	bA/ry1yvwD42kSCIwZGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfdVX-0003YD-DY; Mon, 01 Jun 2020 06:01:11 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfdVK-0003Xn-Bi
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 06:01:00 +0000
IronPort-SDR: aikrs5zrNgxNUw8C0tPH4YUvXhyOpUjAYExu53gFp9TOGfTy18fSIx6ihU161yhc5MT9gLsLPJ
 5Ts0l4p5/EZw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2020 23:00:55 -0700
IronPort-SDR: YzEuiUVjbHZ19qfgDVv54DLdNXFXUF+WhYdTecvdiuMCf0DExpMVr+iGOCjHxIbBVOdg1DUO+E
 rEp0OITEeO9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,459,1583222400"; d="scan'208";a="415694108"
Received: from lkp-server01.sh.intel.com (HELO 49d03d9b0ee7) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 31 May 2020 23:00:54 -0700
Received: from kbuild by 49d03d9b0ee7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jfdVF-0000aC-Ei; Mon, 01 Jun 2020 06:00:53 +0000
Date: Mon, 01 Jun 2020 14:00:01 +0800
From: kbuild test robot <lkp@intel.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: [soc:arm/dt] BUILD SUCCESS
 36e29139cd472a91978b14c3045ce25869172ab9
Message-ID: <5ed49961.PvsxGJT+G5drY2mE%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_230058_414202_B83581CC 
X-CRM114-Status: UNSURE (   7.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -3.2 (---)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-3.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git  arm/dt
branch HEAD: 36e29139cd472a91978b14c3045ce25869172ab9  Merge tag 'keystone_dts_for_5.8' of git://git.kernel.org/pub/scm/linux/kernel/git/ssantosh/linux-keystone into arm/dt

elapsed time: 5327m

configs tested: 100
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

arm64                            allyesconfig
arm64                               defconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                               allnoconfig
sparc                       sparc64_defconfig
mips                  decstation_64_defconfig
mips                          ath79_defconfig
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
m68k                             allyesconfig
nds32                               defconfig
nds32                             allnoconfig
csky                             allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                               defconfig
nios2                            allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
c6x                               allnoconfig
openrisc                         allyesconfig
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
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a004-20200529
i386                 randconfig-a001-20200529
i386                 randconfig-a002-20200529
i386                 randconfig-a006-20200529
i386                 randconfig-a003-20200529
i386                 randconfig-a005-20200529
x86_64               randconfig-a002-20200529
x86_64               randconfig-a006-20200529
x86_64               randconfig-a005-20200529
x86_64               randconfig-a001-20200529
x86_64               randconfig-a004-20200529
x86_64               randconfig-a003-20200529
i386                 randconfig-a013-20200529
i386                 randconfig-a011-20200529
i386                 randconfig-a012-20200529
i386                 randconfig-a015-20200529
i386                 randconfig-a016-20200529
i386                 randconfig-a014-20200529
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
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
