Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F30118620
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 12:24:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0bzbSN+672h+NfZyspVQHF2skEEPWaf8VoUewatNydw=; b=HjsrSucdvt5ozg
	5VexX8NQmm/KdnfAzP0Mc5ujPAv7FfOIV2f9I6QWy+Q//kn7LPxls2OTOa+3kg5uMOzrDBVF6G/0/
	SZG4Jtcy/Knqx1IjX0jyvaUvALBUfJPWtj7FXwhp1bY5HLWTtFIdOJlLyru8qf1o9IUx0N0e+gzVW
	6AhuSCMHJ/hELX7oSyNR6+jK1iom0rDl4+5e8sHdW1GFA2/01NAGXbP8VDcTE54C6bTjiQL85xL9W
	x6DYFP8HtHmyU1abXCsyi3iGdkrHVR0UIiarRtzei9ZXuWtaERA/zGnefYKdRplqfvTyptin0tcxJ
	uzExTVCd1ut099WmyCvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iedcZ-0003nm-On; Tue, 10 Dec 2019 11:24:03 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iedcR-0003nL-Lw
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 11:23:57 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 03:23:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,299,1571727600"; d="scan'208";a="203159476"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 10 Dec 2019 03:23:51 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iedcM-0009Tp-Tn; Tue, 10 Dec 2019 19:23:50 +0800
Date: Tue, 10 Dec 2019 19:23:42 +0800
From: kbuild test robot <lkp@intel.com>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v16 13/25] mm: pagewalk: Don't lock PTEs for
 walk_page_range_novma()
Message-ID: <201912101842.KIXI4yCg%lkp@intel.com>
References: <20191206135316.47703-14-steven.price@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191206135316.47703-14-steven.price@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_032355_728642_F7624C8C 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-mm@kvack.org,
 "H. Peter Anvin" <hpa@zytor.com>, Will Deacon <will@kernel.org>, "Liang,
 Kan" <kan.liang@linux.intel.com>, x86@kernel.org,
 Steven Price <steven.price@arm.com>, Ingo Molnar <mingo@redhat.com>,
 Arnd Bergmann <arnd@arndb.de>,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 kbuild-all@lists.01.org, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Steven,

I love your patch! Perhaps something to improve:

[auto build test WARNING on linus/master]
[also build test WARNING on v5.5-rc1 next-20191209]
[cannot apply to arm64/for-next/core tip/x86/mm]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Steven-Price/Generic-page-walk-and-ptdump/20191208-035831
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git ad910e36da4ca3a1bd436989f632d062dda0c921
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-101-g82dee2e-dirty
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> include/linux/spinlock.h:378:9: sparse: sparse: context imbalance in 'walk_pte_range' - unexpected unlock

vim +/walk_pte_range +378 include/linux/spinlock.h

c2f21ce2e31286 Thomas Gleixner 2009-12-02  375  
3490565b633c70 Denys Vlasenko  2015-07-13  376  static __always_inline void spin_unlock(spinlock_t *lock)
c2f21ce2e31286 Thomas Gleixner 2009-12-02  377  {
c2f21ce2e31286 Thomas Gleixner 2009-12-02 @378  	raw_spin_unlock(&lock->rlock);
c2f21ce2e31286 Thomas Gleixner 2009-12-02  379  }
c2f21ce2e31286 Thomas Gleixner 2009-12-02  380  

:::::: The code at line 378 was first introduced by commit
:::::: c2f21ce2e31286a0a32f8da0a7856e9ca1122ef3 locking: Implement new raw_spinlock

:::::: TO: Thomas Gleixner <tglx@linutronix.de>
:::::: CC: Thomas Gleixner <tglx@linutronix.de>

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
