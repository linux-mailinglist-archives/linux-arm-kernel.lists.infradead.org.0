Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF08710F246
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 22:39:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/LY7d+JR7eBMsogpjuqEia5W97TVv03yeytufDW8Aw=; b=iX14O3QTLHT9YV
	Xsj3juYyEEmchvyuDpvfBU0Gc1IzWaCWdjNayD4gBbpRfddo30iDdTpu8L8mFW0VRKMvRBxN2gz8I
	CsWd1MkVyXzB+uO80mSpvwu9zpjqpSXwMrsx8tvt73aSanu9ym29IfBsYsCikcaJGXdFhymo7lthF
	fthHrxaRrgOd2u/gnP4p92+bNbwJlzoAcGFv/RPca52FL/njWTkZciBtlAXIk+leADeKGiLDXInvd
	45qYXe1zLKmTFuPAfCnnoleppLc305/pEehE8ALCKx9i/EU7FyxsBDpvYQ7j5wYm2HTkdCD+pN4Bc
	9QvnQotK+sTYm4qK/rrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibtQ1-0005cQ-IY; Mon, 02 Dec 2019 21:39:45 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibtPu-0005bH-KT
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 21:39:40 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 3E5C880FC;
 Mon,  2 Dec 2019 21:40:10 +0000 (UTC)
Date: Mon, 2 Dec 2019 13:39:29 -0800
From: Tony Lindgren <tony@atomide.com>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH] ARM: OMAP2+: Fix warnings with broken
 omap2_set_init_voltage()
Message-ID: <20191202213929.GB35479@atomide.com>
References: <20190924233222.52757-1-tony@atomide.com>
 <8FFD44DB-73F8-4807-91E1-C97DA8F781BA@goldelico.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8FFD44DB-73F8-4807-91E1-C97DA8F781BA@goldelico.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_133938_711730_362B084E 
X-CRM114-Status: GOOD (  21.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Nishanth Menon <nm@ti.com>,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, =?utf-8?B?QW5kcsOp?= Roth <neolynx@gmail.com>,
 Andreas Kemnade <andreas@kemnade.info>,
 Linux-OMAP <linux-omap@vger.kernel.org>, Adam Ford <aford173@gmail.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

* H. Nikolaus Schaller <hns@goldelico.com> [191202 21:10]:
> > Am 25.09.2019 um 01:32 schrieb Tony Lindgren <tony@atomide.com>:
> > Guys, please check and ack if we can really do this to get rid of some
> > pointless dmesg -l3 errors without affecting the ongoing cpufreq and
> > voltage work.
> 
> unfortunately we did not yet test in combination with the 1GHz OPP
> patches for omap3630 (queued for v5.5-rc1) and it appears that this
> patch breaks the 1GHz OPP.
> 
> The symptom is that it works fine on a dm3730 with 800MHz rating
> but results in spurious kernel panics, stack corruption, virtual memory
> failures, OneNAND DMA timeouts etc. on a dm3730 with 1GHz speed grade.

Hmm yeah OK, I was a bit worried about this breaking something.

> We can also re-add the "turbo-mode" tags in the omap36xx.dtsi (or
> remove the 1GHz OPP) and can then boot with 800MHz max. clock. But
> enabling boost (echo 1 >/sys/devices/system/cpu/cpufreq/boost) makes
> the problem and its symptoms appear almost immediately.
> 
> After some scratching our heads we found that v5.3.7 is still good and
> v5.3.8 is bad. A bisect of our tree (which includes the 1GHz OPP) did
> point to this patch whichwas apparently already backported to v5.3.8 and
> v5.4.
> 
> So I assume that the code removed here enabled or initialized something
> we need for safe 1GHz transitions. Maybe the ABB-LDO. Or it looks up the
> vdd regulator and initializes it earlier than without this code. Maybe
> it also (pre-)initializes some clk which could now be left uninitialized
> too long?

It was just doing voltdm_lookup() and clk_get_rate() and then failed
dev_pm_opp_find_freq_ceil(), but I don't see what these might affect..

> Note that seeing the log message indicates that voltdm_scale() and
> dev_pm_opp_get_voltage() are not called, but all functions before could
> be with side-effects.

Yes that is strange. There's no clk_prepare() before we proceed to
call clk_get_rate() either, not sure if that matter here though.

> v5.5-rc1 will likely fail right from the beginning (only on 1GHz rated
> omap36xx) because it makes the combination of this patch and 1GHz OPP
> public (linux-next should already fail but it appears that nobody has
> tested).

OK

> Any ideas how to fix? Before I try to do a revert and then add goto exit;
> after each function call and see which ones are essential for 1GHz.

If you have things reproducable, care to try to narrow the issue down
a bit by trying see which parts of the old omap2_set_init_voltage()
fix the issue?

The issue should be there somewhere in the few lines of code before
dev_pm_opp_find_freq_ceil(), right?

It would be good to understand what's going on before reverting or
fixing things condering that a revert would add back code that has
it's own errors and fails to init :)

Another thing to check is if the dev instance is actually the right
one we had in omap2_set_init_voltage() vs the dts dev instance as
we use that with dev_pm_opp_find_freq_ceil().

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
