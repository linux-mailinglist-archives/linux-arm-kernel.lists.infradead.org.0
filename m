Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F235D50F29
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 16:52:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T7NYfrVuYJsV6F3TxWzsR4OUlLlf59RQc2dXcyqB8fU=; b=pRp7x0Md27SFUU
	dyq2YGNndSO7DUASgVfaj8FntrDKsuGugoeSShf5kI0DIVW8q+RbndIlGJXeXsUUJg78EIfFXnRfA
	WJ8MMb54pfcqO8Pc+hvS2NrPWS+ZqcpoLQdlIaR1CJD8BfLtQt3rzRCkE1YhQszC0xERvp64pHBLk
	1sPzNu2F+ZClVN0cdhWZkwZHTjahkOv0LQJt4dSnDCPtQsFj5j7Wqc5mLMk5uGPBcaP4NttmAXvXY
	R/1G6AU1hg3b++M4lSTiERbrk8hVJVPD0pyhrNLT+2FG8cQ5OynA6v/yuKQkmGgyrj5L08xQvp+2R
	8J0tPszYsgOG7ble4A7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQKg-0003lb-C4; Mon, 24 Jun 2019 14:52:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQHi-0000FM-Qn
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 14:49:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4C1F7344;
 Mon, 24 Jun 2019 07:49:30 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 12ADD3F71E; Mon, 24 Jun 2019 07:49:26 -0700 (PDT)
Date: Mon, 24 Jun 2019 15:49:24 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH v7 00/25] Unify vDSOs across more architectures
Message-ID: <20190624144924.GE29120@arrakis.emea.arm.com>
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <alpine.DEB.2.21.1906240142000.32342@nanos.tec.linutronix.de>
 <alpine.DEB.2.21.1906241613280.32342@nanos.tec.linutronix.de>
 <20190624142346.pxljv3m4npatdiyk@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624142346.pxljv3m4npatdiyk@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_074931_027530_AC226827 
X-CRM114-Status: GOOD (  15.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Andy Lutomirski <luto@kernel.org>, Mark Salyzyn <salyzyn@android.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Michael Kelley <mikelley@microsoft.com>, linux-kselftest@vger.kernel.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Shuah Khan <shuah@kernel.org>,
 linux-arch@vger.kernel.org, Dmitry Safonov <dima@arista.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Andre Przywara <andre.przywara@arm.com>, Sasha Levin <sashal@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Will Deacon <will.deacon@arm.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Peter Collingbourne <pcc@google.com>,
 LAK <linux-arm-kernel@lists.infradead.org>, Andrei Vagin <avagin@openvz.org>,
 Huw Davies <huw@codeweavers.com>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, LKML <linux-kernel@vger.kernel.org>,
 Paul Burton <paul.burton@mips.com>, Shijith Thotton <sthotton@marvell.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 03:23:46PM +0100, Russell King wrote:
> On Mon, Jun 24, 2019 at 04:18:28PM +0200, Thomas Gleixner wrote:
> > Vincenzo,
> > 
> > On Mon, 24 Jun 2019, Thomas Gleixner wrote:
> > 
> > > I did not merge the ARM and MIPS parts as they lack any form of
> > > acknowlegment from their maintainers. Please talk to those folks. If they
> > > ack/review the changes then I can pick them up and they go into 5.3 or they
> > > have to go in a later cycle. Nevertheless it was well worth the trouble to
> > > have those conversions done to confirm that the new common library fits a
> > > bunch of different architectures.
> > 
> > I talked to Russell King and he suggested to file the ARM parts into his
> > patch system and he'll pick them up after 5.3-rc1.
> > 
> >    https://www.arm.linux.org.uk/developer/patches/
> > 
> > I paged out how to deal with it, but you'll surely manage :)
> 
> Easy way: ask git to add the "KernelVersion" tag as a header to the
> email using --add-header to e.g. git format-patch, and just mail them
> to patches@armlinux.org.uk

Although I haven't send patches to Russell in a while, I still have a
git alias in my .gitconfig (only works with one patch at a time IIRC,
sending multiple patches may arrive in a different order):

[alias]
	send-rmk-email = !git send-email --add-header=\"KernelVersion: $(git describe --abbrev=0)\" --no-thread --suppress-cc=all --to="patches@arm.linux.org.uk"

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
