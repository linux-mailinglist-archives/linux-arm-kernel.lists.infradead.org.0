Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8884AFA6A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 12:32:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mmKB3GQarpw5sOnhY5kED1cgFXqSw0nzCALDfwXf+Mg=; b=Y43KctziVliwGxGN0vbbLTDhy
	wj3TDFC9ydGER8eFuNjL7CurZi9WKLPID6/UUnLYDLzexe9wqG3XavhnNU+gCi+pD27vFXi0ICrwG
	lpHvljnQGeTroP2Tet/4E7culPhBxoB+aPMi1SgWfiBUxy7UmXvP1KujvorCdLVz/V2KgRm4uK+gE
	rEMxIP7F0jsfzs3EV0LsQ1ftvU4BTCeGQLtjHYtQCAoPNWyKpSWARGM+1cJiGE71rs1j2oPSuikfU
	zqkiTD9vKhxuFXkOjSKF/eQXqTcFiFk7TaiIgERh/THWNjnYJIEhZ/12Lpr2BI++qnFQNCCN/gDtn
	KM2EP5efw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7zvT-0006d9-5U; Wed, 11 Sep 2019 10:32:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7zvG-0006b0-Kv
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 10:32:28 +0000
Received: from linux-8ccs.fritz.box (unknown [92.117.136.28])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D7D212087E;
 Wed, 11 Sep 2019 10:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568197945;
 bh=Muv8ACAq8kXtINOFJEQ9bo1zFCmD2Ik5dxDwLysAkZs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uD3WuOD1uVwHUN40eEVV5eOu3rlmsleBZqws57jn3Wo92eTbgGx1koySnbMmC8+18
 +T/QbngwnoXkWNTuatp8keErQh0npoN0y51ID70fXN17IdFEfNOVk9Tcbuv5pIn7Pt
 TcF/zz7OeS6nugvVlMNg4pzuhscf8viv3QmcHhfY=
Date: Wed, 11 Sep 2019 12:32:18 +0200
From: Jessica Yu <jeyu@kernel.org>
To: Matthias Maennich <maennich@google.com>
Subject: Re: [jeyu:modules-next 3/11] arc4.c:(___ksymtab+arc4_setkey+0x8):
 undefined reference to `no symbol'
Message-ID: <20190911103217.GA27338@linux-8ccs.fritz.box>
References: <201909110352.uPcQrbuc%lkp@intel.com>
 <20190911052124.GA247847@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190911052124.GA247847@google.com>
X-OS: Linux linux-8ccs 4.12.14-lp150.12.61-default x86_64
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_033226_705503_9B105189 
X-CRM114-Status: GOOD (  13.79  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Martijn Coenen <maco@android.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+++ Matthias Maennich [11/09/19 06:21 +0100]:
>On Wed, Sep 11, 2019 at 03:11:53AM +0800, kbuild test robot wrote:
>>tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/jeyu/linux.git modules-next
>>head:   32bca2df7da27be34371a37f9bb5e2b85fdd92bd
>>commit: 8651ec01daedad26290f76beeb4736f9d2da4b87 [3/11] module: add support for symbol namespaces.
>>config: arm64-defconfig (attached as .config)
>>compiler: aarch64-linux-gcc (GCC) 7.4.0
>>reproduce:
>>       wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>       chmod +x ~/bin/make.cross
>>       git checkout 8651ec01daedad26290f76beeb4736f9d2da4b87
>>       # save the attached .config to linux build tree
>>       GCC_VERSION=7.4.0 make.cross ARCH=arm64
>>
>>If you fix the issue, kindly add following tag
>>Reported-by: kbuild test robot <lkp@intel.com>
>>
>>All errors (new ones prefixed by >>):
>>
>>  lib/crypto/arc4.o: In function `__ksymtab_arc4_setkey':
>>>>arc4.c:(___ksymtab+arc4_setkey+0x8): undefined reference to `no symbol'
>>  lib/crypto/arc4.o: In function `__ksymtab_arc4_crypt':
>>>>arc4.c:(___ksymtab+arc4_crypt+0x8): undefined reference to `no symbol'
>
>Hmm, this is caused by the relative relocation of the 'namespace_offset'
>struct member to NULL in case there is no namespace defined:
>
>#define __KSYMTAB_ENTRY(sym, sec)					\
>	__ADDRESSABLE(sym)						\
>	asm("	.section \"___ksymtab" sec "+" #sym "\", \"a\"	\n"	\
>	    "	.balign 4					\n"	\
>	    "__ksymtab_" #sym ":				\n"	\
>	    "	.long	" #sym "- .				\n"	\
>	    "	.long	__kstrtab_" #sym "- .			\n"	\
>	    "	.long	0 - .					\n"	\
>	    	       ^^^^^^^
>	    "	.previous					\n")
>
>struct kernel_symbol {
>	int value_offset;
>	int name_offset;
>	int namespace_offset;
>};
>
>That is apparently not an issue on x86, but on arm. Not sure how to
>express a relative relocation to NULL then.
>
>I will try to solve this somehow, just wanted to check if somebody knows the
>trick here.

(Adding more CC's..)

Do we have to have a place-relative relocation there? If we can't find
a workaround, having just .long 0 for a null namespace seemed to fix the
build issues on arm64 for me at least..



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
