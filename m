Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D94B1ECED4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 13:46:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jqMQRuYD59QJC3pyIvtS3f423xP7fZUJNQu8jUm71eI=; b=ChuT4LWpWhvrq+cIAZ7de+eGI
	tMD3K585J4DKf9Sbgx0/e+UltYAFYPlZlEcU/+V9k1/WmSXwGX/72mz5Lp7QHIQfYqpQ93XComeRX
	QQfhtPae2OUic2hGpydHcVEB9VIAIiX1mHCXq+c5S0Wcx1ypMyAGwDI5CsC4MfRgPi+Xxj4EqRgLa
	Te313xKq7DzXMHWJQXhYJ2yNvvvTrIHZbeHdihqLYK8k05nRrjpdDZvm6GmsBlXQlb2ExrFyl+eEB
	XlbAH6Vmff7MuBZKfddPIX/kecUcpsbbCDsuIG4xWgL/8xEE2l110b2IdJHWVupCxaTdleC1CvWZS
	eZzbRNwLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgRrC-0001ic-Js; Wed, 03 Jun 2020 11:46:54 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgRr1-0001gZ-75
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 11:46:46 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 2A19753E00645E3BBB16;
 Wed,  3 Jun 2020 12:46:30 +0100 (IST)
Received: from [127.0.0.1] (10.47.0.59) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Wed, 3 Jun 2020
 12:46:29 +0100
Subject: arm64 build issue and mainline crash (was Re: linux-next: Tree for
 Jun 3)
To: Stephen Rothwell <sfr@canb.auug.org.au>, Linux Next Mailing List
 <linux-next@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Ard Biesheuvel
 <ard.biesheuvel@linaro.org>
