Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC19C1ED359
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 17:30:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qGyS9mINPpDZwnhPMJYyW5DnMIq0Q3/hhYBmXkhr+MQ=; b=N+2luFT7Oc/Jzi
	oiYfdhrZ/4XJYSfNKl4ssyFf6M3TvgsSgQmPGW3XTh1w2zxNLzaHyXaIT6AJASK6bEPud8Vv0rVBN
	man9vNUezyEjUxvHQa3Zf/JcSg8P/wqXWFhrXoKDjxEpb0XBfpYN7ExN3/0FgosX64FeZIuYdxilK
	NBLGpz+d2VWlp0Jeij6Ul+w7fUUZgTJ/urtGMFdiDIavQHjxpQYHTPZmlKoT2WaABcPsy1lRUAWoP
	2zwbyZCHDw0I1ENbOcdrE0r1gLMwrr3FGGLv1yBd17T6zo7M6WiTU7NFJN77lW8GaH7SV6bipNy4E
	7idHjddDqmXu//dku8rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgVLQ-0004pY-Rg; Wed, 03 Jun 2020 15:30:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgVL8-0004nW-5E
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 15:30:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 557FF55D;
 Wed,  3 Jun 2020 08:29:59 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7C12A3F52E;
 Wed,  3 Jun 2020 08:29:58 -0700 (PDT)
Date: Wed, 3 Jun 2020 16:29:56 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: kernel test robot <lkp@intel.com>
Subject: Re: [arm64:devel/mte-v4 25/28] arch/arm64/kernel/cpufeature.c:137:5:
 warning: no previous prototype for 'mte_ftr_filter'
Message-ID: <20200603152955.GA27078@gaia>
References: <202006032134.2oUO53va%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202006032134.2oUO53va%lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_083002_246671_5CE036EA 
X-CRM114-Status: GOOD (  12.45  )
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
Cc: "Vincenzo, Frascino, " <vincenzo.frascino@arm.com>, kbuild-all@lists.01.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 03, 2020 at 09:31:38PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git devel/mte-v4
> head:   628f92bb11400cab1adb95c32c05cb1c3c384248
> commit: bcf807ed1e622f8311b05e34816df6c41aed54c0 [25/28] arm64: mte: Kconfig entry
> config: arm64-allyesconfig (attached as .config)
> compiler: aarch64-linux-gcc (GCC) 9.3.0
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout bcf807ed1e622f8311b05e34816df6c41aed54c0
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
> >> arch/arm64/kernel/cpufeature.c:137:5: warning: no previous prototype for 'mte_ftr_filter' [-Wmissing-prototypes]
> 137 | s64 mte_ftr_filter(const struct arm64_ftr_bits *ftrp, s64 val)
> |     ^~~~~~~~~~~~~~
> 
> vim +/mte_ftr_filter +137 arch/arm64/kernel/cpufeature.c

Thanks for the report, it should indeed be a static function. I'll fix
it locally but in v5 I'll drop the DT patch altogether.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
