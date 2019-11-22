Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B950610716E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 12:33:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VQkPxYTljURF6ItccnuDET6bVSyjCI/TTyAifFQl1OM=; b=Ureq16UXdQ6T5C
	LWM4es3rus0oRsvZa+z/gPBVT9vAmw4vfjsr6bCUMu4+DJAgMDoHCJsVN8E3zNZdJO8khTBwTYOEX
	g+jWcvWYMwleBlQEIDEskx6NsmOwV5Dw3Li7py5ReIOXTH7+dJOT71KCAZLB9L4nRZDP+4svhtfeS
	qE1Hd1oFYpm9fF7Pi7d/Gr76Xz4YYnsx6gQeyLN2LK8LdAwinwbO3MFkuMlcr9/FPh6TK140Q3bB3
	zOx72m47pXJOb+VtUeiA6GgPT3D2kRZIujgm6/7S7PJpQEBg1cO5+vdGqcx8naV6Kzsot9kOmA+Sp
	SjTsAMMMUzC3b46iZuKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY7Bb-0004VW-K8; Fri, 22 Nov 2019 11:33:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY7BP-0004Ur-A7
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 11:33:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 508F8328;
 Fri, 22 Nov 2019 03:33:00 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 85CE73F703;
 Fri, 22 Nov 2019 03:32:59 -0800 (PST)
Date: Fri, 22 Nov 2019 11:32:57 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: KASAN_INLINE && patchable-function-entry
Message-ID: <20191122113257.GB15749@lakrids.cambridge.arm.com>
References: <20191121183630.GA3668@lakrids.cambridge.arm.com>
 <20191121142737.69978ef9@oasis.local.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121142737.69978ef9@oasis.local.home>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_033303_393625_5F3F9ABB 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Torsten Duwe <duwe@suse.de>, Ingo Molnar <mingo@redhat.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 21, 2019 at 02:27:37PM -0500, Steven Rostedt wrote:
> On Thu, 21 Nov 2019 18:36:32 +0000
> Mark Rutland <mark.rutland@arm.com> wrote:
> 
> > As a heads-up to the ftrace folk, I think it's possible to work around
> > this specific issue in the kernel by allowing the arch code to filter
> > out call sites at init time (probably in ftrace_init_nop()), but I
> > haven't put that together yet.
> 
> If you need to make some code invisible to ftrace at init time, it can
> be possible by setting the dyn_ftrace rec flag to DISABLED, but this
> can be cleared, which we would need a way to keep it from being
> cleared, which shouldn't be too hard.
> 
> Is that what you would be looking for?

That sounds about right, assuming that would also prevent those from
showing up in available_filter_functions, etc.

Another option would be to have arm64's ftrace_adjust_addr() detect this
case and return NULL, given we don't need to perform any call site
initialization for the redundant NOPs. I'm just not sure if we have all
the necessary information at that point, though.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
