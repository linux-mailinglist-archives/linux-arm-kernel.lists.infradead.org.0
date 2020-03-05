Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6FA17A702
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 15:01:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MOvMt/gnFc39PtJ4ryqGHznY/BXTY52FJ4V0/+Z1XAg=; b=c2WbBauVvGOszzIXoYiD0/Cyn
	JAcWsnJYhYKeUqifjlra9Il98hfIOfXpFUNFgzUGXkOPgazGKzDYEaaOIhF4SGDe6l9Hwhu80QNVE
	YIEgB6MTiOaa5TUhTQgIyhvkp8ieunZMaJ2QdpSrDgkRiOSuXnmu8Hpj1OyVH1skAFIQIR+yuepMP
	Qimd3MCiw+rkP0W4x70yMxjG2+UBhG6fcdjnuPksgWm2KNQ2BJH/WmcSCf71pLatSDXXc6dX9sBYu
	ozCYLUnKK5V2WD35wiIBqGUBtIt7sh+azgKqsDEu908Wp5qR27SDf1PknALoLs+w3OgSi3A+jCMA7
	QAS2mz3cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9r48-00075I-If; Thu, 05 Mar 2020 14:01:32 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9r3I-0006OF-Fs
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 14:00:43 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 06:00:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; 
 d="gz'50?scan'50,208,50";a="352366430"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 05 Mar 2020 06:00:31 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1j9r38-000DSi-Du; Thu, 05 Mar 2020 22:00:30 +0800
Date: Thu, 5 Mar 2020 21:59:42 +0800
From: kbuild test robot <lkp@intel.com>
To: cl@rock-chips.com
Subject: Re: [PATCH v1 1/1] sched/fair: do not preempt current task if it is
 going to call schedule()
Message-ID: <202003052148.c4gEyOrD%lkp@intel.com>
References: <20200305081611.29323-2-cl@rock-chips.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="AqsLC8rIMeq19msA"
Content-Disposition: inline
In-Reply-To: <20200305081611.29323-2-cl@rock-chips.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_060040_550539_12B665C8 
X-CRM114-Status: UNSURE (   7.15  )
X-CRM114-Notice: Please train this message.
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


--AqsLC8rIMeq19msA
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
config: um-x86_64_defconfig (attached as .config)
compiler: gcc-7 (Debian 7.5.0-5) 7.5.0
reproduce:
        # save the attached .config to linux build tree
        make ARCH=um SUBARCH=x86_64

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/x86/um/shared/sysdep/kernel-offsets.h:3:0,
                    from arch/um/kernel/asm-offsets.c:1:
   include/linux/sched.h: In function 'set_tsk_going_to_sched':
>> include/linux/sched.h:1776:27: error: 'TIF_GOING_TO_SCHED' undeclared (first use in this function); did you mean 'TIF_NEED_RESCHED'?
     set_tsk_thread_flag(tsk, TIF_GOING_TO_SCHED);
                              ^~~~~~~~~~~~~~~~~~
                              TIF_NEED_RESCHED
   include/linux/sched.h:1776:27: note: each undeclared identifier is reported only once for each function it appears in
   include/linux/sched.h: In function 'clear_tsk_going_to_sched':
   include/linux/sched.h:1781:29: error: 'TIF_GOING_TO_SCHED' undeclared (first use in this function); did you mean 'TIF_NEED_RESCHED'?
     clear_tsk_thread_flag(tsk, TIF_GOING_TO_SCHED);
                                ^~~~~~~~~~~~~~~~~~
                                TIF_NEED_RESCHED
   In file included from include/asm-generic/bug.h:5:0,
                    from ./arch/um/include/generated/asm/bug.h:1,
                    from include/linux/bug.h:5,
                    from include/linux/thread_info.h:12,
                    from include/asm-generic/current.h:5,
                    from ./arch/um/include/generated/asm/current.h:1,
                    from include/linux/sched.h:12,
                    from arch/x86/um/shared/sysdep/kernel-offsets.h:3,
                    from arch/um/kernel/asm-offsets.c:1:
   include/linux/sched.h: In function 'test_tsk_going_to_sched':
   include/linux/sched.h:1786:44: error: 'TIF_GOING_TO_SCHED' undeclared (first use in this function); did you mean 'TIF_NEED_RESCHED'?
     return unlikely(test_tsk_thread_flag(tsk, TIF_GOING_TO_SCHED));
                                               ^
   include/linux/compiler.h:78:42: note: in definition of macro 'unlikely'
    # define unlikely(x) __builtin_expect(!!(x), 0)
                                             ^
   make[2]: *** [scripts/Makefile.build:101: arch/um/kernel/asm-offsets.s] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [Makefile:1112: prepare0] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:179: sub-make] Error 2
   49 real  6 user  8 sys  31.64% cpu 	make prepare

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

--AqsLC8rIMeq19msA
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
aXev9oIAAA==

--AqsLC8rIMeq19msA
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--AqsLC8rIMeq19msA--

