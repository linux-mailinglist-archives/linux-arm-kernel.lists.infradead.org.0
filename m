Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 274A417A7F0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 15:39:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jlfnRWqdL9fpQdve61a3RmjhPKKuWFcUHpDzRRUwlzE=; b=Torrds2jlDiSx611/PRTJacwM
	tpGrYPG5frl1+5puD8aNWTFP+t4u1LI8WSn46J0cKOmYr34EbdkSZ3oAI7/hg9D+DeNtHDYE17VjM
	qvTYGIZ7auoYOYWmAoqKzgKH5lDlEaaIKTIs+I6bAO2JcIJ2bVwzQ9/g7wlhLDM6igXlVjFhcq4gG
	i334BNyuIWYGRwsMZqMxAGvtl/3DS0/7JrRbNReMCr45YmtYm2z5xpdXmIr7LFaBgJTxw9CIYzZNy
	ChpcyG4d3bQdSsRUcXO7ui4Nb1gY88D1mL6LJ8ykMECVISek6ayOeIKJ27qsDsKP5KJ2b24TS/EMv
	NIA0hSkKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9rew-0004NK-P9; Thu, 05 Mar 2020 14:39:34 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9red-0004FW-Dk
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 14:39:20 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 06:39:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; 
 d="gz'50?scan'50,208,50";a="240832548"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 05 Mar 2020 06:39:05 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1j9reS-000HxH-AQ; Thu, 05 Mar 2020 22:39:04 +0800
Date: Thu, 5 Mar 2020 22:38:36 +0800
From: kbuild test robot <lkp@intel.com>
To: cl@rock-chips.com
Subject: Re: [PATCH v1 1/1] sched/fair: do not preempt current task if it is
 going to call schedule()
Message-ID: <202003052243.P59yLrjh%lkp@intel.com>
References: <20200305081611.29323-2-cl@rock-chips.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="sm4nu43k4a2Rpi4c"
Content-Disposition: inline
In-Reply-To: <20200305081611.29323-2-cl@rock-chips.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_063915_567095_753CA539 
X-CRM114-Status: UNSURE (   3.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
Cc: juri.lelli@redhat.com, mark.rutland@arm.com, heiko@sntech.de,
 geert+renesas@glider.be, peterz@infradead.org, catalin.marinas@arm.com,
 bsegall@google.com, will@kernel.org, mpe@ellerman.id.au, linux@armlinux.org.uk,
 dietmar.eggemann@arm.com, ben.dooks@codethink.co.uk, mgorman@suse.de,
 Liang Chen <cl@rock-chips.com>, huangtao@rock-chips.com, keescook@chromium.org,
 anshuman.khandual@arm.com, rostedt@goodmis.org, wad@chromium.org,
 tglx@linutronix.de, surenb@google.com, mingo@redhat.com, allison@lohutok.net,
 linux-arm-kernel@lists.infradead.org, kbuild-all@lists.01.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, luto@amacapital.net,
 george_davis@mentor.com, sudeep.holla@arm.com, akpm@linux-foundation.org,
 info@metux.net, kstewart@linuxfoundation.org
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--sm4nu43k4a2Rpi4c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on tip/sched/core]
[also build test ERROR on arm64/for-next/core tip/auto-latest linus/master v5.6-rc4 next-20200305]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/cl-rock-chips-com/wait_task_inactive-spend-too-much-time-on-system-startup/20200305-201639
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git a0f03b617c3b2644d3d47bf7d9e60aed01bd5b10
config: s390-zfcpdump_defconfig (attached as .config)
compiler: s390-linux-gcc (GCC) 7.5.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # save the attached .config to linux build tree
        GCC_VERSION=7.5.0 make.cross ARCH=s390 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from include/linux/kvm_host.h:12:0,
                    from arch/s390/kernel/asm-offsets.c:11:
   include/linux/sched.h: In function 'set_tsk_going_to_sched':
>> include/linux/sched.h:1776:27: error: 'TIF_GOING_TO_SCHED' undeclared (first use in this function); did you mean 'TIF_SINGLE_STEP'?
     set_tsk_thread_flag(tsk, TIF_GOING_TO_SCHED);
                              ^~~~~~~~~~~~~~~~~~
                              TIF_SINGLE_STEP
   include/linux/sched.h:1776:27: note: each undeclared identifier is reported only once for each function it appears in
   include/linux/sched.h: In function 'clear_tsk_going_to_sched':
   include/linux/sched.h:1781:29: error: 'TIF_GOING_TO_SCHED' undeclared (first use in this function); did you mean 'TIF_SINGLE_STEP'?
     clear_tsk_thread_flag(tsk, TIF_GOING_TO_SCHED);
                                ^~~~~~~~~~~~~~~~~~
                                TIF_SINGLE_STEP
   In file included from include/linux/kernel.h:11:0,
                    from include/linux/list.h:9,
                    from include/linux/preempt.h:11,
                    from include/linux/hardirq.h:5,
                    from include/linux/kvm_host.h:7,
                    from arch/s390/kernel/asm-offsets.c:11:
   include/linux/sched.h: In function 'test_tsk_going_to_sched':
   include/linux/sched.h:1786:44: error: 'TIF_GOING_TO_SCHED' undeclared (first use in this function); did you mean 'TIF_SINGLE_STEP'?
     return unlikely(test_tsk_thread_flag(tsk, TIF_GOING_TO_SCHED));
                                               ^
   include/linux/compiler.h:78:42: note: in definition of macro 'unlikely'
    # define unlikely(x) __builtin_expect(!!(x), 0)
                                             ^
   make[2]: *** [scripts/Makefile.build:101: arch/s390/kernel/asm-offsets.s] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [Makefile:1112: prepare0] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:179: sub-make] Error 2
   142 real  47 user  83 sys  92.07% cpu 	make prepare

vim +1776 include/linux/sched.h

  1773	
  1774	static inline void set_tsk_going_to_sched(struct task_struct *tsk)
  1775	{
> 1776		set_tsk_thread_flag(tsk, TIF_GOING_TO_SCHED);
  1777	}
  1778	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--sm4nu43k4a2Rpi4c
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--sm4nu43k4a2Rpi4c
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--sm4nu43k4a2Rpi4c--

