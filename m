Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65269175882
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 11:37:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6hBkH3kHpOSd1Jq5xcMHbrEwViL7BTbr6FyB/Qf2Jgo=; b=OhBdrUoexYq1v0
	dhCXmM3dZmEbONmJ0ukVp5nyLEZ0n9gk84x1CO2X556oasRgt2mcVrPuCQZ+QMmDOYM53j2ZJff3u
	WKqbCB2FLs+g0Er6w4PDeV2B3tEzoadqPncyTQjfwt10A/ZdpsI96Y57UZRz+ABGuY/P/Jt9f73+J
	eKM2abS0zoGxvMGtPMBjIW3xACe+J7NCwAmWJawa1PXCysDVvZ4Stv+YwO8B4RWyTsFl2GkK23HTK
	tYSej1fGbEcB2ndNbsBy5/7kHf2sUIWFEDKbVlRd/7d28qPb0RDqSqfQULp8BRHNUwFn6it+NQOuS
	HB+EjyKVWnrwkQRo/0fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8iSJ-00060t-Bq; Mon, 02 Mar 2020 10:37:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8iSC-00060V-JQ; Mon, 02 Mar 2020 10:37:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5CD7531B;
 Mon,  2 Mar 2020 02:37:39 -0800 (PST)
Received: from [10.163.1.119] (unknown [10.163.1.119])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9969E3F6CF;
 Mon,  2 Mar 2020 02:37:25 -0800 (PST)
Subject: Re: [PATCH] mm/special: Create generic fallbacks for pte_special()
 and pte_mkspecial()
To: Geert Uytterhoeven <geert@linux-m68k.org>
References: <1583114190-7678-1-git-send-email-anshuman.khandual@arm.com>
 <CAMuHMdXnUeYib2dMALyzrW8LKhTjsnGFsqALoTxVHzPGc+OUTg@mail.gmail.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <02997860-9374-28b9-8703-dc9b62b3f8ff@arm.com>
Date: Mon, 2 Mar 2020 16:07:27 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAMuHMdXnUeYib2dMALyzrW8LKhTjsnGFsqALoTxVHzPGc+OUTg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_023740_683994_907ADBAA 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>,
 "open list:TENSILICA XTENSA PORT \(xtensa\)"
 <linux-xtensa@linux-xtensa.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Linux MM <linux-mm@kvack.org>, Guo Ren <guoren@kernel.org>,
 linux-csky@vger.kernel.org, sparclinux <sparclinux@vger.kernel.org>,
 "open list:QUALCOMM HEXAGON..." <linux-hexagon@vger.kernel.org>,
 Vincent Chen <deanbo422@gmail.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Jonas Bonn <jonas@southpole.se>, Paul Burton <paulburton@kernel.org>,
 Richard Weinberger <richard@nod.at>, Helge Deller <deller@gmx.de>,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Parisc List <linux-parisc@vger.kernel.org>,
 Linux-Arch <linux-arch@vger.kernel.org>, Matt Turner <mattst88@gmail.com>,
 Sam Creasey <sammy@sammy.net>, Fenghua Yu <fenghua.yu@intel.com>,
 Jeff Dike <jdike@addtoit.com>, linux-um <linux-um@lists.infradead.org>,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Openrisc <openrisc@lists.librecores.org>,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>, Greentime Hu <green.hu@gmail.com>,
 Stafford Horne <shorne@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Richard Henderson <rth@twiddle.net>, Chris Zankel <chris@zankel.net>,
 Michal Simek <monstr@monstr.eu>, Tony Luck <tony.luck@intel.com>,
 Brian Cain <bcain@codeaurora.org>, Nick Hu <nickhu@andestech.com>,
 Max Filippov <jcmvbkbc@gmail.com>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, alpha <linux-alpha@vger.kernel.org>,
 nios2-dev@lists.rocketboards.org, Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 03/02/2020 01:49 PM, Geert Uytterhoeven wrote:
> Hi Anshuman,
> 
> Thanks for your patch!
> 
> On Mon, Mar 2, 2020 at 2:56 AM Anshuman Khandual
> <anshuman.khandual@arm.com> wrote:
>> Currently there are many platforms that dont enable HAVE_ARCH_PTE_SPECIAL
> ARCH_HAS_PTE_SPECIAL
> 
>> but required to define quite similar fallback stubs for special page table
>> entry helpers such as pte_special() and pte_mkspecial(), as they get build
>> in generic MM without a config check. This creates two generic fallback
>> stub definitions for these helpers, eliminating much code duplication.
>>
>> mips platform has a special case where pte_special() and pte_mkspecial()
>> visibility is wider than what HAVE_ARCH_PTE_SPECIAL enablement requires.
> ARCH_HAS_PTE_SPECIAL
> 

Oops, will fix it. I have been juggling between too many HAVE_ARCH_* and
ARCH_HAS_* lately :)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
