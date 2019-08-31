Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36539A4694
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 01:49:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UdtGJth9g5bf1+boPG2w/QZrC0o44Lrm8HSwXOIF7XE=; b=NNa1G6JIAuhXLeWFEV0VbbU2r
	IeerMu4JiYVQpjP9BONs4lsntkS9iM/Jo3qn4zXeNPiPu6rXPz5nHgI4xfBR181BcfToiiGnpFU9j
	NCekSNIFFbBiRAGSC0Q0pojZkQ8yBqdWObzAd17FLIzb+heHOVJkcodjb8Hcawl7gwwKhUGpZdb9a
	d8KMzf0/xwBXuDZmokvAYth1WGmw0pK9QIhhvpjvWSA8MmGJvAo2hZ2UnirHOHr0QeRBKY67Rohr+
	n9HkpYCIxIbA+bVlZPypXx0yqJB5zTT3g3E0u2VCgGEB4x3fdCKndYm0w2PKuWuon6JrUia9U+ai0
	ulAEMdaQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4D74-0006Cd-KV; Sat, 31 Aug 2019 23:48:59 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4D6p-0006CD-3g; Sat, 31 Aug 2019 23:48:45 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Aug 2019 16:48:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,453,1559545200"; 
 d="gz'50?scan'50,208,50";a="198310395"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 31 Aug 2019 16:48:38 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1i4D6j-0002et-Rp; Sun, 01 Sep 2019 07:48:37 +0800
Date: Sun, 1 Sep 2019 07:48:30 +0800
From: kbuild test robot <lkp@intel.com>
To: Chen Zhou <chenzhou10@huawei.com>
Subject: Re: [PATCH v6 1/4] x86: kdump: move reserve_crashkernel_low() into
 crash_core.c
Message-ID: <201909010704.4m9y2sg7%lkp@intel.com>
References: <20190830071200.56169-2-chenzhou10@huawei.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="7yqc4jqmkddlfw6p"
Content-Disposition: inline
In-Reply-To: <20190830071200.56169-2-chenzhou10@huawei.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_164843_225994_C6E56923 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
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
Cc: horms@verge.net.au, Chen Zhou <chenzhou10@huawei.com>,
 catalin.marinas@arm.com, bhsharma@redhat.com, dyoung@redhat.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, mingo@redhat.com,
 james.morse@arm.com, kbuild-all@01.org, guohanjun@huawei.com,
 tglx@linutronix.de, will@kernel.org, linux-arm-kernel@lists.infradead.org
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--7yqc4jqmkddlfw6p
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Chen,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on linus/master]
[cannot apply to v5.3-rc6 next-20190830]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/Chen-Zhou/support-reserving-crashkernel-above-4G-on-arm64-kdump/20190901-053351
config: um-i386_defconfig (attached as .config)
compiler: gcc-7 (Debian 7.4.0-11) 7.4.0
reproduce:
        # save the attached .config to linux build tree
        make ARCH=um SUBARCH=i386

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from include/linux/crash_core.h:9:0,
                    from kernel//printk/printk.c:37:
   arch/x86/include/asm/kexec.h: In function 'crash_setup_regs':
   arch/x86/include/asm/kexec.h:88:46: error: 'struct pt_regs' has no member named 'bx'
      asm volatile("movl %%ebx,%0" : "=m"(newregs->bx));
                                                 ^~
   arch/x86/include/asm/kexec.h:89:46: error: 'struct pt_regs' has no member named 'cx'
      asm volatile("movl %%ecx,%0" : "=m"(newregs->cx));
                                                 ^~
   arch/x86/include/asm/kexec.h:90:46: error: 'struct pt_regs' has no member named 'dx'
      asm volatile("movl %%edx,%0" : "=m"(newregs->dx));
                                                 ^~
   arch/x86/include/asm/kexec.h:91:46: error: 'struct pt_regs' has no member named 'si'
      asm volatile("movl %%esi,%0" : "=m"(newregs->si));
                                                 ^~
   arch/x86/include/asm/kexec.h:92:46: error: 'struct pt_regs' has no member named 'di'
      asm volatile("movl %%edi,%0" : "=m"(newregs->di));
                                                 ^~
   arch/x86/include/asm/kexec.h:93:46: error: 'struct pt_regs' has no member named 'bp'
      asm volatile("movl %%ebp,%0" : "=m"(newregs->bp));
                                                 ^~
   arch/x86/include/asm/kexec.h:94:46: error: 'struct pt_regs' has no member named 'ax'
      asm volatile("movl %%eax,%0" : "=m"(newregs->ax));
                                                 ^~
   arch/x86/include/asm/kexec.h:95:46: error: 'struct pt_regs' has no member named 'sp'
      asm volatile("movl %%esp,%0" : "=m"(newregs->sp));
                                                 ^~
   arch/x86/include/asm/kexec.h:96:49: error: 'struct pt_regs' has no member named 'ss'
      asm volatile("movl %%ss, %%eax;" :"=a"(newregs->ss));
                                                    ^~
   arch/x86/include/asm/kexec.h:97:49: error: 'struct pt_regs' has no member named 'cs'
      asm volatile("movl %%cs, %%eax;" :"=a"(newregs->cs));
                                                    ^~
