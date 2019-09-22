Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F167BA182
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Sep 2019 10:31:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:Reply-To:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=gVhhe9vZcce3VAldbOSCaWPbP6KPs8Z5G7fvqyMub3E=; b=Kdj8D/8TQqX9Ko
	+s7ow9llqWs9oJZaIoJuBXiMEJsJcrmrqd8dkQzqWCyqqfIrh086YePD/pH6NIYH0pCxXus4yrq+X
	T9rqR3Lp5FO9re5LDDDMd66USCyQ20Ei6tptFLs56VRSR8mwmjdBjsu37A4LcIJjvFCvi8xeY498D
	A8izh3Gp1BgCd8/K5wmeaS0hCV3dHloaU8+lMP2qqUMdp2zH7yF6DFdgpq2TZpdqvuEb7FjKK88Ya
	9HZfNp/DF2AZsbrytX0rf6yYKFa93ECMFEzHYYuzvIC2RCBMZBbOt1kT2tjAM6CurcxQEAUfcw41D
	3bkHl/qn35/aY0ihOhEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBxGn-0005NM-Nt; Sun, 22 Sep 2019 08:31:01 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBxGE-0005MX-EK
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Sep 2019 08:30:29 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Sep 2019 01:30:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,535,1559545200"; 
 d="gz'50?scan'50,208,50";a="200167894"
Received: from xsang-optiplex-9020.sh.intel.com (HELO xsang-OptiPlex-9020)
 ([10.239.159.135])
 by orsmga002.jf.intel.com with ESMTP; 22 Sep 2019 01:30:19 -0700
Date: Sun, 22 Sep 2019 16:36:12 +0800
From: kbuild test robot <lkp@intel.com>
To: Yu Chen <33988979@163.com>
Subject: Re: [PATCH] arm: export memblock_reserve()d regions via /proc/iomem
Message-ID: <20190922083612.GP13569@xsang-OptiPlex-9020>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="aC33ObtQAkNdOZ6b"
Content-Disposition: inline
In-Reply-To: <1569070969-5168-1-git-send-email-33988979@163.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_013026_744939_4559C105 
X-CRM114-Status: GOOD (  10.09  )
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
Reply-To: kbuild test robot <lkp@intel.com>
Cc: linux-kernel@vger.kernel.org, linux@armlinux.org.uk, yu.chen3@zte.com.cn,
 rmk+kernel@armlinux.org.uk, kbuild-all@01.org,
 linux-arm-kernel@lists.infradead.org
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--aC33ObtQAkNdOZ6b
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Yu,

I love your patch! Yet something to improve:

[auto build test ERROR on arm/for-next]
[cannot apply to v5.3 next-20190920]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Yu-Chen/arm-export-memblock_reserve-d-regions-via-proc-iomem/20190921-214007
base:   git://git.armlinux.org.uk/~rmk/linux-arm.git for-next
config: arm-ixp4xx_defconfig (attached as .config)
compiler: arm-linux-gnueabi-gcc (GCC) 7.4.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # save the attached .config to linux build tree
        GCC_VERSION=7.4.0 make.cross ARCH=arm 
:::::: branch date: 3 hours ago
:::::: commit date: 3 hours ago

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   arch/arm/kernel/setup.c: In function 'reserve_memblock_reserved_regions':
>> arch/arm/kernel/setup.c:918:18: error: 'num_standard_resources' undeclared (first use in this function); did you mean 'request_standard_resources'?
     for (i = 0; i < num_standard_resources; ++i) {
                     ^~~~~~~~~~~~~~~~~~~~~~
                     request_standard_resources
   arch/arm/kernel/setup.c:918:18: note: each undeclared identifier is reported only once for each function it appears in
>> arch/arm/kernel/setup.c:919:27: error: 'standard_resources' undeclared (first use in this function); did you mean 'num_standard_resources'?
      struct resource *mem = &standard_resources[i];
                              ^~~~~~~~~~~~~~~~~~
                              num_standard_resources

# https://github.com/0day-ci/linux/commit/4d551f57b6f9f07cdff5690f541f76e78c656c68
git remote add linux-review https://github.com/0day-ci/linux
git remote update linux-review
git checkout 4d551f57b6f9f07cdff5690f541f76e78c656c68
vim +918 arch/arm/kernel/setup.c

^1da177e4c3f41 Linus Torvalds 2005-04-16  913  
4d551f57b6f9f0 Yu Chen        2019-09-21  914  static int __init reserve_memblock_reserved_regions(void)
4d551f57b6f9f0 Yu Chen        2019-09-21  915  {
4d551f57b6f9f0 Yu Chen        2019-09-21  916  	u64 i, j;
4d551f57b6f9f0 Yu Chen        2019-09-21  917  
4d551f57b6f9f0 Yu Chen        2019-09-21 @918  	for (i = 0; i < num_standard_resources; ++i) {
4d551f57b6f9f0 Yu Chen        2019-09-21 @919  		struct resource *mem = &standard_resources[i];
4d551f57b6f9f0 Yu Chen        2019-09-21  920  		phys_addr_t r_start, r_end, mem_size = resource_size(mem);
4d551f57b6f9f0 Yu Chen        2019-09-21  921  
4d551f57b6f9f0 Yu Chen        2019-09-21  922  		if (!memblock_is_region_reserved(mem->start, mem_size))
4d551f57b6f9f0 Yu Chen        2019-09-21  923  			continue;
4d551f57b6f9f0 Yu Chen        2019-09-21  924  
4d551f57b6f9f0 Yu Chen        2019-09-21  925  		for_each_reserved_mem_region(j, &r_start, &r_end) {
4d551f57b6f9f0 Yu Chen        2019-09-21  926  			resource_size_t start, end;
4d551f57b6f9f0 Yu Chen        2019-09-21  927  
4d551f57b6f9f0 Yu Chen        2019-09-21  928  			start = max(PFN_PHYS(PFN_DOWN(r_start)), mem->start);
4d551f57b6f9f0 Yu Chen        2019-09-21  929  			end = min(PFN_PHYS(PFN_UP(r_end)) - 1, mem->end);
4d551f57b6f9f0 Yu Chen        2019-09-21  930  
4d551f57b6f9f0 Yu Chen        2019-09-21  931  			if (start > mem->end || end < mem->start)
4d551f57b6f9f0 Yu Chen        2019-09-21  932  				continue;
4d551f57b6f9f0 Yu Chen        2019-09-21  933  
4d551f57b6f9f0 Yu Chen        2019-09-21  934  			reserve_region_with_split(mem, start, end, "reserved");
4d551f57b6f9f0 Yu Chen        2019-09-21  935  		}
4d551f57b6f9f0 Yu Chen        2019-09-21  936  	}
4d551f57b6f9f0 Yu Chen        2019-09-21  937  
4d551f57b6f9f0 Yu Chen        2019-09-21  938  	return 0;
4d551f57b6f9f0 Yu Chen        2019-09-21  939  }
4d551f57b6f9f0 Yu Chen        2019-09-21  940  arch_initcall(reserve_memblock_reserved_regions);
4d551f57b6f9f0 Yu Chen        2019-09-21  941  

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--aC33ObtQAkNdOZ6b
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
YU7pvn+0vEr4HydDBUjoYQEA

--aC33ObtQAkNdOZ6b
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--aC33ObtQAkNdOZ6b--