References: <20200603210603.1fcf63ed@canb.auug.org.au>
From: John Garry <john.garry@huawei.com>
Message-ID: <ba1f622a-6866-2a58-706b-045e8a0d9012@huawei.com>
Date: Wed, 3 Jun 2020 12:45:18 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200603210603.1fcf63ed@canb.auug.org.au>
Content-Language: en-US
X-Originating-IP: [10.47.0.59]
X-ClientProxiedBy: lhreml735-chm.china.huawei.com (10.201.108.86) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_044644_248624_534F025A 
X-CRM114-Status: GOOD (  25.42  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [185.176.76.210 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/06/2020 12:06, Stephen Rothwell wrote:

JFYI, I am finding the vanilla defconfig build broken for arm64:

LD      vmlinux.o 
 

/home/john/gcc-linaro-7.5.0-2019.12-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-ld: 
cannot find ./drivers/firmware/efi/libstub/lib.abuilt-in.a: No such file 
or directory
make[1]: *** [vmlinux] Error 1 
 

make: *** [__sub-make] Error 2 
 

john@htsatcamb-server:~/linux-next$

In addition, the reason I was testing this was because Linus' master 
(d6f9469a03d8 Merge tag 'erofs-for-5.8-rc1' of 
git://git.kernel.org/pub/scm/linux/kernel/git/xiang/erofs) was crashing:

[ 5.368948] loop: module loaded
[ 5.372113] Unable to handle kernel paging request at virtual address 
fffff9ffcfec4000
[ 5.380067] Mem abort info:
[ 5.382865]ESR = 0x96000044
[ 5.385927]EC = 0x25: DABT (current EL), IL = 32 bits
[ 5.391260]SET = 0, FnV = 0
[ 5.394319]EA = 0, S1PTW = 0
[ 5.397467] Data abort info:
[ 5.400354]ISV = 0, ISS = 0x00000044
[ 5.404203]CM = 0, WnR = 1
[ 5.407178] swapper pgtable: 4k pages, 48-bit VAs, pgdp=000000002f3f1000
[ 5.413909] [fffff9ffcfec4000] pgd=0000000000000000
[ 5.418807] Internal error: Oops: 96000044 [#1] PREEMPT SMP
[ 5.424399] Modules linked in:
[ 5.427462] CPU: 11 PID: 1 Comm: swapper/0 Not tainted 
5.7.0-05047-gd6f9469a03d8 #388
[ 5.435325] Hardware name: Huawei Taishan 2280 /D05, BIOS Hisilicon D05 
IT21 Nemo 2.0 RC0 04/18/2018
[ 5.444499] pstate: 40000005 (nZcv daif -PAN -UAO BTYPE=--)
[ 5.450098] pc : __memset+0x16c/0x1c0
[ 5.453770] lr : pcpu_alloc+0x1a0/0x668
[ 5.457615] sp : ffff800011d3bbd0
[ 5.460936] x29: ffff800011d3bbd0 x28: ffff001fb5495180
[ 5.466267] x27: 0000000000000001 x26: 0000000000000100
[ 5.471597] x25: 0000000000000001 x24: 0000000000000001
[ 5.476928] x23: ffff80001135e9a0 x22: ffff80001196a200
[ 5.482259] x21: ffff80001196a360 x20: 0000000000000000
[ 5.487590] x19: 0000000000000000 x18: fffffe107e6fdb08
[ 5.492920] x17: 000000000000003f x16: 0000000000000000
[ 5.498251] x15: ffff001ffbffee00 x14: 0000000000000002
[ 5.503581] x13: 0000000000000000 x12: 000000000000003f
[ 5.508912] x11: 0000000000000040 x10: 0000000000000040
[ 5.514243] x9 : 0000000000000000 x8 : fffff9ffcfec4000
[ 5.519573] x7 : 0000000000000000 x6 : 000000000000003f
[ 5.524904] x5 : 0000000000000040 x4 : 0000000000000000
[ 5.530234] x3 : 0000000000000004 x2 : 00000000000000c0
[ 5.535565] x1 : 0000000000000000 x0 : fffff9ffcfec4000
[ 5.540896] Call trace:
[ 5.543344]  __memset+0x16c/0x1c0
[ 5.546666]  __alloc_percpu+0x14/0x1c
[ 5.550338]  alloc_workqueue+0x164/0x42c
[ 5.554273]  init+0x24/0xa4
[ 5.557071]  do_one_initcall+0x50/0x194
[ 5.560917]  kernel_init_freeable+0x1e4/0x250
[ 5.565288]  kernel_init+0x10/0x104
[ 5.568785]  ret_from_fork+0x10/0x18
[ 5.572372] Code: 91010108 54ffff4a 8b040108 cb050042 (d50b7428)
[ 5.578568] ---[ end trace 63c299bbe9b8ea9e ]---
[ 5.583205] Kernel panic - not syncing: Attempted to kill init! 
exitcode=0x0000000b
[ 5.590903] SMP: stopping secondary CPUs
[ 5.594846] Kernel Offset: 0xf0000 from 0xffff800010000000
[ 5.600350] PHYS_OFFSET: 0x0
[ 5.603235] CPU features: 0x240022,20806008
[ 5.607430] Memory Limit: none
[ 5.610500] ---[ end Kernel panic - not syncing: Attempted to kill init! 
exitcode=0x0000000b ]---

I'll check that when I get a chance. Maybe all just transient.

Thanks


> Hi all,
> 
> News: The merge window has opened, so please do *not* add v5.9 material
> to your linux-next included branches until after v5.8-rc1 has been
> released.
> 
> Changes since 20200602:
> 
> New tree: sh-rf
> 
> My fixes tree contains:
> 
>    4cb4bfffe2c1 ("device_cgroup: Fix RCU list debugging warning")
> 
> The drm-intel-fixes tree gained a conflict against Linus' tree.
> 
> The overlayfs tree gained a build failure for which I applied a patch.
> 
> The v4l-dvb-next tree gained a conflict against the v4l-dvb tree and a
> build failure so I used the version from next-20200602.
> 
> The drm-msm tree lost its build failure.
> 
> The akpm-current tree gained a conflict against Linus' tree.
> 
> The akpm tree lost its build failure and gained conflicts against the
> kselftest and powerpc trees.
> 
> Non-merge commits (relative to Linus' tree): 10845
>   11211 files changed, 689281 insertions(+), 199935 deletions(-)
> 
> ----------------------------------------------------------------------------
> 
> I have created today's linux-next tree at
> git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> (patches at http://www.kernel.org/pub/linux/kernel/next/ ).  If you
> are tracking the linux-next tree using git, you should not use "git pull"
> to do so as that will try to merge the new linux-next release with the
> old one.  You should use "git fetch" and checkout or reset to the new
> master.
> 
> You can see which trees have been included by looking in the Next/Trees
> file in the source.  There are also quilt-import.log and merge.log
> files in the Next directory.  Between each merge, the tree was built
> with a ppc64_defconfig for powerpc, an allmodconfig for x86_64, a
> multi_v7_defconfig for arm and a native build of tools/perf. After
> the final fixups (if any), I do an x86_64 modules_install followed by
> builds for x86_64 allnoconfig, powerpc allnoconfig (32 and 64 bit),
> ppc44x_defconfig, allyesconfig and pseries_le_defconfig and i386, sparc
> and sparc64 defconfig and htmldocs. And finally, a simple boot test
> of the powerpc pseries_le_defconfig kernel in qemu (with and without
> kvm enabled).
> 
> Below is a summary of the state of the merge.
> 
> I am currently merging 325 trees (counting Linus' and 82 trees of bug
> fix patches pending for the current merge release).
> 
> Stats about the size of the tree over time can be seen at
> http://neuling.org/linux-next-size.html .
> 
> Status of my local build tests will be at
> http://kisskb.ellerman.id.au/linux-next .  If maintainers want to give
> advice about cross compilers/configs that work, we are always open to add
> more builds.
> 
> Thanks to Randy Dunlap for doing many randconfig builds.  And to Paul
> Gortmaker for triage and bug fixes.
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
