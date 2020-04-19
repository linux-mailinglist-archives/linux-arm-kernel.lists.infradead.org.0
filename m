Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E59A1AFB45
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 16:13:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6tDDCA1/vu+IYV4CH1pl180Dwq4Lk/TrnnSwzIfNS6A=; b=TNanoS8crX5Gp6
	LaVn6hBKBPEB2m/EN5A5PHEOuzzOpgSg4X/npI8ZuCOr6s1tFOyqd68FxWO/4uT7byEjN74uoRllK
	KWMQMVIsYJH+eUPhqb6llu0Xgs90LHDPqjwTM78olOOO8GGM/poUJo9t6I7lKCZwRnb+eB6CGUgkE
	ZWMk/iYa5hlqhCGeJKjAc1Rh1PC8u4l8egAePoc6NPdE8Q1dYYIt5fhNb8cvm8OxhG/wDNAp+TPeo
	E1qmZ2TzpundsST0MIeV4+xBPgSeCZ1pVI0/aEt23502uynDhzWHC9gFAgvuJ6HQoyQaxEwIOEytS
	xuXL9+5YUzN+Dv9oS/1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQAh2-0007Ha-IE; Sun, 19 Apr 2020 14:13:08 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQAgr-0007Ft-U1
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 14:13:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iPI9+C0OmqfHPSjDQhvBPW39Tw6U8V5gfT1X3EF41SM=; b=mQ1sT2hPGhAt68e7vQDBJLtWe
 tXEG+VFuhHJl3fOhDrSSB6Lfqa+n7I4RsLet3ztr/tzhtShrGLXbf5HgKVjGXcc6hoZ5koq4y1Wgf
 JNGyt4hhi/MMu2aG+/Oj+DkH/1+1BJut5H2ufCV68abNmr0xqcH0Q9d7K/gaPTrZp30cVPs9oXckN
 pygghQzjGu/RtBXwTFQwsnJ3+gJldt8LTwjy1r++fqTVwAQAQErT11rN3RY8mV0GhHY/BaTiI/l+/
 EorvK49Ned6aio1wv9gljpZTuQmRS00qFCes27XvwBWLfIOXflwdASdV7d7iVlm+S7ebG1ms7Gk8Z
 zD+wsLEtw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:40538)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jQAgZ-0005zm-NF; Sun, 19 Apr 2020 15:12:39 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jQAgP-0004uU-GD; Sun, 19 Apr 2020 15:12:29 +0100
Date: Sun, 19 Apr 2020 15:12:29 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Stefan Agner <stefan@agner.ch>
Subject: Re: [PATCH v2 0/3] ARM: make use of UAL VFP mnemonics when possible
Message-ID: <20200419141229.GX25745@shell.armlinux.org.uk>
References: <cover.1587299429.git.stefan@agner.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1587299429.git.stefan@agner.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_071257_969000_9DC4F0E0 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: arnd@arndb.de, ard.biesheuvel@linaro.org, yamada.masahiro@socionext.com,
 ndesaulniers@google.com, linux-kernel@vger.kernel.org, jiancai@google.com,
 clang-built-linux@googlegroups.com, manojgupta@google.com,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 19, 2020 at 02:35:48PM +0200, Stefan Agner wrote:
> To build the kernel with Clang's integrated assembler the VFP code needs
> to make use of the unified assembler language (UAL) VFP mnemonics.
> 
> At first I tried to get rid of the co-processor instructions to access
> the floating point unit along with the macros completely. However, due
> to missing FPINST/FPINST2 argument support in older binutils versions we
> have to keep them around. Once we drop support for binutils 2.24 and
> older, the move to UAL VFP mnemonics will be straight forward with this
> changes applied.
> 
> Tested using Clang with integrated assembler as well as external
> (binutils assembler), various gcc/binutils version down to 4.7/2.23.
> Disassembled and compared the object files in arch/arm/vfp/ to make
> sure this changes leads to the same code. Besides different inlining
> behavior I was not able to spot a difference.
> 
> In v2 the check for FPINST argument support is now made in Kconfig.

Given what I said in the other thread, Clang really _should_ allow
the MCR/MRC et.al. instructions to access the VFP registers.  There
is no reason to specifically block them.

As we have seen with FPA, having that ability when iWMMXT comes along
is very useful.  In any case:

1. The ARM ARM (DDI0406) states that "These instructions are MRC and MCR
instructions for coprocessors 10 and 11." in section A7.8.

2. The ARM ARM (DDI0406) describes the MRC and MCR instructions as
being able to access _any_ co-processor.

So, Clang deciding that it's going to block access to coprocessor 10
and 11 because some version of the architecture _also_ defines these
as VFP instructions is really not on, and Clang needs to be fixed
irrespective of these patches - and I want to know that *is* going to
get fixed before I take these patches into the kernel.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
