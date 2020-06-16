Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0CF1FAE86
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 12:50:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y7rrPg3JCUu4WpIJctY82hHavtma8Ee7hC8a5bAlkY4=; b=K6aoQud2gxnNzc
	0YqGBq3so/w5eFcVsTKD8ViQjjqASb5gPCYcjh3O4Dcqp102HoV42pJ9AcC8oW9NXyVgKxkApjhYy
	pvzOZ2J7F/1EOKL3gbijZmvRDM6RqfYcdVtn67Q4aD8tiLStS32KEjbzn0ll27ZvGGk7/eGq3dq0/
	G0HhWF3jV6PKGJYWWd9Ab0IJH5jli35oxH2GzfhDAGqNqseFDrGGQCVUiMobNrdN4f5UiAaeFdIZS
	VYtQ76C9kidiCGMMQSKiqckdo6q+IA1HKbjVkgP58f0BLRWbhl6xKPvD8T+21lQH/DGS1VGFl7/05
	ZMFegE5yBqlRCtM+ab/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl9AY-0000pI-CS; Tue, 16 Jun 2020 10:50:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl9AE-0000oA-Pl
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 10:50:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F40681F1;
 Tue, 16 Jun 2020 03:49:55 -0700 (PDT)
Received: from [10.163.80.105] (unknown [10.163.80.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A8BFE3F6CF;
 Tue, 16 Jun 2020 03:49:52 -0700 (PDT)
Subject: Re: [PATCH] arm64/panic: Unify all three existing notifier blocks
To: kernel test robot <lkp@intel.com>, linux-arm-kernel@lists.infradead.org
References: <1592277017-31784-1-git-send-email-anshuman.khandual@arm.com>
 <202006161624.KLnEetbG%lkp@intel.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <32f4d7d2-1db3-6264-8b79-a12b0702477f@arm.com>
Date: Tue, 16 Jun 2020 16:19:46 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <202006161624.KLnEetbG%lkp@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_034958_881771_E69526C8 
X-CRM114-Status: GOOD (  16.42  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, kbuild-all@lists.01.org,
 Steve Capper <steve.capper@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 06/16/2020 01:59 PM, kernel test robot wrote:
> Hi Anshuman,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on arm64/for-next/core]
> [also build test WARNING on soc/for-next v5.8-rc1 next-20200616]
> [cannot apply to arm/for-next xlnx/master kvmarm/next]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> 
> url:    https://github.com/0day-ci/linux/commits/Anshuman-Khandual/arm64-panic-Unify-all-three-existing-notifier-blocks/20200616-111111
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-next/core
> config: arm64-allyesconfig (attached as .config)
> compiler: aarch64-linux-gcc (GCC) 9.3.0
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
>>> arch/arm64/kernel/setup.c:403:6: warning: no previous prototype for 'dump_kernel_offset' [-Wmissing-prototypes]
> 403 | void dump_kernel_offset(void)
> |      ^~~~~~~~~~~~~~~~~~
> 
> vim +/dump_kernel_offset +403 arch/arm64/kernel/setup.c
> 
>    402	
>  > 403	void dump_kernel_offset(void)

Just missed a 'static' here, which caused this warning with W=1.
Will fix this next time around.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
