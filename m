Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C93FB6FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 19:03:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7iwIh5HzeIzGoEeCfJX2DzZisznvX0rqXa/rG0JRdpA=; b=kreFxUxBf/kf7OV8lYPEcmGB8
	e+XQchG5O96/7TaUxDtNnt3K+y8YHuvGDGYqNtyd8mHzRn5TSR0CkCKdnVPF5SfOBXvFl6iN28BvQ
	9afHFHk2cFXk5XtEaA69o6cyGhjCR6X+3piLJXnRjJq/ThcmeGJvV+jloM5a2Y++D/trpGDdL2k47
	59woK+XhbKFc8/I7zlMMCov88SLyxJmNYAWO+os1j2AcbjCOf/oSEEz8VAWTocVZAklWCS4nsmc0n
	bgwl7qAko6aAn0ouFzY/AROhnJ6QA9euJBLcihxB0JH9nJQH1bm3NbUZxif+wx5VubjmQpV4GkYuG
	4tRe8+fZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUwyx-0006Ls-08; Wed, 13 Nov 2019 18:03:07 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUwyp-0006LU-Jo
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 18:03:01 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iUwyk-0005fc-Ur; Wed, 13 Nov 2019 19:02:54 +0100
To: kbuild test robot <lkp@intel.com>
Subject: Re: [arm-platforms:kvm-arm64/vcpu-xarray 42/49]
 arch/powerpc/kvm/powerpc.c:792:29: error: =?UTF-8?Q?=27kvmppc=5Fdecrement?=
 =?UTF-8?Q?er=5Fwakeup=27=20defined=20but=20not=20used?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Wed, 13 Nov 2019 18:02:54 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <201911140103.uQVAr0CN%lkp@intel.com>
References: <201911140103.uQVAr0CN%lkp@intel.com>
Message-ID: <c11fdfaa843e2d0131680c864d061950@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: lkp@intel.com, sean.j.christopherson@intel.com,
 kbuild-all@lists.01.org, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_100259_798184_A611FE5A 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: kbuild-all@lists.01.org, linux-arm-kernel@lists.infradead.org,
 Sean Christopherson <sean.j.christopherson@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-13 17:51, kbuild test robot wrote:
> tree:
> https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git
> kvm-arm64/vcpu-xarray
> head:   148748099363327d8cb56aafd386b70ac8c68837
> commit: 64e6991c2234c3ba1e36f991302b1bbe1bb791f1 [42/49] KVM: PPC:
> Move all vcpu init code into kvm_arch_vcpu_create()
> config: powerpc-defconfig (attached as .config)
> compiler: powerpc64-linux-gcc (GCC) 7.4.0
> reproduce:
>         wget
> 
> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 64e6991c2234c3ba1e36f991302b1bbe1bb791f1
>         # save the attached .config to linux build tree
>         GCC_VERSION=7.4.0 make.cross ARCH=powerpc
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>

Well, this branch was not supposed to be tested at all...
I guess it is too late to take it down :-(

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
