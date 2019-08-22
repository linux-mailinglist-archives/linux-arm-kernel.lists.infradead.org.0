Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6AE998BF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 18:06:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MKzZks8xDRnOWRrGykjqoXtyHf/JWF+ZOlmqSQb/j8U=; b=emzARnxmMIyBaS
	gy/KAQ8QbJLCDa/TuwJzwL0V8vM/3qTSxS+Qq9QcciWvbnrGl0WUJL8O1lSfKh9jv1o/v7wIBhcz2
	R3gPRYAXs7IfZJINB03TWa7lP9QJbmdxwvo+uzKYTBEr3Ufu2YF80BYZvl/bBPgA6AHicQnAZM0bj
	uHjZgCvm6SZTZ+hyMJ9oWexESL0DNT8pow4+ABLoPTQfUjaakOpPLNB2zCP1oqSIBJo/noTJgg0HJ
	eUTNDa9GOkZcOxS2/nLSfb5cOLtxir/2KwpKumoSk3JrpRU5ZDS67RYRasJpfwmvzcgwwp1PCOSNu
	KgyJJbyO9x5+JE8GuEvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0pb3-0001Ne-PH; Thu, 22 Aug 2019 16:05:57 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0paZ-0001CP-JH
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 16:05:30 +0000
Received: from callcc.thunk.org (guestnat-104-133-0-111.corp.google.com
 [104.133.0.111] (may be forged)) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x7MG3r9U010677
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 22 Aug 2019 12:03:55 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id CF95A42049E; Thu, 22 Aug 2019 12:03:52 -0400 (EDT)
Date: Thu, 22 Aug 2019 12:03:52 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Subject: Re: [PATCH v9 2/3] fdt: add support for rng-seed
Message-ID: <20190822160352.GA17783@mit.edu>
Mail-Followup-To: "Theodore Y. Ts'o" <tytso@mit.edu>,
 Hsin-Yi Wang <hsinyi@chromium.org>,
 linux-arm-kernel@lists.infradead.org,
 Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
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
 Wei Li <liwei391@huawei.com>,
 Anders Roxell <anders.roxell@linaro.org>,
 Rob Herring <robh@kernel.org>,
 Aaro Koskinen <aaro.koskinen@nokia.com>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Tim Chen <tim.c.chen@linux.intel.com>,
 Rik van Riel <riel@surriel.com>, Waiman Long <longman@redhat.com>,
 Marcelo Tosatti <mtosatti@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Armijn Hemel <armijn@tjaldur.nl>,
 Grzegorz Halat <ghalat@redhat.com>, Len Brown <len.brown@intel.com>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Kees Cook <keescook@chromium.org>,
 Stephen Boyd <swboyd@chromium.org>,
 Guenter Roeck <groeck@chromium.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Alexey Dobriyan <adobriyan@gmail.com>,
 Yury Norov <ynorov@marvell.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Jiri Kosina <jkosina@suse.cz>,
 Mukesh Ojha <mojha@codeaurora.org>, linux-kernel@vger.kernel.org
References: <20190822071522.143986-1-hsinyi@chromium.org>
 <20190822071522.143986-3-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822071522.143986-3-hsinyi@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_090528_296012_D77BDACB 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [18.9.28.11 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Mukesh Ojha <mojha@codeaurora.org>,
 Grzegorz Halat <ghalat@redhat.com>, "H . Peter Anvin" <hpa@zytor.com>,
 Guenter Roeck <groeck@chromium.org>, Will Deacon <will@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Rob Herring <robh@kernel.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Anders Roxell <anders.roxell@linaro.org>, Yury Norov <ynorov@marvell.com>,
 Marc Zyngier <maz@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Aaro Koskinen <aaro.koskinen@nokia.com>, Ingo Molnar <mingo@redhat.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Waiman Long <longman@redhat.com>,
 "Paul E . McKenney" <paulmck@linux.vnet.ibm.com>, Wei Li <liwei391@huawei.com>,
 Alexey Dobriyan <adobriyan@gmail.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Len Brown <len.brown@intel.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Rik van Riel <riel@surriel.com>,
 Stephen Boyd <swboyd@chromium.org>, Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Mike Rapoport <rppt@linux.vnet.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Marcelo Tosatti <mtosatti@redhat.com>, linux-kernel@vger.kernel.org,
 Armijn Hemel <armijn@tjaldur.nl>, Jiri Kosina <jkosina@suse.cz>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Tim Chen <tim.c.chen@linux.intel.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 03:15:22PM +0800, Hsin-Yi Wang wrote:
> Introducing a chosen node, rng-seed, which is an entropy that can be
> passed to kernel called very early to increase initial device
> randomness. Bootloader should provide this entropy and the value is
> read from /chosen/rng-seed in DT.
> 
> Obtain of_fdt_crc32 for CRC check after early_init_dt_scan_nodes(),
> since early_init_dt_scan_chosen() would modify fdt to erase rng-seed.
> 
> Add a new interface add_bootloader_randomness() for rng-seed use case.
> Depends on whether the seed is trustworthy, rng seed would be passed to
> add_hwgenerator_randomness(). Otherwise it would be passed to
> add_device_randomness(). Decision is controlled by kernel config
> RANDOM_TRUST_BOOTLOADER.
> 
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> Reviewed-by: Rob Herring <robh@kernel.org>

For the changes to drivers/char/random.c:

Reviewed-by: Theodore Ts'o <tytso@mit.edu>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
