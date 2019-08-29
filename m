Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3504FA13B5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 10:32:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/qUJ3VBelbj8CZG34Yu5r4+os3HKuXQ6ntfNi1jgzAk=; b=i4damxs9B2ETCI
	RU8EWFmUXOqN0a+EU/EHRKFfhwXlHFz/wJZ1UIoIOL16H1ui2EAHYr2/WWvguMS+IfRAtgCeHqCxc
	36+T85ujK9GJyz34V04ilhZS1FSDl0Nc97oP1tsNTxCD7kwo1MrAEaLL92CdL8RSv4Nx3Dc7HZNsh
	vtoJLeNgHroVolXTTM8IT3vGHhRADGD0kQe97wWZApjeLh0k9GshkGwWDN6XGVSf+TyJx10VHkyO3
	6H9NgEEQWI5uewWiYC1Algj/js7E+jbMENPcGn+uri0I1nixzmQjXywvhgJ6X56pgJdy6GmJHcEmb
	i6NyFDDXBhY4yXZhFWcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Fqr-0007tD-VS; Thu, 29 Aug 2019 08:32:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Fqf-0007sW-5n
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 08:32:06 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3A04923404;
 Thu, 29 Aug 2019 08:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567067524;
 bh=gohrhBLNcLSOq6u+Sd9JLtXQYPnb+annH74BRAvn8hU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oPpI7kWJihk4vRymLzlaXhmAjFEBhV0ZR2HVvsLpKdYKKMALKXmjQ4cbFTe1CNNKX
 A8QBqDRBEM2Xwta/pL+KNO38bo5vhYj59WRGTNR9qS4m3BBHWOr1oH78dPH60QcE7r
 SSqAVlnPvkErGsRTbPW3GNza6z+2tt1TACjGOg38=
Date: Thu, 29 Aug 2019 09:32:00 +0100
From: Will Deacon <will@kernel.org>
To: Leo Yan <leo.yan@linaro.org>, rmk+kernel@armlinux.org.uk
Subject: Re: [arm:for-next 13/25] include/linux/error-injection.h:7:10: fatal
 error: asm/error-injection.h: No such file or directory
Message-ID: <20190829083159.a3ywiivey3u4kxwf@willie-the-truck>
References: <201908290809.FsnDYulr%lkp@intel.com>
 <20190829064310.GC10583@leoy-ThinkPad-X240s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829064310.GC10583@leoy-ThinkPad-X240s>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_013205_244891_BA6CBE26 
X-CRM114-Status: GOOD (  18.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kbuild test robot <lkp@intel.com>, linux-arm-kernel@lists.infradead.org,
 kbuild-all@01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ Move RMK to To: ]

On Thu, Aug 29, 2019 at 02:43:10PM +0800, Leo Yan wrote:
> On Thu, Aug 29, 2019 at 08:49:16AM +0800, kbuild test robot wrote:
> > tree:   git://git.armlinux.org.uk/~rmk/linux-arm.git for-next
> > head:   d0d54dc04e37be14a9e51d9a2e431f302948e99d
> > commit: 566c290c6498b2fdc04a54556c4e8747f0298c7b [13/25] ARM: 8899/1: arm/arm64: Add support for function error injection
> > config: arm-allmodconfig (attached as .config)
> > compiler: arm-linux-gnueabi-gcc (GCC) 7.4.0
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         git checkout 566c290c6498b2fdc04a54556c4e8747f0298c7b
> >         # save the attached .config to linux build tree
> >         GCC_VERSION=7.4.0 make.cross ARCH=arm 
> > 
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> > 
> > All errors (new ones prefixed by >>):
> > 
> >    In file included from include/linux/module.h:22:0,
> >                     from drivers/pps/pps.c:11:
> > >> include/linux/error-injection.h:7:10: fatal error: asm/error-injection.h: No such file or directory
> >     #include <asm/error-injection.h>
> >              ^~~~~~~~~~~~~~~~~~~~~~~
> >    compilation terminated.
> 
> This building error is caused by there have a dependent patch:
> error-injection: Consolidate override function definition
> https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/commit/?h=for-next/error-injection&id=45880f7b7b19e043ce0aaa4cb7d05369425c82fa

Ah, I guess you put the ARM patch into the patch system without reference to
the core parts?

> This patch has been picked up by Will in one of arm64's next branch:
> https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/error-injection
> 
> I don't know what's the best practice for the dependency between
> two branches, if need me to follow up anything, please let me know.

The for-next/error-injection branch here:

https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/error-injection

is stable, so I suppose either:

   * That could be pulled into the ARM tree, or
   * The ARM part could wait until the core stuff has landed in mainline, or
   * I could take the ARM patch via the arm64 tree if Russell is ok with it

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
