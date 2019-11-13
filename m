Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 465F5FAE64
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 11:24:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/pRF8G1SceIz1f1F0NztDTwSnToutFm44kyPl5JPwt0=; b=DtNaU69cAVHHwj
	XIE03DOiZRjYmKWqFUS/6tVBgQYWSP/n8k7o4i3VhkT352RSIGsZM/BylsBVcUfm0Pcdt2TGyAC7x
	tcXPlHm9sh39T5E+DCR+d20pexOSo6rK6bb472Gwr1UOR1Alz7GHjifC3+IqmRpsw7vuXdv+x+y6a
	IqxarKy7VlN0xvUgLk2/a+EJQINZKls7DIvP6Wd7C5djzvCPbxz+JONEV5KOUPa0yJBUi5OAXfwzw
	b0FI5fyQ8ppF8uX6kae4cclG+im+PlMky5ThRZlreK00B9QfVsWo9o5zjUmDTXbiUuHyYnX9Mkm9B
	4SeOUGtZIQWTV1Blfjjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUpop-0004co-0E; Wed, 13 Nov 2019 10:24:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUpoh-0004cQ-FC
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 10:24:04 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4396D222C1;
 Wed, 13 Nov 2019 10:24:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573640643;
 bh=ORAZV8c4f8R1ApOoI1BE23utHyso6gzFfy189+ri230=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vkoHFrFWIiShRIxqfVRikTkXJR1MkCX3YKD7VP6IqjiC0eaULmNoE6thsfbO8PhJE
 d4CJg+0i1o9DCtJY45bD6btuwqIMxflnQGbSND873mf5Eg7Sw6+WXy18q8xrqtPNpc
 ljRNRVOL8dd0qgB+vr6RukkEejxwPA6HkawFMS4k=
Date: Wed, 13 Nov 2019 10:23:58 +0000
From: Will Deacon <will@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH v2] buffer: Fix I/O error due to ARM read-after-read hazard
Message-ID: <20191113102357.GA25875@willie-the-truck>
References: <20191112130244.16630-1-vincent.whitchurch@axis.com>
 <20191112160855.GA22025@arrakis.emea.arm.com>
 <20191112180034.GB19889@willie-the-truck>
 <20191112182249.GB22025@arrakis.emea.arm.com>
 <CAHk-=wg4vi27mnMVgZ-rzcEdDAjTXrY1Jyz3+=5STcY0bw4-jQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wg4vi27mnMVgZ-rzcEdDAjTXrY1Jyz3+=5STcY0bw4-jQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_022403_531482_C4B2D866 
X-CRM114-Status: GOOD (  11.77  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@kernel.dk>, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Vincent Whitchurch <rabinv@axis.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Vincent Whitchurch <vincent.whitchurch@axis.com>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 10:39:01AM -0800, Linus Torvalds wrote:
> On Tue, Nov 12, 2019 at 10:22 AM Catalin Marinas
> <catalin.marinas@arm.com> wrote:
> >
> > OK, so this includes changing test_bit() to perform a READ_ONCE.
> 
> That's not going to happen.

Ok, I'll stick my neck out here, but if test_bit() is being used to read
a bitmap that is being concurrently modified (e.g. by set_bit() which boils
down to atomic_long_or()), then why isn't READ_ONCE() required? Right now,
test_bit takes a 'const volatile unsigned long *addr' argument, so I don't
see that you'll get a change in codegen except on alpha and, with this
erratum, arm32.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
