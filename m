Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6D317A89C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 16:15:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6WuqrgIgc6i63zBEPM3sPd/vRYyRKSx5exKyorJTR+s=; b=SwxaC3pcwqq3JV
	2wmYvvBcDO1O6e/GIryb05Il03cxYH3nonq5JtoeMJDPZT0flR9w0YrviNKYnWbCwptGxSAs3aM4K
	ph5M6JroFQQ9QY0YV9/4hfq5nSPnPYwXmK2NXPNTlm5DzCmMr6NzYzXhjZTh5eTr6vMXOVc5o+I+n
	T7t1p47Dj1T+gsa7o3aXwPnf6uB9QuTMlHhKwRrFV6S+8Dc2XErMRSLuS2jtnqYOmuuNyI+1wLpHQ
	zttVD68gADpVuXt4MS/nOszAeqIVTrw8hgV1BoHqfPb4qkvES1igmvc6wYhpCP8pqOTjoQViclj64
	ei3d1pzdWZs8Mpt0NfDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9sD0-0007Jt-HY; Thu, 05 Mar 2020 15:14:46 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9sCr-0007J5-Kf
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 15:14:39 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 07:14:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; d="scan'208";a="234479827"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga008.fm.intel.com with ESMTP; 05 Mar 2020 07:14:33 -0800
Received: from shsmsx106.ccr.corp.intel.com (10.239.4.159) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 5 Mar 2020 07:14:32 -0800
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.50]) by
 SHSMSX106.ccr.corp.intel.com ([169.254.10.86]) with mapi id 14.03.0439.000;
 Thu, 5 Mar 2020 23:14:30 +0800
From: "Li, Philip" <philip.li@intel.com>
To: lkp <lkp@intel.com>, "cl@rock-chips.com" <cl@rock-chips.com>
Subject: RE: [kbuild-all] Re: [PATCH v1 1/1] sched/fair: do not preempt
 current task if it is going to call schedule()
Thread-Topic: [kbuild-all] Re: [PATCH v1 1/1] sched/fair: do not preempt
 current task if it is going to call schedule()
Thread-Index: AQHV8vwSaUDvAnC/i0OErjRILa0VAag6GycQ
Date: Thu, 5 Mar 2020 15:14:29 +0000
Message-ID: <831EE4E5E37DCC428EB295A351E66249524206DF@shsmsx102.ccr.corp.intel.com>
References: <20200305081611.29323-2-cl@rock-chips.com>
 <202003052243.P59yLrjh%lkp@intel.com>
In-Reply-To: <202003052243.P59yLrjh%lkp@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_071437_694585_36675869 
X-CRM114-Status: GOOD (  19.95  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "juri.lelli@redhat.com" <juri.lelli@redhat.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "heiko@sntech.de" <heiko@sntech.de>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bsegall@google.com" <bsegall@google.com>, "will@kernel.org" <will@kernel.org>,
 "mpe@ellerman.id.au" <mpe@ellerman.id.au>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "dietmar.eggemann@arm.com" <dietmar.eggemann@arm.com>,
 "ben.dooks@codethink.co.uk" <ben.dooks@codethink.co.uk>,
 "mgorman@suse.de" <mgorman@suse.de>, Liang Chen <cl@rock-chips.com>,
 "huangtao@rock-chips.com" <huangtao@rock-chips.com>,
 "keescook@chromium.org" <keescook@chromium.org>,
 "anshuman.khandual@arm.com" <anshuman.khandual@arm.com>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "wad@chromium.org" <wad@chromium.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "surenb@google.com" <surenb@google.com>, "mingo@redhat.com" <mingo@redhat.com>,
 "allison@lohutok.net" <allison@lohutok.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "luto@amacapital.net" <luto@amacapital.net>,
 "george_davis@mentor.com" <george_davis@mentor.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "info@metux.net" <info@metux.net>,
 "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [kbuild-all] Re: [PATCH v1 1/1] sched/fair: do not preempt current task if
> it is going to call schedule()
> 
> Hi,
> 
> Thank you for the patch! Yet something to improve:
Sorry, there're a few duplicated reports around this patch, kindly
ignore similar reports, we will look for the possible issue.

Thanks

> 
> [auto build test ERROR on tip/sched/core]
> [also build test ERROR on arm64/for-next/core tip/auto-latest linus/master v5.6-
> rc4 next-20200305]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> 
> url:    https://github.com/0day-ci/linux/commits/cl-rock-chips-
> com/wait_task_inactive-spend-too-much-time-on-system-startup/20200305-
> 201639
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git
> a0f03b617c3b2644d3d47bf7d9e60aed01bd5b10
> config: s390-zfcpdump_defconfig (attached as .config)
> compiler: s390-linux-gcc (GCC) 7.5.0
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-
> tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         GCC_VERSION=7.5.0 make.cross ARCH=s390
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    In file included from include/linux/kvm_host.h:12:0,
>                     from arch/s390/kernel/asm-offsets.c:11:
>    include/linux/sched.h: In function 'set_tsk_going_to_sched':
> >> include/linux/sched.h:1776:27: error: 'TIF_GOING_TO_SCHED' undeclared
> (first use in this function); did you mean 'TIF_SINGLE_STEP'?
>      set_tsk_thread_flag(tsk, TIF_GOING_TO_SCHED);
>                               ^~~~~~~~~~~~~~~~~~
>                               TIF_SINGLE_STEP
>    include/linux/sched.h:1776:27: note: each undeclared identifier is reported only
> once for each function it appears in
>    include/linux/sched.h: In function 'clear_tsk_going_to_sched':
>    include/linux/sched.h:1781:29: error: 'TIF_GOING_TO_SCHED' undeclared (first
> use in this function); did you mean 'TIF_SINGLE_STEP'?
>      clear_tsk_thread_flag(tsk, TIF_GOING_TO_SCHED);
>                                 ^~~~~~~~~~~~~~~~~~
>                                 TIF_SINGLE_STEP
>    In file included from include/linux/kernel.h:11:0,
>                     from include/linux/list.h:9,
>                     from include/linux/preempt.h:11,
>                     from include/linux/hardirq.h:5,
>                     from include/linux/kvm_host.h:7,
>                     from arch/s390/kernel/asm-offsets.c:11:
>    include/linux/sched.h: In function 'test_tsk_going_to_sched':
>    include/linux/sched.h:1786:44: error: 'TIF_GOING_TO_SCHED' undeclared (first
> use in this function); did you mean 'TIF_SINGLE_STEP'?
>      return unlikely(test_tsk_thread_flag(tsk, TIF_GOING_TO_SCHED));
>                                                ^
>    include/linux/compiler.h:78:42: note: in definition of macro 'unlikely'
>     # define unlikely(x) __builtin_expect(!!(x), 0)
>                                              ^
>    make[2]: *** [scripts/Makefile.build:101: arch/s390/kernel/asm-offsets.s] Error 1
>    make[2]: Target '__build' not remade because of errors.
>    make[1]: *** [Makefile:1112: prepare0] Error 2
>    make[1]: Target 'prepare' not remade because of errors.
>    make: *** [Makefile:179: sub-make] Error 2
>    142 real  47 user  83 sys  92.07% cpu 	make prepare
> 
> vim +1776 include/linux/sched.h
> 
>   1773
>   1774	static inline void set_tsk_going_to_sched(struct task_struct *tsk)
>   1775	{
> > 1776		set_tsk_thread_flag(tsk, TIF_GOING_TO_SCHED);
>   1777	}
>   1778
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
