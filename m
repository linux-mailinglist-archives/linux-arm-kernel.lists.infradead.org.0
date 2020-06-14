Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 761811F8AD3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 23:04:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DEP6/PM6MMDf6f8TyiTnry+YH7X9zevBBY4O7A7iWPo=; b=APO1vkjtQDyPQlTaa4/oYxgZaN
	56lQRm3QJMajcLRuezZLR9NxRABxNNOHtbsn8aVfvrhoteUjlaFUJaxXIhDpT6MF0LWmntnO425zf
	x9ys92FWkI/H0rH67KdoLgRebMkSH46Yl3JxsO0j1QWcKHAhgHYWU3yNAoyqttDhnCbL7ER+4MVDl
	d8eiqfwBoA7BAJUECHzfr8SyTMaMzHj1esQZpsiTi3QpPNKMGwERwH0MgcD3BwArEEXMVcS8vn3/Q
	j3Zkw7SXHGpt8wqwviCOQF4H/G8xQ9YU/H67hXRnIczUX6Jmn+4XTHWo2Rjh1lRIGJxTI+OcufxSo
	RiaRf9KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkZo4-0005eL-M5; Sun, 14 Jun 2020 21:04:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkZnv-0005dI-Or
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 21:04:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 79B911F1;
 Sun, 14 Jun 2020 14:04:32 -0700 (PDT)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CD24A3F71F;
 Sun, 14 Jun 2020 14:04:30 -0700 (PDT)
References: <20200614010755.9129-2-valentin.schneider@arm.com>
 <202006141541.YN3AhUnc%lkp@intel.com>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: kernel test robot <lkp@intel.com>
Subject: Re: [PATCH 1/3] thermal/cpu-cooling,
 sched/core: Cleanup thermal pressure definition
In-reply-to: <202006141541.YN3AhUnc%lkp@intel.com>
Date: Sun, 14 Jun 2020 22:04:23 +0100
Message-ID: <jhjlfkp1hrc.mognet@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_140435_900861_A370743B 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kbuild-all@lists.01.org, linux-pm@vger.kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>,
 Thara Gopinath <thara.gopinath@linaro.org>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Sudeep Holla <sudeep.holla@arm.com>,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 14/06/20 08:39, kernel test robot wrote:
> Hi Valentin,
>
> Thank you for the patch! Perhaps something to improve:
>
> [auto build test WARNING on tip/auto-latest]
> [also build test WARNING on driver-core/driver-core-testing tip/sched/core arm/for-next arm64/for-next/core soc/for-next linus/master v5.7 next-20200613]
> [cannot apply to linux/master]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
> url:    https://github.com/0day-ci/linux/commits/Valentin-Schneider/sched-arch_topology-Thermal-pressure-configuration-cleanup/20200614-091051
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 8dc697d75c13ee2901d1a40f1d7d58163048c204
> config: arm64-randconfig-r013-20200614 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project cb5072d1877b38c972f95092db2cedbcddb81da6)
> reproduce (this is a W=1 build):

Ah, W=1! I thought I was going nuts.

If desired, I can add a declaration in cpu_cooling.h, similar to what we
have for the arch_set_freq_scale() stub.

>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
>
>>> drivers/base/arch_topology.c:59:6: warning: no previous prototype for function 'arch_set_thermal_pressure' [-Wmissing-prototypes]
> void arch_set_thermal_pressure(const struct cpumask *cpus,
> ^
> drivers/base/arch_topology.c:59:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> void arch_set_thermal_pressure(const struct cpumask *cpus,
> ^
> static
> 1 warning generated.
>
> vim +/arch_set_thermal_pressure +59 drivers/base/arch_topology.c
>
>     58
>   > 59	void arch_set_thermal_pressure(const struct cpumask *cpus,
>     60				       unsigned long th_pressure)
>     61	{
>     62		int cpu;
>     63
>     64		for_each_cpu(cpu, cpus)
>     65			WRITE_ONCE(per_cpu(thermal_pressure, cpu), th_pressure);
>     66	}
>     67
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
