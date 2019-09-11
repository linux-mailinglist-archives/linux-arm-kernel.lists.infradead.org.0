Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A62AFA88
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 12:36:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A0nfUpoFW9wj0uPOtQP7uiAKvtNj3YdkhLLHwd/SAb4=; b=sl/91J3vggwCm4
	F6/9zzdMO81D0Ka0cO1UuCipqMWQ7BHYe4NiAqNOwwE21sKWQ9dI96QlZcMJzEQH2Eo30uVY1MSkx
	IDL7BNTPJTfKuAxYhIgBtpKMwASIIlbuVSvd12syAcAmkfPkk8aIf8XU2tziV2K+qtdLko3AUWRpE
	7sS1Vu9zoQphXhe/XIpSH03mM0cBoMk0XSYaqHp0cOnb1MyqHsUNyecCqxrSIRbHQhcN59+dKYI/5
	UqwllicddZE0QStn/E38dD4XD+HL9eI/2YwazCq6y4cZA4KH/Lb1aciX0INV8VrhgFVje7kmPuB0i
	tAZc0a6ZuyOE6KKg7pFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7zzc-0000G2-2D; Wed, 11 Sep 2019 10:36:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7zzS-0000Eu-Ra
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 10:36:48 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8A88E21479;
 Wed, 11 Sep 2019 10:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568198206;
 bh=3p4E713fh4kBcJ8AWW90qHh/JR6OXQFdPeo2Gg2j7GA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1zdNqRV2++AZYUBm/wmoywga3zBXvoqjUHU/DLb+OaimyinUn5t1mCZs8KZRZ5SGW
 8cpi85p5Q9CdSjP4AAqbtx0iMRuFRoBsREgULF3l6Bn2b9FyO8Y8RqzOMLqWi0PvGO
 BuPxvG6NHcQHXAE39uI40aHNcma8nMkc83GsRkA0=
Date: Wed, 11 Sep 2019 11:36:41 +0100
From: Will Deacon <will@kernel.org>
To: Jessica Yu <jeyu@kernel.org>
Subject: Re: [jeyu:modules-next 3/11] arc4.c:(___ksymtab+arc4_setkey+0x8):
 undefined reference to `no symbol'
Message-ID: <20190911103640.7dwgjmdhv4my2mlx@willie-the-truck>
References: <201909110352.uPcQrbuc%lkp@intel.com>
 <20190911052124.GA247847@google.com>
 <20190911103217.GA27338@linux-8ccs.fritz.box>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190911103217.GA27338@linux-8ccs.fritz.box>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_033647_031766_9FA095EC 
X-CRM114-Status: GOOD (  22.68  )
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Matthias Maennich <maennich@google.com>, graf@amazon.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Martijn Coenen <maco@android.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

On Wed, Sep 11, 2019 at 12:32:18PM +0200, Jessica Yu wrote:
> +++ Matthias Maennich [11/09/19 06:21 +0100]:
> > On Wed, Sep 11, 2019 at 03:11:53AM +0800, kbuild test robot wrote:
> > > tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/jeyu/linux.git modules-next
> > > head:   32bca2df7da27be34371a37f9bb5e2b85fdd92bd
> > > commit: 8651ec01daedad26290f76beeb4736f9d2da4b87 [3/11] module: add support for symbol namespaces.
> > > config: arm64-defconfig (attached as .config)
> > > compiler: aarch64-linux-gcc (GCC) 7.4.0
> > > reproduce:
> > >       wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >       chmod +x ~/bin/make.cross
> > >       git checkout 8651ec01daedad26290f76beeb4736f9d2da4b87
> > >       # save the attached .config to linux build tree
> > >       GCC_VERSION=7.4.0 make.cross ARCH=arm64
> > > 
> > > If you fix the issue, kindly add following tag
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > > 
> > > All errors (new ones prefixed by >>):
> > > 
> > >  lib/crypto/arc4.o: In function `__ksymtab_arc4_setkey':
> > > > > arc4.c:(___ksymtab+arc4_setkey+0x8): undefined reference to `no symbol'
> > >  lib/crypto/arc4.o: In function `__ksymtab_arc4_crypt':
> > > > > arc4.c:(___ksymtab+arc4_crypt+0x8): undefined reference to `no symbol'
> > 
> > Hmm, this is caused by the relative relocation of the 'namespace_offset'
> > struct member to NULL in case there is no namespace defined:
> > 
> > #define __KSYMTAB_ENTRY(sym, sec)					\
> > 	__ADDRESSABLE(sym)						\
> > 	asm("	.section \"___ksymtab" sec "+" #sym "\", \"a\"	\n"	\
> > 	    "	.balign 4					\n"	\
> > 	    "__ksymtab_" #sym ":				\n"	\
> > 	    "	.long	" #sym "- .				\n"	\
> > 	    "	.long	__kstrtab_" #sym "- .			\n"	\
> > 	    "	.long	0 - .					\n"	\
> > 	    	       ^^^^^^^
> > 	    "	.previous					\n")
> > 
> > struct kernel_symbol {
> > 	int value_offset;
> > 	int name_offset;
> > 	int namespace_offset;
> > };
> > 
> > That is apparently not an issue on x86, but on arm. Not sure how to
> > express a relative relocation to NULL then.
> > 
> > I will try to solve this somehow, just wanted to check if somebody knows the
> > trick here.
> 
> (Adding more CC's..)
> 
> Do we have to have a place-relative relocation there? If we can't find
> a workaround, having just .long 0 for a null namespace seemed to fix the
> build issues on arm64 for me at least..

Ard, Alex and I have hacked the following diff which seems to do the trick.
I'll post as a proper patch later today.

Will

--->8

diff --git a/include/asm-generic/export.h b/include/asm-generic/export.h
index e2b5d0f569d3..d0912c7ac2fc 100644
--- a/include/asm-generic/export.h
+++ b/include/asm-generic/export.h
@@ -17,7 +17,7 @@
 
 .macro __put, val, name
 #ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
-	.long	\val - ., \name - ., 0 - .
+	.long	\val - ., \name - ., 0
 #elif defined(CONFIG_64BIT)
 	.quad	\val, \name, 0
 #else
diff --git a/include/linux/export.h b/include/linux/export.h
index 2c5468d8ea9a..ef5d015d754a 100644
--- a/include/linux/export.h
+++ b/include/linux/export.h
@@ -68,7 +68,7 @@ extern struct module __this_module;
 	    "__ksymtab_" #sym ":				\n"	\
 	    "	.long	" #sym "- .				\n"	\
 	    "	.long	__kstrtab_" #sym "- .			\n"	\
-	    "	.long	0 - .					\n"	\
+	    "	.long	0					\n"	\
 	    "	.previous					\n")
 
 struct kernel_symbol {
diff --git a/kernel/module.c b/kernel/module.c
index f76efcf2043e..7ab244c4e1ba 100644
--- a/kernel/module.c
+++ b/kernel/module.c
@@ -547,6 +547,8 @@ static const char *kernel_symbol_name(const struct kernel_symbol *sym)
 static const char *kernel_symbol_namespace(const struct kernel_symbol *sym)
 {
 #ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
+	if (!sym->namespace_offset)
+		return NULL;
 	return offset_to_ptr(&sym->namespace_offset);
 #else
 	return sym->namespace;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
