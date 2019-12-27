Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE4B12B226
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 07:52:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Grmbz0sIuxw3vUXSjskhGbsgoIEB2cvRSSy8/05JlNk=; b=dDPdlF2ejEJdDu
	pI3lxILIgOPyXR8XqiM6oqYqU+eRJ9ViohiObBNPukBaTKJqAUOgZc7rsRhTkAeskh/uvLSSt6PKX
	ckWsVDnS+LD4JVRnbPi/R64ctL2m2YVZaQWPyneHNWOrvAWnGVoGjTi+rTu49Fd+Js/VMCXbPZRKy
	qYx2iAC9qAQXsFGrNouNSzMie0/rGdr7ZVO295a7LREJ5Vha5AUCBA7RbBu3B3XtxQnglLg+NekG6
	omrAiIbZbnZ9VxRhKAzYMAQDf9VFoc63UuUD6b6gZjaPg3rH9oRRqgRwpyPcX2ae+jZlE+dE6MkYg
	aaj5onFfsW5JplWu24rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikjU6-0005mH-Ot; Fri, 27 Dec 2019 06:52:30 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikjTy-0005ln-8S
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 06:52:24 +0000
Received: from DGGEMM402-HUB.china.huawei.com (unknown [172.30.72.57])
 by Forcepoint Email with ESMTP id 78BE4E4F3F2AAFF53153;
 Fri, 27 Dec 2019 14:52:16 +0800 (CST)
Received: from dggeme755-chm.china.huawei.com (10.3.19.101) by
 DGGEMM402-HUB.china.huawei.com (10.3.20.210) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 27 Dec 2019 14:52:15 +0800
Received: from [127.0.0.1] (10.173.221.248) by dggeme755-chm.china.huawei.com
 (10.3.19.101) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 27
 Dec 2019 14:52:15 +0800
Subject: Re: [PATCH v2 5/6] KVM: arm64: Add interface to support VCPU
 preempted check
To: kbuild test robot <lkp@intel.com>
References: <20191226135833.1052-6-yezengruan@huawei.com>
 <201912270236.nkxsDrid%lkp@intel.com>
From: yezengruan <yezengruan@huawei.com>
Message-ID: <47879233-4437-4166-b61a-2d1cc8e7e44b@huawei.com>
Date: Fri, 27 Dec 2019 14:52:13 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <201912270236.nkxsDrid%lkp@intel.com>
Content-Language: en-US
X-Originating-IP: [10.173.221.248]
X-ClientProxiedBy: dggeme709-chm.china.huawei.com (10.1.199.105) To
 dggeme755-chm.china.huawei.com (10.3.19.101)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_225222_504012_E25B376A 
X-CRM114-Status: GOOD (  24.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, daniel.lezcano@linaro.org, kbuild-all@lists.01.org,
 kvm@vger.kernel.org, linux-doc@vger.kernel.org, maz@kernel.org,
 suzuki.poulose@arm.com, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, catalin.marinas@arm.com, linux@armlinux.org.uk,
 steven.price@arm.com, will@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 2019/12/27 2:51, kbuild test robot wrote:
> Hi Zengruan,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on kvmarm/next]
> [also build test ERROR on kvm/linux-next linus/master v5.5-rc3 next-20191220]
> [cannot apply to arm64/for-next/core]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> 
> url:    https://github.com/0day-ci/linux/commits/Zengruan-Ye/KVM-arm64-VCPU-preempted-check-support/20191227-000637
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git next
> config: arm64-alldefconfig (attached as .config)
> compiler: aarch64-linux-gcc (GCC) 7.5.0
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         GCC_VERSION=7.5.0 make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    In file included from include/linux/spinlock.h:89:0,
>                     from include/linux/radix-tree.h:16,
>                     from include/linux/idr.h:15,
>                     from include/linux/kernfs.h:13,
>                     from include/linux/sysfs.h:16,
>                     from include/linux/kobject.h:20,
>                     from include/linux/of.h:17,
>                     from include/linux/irqdomain.h:35,
>                     from include/linux/acpi.h:13,
>                     from include/acpi/apei.h:9,
>                     from include/acpi/ghes.h:5,
>                     from include/linux/arm_sdei.h:8,
>                     from arch/arm64/kernel/asm-offsets.c:10:
>    arch/arm64/include/asm/spinlock.h: In function 'vcpu_is_preempted':
>>> arch/arm64/include/asm/spinlock.h:18:9: error: implicit declaration of function 'pv_vcpu_is_preempted'; did you mean 'vcpu_is_preempted'? [-Werror=implicit-function-declaration]
>      return pv_vcpu_is_preempted(cpu);
>             ^~~~~~~~~~~~~~~~~~~~
>             vcpu_is_preempted
>    cc1: some warnings being treated as errors
>    make[2]: *** [arch/arm64/kernel/asm-offsets.s] Error 1
>    make[2]: Target '__build' not remade because of errors.
>    make[1]: *** [prepare0] Error 2
>    make[1]: Target 'prepare' not remade because of errors.
>    make: *** [sub-make] Error 2
>    27 real  5 user  7 sys  48.63% cpu 	make prepare
> 
> vim +18 arch/arm64/include/asm/spinlock.h
> 
>     14	
>     15	#define vcpu_is_preempted vcpu_is_preempted
>     16	static inline bool vcpu_is_preempted(long cpu)
>     17	{
>   > 18		return pv_vcpu_is_preempted(cpu);
>     19	}
>     20	
> 
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
> 

Thanks for posting this, I'll update the code to fix this issue.

Thanks,

Zengruan


---
 arch/arm64/include/asm/spinlock.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/include/asm/spinlock.h b/arch/arm64/include/asm/spinlock.h
index 45ff1b2949a6..b5d1982414c5 100644
--- a/arch/arm64/include/asm/spinlock.h
+++ b/arch/arm64/include/asm/spinlock.h
@@ -12,10 +12,12 @@
 /* See include/linux/spinlock.h */
 #define smp_mb__after_spinlock()	smp_mb()

+#ifdef CONFIG_PARAVIRT
 #define vcpu_is_preempted vcpu_is_preempted
 static inline bool vcpu_is_preempted(long cpu)
 {
 	return pv_vcpu_is_preempted(cpu);
 }
+#endif // CONFIG_PARAVIRT

 #endif /* __ASM_SPINLOCK_H */
-- 
2.19.1





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