>> arch/x86/include/asm/kexec.h:98:49: error: 'struct pt_regs' has no member named 'ds'
      asm volatile("movl %%ds, %%eax;" :"=a"(newregs->ds));
                                                    ^~
>> arch/x86/include/asm/kexec.h:99:51: error: 'struct pt_regs' has no member named 'es'; did you mean 'regs'?
      asm volatile("movl %%es, %%eax;" :"=a"(newregs->es));
                                                      ^~
                                                      regs
   arch/x86/include/asm/kexec.h:100:47: error: 'struct pt_regs' has no member named 'flags'
      asm volatile("pushfl; popl %0" :"=m"(newregs->flags));
                                                  ^~
   arch/x86/include/asm/kexec.h:122:10: error: 'struct pt_regs' has no member named 'ip'
      newregs->ip = _THIS_IP_;
             ^~

vim +98 arch/x86/include/asm/kexec.h

dd5f726076cc76 arch/x86/include/asm/kexec.h Vivek Goyal      2014-08-08   75  
3c233d1334ffc8 include/asm-x86/kexec.h      Harvey Harrison  2008-01-30   76  /*
3c233d1334ffc8 include/asm-x86/kexec.h      Harvey Harrison  2008-01-30   77   * This function is responsible for capturing register states if coming
3c233d1334ffc8 include/asm-x86/kexec.h      Harvey Harrison  2008-01-30   78   * via panic otherwise just fix up the ss and sp if coming via kernel
3c233d1334ffc8 include/asm-x86/kexec.h      Harvey Harrison  2008-01-30   79   * mode exception.
3c233d1334ffc8 include/asm-x86/kexec.h      Harvey Harrison  2008-01-30   80   */
3c233d1334ffc8 include/asm-x86/kexec.h      Harvey Harrison  2008-01-30   81  static inline void crash_setup_regs(struct pt_regs *newregs,
3c233d1334ffc8 include/asm-x86/kexec.h      Harvey Harrison  2008-01-30   82  				    struct pt_regs *oldregs)
3c233d1334ffc8 include/asm-x86/kexec.h      Harvey Harrison  2008-01-30   83  {
3c233d1334ffc8 include/asm-x86/kexec.h      Harvey Harrison  2008-01-30   84  	if (oldregs) {
3c233d1334ffc8 include/asm-x86/kexec.h      Harvey Harrison  2008-01-30   85  		memcpy(newregs, oldregs, sizeof(*newregs));
3c233d1334ffc8 include/asm-x86/kexec.h      Harvey Harrison  2008-01-30   86  	} else {
3c233d1334ffc8 include/asm-x86/kexec.h      Harvey Harrison  2008-01-30   87  #ifdef CONFIG_X86_32
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23   88  		asm volatile("movl %%ebx,%0" : "=m"(newregs->bx));
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23   89  		asm volatile("movl %%ecx,%0" : "=m"(newregs->cx));
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23   90  		asm volatile("movl %%edx,%0" : "=m"(newregs->dx));
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23   91  		asm volatile("movl %%esi,%0" : "=m"(newregs->si));
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23   92  		asm volatile("movl %%edi,%0" : "=m"(newregs->di));
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23   93  		asm volatile("movl %%ebp,%0" : "=m"(newregs->bp));
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23   94  		asm volatile("movl %%eax,%0" : "=m"(newregs->ax));
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23  @95  		asm volatile("movl %%esp,%0" : "=m"(newregs->sp));
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23  @96  		asm volatile("movl %%ss, %%eax;" :"=a"(newregs->ss));
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23   97  		asm volatile("movl %%cs, %%eax;" :"=a"(newregs->cs));
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23  @98  		asm volatile("movl %%ds, %%eax;" :"=a"(newregs->ds));
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23  @99  		asm volatile("movl %%es, %%eax;" :"=a"(newregs->es));
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23  100  		asm volatile("pushfl; popl %0" :"=m"(newregs->flags));
3c233d1334ffc8 include/asm-x86/kexec.h      Harvey Harrison  2008-01-30  101  #else
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23  102  		asm volatile("movq %%rbx,%0" : "=m"(newregs->bx));
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23  103  		asm volatile("movq %%rcx,%0" : "=m"(newregs->cx));
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23  104  		asm volatile("movq %%rdx,%0" : "=m"(newregs->dx));
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23  105  		asm volatile("movq %%rsi,%0" : "=m"(newregs->si));
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23  106  		asm volatile("movq %%rdi,%0" : "=m"(newregs->di));
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23  107  		asm volatile("movq %%rbp,%0" : "=m"(newregs->bp));
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23  108  		asm volatile("movq %%rax,%0" : "=m"(newregs->ax));
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23  109  		asm volatile("movq %%rsp,%0" : "=m"(newregs->sp));
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23  110  		asm volatile("movq %%r8,%0" : "=m"(newregs->r8));
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23  111  		asm volatile("movq %%r9,%0" : "=m"(newregs->r9));
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23  112  		asm volatile("movq %%r10,%0" : "=m"(newregs->r10));
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23  113  		asm volatile("movq %%r11,%0" : "=m"(newregs->r11));
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23  114  		asm volatile("movq %%r12,%0" : "=m"(newregs->r12));
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23  115  		asm volatile("movq %%r13,%0" : "=m"(newregs->r13));
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23  116  		asm volatile("movq %%r14,%0" : "=m"(newregs->r14));
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23  117  		asm volatile("movq %%r15,%0" : "=m"(newregs->r15));
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23  118  		asm volatile("movl %%ss, %%eax;" :"=a"(newregs->ss));
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23  119  		asm volatile("movl %%cs, %%eax;" :"=a"(newregs->cs));
b69a3f9dc0bbdb include/asm-x86/kexec.h      Joe Perches      2008-03-23  120  		asm volatile("pushfq; popq %0" :"=m"(newregs->flags));
3c233d1334ffc8 include/asm-x86/kexec.h      Harvey Harrison  2008-01-30  121  #endif
de0d22e50cd3d5 arch/x86/include/asm/kexec.h Nick Desaulniers 2018-10-30  122  		newregs->ip = _THIS_IP_;
3c233d1334ffc8 include/asm-x86/kexec.h      Harvey Harrison  2008-01-30  123  	}
3c233d1334ffc8 include/asm-x86/kexec.h      Harvey Harrison  2008-01-30  124  }
3c233d1334ffc8 include/asm-x86/kexec.h      Harvey Harrison  2008-01-30  125  

:::::: The code at line 98 was first introduced by commit
:::::: b69a3f9dc0bbdbf9278ac5bc8d4b6347c11a701b include/asm-x86/kexec.h: checkpatch cleanups - formatting only

:::::: TO: Joe Perches <joe@perches.com>
:::::: CC: Ingo Molnar <mingo@elte.hu>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--7yqc4jqmkddlfw6p
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--7yqc4jqmkddlfw6p
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--7yqc4jqmkddlfw6p--

