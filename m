Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF49CB06B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 22:49:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pacmU5sCEk1/8BVuQ/aCmbPZr+a5sIQyogaUZQGPBX0=; b=l9jkngAbfgr/Ev
	5fKyMy49lc9pNr5VK2J1GlnZan1ai/AT+xu0fd+uKsDrCW3qPj1y0ULUU9/DZ5DlT5Lk9jDLjXNZ3
	fAA8qKh5Q8dbAD6+MZBxTAU6efCNcHBd0yWDypfpwOGKhu5vXg8UrQUz7GyxIRB59lL35ofSJ4ING
	MAZtCtStuVNNNG1Cf6BOwXy0/MPt/zhQgZ9Vw1I8oOWkg6CpVFN3xfNzUKmwQq9ZBkvKQXq7TxAj8
	OkVfJd3XUs5fCJql0nzFanTAJKLgjV6Tp+0MG9tdLv1Z5MtT7Qq7fov7XiCt/PxwNb1UW0TXJa2pY
	dd0v2jaUNGBdr4rJQBow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG82v-0004Ru-Mp; Thu, 03 Oct 2019 20:49:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG82o-0004RG-Rr
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 20:49:52 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 836AC2086A;
 Thu,  3 Oct 2019 20:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570135790;
 bh=T7GyCKf+5lR0UHhpOwx4h8MhXmzyZ24igcrrwR+1Grc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YlsegnXXNUnybEBXEiNuPIaAn6MGu0PBLmoyYyZOGQMBQhz2leOs4foXuyQddIs05
 FmGYYmMaGqfBjbUqRHuh53SzDP0dq/PhR7W6DOYBcJsEShxWm/6npfRvJdkMBuYZ/I
 D1T6Z3ytd0PlY3qs1BaBqxjwb0QWj1dLUCwZfts4=
Date: Thu, 3 Oct 2019 21:49:45 +0100
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v5 2/6] arm64: vdso32: Detect binutils support for dmb
 ishld
Message-ID: <20191003204944.6wuzflqkjdpawzvp@willie-the-truck>
References: <20191003174838.8872-1-vincenzo.frascino@arm.com>
 <20191003174838.8872-3-vincenzo.frascino@arm.com>
 <CAKwvOdmhyVHREHvyB0wL2GfMsE8GcJ1Ouj_8ifrR4hU8kBYukQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOdmhyVHREHvyB0wL2GfMsE8GcJ1Ouj_8ifrR4hU8kBYukQ@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_134950_923778_492454B1 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 03, 2019 at 01:18:16PM -0700, Nick Desaulniers wrote:
> On Thu, Oct 3, 2019 at 10:48 AM Vincenzo Frascino
> <vincenzo.frascino@arm.com> wrote:
> >
> > Older versions of binutils that do not support certain types of memory
> > barriers can cause build failure of the vdso32 library.
> 
> Do you know specific version numbers of binutils that are affected?
> May be helpful to have in the commit message just for future
> travelers.

A quick bit of archaeology suggests e797f7e0b2be added this back in 2012,
which seems to correlate with the 2.24 release.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
