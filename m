Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9570818F3E5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 12:49:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e1NQdWwat/ASEDB68nJkOj9TfuvMFfML4TTlgm+k4YU=; b=U911pLziCGH1wx
	A+Jyeh+kr4m1R7meFYKECkPqWImYzLrWOgIjlobomsRQRgaoTzu+/BWaNMuaHGHQDUXVlSlU/TtkP
	xCQisP5BbghHZ900WFxbtkzFg7Hz84zx8MoOt5jnhr3T2cmpsJrFju5xuaI7dzBcDmuRqNGlqtVIA
	9WPugu3/GkF9S+8ZjpVX3Q+y7pLQqegBx1RTcMS9F83nVd7qZMmauY5bjfNOwSc6ULJhC+fhS9z6R
	IHTsWpGkG7VbfbzbrsYHfblxteZaoIXjmettKVEhyRXntOBUPa1ir4r6axM9k3vBhhutILLLNxIzC
	asjJbDGrSIo9+EvS2EhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGLZh-00048C-Aq; Mon, 23 Mar 2020 11:48:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGLZY-00047n-AJ
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 11:48:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C42B51FB;
 Mon, 23 Mar 2020 04:48:42 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 797A13F52E;
 Mon, 23 Mar 2020 04:48:41 -0700 (PDT)
Date: Mon, 23 Mar 2020 11:48:39 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Amit Daniel Kachhap <amit.kachhap@arm.com>,
 kbuild test robot <lkp@intel.com>
Subject: Re: [arm64:for-next/kernel-ptrauth 16/18] aarch64-linux-objdump:
 warning: fs/squashfs/decompressor_multi.o: unsupported GNU_PROPERTY_TYPE (5)
 type: 0xc0000000
Message-ID: <20200323114837.GA4892@mbp>
References: <202003211202.2NuTbuJb%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202003211202.2NuTbuJb%lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_044848_402108_D2A93DDF 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: kbuild-all@lists.01.org, Kees Cook <keescook@chromium.org>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org, daniel.kiss@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Mar 21, 2020 at 12:28:06PM +0800, kbuild test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-next/kernel-ptrauth
> head:   3b446c7d27ddd06342901bb35211363f6944291a
> commit: 74afda4016a7437e6e425c3370e4b93b47be8ddf [16/18] arm64: compile the kernel with ptrauth return address signing
> config: arm64-randconfig-a001-20200321 (attached as .config)
> compiler: aarch64-linux-gcc (GCC) 9.2.0
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 74afda4016a7437e6e425c3370e4b93b47be8ddf
>         # save the attached .config to linux build tree
>         GCC_VERSION=9.2.0 make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> aarch64-linux-objdump: warning: fs/squashfs/decompressor_multi.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
> --
> >> aarch64-linux-objdump: warning: drivers/gpio/gpio-bt8xx.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000

Just to make sure I understand the cause of this warning: gcc generates
a .note.gnu.property when PAC is enabled for the kernel but binutils
doesn't understand it. Is there a way to check for this via the Kconfig
options?

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
