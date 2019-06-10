Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 073F53B334
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 12:32:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rjP8EbXCYvombEXmaX0/vOOiK3cldjEkg2zK1bIIaOI=; b=kvTOpkgkvZoUu2
	L7tOEoky47sa0NnldqfTP+JaJ0fyP0hQkjTAPGSJ06SOgqNhs5adowXpPxphll4LlYINsZ8CCheV4
	DAUHSde4uPz69Z65vejMkBC2IkJjwdN15ZRKZ3Vbdq5C7AsiLOBSvBFLIUhYPNpSF1yy457CwUlGC
	2KhWAOZXwZP/PmQnwcjAVVPFSdtIm/3m1AtrX759YqK0/aqQ35Tw4NC7GeHIQza3ZqqS0ZWS7c/Jl
	sOv6vQoBIwhyFDwshJR1yhBODSjX2zb2uOgehe0KBpE2hN0YxXjG/cqO37W69RO+1vuNbvPgvcm5K
	six+ydqkJ0AYDw5hBNeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haHaz-0008Mr-72; Mon, 10 Jun 2019 10:32:09 +0000
Received: from mail.codeweavers.com ([50.203.203.244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haHaq-0008MC-I5
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 10:32:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=codeweavers.com; s=6377696661; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r1QCXvsFSkr/gu9OZ1c2/BfPNle5pK0zTIVRxi0RTVk=; b=hjRROG+sFrE9zFuM8Vg02v27O
 FDAbrF9af8NdndoODfFLAOuxiRPtskkK//A2yPN7rMVtXXfjqy2nquqVAFGRrrlctF0cBo6tq86nF
 i18hKpNeWqZwPmeQllUbNGCa5spznXUBbErcn4I9xgPQepcYoVDaO8pH6i3y1BaBLsuCY=;
Received: from merlot.physics.ox.ac.uk ([163.1.241.98] helo=merlot)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <huw@codeweavers.com>)
 id 1haHbL-0004O8-8w; Mon, 10 Jun 2019 05:32:32 -0500
Received: from daviesh by merlot with local (Exim 4.90_1)
 (envelope-from <huw@codeweavers.com>)
 id 1haHai-0003ER-2l; Mon, 10 Jun 2019 11:31:52 +0100
Date: Mon, 10 Jun 2019 11:31:52 +0100
From: Huw Davies <huw@codeweavers.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v6 01/19] kernel: Standardize vdso_datapage
Message-ID: <20190610103151.GD11076@merlot.physics.ox.ac.uk>
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <20190530141531.43462-2-vincenzo.frascino@arm.com>
 <20190610092751.GA11076@merlot.physics.ox.ac.uk>
 <58cedde2-0d54-7d2d-f519-77cb71f543fd@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <58cedde2-0d54-7d2d-f519-77cb71f543fd@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: -106.0
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jun 10, 2019 at 11:17:48AM +0100, Vincenzo Frascino
 wrote: > On 10/06/2019 10:27, Huw Davies wrote: > > On Thu, May 30, 2019
 at 03:15:13PM +0100, Vincenzo Frascino wrote: > >> --- /dev/null > [...] 
 Content analysis details:   (-106.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -100 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_033200_657706_D2F6E507 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linux-mips@vger.kernel.org, Dmitry Safonov <0x7f454c46@gmail.com>,
 Paul Burton <paul.burton@mips.com>, linux-kselftest@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Mark Salyzyn <salyzyn@android.com>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 11:17:48AM +0100, Vincenzo Frascino wrote:
> On 10/06/2019 10:27, Huw Davies wrote:
> > On Thu, May 30, 2019 at 03:15:13PM +0100, Vincenzo Frascino wrote:
> >> --- /dev/null
> >> +++ b/include/vdso/datapage.h
> >> @@ -0,0 +1,91 @@
> >> +/* SPDX-License-Identifier: GPL-2.0 */
> >> +#ifndef __VDSO_DATAPAGE_H
> >> +#define __VDSO_DATAPAGE_H
> >> +
> >> +#ifdef __KERNEL__
> >> +
> >> +#ifndef __ASSEMBLY__
> >> +
> >> +#include <linux/bits.h>
> >> +#include <linux/time.h>
> >> +#include <linux/types.h>
> >> +
> >> +#define VDSO_BASES	(CLOCK_TAI + 1)
> >> +#define VDSO_HRES	(BIT(CLOCK_REALTIME)		| \
> >> +			 BIT(CLOCK_MONOTONIC)		| \
> >> +			 BIT(CLOCK_BOOTTIME)		| \
> >> +			 BIT(CLOCK_TAI))
> >> +#define VDSO_COARSE	(BIT(CLOCK_REALTIME_COARSE)	| \
> >> +			 BIT(CLOCK_MONOTONIC_COARSE))
> >> +#define VDSO_RAW	(BIT(CLOCK_MONOTONIC_RAW))
> >> +
> >> +#define CS_HRES_COARSE	0
> >> +#define CS_RAW		1
> > 
> > CS_HRES_COARSE seems like a confusing name choice to me.  What you
> > really mean is not RAW.
> > 
> > How about CS_ADJ to indicate that its updated by adjtime?
> > CS_XTIME might be another option.
> > 
> 
> I divided the timers in 3 sets (HRES, COARSE, RAW), CS_HRES_COARSE refers to the
> first two and CS_RAW to the third. I will ad a comment to explain the logic in
> the next iteration.

I'm thinking ahead about a possible CLOCK_MONOTONIC_RAW_COARSE (which
would be useful at least for Wine).  In that case you'd have four clock
types non-raw and raw, each with either hres or coarse.

Huw.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
