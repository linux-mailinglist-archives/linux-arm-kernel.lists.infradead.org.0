Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22399143219
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 20:22:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lh+ztWCKDobIrHqGUviQ7QkFkl2dOiMExS3HReqkYck=; b=bbbw3Uhj7zykAx
	Rr3sB54u1O7hi1CIWoy/cuQcFMB8vrGXDAI24AxPBOyjymr63M3NNaiXAHLlp/RTfi6qItf2KT5KP
	MwwYs/xwU6nhIBYSV4ymWnTlkAojECwF/W+ydIXMqnv9wsaCVPDZdv8Xz2c1H9/MUuVEvj0jVr5nR
	1AeoI/FyK0SrDPbG1NwAmSPD2wzvr6iNmQ9JrpnPbdmZDCCc994MUZd2jeCJ/Rco67JP6vNoUM7k8
	yjqSisysU40Ug4dD0dnv/zZo2bALwZZ2UJhdnUR2vn1O4Ei1UFFkd1JT0Irbwo7ze9Dz2/uP8n0z0
	qnjIhHGt4jHaNMPSSH2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itccn-0007HO-Jb; Mon, 20 Jan 2020 19:22:13 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itccc-0007GZ-1f
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 19:22:04 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jan 2020 11:22:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,343,1574150400"; d="scan'208";a="306997126"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 20 Jan 2020 11:21:56 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1itccV-0001DA-M3; Tue, 21 Jan 2020 03:21:55 +0800
Date: Tue, 21 Jan 2020 03:21:00 +0800
From: kbuild test robot <lkp@intel.com>
To: Oscar A Perez <linux@neuralgames.com>
Subject: Re: [PATCH 2/2] hwrng: Add support for ASPEED RNG
Message-ID: <202001210315.cvK5kMXE%lkp@intel.com>
References: <20200120150113.2565-2-linux@neuralgames.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120150113.2565-2-linux@neuralgames.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_112202_115942_B629A5B0 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Tomer Maimon <tmaimon77@gmail.com>,
 linux-aspeed@lists.ozlabs.org, Zaibo Xu <xuzaibo@huawei.com>,
 Oscar A Perez <linux@neuralgames.com>, Weili Qian <qianweili@huawei.com>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Krzysztof Kozlowski <krzk@kernel.org>, Joel Stanley <joel@jms.id.au>,
 devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Rob Herring <robh+dt@kernel.org>, Matt Mackall <mpm@selenic.com>,
 linux-arm-kernel@lists.infradead.org, Sumit Garg <sumit.garg@linaro.org>,
 kbuild-all@lists.01.org, Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, Jens Wiklander <jens.wiklander@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Oscar,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on char-misc/char-misc-testing]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Oscar-A-Perez/hwrng-Add-support-for-ASPEED-RNG/20200121-020818
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/char-misc.git c20c76acf6ec1df0af3bdd3370f7e3fef4494ba8
config: i386-tinyconfig
compiler: gcc-7 (Debian 7.5.0-3) 7.5.0
reproduce:
        make ARCH=i386  tinyconfig
        make ARCH=i386 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/char/hw_random/Kconfig:481: syntax error
   drivers/char/hw_random/Kconfig:480:warning: ignoring unsupported character ','
   drivers/char/hw_random/Kconfig:480:warning: ignoring unsupported character '.'
>> drivers/char/hw_random/Kconfig:480: unknown statement "If"
   make[2]: *** [oldconfig] Error 1
   make[1]: *** [oldconfig] Error 2
   make: *** [sub-make] Error 2
   4 real  2 user  0 sys  65.95% cpu 	make oldconfig
--
>> drivers/char/hw_random/Kconfig:481: syntax error
   drivers/char/hw_random/Kconfig:480:warning: ignoring unsupported character ','
   drivers/char/hw_random/Kconfig:480:warning: ignoring unsupported character '.'
>> drivers/char/hw_random/Kconfig:480: unknown statement "If"
   make[2]: *** [olddefconfig] Error 1
   make[1]: *** [olddefconfig] Error 2
   make: *** [sub-make] Error 2
   4 real  2 user  0 sys  62.01% cpu 	make olddefconfig
--
>> drivers/char/hw_random/Kconfig:481: syntax error
   drivers/char/hw_random/Kconfig:480:warning: ignoring unsupported character ','
   drivers/char/hw_random/Kconfig:480:warning: ignoring unsupported character '.'
