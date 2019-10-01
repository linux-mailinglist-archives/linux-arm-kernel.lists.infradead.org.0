Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C45C3975
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 17:48:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l9ec8sa/1cQgdPKpDsVTmAdTiMbupTH7SnLmTc2m5/g=; b=D1r/Lt+G8JXGU4
	N4baKdmBTXhgYoZ8xa9NcusF/SVieokCtoPr7kyGCzrh3lYhV+tTUDTn9kSi3Qeds4R9A/eExHHb1
	lU7cYQVTqbuCSlhht4DrJ2CeAShKVahPPq5WPfSrX0yK+4p7ifFVVKDAGsM+bvVguH/MtnK86zAFu
	zYBBmrqFSUJOTmvq9xE0ytYfiyuZc+i4Aw2vML52hU66cCwvtSI0TP01ENPYEe0zroD/iwEQQNV2M
	QUvbkUhgMpecRTdPffOwbeRcWkB8srCfDz8NBOBBv+PrTcZ98o8j6N56E6qhtOxMwQfsjFmt7Wh4/
	7uGkjlYAxi0X30ikfagQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFKOB-000859-KL; Tue, 01 Oct 2019 15:48:35 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFKO4-000844-99
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 15:48:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mAjemN3zoy4NN/OBz00OSEPUQdbEoX+3LDmfYoCmeRg=; b=Gk/m5lFU3nP7Hb76nAnEXfpG/
 dxdlqhJPiM95K+QzKvDxeTGznCqoXLGQOgaRflUKryN7ErAQNMNa3j0Vax41fBSawXUHGkAXr+OQE
 hcQ8mgwp4+zl2JxMgNmsyAiEyHyzEjZyTT4KLL/sFmEr01psCAYCXX0QfTg5r33URgFedNK3QqvL4
 xTTSLlw2Adqb7JYYIinG34bhO6BFMBiaUyxG4zAY6k8fVsJGMgytobhwpxvl5X5ZuXaAAfy1DK/jf
 DSiCtENdKYVFx9qm98QjpskmMu5LWhofGMWzGiVw/7y8BRpl6ftbIrWMggt7QnheeZpl+WmzNxhay
 O8MZt9plQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:46324)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iFKNs-0003Iy-Ob; Tue, 01 Oct 2019 16:48:16 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iFKNq-0008KL-A1; Tue, 01 Oct 2019 16:48:14 +0100
Date: Tue, 1 Oct 2019 16:48:14 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH] Partially revert "compiler: enable
 CONFIG_OPTIMIZE_INLINING forcibly"
Message-ID: <20191001154814.GJ25745@shell.armlinux.org.uk>
References: <20190930114540.27498-1-will@kernel.org>
 <CAK7LNARWkQ-z02RYv3XQ69KkWdmEVaZge07qiYC8_kyMrFzCTg@mail.gmail.com>
 <20191001104253.fci7s3sn5ov3h56d@willie-the-truck>
 <20191001114129.GL42880@e119886-lin.cambridge.arm.com>
 <20191001143626.GI25745@shell.armlinux.org.uk>
 <20191001152826.GM42880@e119886-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001152826.GM42880@e119886-lin.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_084828_320588_E9D5DD7B 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 01, 2019 at 04:28:27PM +0100, Andrew Murray wrote:
> I hadn't noticed the use of __OPTIMIZE__ - indeed if __compiletime_assert
> is no-op'd and you reach it then you won't have a build error - but you
> may get uninitialised values instead.
> 
> Presumably the purpose of __OPTIMIZE__ in this case is to prevent getting
> an undefined function error for the __compiletime_assert line, even though
> it doesn't get called (when using a compiler that doesn't optimize out the
> call to the unused function).
> 
> Why is the call to __get_user_bad not guarded in this way for when
> __OPTIMIZE__ isn't set, i.e. why doesn't it suffer from the issue
> that the following fixes?

Officially, the kernel does not support building with -O0.  To start
with, the top level makefile has:

ifdef CONFIG_CC_OPTIMIZE_FOR_SIZE
KBUILD_CFLAGS   += -Os
else
KBUILD_CFLAGS   += -O2
endif

and we've said for years that the kernel relies upon the compiler
optimiser to build correctly.  You may be lucky if you pass it via
some method to 'make' but that's going to rely on the argument order
to the compiler, and the order in which the compiler processes its
arguments, and whether it (for example) correctly disables all
optimisations if it encounters -O0 somewhere.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
