Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D56F617A643
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 14:23:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Cv3+6E20Tfx7WUDSq0w7RUrtBrbRBdoJcvKjWFmakY8=; b=spO0+g+lEAxPnc0A9+fpEf0Li
	LKdqNzFXiPjz9lHZ/2CO0XSq3dWqYxlAIPX8zCYl/94eAdcpfrZdjammtdt8ckQWWiVHoSZGJFMfm
	/OUXrj0k11brdthyJHb3nFK15KmZVJFhOU4QmxWfO2O+gnDrLqeRkHhKyVYdoDDbveVjbz858OGiP
	l8LNXb8OvviaNGPqTYHISZ+bg3HDXoBI/dAcjXbTB3XcO9atUYAZK1h2CH4gmBDmUkith7lB20R4g
	4gpH4+SGjr3AQg2vz0DcJiQx+mruADX9ekWxOTs78fSa0ZZFY2uOMG9sf0lheiiMfK7o7p+YeDIAw
	uf32xIEqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9qTR-0005Zr-Ac; Thu, 05 Mar 2020 13:23:37 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9qTG-0005ZR-RS
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 13:23:28 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 05:23:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; 
 d="gz'50?scan'50,208,50";a="263971139"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 05 Mar 2020 05:23:16 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1j9qT6-000Dfm-76; Thu, 05 Mar 2020 21:23:16 +0800
Date: Thu, 5 Mar 2020 21:22:29 +0800
From: kbuild test robot <lkp@intel.com>
To: cl@rock-chips.com
Subject: Re: [PATCH v1 1/1] sched/fair: do not preempt current task if it is
 going to call schedule()
Message-ID: <202003052148.eDFMSdq8%lkp@intel.com>
References: <20200305081611.29323-2-cl@rock-chips.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="wac7ysb48OaltWcw"
Content-Disposition: inline
In-Reply-To: <20200305081611.29323-2-cl@rock-chips.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_052326_952427_8C78DEB5 
X-CRM114-Status: GOOD (  12.54  )
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


--wac7ysb48OaltWcw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on tip/sched/core]
[also build test ERROR on arm64/for-next/core tip/auto-latest linus/master v5.6-rc4 next-20200304]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/cl-rock-chips-com/wait_task_inactive-spend-too-much-time-on-system-startup/20200305-201639
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git a0f03b617c3b2644d3d47bf7d9e60aed01bd5b10
config: nds32-defconfig (attached as .config)
compiler: nds32le-linux-gcc (GCC) 9.2.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # save the attached .config to linux build tree
        GCC_VERSION=9.2.0 make.cross ARCH=nds32 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/nds32/kernel/asm-offsets.c:4:
   include/linux/sched.h: In function 'set_tsk_going_to_sched':
>> include/linux/sched.h:1776:27: error: 'TIF_GOING_TO_SCHED' undeclared (first use in this function)
    1776 |  set_tsk_thread_flag(tsk, TIF_GOING_TO_SCHED);
         |                           ^~~~~~~~~~~~~~~~~~
   include/linux/sched.h:1776:27: note: each undeclared identifier is reported only once for each function it appears in
   include/linux/sched.h: In function 'clear_tsk_going_to_sched':
   include/linux/sched.h:1781:29: error: 'TIF_GOING_TO_SCHED' undeclared (first use in this function)
    1781 |  clear_tsk_thread_flag(tsk, TIF_GOING_TO_SCHED);
         |                             ^~~~~~~~~~~~~~~~~~
   In file included from include/linux/kernel.h:11,
                    from include/linux/list.h:9,
                    from include/linux/rculist.h:10,
                    from include/linux/pid.h:5,
                    from include/linux/sched.h:14,
                    from arch/nds32/kernel/asm-offsets.c:4:
   include/linux/sched.h: In function 'test_tsk_going_to_sched':
   include/linux/sched.h:1786:44: error: 'TIF_GOING_TO_SCHED' undeclared (first use in this function)
    1786 |  return unlikely(test_tsk_thread_flag(tsk, TIF_GOING_TO_SCHED));
         |                                            ^~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:78:42: note: in definition of macro 'unlikely'
      78 | # define unlikely(x) __builtin_expect(!!(x), 0)
         |                                          ^
   make[2]: *** [scripts/Makefile.build:101: arch/nds32/kernel/asm-offsets.s] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [Makefile:1112: prepare0] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:179: sub-make] Error 2
   22 real  7 user  11 sys  85.87% cpu 	make prepare

vim +/TIF_GOING_TO_SCHED +1776 include/linux/sched.h

  1773	
  1774	static inline void set_tsk_going_to_sched(struct task_struct *tsk)
  1775	{
> 1776		set_tsk_thread_flag(tsk, TIF_GOING_TO_SCHED);
  1777	}
  1778	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--wac7ysb48OaltWcw
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
97yKlVX1f0TxZtbxpwAA

--wac7ysb48OaltWcw
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--wac7ysb48OaltWcw--