>> drivers/char/hw_random/Kconfig:480: unknown statement "If"
   make[5]: *** [allnoconfig] Error 1
   make[4]: *** [allnoconfig] Error 2
   make[3]: *** [__build_one_by_one] Error 2
   make[3]: Target 'allnoconfig' not remade because of errors.
   make[3]: Target 'tiny.config' not remade because of errors.
   make[2]: *** [tinyconfig] Error 2
   make[1]: *** [tinyconfig] Error 2
   make: *** [sub-make] Error 2
   7 real  2 user  0 sys  49.49% cpu 	make tinyconfig

vim +481 drivers/char/hw_random/Kconfig

    23	
    24	config HW_RANDOM_TIMERIOMEM
    25		tristate "Timer IOMEM HW Random Number Generator support"
    26		depends on HAS_IOMEM
    27		---help---
    28		  This driver provides kernel-side support for a generic Random
    29		  Number Generator used by reading a 'dumb' iomem address that
    30		  is to be read no faster than, for example, once a second;
    31		  the default FPGA bitstream on the TS-7800 has such functionality.
    32	
    33		  To compile this driver as a module, choose M here: the
    34		  module will be called timeriomem-rng.
    35	
    36		  If unsure, say Y.
    37	
    38	config HW_RANDOM_INTEL
    39		tristate "Intel HW Random Number Generator support"
    40		depends on (X86 || IA64) && PCI
    41		default HW_RANDOM
    42		---help---
    43		  This driver provides kernel-side support for the Random Number
    44		  Generator hardware found on Intel i8xx-based motherboards.
    45	
    46		  To compile this driver as a module, choose M here: the
    47		  module will be called intel-rng.
    48	
    49		  If unsure, say Y.
    50	
    51	config HW_RANDOM_AMD
    52		tristate "AMD HW Random Number Generator support"
    53		depends on (X86 || PPC_MAPLE) && PCI
    54		default HW_RANDOM
    55		---help---
    56		  This driver provides kernel-side support for the Random Number
    57		  Generator hardware found on AMD 76x-based motherboards.
    58	
    59		  To compile this driver as a module, choose M here: the
    60		  module will be called amd-rng.
    61	
    62		  If unsure, say Y.
    63	
    64	config HW_RANDOM_ATMEL
    65		tristate "Atmel Random Number Generator support"
    66		depends on ARCH_AT91 && HAVE_CLK && OF
    67		default HW_RANDOM
    68		---help---
    69		  This driver provides kernel-side support for the Random Number
    70		  Generator hardware found on Atmel AT91 devices.
    71	
    72		  To compile this driver as a module, choose M here: the
    73		  module will be called atmel-rng.
    74	
    75		  If unsure, say Y.
    76	
    77	config HW_RANDOM_BCM2835
    78		tristate "Broadcom BCM2835/BCM63xx Random Number Generator support"
    79		depends on ARCH_BCM2835 || ARCH_BCM_NSP || ARCH_BCM_5301X || \
    80			   ARCH_BCM_63XX || BCM63XX || BMIPS_GENERIC
    81		default HW_RANDOM
    82		---help---
    83		  This driver provides kernel-side support for the Random Number
    84		  Generator hardware found on the Broadcom BCM2835 and BCM63xx SoCs.
    85	
    86		  To compile this driver as a module, choose M here: the
    87		  module will be called bcm2835-rng
    88	
    89		  If unsure, say Y.
    90	
    91	config HW_RANDOM_IPROC_RNG200
    92		tristate "Broadcom iProc/STB RNG200 support"
    93		depends on ARCH_BCM_IPROC || ARCH_BRCMSTB
    94		default HW_RANDOM
    95		---help---
    96		  This driver provides kernel-side support for the RNG200
    97		  hardware found on the Broadcom iProc and STB SoCs.
    98	
    99		  To compile this driver as a module, choose M here: the
   100		  module will be called iproc-rng200
   101	
   102		  If unsure, say Y.
   103	
   104	config HW_RANDOM_GEODE
   105		tristate "AMD Geode HW Random Number Generator support"
   106		depends on X86_32 && PCI
   107		default HW_RANDOM
   108		---help---
   109		  This driver provides kernel-side support for the Random Number
   110		  Generator hardware found on the AMD Geode LX.
   111	
   112		  To compile this driver as a module, choose M here: the
   113		  module will be called geode-rng.
   114	
   115		  If unsure, say Y.
   116	
   117	config HW_RANDOM_N2RNG
   118		tristate "Niagara2 Random Number Generator support"
   119		depends on SPARC64
   120		default HW_RANDOM
   121		---help---
   122		  This driver provides kernel-side support for the Random Number
   123		  Generator hardware found on Niagara2 cpus.
   124	
   125		  To compile this driver as a module, choose M here: the
   126		  module will be called n2-rng.
   127	
   128		  If unsure, say Y.
   129	
   130	config HW_RANDOM_VIA
   131		tristate "VIA HW Random Number Generator support"
   132		depends on X86
   133		default HW_RANDOM
   134		---help---
   135		  This driver provides kernel-side support for the Random Number
   136		  Generator hardware found on VIA based motherboards.
   137	
   138		  To compile this driver as a module, choose M here: the
   139		  module will be called via-rng.
   140	
   141		  If unsure, say Y.
   142	
   143	config HW_RANDOM_IXP4XX
   144		tristate "Intel IXP4xx NPU HW Pseudo-Random Number Generator support"
   145		depends on ARCH_IXP4XX
   146		default HW_RANDOM
   147		---help---
   148		  This driver provides kernel-side support for the Pseudo-Random
   149		  Number Generator hardware found on the Intel IXP45x/46x NPU.
   150	
   151		  To compile this driver as a module, choose M here: the
   152		  module will be called ixp4xx-rng.
   153	
   154		  If unsure, say Y.
   155	
   156	config HW_RANDOM_OMAP
   157		tristate "OMAP Random Number Generator support"
   158		depends on ARCH_OMAP16XX || ARCH_OMAP2PLUS || ARCH_MVEBU
   159		default HW_RANDOM
   160	 	---help---
   161	 	  This driver provides kernel-side support for the Random Number
   162		  Generator hardware found on OMAP16xx, OMAP2/3/4/5, AM33xx/AM43xx
   163		  multimedia processors, and Marvell Armada 7k/8k SoCs.
   164	
   165		  To compile this driver as a module, choose M here: the
   166		  module will be called omap-rng.
   167	
   168	 	  If unsure, say Y.
   169	
   170	config HW_RANDOM_OMAP3_ROM
   171		tristate "OMAP3 ROM Random Number Generator support"
   172		depends on ARCH_OMAP3
   173		default HW_RANDOM
   174		---help---
   175		  This driver provides kernel-side support for the Random Number
   176		  Generator hardware found on OMAP34xx processors.
   177	
   178		  To compile this driver as a module, choose M here: the
   179		  module will be called omap3-rom-rng.
   180	
   181		  If unsure, say Y.
   182	
   183	config HW_RANDOM_OCTEON
   184		tristate "Octeon Random Number Generator support"
   185		depends on CAVIUM_OCTEON_SOC
   186		default HW_RANDOM
   187		---help---
   188		  This driver provides kernel-side support for the Random Number
   189		  Generator hardware found on Octeon processors.
   190	
   191		  To compile this driver as a module, choose M here: the
   192		  module will be called octeon-rng.
   193	
   194		  If unsure, say Y.
   195	
   196	config HW_RANDOM_PASEMI
   197		tristate "PA Semi HW Random Number Generator support"
   198		depends on PPC_PASEMI
   199		default HW_RANDOM
   200		---help---
   201		  This driver provides kernel-side support for the Random Number
   202		  Generator hardware found on PA Semi PWRficient SoCs.
   203	
   204		  To compile this driver as a module, choose M here: the
   205		  module will be called pasemi-rng.
   206	
   207		  If unsure, say Y.
   208	
   209	config HW_RANDOM_VIRTIO
   210		tristate "VirtIO Random Number Generator support"
   211		depends on VIRTIO
   212		---help---
   213		  This driver provides kernel-side support for the virtual Random Number
   214		  Generator hardware.
   215	
   216		  To compile this driver as a module, choose M here: the
   217		  module will be called virtio-rng.  If unsure, say N.
   218	
   219	config HW_RANDOM_TX4939
   220		tristate "TX4939 Random Number Generator support"
   221		depends on SOC_TX4939
   222		default HW_RANDOM
   223		---help---
   224		  This driver provides kernel-side support for the Random Number
   225		  Generator hardware found on TX4939 SoC.
   226	
   227		  To compile this driver as a module, choose M here: the
   228		  module will be called tx4939-rng.
   229	
   230		  If unsure, say Y.
   231	
   232	config HW_RANDOM_MXC_RNGA
   233		tristate "Freescale i.MX RNGA Random Number Generator"
   234		depends on SOC_IMX31
   235		default HW_RANDOM
   236		---help---
   237		  This driver provides kernel-side support for the Random Number
   238		  Generator hardware found on Freescale i.MX processors.
   239	
   240		  To compile this driver as a module, choose M here: the
   241		  module will be called mxc-rnga.
   242	
   243		  If unsure, say Y.
   244	
   245	config HW_RANDOM_IMX_RNGC
   246		tristate "Freescale i.MX RNGC Random Number Generator"
   247		depends on ARCH_MXC
   248		default HW_RANDOM
   249		---help---
   250		  This driver provides kernel-side support for the Random Number
   251		  Generator Version C hardware found on some Freescale i.MX
   252		  processors. Version B is also supported by this driver.
   253	
   254		  To compile this driver as a module, choose M here: the
   255		  module will be called imx-rngc.
   256	
   257		  If unsure, say Y.
   258	
   259	config HW_RANDOM_NOMADIK
   260		tristate "ST-Ericsson Nomadik Random Number Generator support"
   261		depends on ARCH_NOMADIK
   262		default HW_RANDOM
   263		---help---
   264		  This driver provides kernel-side support for the Random Number
   265		  Generator hardware found on ST-Ericsson SoCs (8815 and 8500).
   266	
   267		  To compile this driver as a module, choose M here: the
   268		  module will be called nomadik-rng.
   269	
   270		  If unsure, say Y.
   271	
   272	config HW_RANDOM_PSERIES
   273		tristate "pSeries HW Random Number Generator support"
   274		depends on PPC64 && IBMVIO
   275		default HW_RANDOM
   276		---help---
   277		  This driver provides kernel-side support for the Random Number
   278		  Generator hardware found on POWER7+ machines and above
   279	
   280		  To compile this driver as a module, choose M here: the
   281		  module will be called pseries-rng.
   282	
   283		  If unsure, say Y.
   284	
   285	config HW_RANDOM_POWERNV
   286		tristate "PowerNV Random Number Generator support"
   287		depends on PPC_POWERNV
   288		default HW_RANDOM
   289		---help---
   290		  This is the driver for Random Number Generator hardware found
   291		  in POWER7+ and above machines for PowerNV platform.
   292	
   293		  To compile this driver as a module, choose M here: the
   294		  module will be called powernv-rng.
   295	
   296		  If unsure, say Y.
   297	
   298	config HW_RANDOM_HISI
   299		tristate "Hisilicon Random Number Generator support"
   300		depends on HW_RANDOM && ARCH_HISI
   301		default HW_RANDOM
   302		---help---
   303		  This driver provides kernel-side support for the Random Number
   304		  Generator hardware found on Hisilicon Hip04 and Hip05 SoC.
   305	
   306		  To compile this driver as a module, choose M here: the
   307		  module will be called hisi-rng.
   308	
   309		  If unsure, say Y.
   310	
   311	config HW_RANDOM_HISI_V2
   312		tristate "HiSilicon True Random Number Generator V2 support"
   313		depends on HW_RANDOM && ARM64 && ACPI
   314		default HW_RANDOM
   315		help
   316		  This driver provides kernel-side support for the True Random Number
   317		  Generator V2 hardware found on HiSilicon Hi1620 SoC.
   318	
   319		  To compile this driver as a module, choose M here: the
   320		  module will be called hisi-trng-v2.
   321	
   322		  If unsure, say Y.
   323	
   324	config HW_RANDOM_ST
   325		tristate "ST Microelectronics HW Random Number Generator support"
   326		depends on HW_RANDOM && ARCH_STI
   327		---help---
   328		  This driver provides kernel-side support for the Random Number
   329		  Generator hardware found on STi series of SoCs.
   330	
   331		  To compile this driver as a module, choose M here: the
   332		  module will be called st-rng.
   333	
   334	config HW_RANDOM_XGENE
   335		tristate "APM X-Gene True Random Number Generator (TRNG) support"
   336		depends on HW_RANDOM && ARCH_XGENE
   337		default HW_RANDOM
   338		---help---
   339		  This driver provides kernel-side support for the Random Number
   340		  Generator hardware found on APM X-Gene SoC.
   341	
   342		  To compile this driver as a module, choose M here: the
   343		  module will be called xgene_rng.
   344	
   345		  If unsure, say Y.
   346	
   347	config HW_RANDOM_STM32
   348		tristate "STMicroelectronics STM32 random number generator"
   349		depends on HW_RANDOM && (ARCH_STM32 || COMPILE_TEST)
   350		depends on HAS_IOMEM
   351		default HW_RANDOM
   352		help
   353		  This driver provides kernel-side support for the Random Number
   354		  Generator hardware found on STM32 microcontrollers.
   355	
   356		  To compile this driver as a module, choose M here: the
   357		  module will be called stm32-rng.
   358	
   359		  If unsure, say N.
   360	
   361	config HW_RANDOM_PIC32
   362		tristate "Microchip PIC32 Random Number Generator support"
   363		depends on HW_RANDOM && MACH_PIC32
   364		default y
   365		---help---
   366		  This driver provides kernel-side support for the Random Number
   367		  Generator hardware found on a PIC32.
   368	
   369		  To compile this driver as a module, choose M here. the
   370		  module will be called pic32-rng.
   371	
   372		  If unsure, say Y.
   373	
   374	config HW_RANDOM_MESON
   375		tristate "Amlogic Meson Random Number Generator support"
   376		depends on HW_RANDOM
   377		depends on ARCH_MESON || COMPILE_TEST
   378		default y
   379		---help---
   380		  This driver provides kernel-side support for the Random Number
   381		  Generator hardware found on Amlogic Meson SoCs.
   382	
   383		  To compile this driver as a module, choose M here. the
   384		  module will be called meson-rng.
   385	
   386		  If unsure, say Y.
   387	
   388	config HW_RANDOM_CAVIUM
   389		tristate "Cavium ThunderX Random Number Generator support"
   390		depends on HW_RANDOM && PCI && (ARM64 || (COMPILE_TEST && 64BIT))
   391		default HW_RANDOM
   392		---help---
   393		  This driver provides kernel-side support for the Random Number
   394		  Generator hardware found on Cavium SoCs.
   395	
   396		  To compile this driver as a module, choose M here: the
   397		  module will be called cavium_rng.
   398	
   399		  If unsure, say Y.
   400	
   401	config HW_RANDOM_MTK
   402		tristate "Mediatek Random Number Generator support"
   403		depends on HW_RANDOM
   404		depends on ARCH_MEDIATEK || COMPILE_TEST
   405		default y
   406		---help---
   407		  This driver provides kernel-side support for the Random Number
   408		  Generator hardware found on Mediatek SoCs.
   409	
   410		  To compile this driver as a module, choose M here. the
   411		  module will be called mtk-rng.
   412	
   413		  If unsure, say Y.
   414	
   415	config HW_RANDOM_S390
   416		tristate "S390 True Random Number Generator support"
   417		depends on S390
   418		default HW_RANDOM
   419		---help---
   420		  This driver provides kernel-side support for the True
   421		  Random Number Generator available as CPACF extension
   422		  on modern s390 hardware platforms.
   423	
   424		  To compile this driver as a module, choose M here: the
   425		  module will be called s390-trng.
   426	
   427		  If unsure, say Y.
   428	
   429	config HW_RANDOM_EXYNOS
   430		tristate "Samsung Exynos True Random Number Generator support"
   431		depends on ARCH_EXYNOS || COMPILE_TEST
   432		default HW_RANDOM
   433		---help---
   434		  This driver provides support for the True Random Number
   435		  Generator available in Exynos SoCs.
   436	
   437		  To compile this driver as a module, choose M here: the module
   438		  will be called exynos-trng.
   439	
   440		  If unsure, say Y.
   441	
   442	config HW_RANDOM_OPTEE
   443		tristate "OP-TEE based Random Number Generator support"
   444		depends on OPTEE
   445		default HW_RANDOM
   446		help
   447		  This  driver provides support for OP-TEE based Random Number
   448		  Generator on ARM SoCs where hardware entropy sources are not
   449		  accessible to normal world (Linux).
   450	
   451		  To compile this driver as a module, choose M here: the module
   452		  will be called optee-rng.
   453	
   454		  If unsure, say Y.
   455	
   456	config HW_RANDOM_NPCM
   457		tristate "NPCM Random Number Generator support"
   458		depends on ARCH_NPCM || COMPILE_TEST
   459		default HW_RANDOM
   460		help
   461	 	  This driver provides support for the Random Number
   462		  Generator hardware available in Nuvoton NPCM SoCs.
   463	
   464		  To compile this driver as a module, choose M here: the
   465		  module will be called npcm-rng.
   466	
   467	 	  If unsure, say Y.
   468	
   469	config HW_RANDOM_ASPEED
   470		tristate "Aspeed Hardware Random Number Generator support"
   471		depends on ARCH_ASPEED || COMPILE_TEST
   472		default HW_RANDOM
   473		help
   474		  If you say yes to this option, support will be included for the
   475		  Hardware Random Number Generator that comes with Aspeed SoCs.
   476	
   477		  This driver can also be built as a module.  If so, the module
   478		  will be called aspeed-rng.
   479	
 > 480		 If unsure, say Y.
 > 481	

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
