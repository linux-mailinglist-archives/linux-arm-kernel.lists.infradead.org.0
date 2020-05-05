Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF941C58F6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:21:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KibbbG0NeRxHoyxT0qAeYi5HAO0MVfewoKJCEEE97a4=; b=fmm+xiMfJhMzuB
	QHA9o2f9/BUPKA1ZIvTLRzfZjhRTADSrLKfjlu2pqrJY04edTQkuQr0KOQ5hIxb5dVju8RJX4Bc68
	tOr4k3o44wxYIEkJJYO98x8cULUYU5ACrzOKagkgAh6P5DKrN77Q1Ran8tEhfN1Yx/hzLsy8AJfbO
	Dq3P8BElAgdY4HXGhZlxP1EtCezhU7h1dH109yRFfXgfO0TT7L1AMqh+lxYKYqt7bpBiipTcFwy+4
	UHoMNhcF4gi//rbH5AXyivQX6s06kUg5h53HUrk0E13DrJgiPpO092XAfIy91Hju8SzZHAD5ouKUL
	qYATK7PW1LC8WTwIz/mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyRr-0004KN-4I; Tue, 05 May 2020 14:21:27 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyRi-00010H-QH
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:21:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R8fDfWX4P2yPJD6o/XlgPtCXLkbf9HDss4RsKImeIag=; b=Ouq0b8POa+V6ud1wBnYKlX0dS
 wYGr2eLWM5FQKt3psQSL1XN9/B3gzkSH5YDPNfPwBKnwZ2FOOLq6Cq2vL/KNmE24rOcLmlMlgFxw+
 xj9PY7GJ1O9xEw295rSgrAf2h7jjhS1WlJGfuc0qb20+sEK8Euwi5kTUYvBhq98iLqC6kd9adobbS
 Z1cb9vXBAodizzUU5JMA1atSzxb6O5u0Pw6G1LaqcmPabwTstOXOoJbSQswsZiYfV5CDEJG6NLZfw
 GG3fTFhwGb2jFQOCuIDQRAKPFZNm64jN3O3uAUOdMudEvjkRc0bH+5AN5yPS/LqaU1Uf3uyuSQosm
 +feM8msHg==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:54052)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jVyPd-0002rZ-5d; Tue, 05 May 2020 15:19:09 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jVyPc-0007DZ-9d; Tue, 05 May 2020 15:19:08 +0100
Date: Tue, 5 May 2020 15:19:08 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] ARM: use ARM unwinder for gcov
Message-ID: <20200505141908.GH1551@shell.armlinux.org.uk>
References: <20200505141218.684079-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505141218.684079-1-arnd@arndb.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_072118_855936_E03D3C07 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nathan Huckleberry <nhuck15@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 04:11:56PM +0200, Arnd Bergmann wrote:
> Using gcov on ARM fails when the frame pointer unwinder is used:
> 
> arm-linux-gnueabi-ld: kernel/softirq.o:(.ARM.exidx+0x120): undefined reference to `__aeabi_unwind_cpp_pr0'
> arm-linux-gnueabi-ld: init/main.o:(.ARM.exidx+0x98): undefined reference to `__aeabi_unwind_cpp_pr0'
> arm-linux-gnueabi-ld: init/version.o:(.ARM.exidx+0x0): undefined reference to `__aeabi_unwind_cpp_pr0'
> arm-linux-gnueabi-ld: init/do_mounts.o:(.ARM.exidx+0x28): undefined reference to `__aeabi_unwind_cpp_pr0'
> arm-linux-gnueabi-ld: init/do_mounts_initrd.o:(.ARM.exidx+0x0): undefined reference to `__aeabi_unwind_cpp_pr0'
> arm-linux-gnueabi-ld: init/initramfs.o:(.ARM.exidx+0x8): more undefined references to `__aeabi_unwind_cpp_pr0' follow
> 
> This is likely a bug in clang that should be fixed in the compiler.
> Forcing the use of the ARM unwinder in this configuration however
> works around the problem.

Or should the stub functions in arch/arm/kernel/unwind.c be moved out?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
