Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1CC19171C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 18:00:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kmeF086vIpv8gq6KbmWuF2KroYBuO9VyMkQAaqJAZnU=; b=SJM/Vdc5x+zWzg
	2mS/ms9ruv7sHWMDGUKuhn+nG7/pQDJmHYXxvscdbyq9734vX3wPtaHFa5aEUFjou6xx4i/OaDPQU
	xSlDmpj94AlyuldWYazc6amd5/LBjXqY/gdEG2bFEiun9RIv5J6SBet1MgVK4m7+3DbRXL1/YsVri
	TMKivxYj5jMzL6Ix2736UFTPkdkD0I2SyDsiUdK+82O2t6rFHPuefq35ABQp/qnSuHag1oi/8t7w9
	QLSpof5+2ZXGC9ZwdhiwN4pfV+uYsnPgAYBCBQ8u02c1LuEbiepXB362KB6+uBxtrazBtzBimPB8L
	jIIh2txAxPG0XD4e24hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGmuv-0003hM-4t; Tue, 24 Mar 2020 17:00:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGmum-0003gv-Vv
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 17:00:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4E05D1FB;
 Tue, 24 Mar 2020 10:00:32 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0283C3F71F;
 Tue, 24 Mar 2020 10:00:30 -0700 (PDT)
Date: Tue, 24 Mar 2020 17:00:28 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Amit Kachhap <amit.kachhap@arm.com>
Subject: Re: [arm64:for-next/kernel-ptrauth 16/18] aarch64-linux-objdump:
 warning: fs/squashfs/decompressor_multi.o: unsupported GNU_PROPERTY_TYPE (5)
 type: 0xc0000000
Message-ID: <20200324170028.GF3901@mbp>
References: <202003211202.2NuTbuJb%lkp@intel.com> <20200323114837.GA4892@mbp>
 <ec43ce65-0e79-0596-db99-5c7622674ad9@arm.com>
 <20200324161507.GA3901@mbp>
 <bf23b903-28f4-226c-49ce-3f761ae848a7@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bf23b903-28f4-226c-49ce-3f761ae848a7@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_100033_071332_17E3416F 
X-CRM114-Status: GOOD (  13.55  )
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
Cc: kbuild-all@lists.01.org, kbuild test robot <lkp@intel.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, daniel.kiss@arm.com,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 10:02:16PM +0530, Amit Kachhap wrote:
> On 3/24/20 9:45 PM, Catalin Marinas wrote:
> > > On 3/23/20 5:18 PM, Catalin Marinas wrote:
> > > > Just to make sure I understand the cause of this warning: gcc generates
> > > > a .note.gnu.property when PAC is enabled for the kernel but binutils
> > > > doesn't understand it. Is there a way to check for this via the Kconfig
> > > > options?
[...]
> > If there isn't a way to silence the linker or objdump, could we align
> > the compiler version we know that generates this note with a minimum
> > binutils? Something like:
> > 
> > 	depends on (GCC_VERSION < X) || (LD_VERSION >= 233...)
> 
> Yes this is possible.

Note that LD_VERSION does not exist for kconfig. Please put together a
couple of patches here (and include clang versions as well) on top of
the arm64 for-next/kernel-ptrauth branch. They are not critical, we can
merge them after 5.7-rc1.

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
