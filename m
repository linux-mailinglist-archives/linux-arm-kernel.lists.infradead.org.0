Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53031A1F9B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 17:47:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mMuOnCohfUjCFyo9oPOd7dIO2Tth9203+oaUNnGx05Q=; b=Hj8S+jhVx3et14
	G7e7KBPS6ad3BHhqj9w8TvaX7zAT278zaRlcFvHspQtNgaTAyqvZwPiTnaO0OOiQNXZrDNnuzV+mV
	RC9D0YOEImBwAVanehX5jyndSKMuQT4DEnxKavSY0ljz3on96V7PFZyDLUolYfTVcJtzTFeyWSVK/
	BmqbXSFlRlwHLkFRTi7Qi5ho06fnnT3aB0m31w47ZnBAM6tbDkwAwmGYnqIhv5FW8HivxDhk/mCrb
	zAaaBzHPf1dxmovUqyTRiDOpn0joYFL1Z59+jiZLIRHK2fuBG3ny/3TOxUhwEKHZ0zVj+LCxBzy54
	96Pg/SlyOMCLm1IbDeHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Mdu-0000zT-Rp; Thu, 29 Aug 2019 15:47:22 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3MdU-0000vv-RQ
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 15:46:58 +0000
Received: from callcc.thunk.org (guestnat-104-133-0-111.corp.google.com
 [104.133.0.111] (may be forged)) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x7TFj59e005976
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 29 Aug 2019 11:45:07 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id 3F15242049E; Thu, 29 Aug 2019 11:45:05 -0400 (EDT)
Date: Thu, 29 Aug 2019 11:45:05 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Subject: Re: [PATCH v9 2/3] fdt: add support for rng-seed
Message-ID: <20190829154505.GB10779@mit.edu>
Mail-Followup-To: "Theodore Y. Ts'o" <tytso@mit.edu>,
 Hsin-Yi Wang <hsinyi@chromium.org>,
 Kees Cook <keescook@chromium.org>,
 Stephen Boyd <swboyd@chromium.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, 
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
 Guenter Roeck <groeck@chromium.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Alexey Dobriyan <adobriyan@gmail.com>,
 Yury Norov <ynorov@marvell.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Jiri Kosina <jkosina@suse.cz>,
 Mukesh Ojha <mojha@codeaurora.org>,
 lkml <linux-kernel@vger.kernel.org>
References: <20190822071522.143986-1-hsinyi@chromium.org>
 <20190822071522.143986-3-hsinyi@chromium.org>
 <5d5ed368.1c69fb81.419fc.0803@mx.google.com>
 <201908241203.92CC0BE8@keescook>
 <CAJMQK-iDoPxbFUH3JUeJ7SehCptZOnjKZiUoFd1PqLjDdGHujA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJMQK-iDoPxbFUH3JUeJ7SehCptZOnjKZiUoFd1PqLjDdGHujA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_084657_125271_CF31BE62 
X-CRM114-Status: GOOD (  17.77  )
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
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Marcelo Tosatti <mtosatti@redhat.com>, lkml <linux-kernel@vger.kernel.org>,
 Armijn Hemel <armijn@tjaldur.nl>, Jiri Kosina <jkosina@suse.cz>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Tim Chen <tim.c.chen@linux.intel.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 06:03:57PM +0800, Hsin-Yi Wang wrote:
> On Thu, Aug 29, 2019 at 1:36 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > Can this please be a boot param (with the default controlled by the
> > CONFIG)? See how CONFIG_RANDOM_TRUST_CPU is wired up...
> >
>
> Currently rng-seed read and added in setup_arch() -->
> setup_machine_fdt().. -> early_init_dt_scan_chosen(), which is earlier
> than parse_early_param() that initializes early_param.
> 
> If we want to set it as a boot param, add_bootloader_randomness() can
> only be called after parse_early_param(). The seed can't be directly
> added to pool after it's read in. We need to store into global
> variable and load it later.
> If this seems okay then I'll add a patch for this. Thanks

I thought about asking for this, but we really want to do this as
early as possible, so that it can be used by KASLR and other services
that are run super early.  Also, whether or not we can trust the
bootloader is going to be a system-level thing.  This should probably
be defaulted to off, and only enabled by the system integrator if they
are 100%, positively sure, that the entire system is one where we can
trust the source of randomness which the bootloader is using --- or
for that matter, that the bootloader is trustworthy!

Is it really going to be that useful for a random system administrator
to be able to flip this on or off from the command line?  Hopefully
there will be an easy way to configure the firmware or the bootloader
to simply not supply entropy, if for some reason it's not trustworthy.

   	      	     	      	     - Ted

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
