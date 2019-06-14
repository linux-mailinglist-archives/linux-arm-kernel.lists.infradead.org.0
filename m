Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BCB45A4F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 12:24:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OKTg6OjDIa6/mF5e6yXe+AW0zRubmeOuepScdqaFpAQ=; b=oSWlF9FyezsZjq
	ClzrscP/LRjKK4lcYFHzok25SMyjdM6kDV4rvYr8WNhyy4YpRDQ17DyaBaOZ3SymHA5t/vNxDYzVe
	7QzGScbjkM+LFplCJYhjtuaHMCqJfvnfLOMYbbSgDmj4rQriVzzhM4a8dwaa+kLs3k1kxEuH8tmMj
	NI9ESsyDUekRo+wGHnKyOkQaegMPmhS94KNDROsP9EeEzoIZL6rRGwkV8C6QmZY1c+UDTWJ4FdICE
	Q/rBgBQTntvUKNjjNBcm3ychjGuMhkXKLtr1GxmZgILfRfHo67eTxbV9DA23Y5CjeMIGOHnlIh1pP
	oOu5LkuuRqAZZ4CRHO/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbjNW-0006qn-Mo; Fri, 14 Jun 2019 10:24:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbjNH-0006pz-2d
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 10:24:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8C3953EF;
 Fri, 14 Jun 2019 03:23:58 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E7F333F246;
 Fri, 14 Jun 2019 03:25:40 -0700 (PDT)
Date: Fri, 14 Jun 2019 11:23:55 +0100
From: Will Deacon <will.deacon@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH] arm64/sve: <uapi/asm/ptrace.h> should not depend on
 <uapi/linux/prctl.h>
Message-ID: <20190614102355.GE10659@fuggles.cambridge.arm.com>
References: <20190613163801.21949-1-aastier@freebox.fr>
 <20190613171432.GA2790@e103592.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613171432.GA2790@e103592.cambridge.arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_032402_960294_27BF2971 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, Anisse Astier <aastier@freebox.fr>,
 Catalin Marinas <catalin.marinas@arm.com>, Rich Felker <dalias@aerifal.cx>,
 linux-kernel@vger.kernel.org, Kristina Martsenko <kristina.martsenko@arm.com>,
 "Dmitry V . Levin" <ldv@altlinux.org>, Ricardo Salveti <ricardo@foundries.io>,
 Richard Henderson <richard.henderson@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 06:14:44PM +0100, Dave Martin wrote:
> On Thu, Jun 13, 2019 at 06:38:01PM +0200, Anisse Astier wrote:
> >   */
> > -#define SVE_PT_VL_INHERIT		(PR_SVE_VL_INHERIT >> 16)
> > -#define SVE_PT_VL_ONEXEC		(PR_SVE_SET_VL_ONEXEC >> 16)
> > +#define SVE_PT_VL_INHERIT		(1 << 1) /* PR_SVE_VL_INHERIT */
> > +#define SVE_PT_VL_ONEXEC		(1 << 2) /* PR_SVE_SET_VL_ONEXEC */
> 
> Makes sense, but...
> 
> Since sve_context.h was already introduced to solve a closely related
> problem, I wonder whether we can provide shadow definitions there,
> similarly to way the arm64/include/uapi/asm/ptrace.h definitions are
> derived.  Although it's a slight abuse of that header, I think that
> would be my preferred approach.

Yes, that sounds better to me as well. Please send a v2!

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
