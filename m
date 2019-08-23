Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 363CE9B43B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 18:07:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BcwwJQSaShdoRpZNsUHglElcw8AoAryMQJSGjjWs5Vk=; b=W7+lwy56YaL5+z
	ZDERC8tOqW6/hGZb3/n9KjXv5B8Ytoszq1MZIWJ4WTIvIdt6XrbjWRCjuyUBplOsYH77piIg07pc+
	gMsRg0hMYL2qkKBMT1ns9WrTNzluO11Q5HuQ0FAE676nO3tTXOWBSS5mIP95C8dleNHGekHZce0ld
	ohoYsfM4NMkl+Y7H44j+99oMESQc7mGnrofO5vfgRZFPvKcmA572kqmNR8J6i1hmrvcwY9gvr1sfb
	x1JKsqMHPo6GLXxfIMqWLEdWIirb2vW2VbUVxpfODIY/X4GU3IUjPfKwc7LfmjFa69iwbqoAZcUqF
	vO9PsCEBmSuNDahcAqYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1C6I-0000Jz-K1; Fri, 23 Aug 2019 16:07:42 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1C6A-0000JI-JU
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 16:07:36 +0000
Received: from callcc.thunk.org (guestnat-104-133-0-111.corp.google.com
 [104.133.0.111] (may be forged)) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x7NG6CTJ028584
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 23 Aug 2019 12:06:13 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id 26F9942049E; Fri, 23 Aug 2019 12:06:12 -0400 (EDT)
Date: Fri, 23 Aug 2019 12:06:12 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v10 2/3] fdt: add support for rng-seed
Message-ID: <20190823160612.GJ8130@mit.edu>
Mail-Followup-To: "Theodore Y. Ts'o" <tytso@mit.edu>,
 Will Deacon <will@kernel.org>, Hsin-Yi Wang <hsinyi@chromium.org>,
 linux-arm-kernel@lists.infradead.org,
 Russell King <linux@armlinux.org.uk>,
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
References: <20190823062452.127528-1-hsinyi@chromium.org>
 <20190823062452.127528-3-hsinyi@chromium.org>
 <20190823154158.wgcnxfzpcttpnhga@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823154158.wgcnxfzpcttpnhga@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_090734_818565_52CD08E5 
X-CRM114-Status: GOOD (  11.07  )
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
 Josh Poimboeuf <jpoimboe@redhat.com>, Grzegorz Halat <ghalat@redhat.com>,
 "H . Peter Anvin" <hpa@zytor.com>, Guenter Roeck <groeck@chromium.org>,
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
 Hsin-Yi Wang <hsinyi@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
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

On Fri, Aug 23, 2019 at 04:41:59PM +0100, Will Deacon wrote:
> 
> Given that these aren't functional changes, I've kept Ted's ack from v9
> and I'll queue these via arm64 assuming they pass testing.
> 
> Ted -- please shout if you're not happy about that, and I'll drop the
> series.

That's fine, thanks.  I'm thinking about making some changes to
add_hwgenerator_randomness(), but it's not going to be in the next
merge window, and it's more important that we get the interfaces (the
Kconfig options and add_bootloader_randomness() function prototype)
right for ARM.

Now to shanghai some volunteers to get this functionality working for
x86 (at least for the UEFI and NERF bootloaders).  :-)

Thanks!!

						- Ted

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
