Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF4B1AB54E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 03:14:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ei3O1aVlu1hNvm+5wzd6r4YaBGFvRUM2owGpjFT8H2Y=; b=k1Ly0BUoOKBx5cml9ohVhEwmJ
	CCETRQX0uSaP9gKJLXR5WeuCF7vzL1oaAglpnxhCZSwNwT6XU/3C7ZGLigYskeowvJsCeOz6Vx1ZR
	wQSbd5v516wxeBTJtv6d6VJ049UwaBoKBxO9Bveoz2155nBKww5SqZ/a92ntMMSfeyNhEicuvLbiH
	OuOCpFjZYryHR5c2Jv6IkHQGD9jiueCfqiH7cawJaJyDBoNv9xbd5LHyP+TdpxqwJRCMTKoO0371m
	fGhd8RxixbqBOehXugEEBgZ7q3ilgfywRoHamAxM9k/a9DyiyNc2V5k46PDg5Ob2WltZqffjl+mg3
	5iRqQ2KVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOt7D-0002l4-Oc; Thu, 16 Apr 2020 01:14:51 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOt6z-0002jK-3M; Thu, 16 Apr 2020 01:14:38 +0000
IronPort-SDR: GILoYSGJV1dm7JQ2sshHjIUpmUfvFiE7Y63n0sNABLRKpNr3QHLkI6jmCVDmqDVUGYIlO+8pct
 nN0m0gsGwJoA==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 18:14:34 -0700
IronPort-SDR: My9TOsz7EG4wwYdbPW7Y3a1dPIVgWBO1CCbd+gq5C6Lyyf/cX0zJo5SN96JMUBqarmn3n6+B/o
 yFO4vm7otGdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,388,1580803200"; 
 d="gz'50?scan'50,208,50";a="244251267"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 15 Apr 2020 18:14:31 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jOt6s-000CuF-Me; Thu, 16 Apr 2020 09:14:30 +0800
Date: Thu, 16 Apr 2020 09:13:42 +0800
From: kbuild test robot <lkp@intel.com>
To: Atish Patra <atish.patra@wdc.com>, linux-kernel@vger.kernel.org
Subject: Re: [v3 PATCH 5/5] RISC-V: Add EFI stub support.
Message-ID: <202004160922.dSCn2sEV%lkp@intel.com>
References: <20200415195422.19866-6-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="VbJkn9YxBvnuCH5J"
Content-Disposition: inline
In-Reply-To: <20200415195422.19866-6-atish.patra@wdc.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_181437_202710_6F040095 
X-CRM114-Status: UNSURE (   6.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-efi@vger.kernel.org, kbuild-all@lists.01.org,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Masahiro Yamada <masahiroy@kernel.org>, Atish Patra <atish.patra@wdc.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-riscv@lists.infradead.org,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--VbJkn9YxBvnuCH5J
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Atish,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on efi/next]
[also build test WARNING on linus/master v5.7-rc1 next-20200415]
[cannot apply to arm/for-next arm64/for-next/core linux/master atish-riscv-linux/topo_v3]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Atish-Patra/Add-UEFI-support-for-RISC-V/20200416-065438
base:   https://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git next
config: riscv-rv32_defconfig (attached as .config)
compiler: riscv32-linux-gcc (GCC) 9.3.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day GCC_VERSION=9.3.0 make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/linux/list.h:9,
                    from include/linux/preempt.h:11,
                    from include/linux/spinlock.h:51,
                    from include/linux/seqlock.h:36,
                    from include/linux/time.h:6,
                    from include/linux/efi.h:17,
                    from drivers/firmware/efi/libstub/riscv-stub.c:10:
   drivers/firmware/efi/libstub/riscv-stub.c: In function 'handle_kernel_image':
>> drivers/firmware/efi/libstub/riscv-stub.c:89:17: warning: cast from pointer to integer of different size [-Wpointer-to-int-cast]
      89 |  if (IS_ALIGNED((u64)_start, MIN_KIMG_ALIGN)) {
         |                 ^
   include/linux/kernel.h:37:30: note: in definition of macro 'IS_ALIGNED'
      37 | #define IS_ALIGNED(x, a)  (((x) & ((typeof(x))(a) - 1)) == 0)
         |                              ^
>> drivers/firmware/efi/libstub/riscv-stub.c:89:17: warning: cast from pointer to integer of different size [-Wpointer-to-int-cast]
      89 |  if (IS_ALIGNED((u64)_start, MIN_KIMG_ALIGN)) {
         |                 ^
   include/linux/kernel.h:37:44: note: in definition of macro 'IS_ALIGNED'
      37 | #define IS_ALIGNED(x, a)  (((x) & ((typeof(x))(a) - 1)) == 0)
         |                                            ^
   drivers/firmware/efi/libstub/riscv-stub.c:94:17: warning: cast from pointer to integer of different size [-Wpointer-to-int-cast]
      94 |   *image_addr = (u64)_start;
         |                 ^

vim +89 drivers/firmware/efi/libstub/riscv-stub.c

    69	
    70	efi_status_t handle_kernel_image(unsigned long *image_addr,
    71					 unsigned long *image_size,
    72					 unsigned long *reserve_addr,
    73					 unsigned long *reserve_size,
    74					 unsigned long dram_base,
    75					 efi_loaded_image_t *image)
    76	{
    77		efi_status_t status;
    78		unsigned long kernel_size, kernel_memsize = 0;
    79		unsigned long max_alloc_address;
    80	
    81		if (image->image_base != _start)
    82			pr_efi_err("FIRMWARE BUG: efi_loaded_image_t::image_base has bogus value\n");
    83	
    84		kernel_size = _edata - _start;
    85		kernel_memsize = kernel_size + (_end - _edata);
    86		max_alloc_address = round_up(dram_base, MIN_KIMG_ALIGN) +
    87				    kernel_memsize;
    88	
  > 89		if (IS_ALIGNED((u64)_start, MIN_KIMG_ALIGN)) {

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--VbJkn9YxBvnuCH5J
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--VbJkn9YxBvnuCH5J
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--VbJkn9YxBvnuCH5J--

