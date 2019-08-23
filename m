Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E419B47A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 18:31:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7o0OGfVxKSwo3cx/E7jP2te3TCMRTw7CNF3J0BtxQMg=; b=PLza/PSAI3LApR
	262YS9tMwNwoPVGcoDvhY4aABAHc5axws6aI0blwL9NBmD/R1qIHcegNJiYVNWlvJiPrzTSML2xwy
	IrJLLiQg9gzVoMGV7Xho2wCm1nJC3F7IqIxBeRs8u93IVQzuhD6FWs5bRr77HwLKXDmKWYdE2Ta9A
	IkqVR2NQvUN4vdqWYphBy6qmoQ2Fxs7CH5aK1PLlecDF4zG4lItZ5hYbhgCqvyD8JnrVTHp52pgH3
	AOc5WXzRXpqTsxPbJsVzpQkeI1B/lkw+RaKJmUNZafZi1/uWuj/F19XQcbNe4were1Hu5wrmyZKvQ
	F3cuxbhJQ1gpJ4y6pdyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1CTT-000087-EQ; Fri, 23 Aug 2019 16:31:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1CTL-00007Q-Qw
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 16:31:33 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0B8F121726;
 Fri, 23 Aug 2019 16:31:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566577890;
 bh=4uBDuZ3Lx8Vomf88LW9Ys3zz8BLIBREusiqkQZzWd8w=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=mjkSYr6RmiJC0GhN33dx0Y3/zSAByRHlsEKmu6fOigOuNFSZqNX1xcy6b0B/D2QMR
 KHG0jgYo5rJdQf1/MaBxU5BtYRTHeNGcjORLFJmjaPgGkB61hJ+BWtbaVZ26AJv56a
 IgOTyFJ3OijaXpACpkByjE3E5wY6wK8MYLijoeCQ=
Date: Fri, 23 Aug 2019 17:31:20 +0100
From: Will Deacon <will@kernel.org>
To: "Theodore Y. Ts'o" <tytso@mit.edu>, Hsin-Yi Wang <hsinyi@chromium.org>,
 linux-arm-kernel@lists.infradead.org, Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H . Peter Anvin" <hpa@zytor.com>,
 "Paul E . McKenney" <paulmck@linux.vnet.ibm.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Arnd Bergmann <arnd@arndb.de>, Marc Zyngier <maz@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wei Li <liwei391@huawei.com>, Anders Roxell <anders.roxell@linaro.org>,
 Rob Herring <robh@kernel.org>, Aaro Koskinen <aaro.koskinen@nokia.com>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Tim Chen <tim.c.chen@linux.intel.com>,
 Rik van Riel <riel@surriel.com>, Waiman Long <longman@redhat.com>,
 Marcelo Tosatti <mtosatti@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>, Armijn Hemel <armijn@tjaldur.nl>,
 Grzegorz Halat <ghalat@redhat.com>, Len Brown <len.brown@intel.com>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Mike Rapoport <rppt@linux.vnet.ibm.com>, Kees Cook <keescook@chromium.org>,
 Stephen Boyd <swboyd@chromium.org>, Guenter Roeck <groeck@chromium.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Alexey Dobriyan <adobriyan@gmail.com>, Yury Norov <ynorov@marvell.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Jiri Kosina <jkosina@suse.cz>,
 Mukesh Ojha <mojha@codeaurora.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v10 2/3] fdt: add support for rng-seed
Message-ID: <20190823163120.fojtvjfat2ymxoeo@willie-the-truck>
References: <20190823160612.GJ8130@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823160612.GJ8130@mit.edu>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_093131_897573_A567BF31 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 12:06:12PM -0400, Theodore Y. Ts'o wrote:
> On Fri, Aug 23, 2019 at 04:41:59PM +0100, Will Deacon wrote:
> > 
> > Given that these aren't functional changes, I've kept Ted's ack from v9
> > and I'll queue these via arm64 assuming they pass testing.
> > 
> > Ted -- please shout if you're not happy about that, and I'll drop the
> > series.
> 
> That's fine, thanks.  I'm thinking about making some changes to
> add_hwgenerator_randomness(), but it's not going to be in the next
> merge window, and it's more important that we get the interfaces (the
> Kconfig options and add_bootloader_randomness() function prototype)
> right for ARM.

Well, on the off-chance that you do need it, I've stuck the series on its
own branch anyway so you can pull in elsewhere if necessary:

https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/rng

> Now to shanghai some volunteers to get this functionality working for
> x86 (at least for the UEFI and NERF bootloaders).  :-)

Hehe, good luck!

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
