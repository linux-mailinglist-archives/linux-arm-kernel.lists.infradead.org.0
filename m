Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D8BA5653
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 14:38:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ECeQxCyj3r3ZC6Z1Au35QWnaXY+DjF52hTV7gBHZK88=; b=HH1mOuNYwHXCg3
	B71Om2RJwEcELl0iI9BpgRzoZkIKlSew1297rnrtSb8gl+53AL+DXdRXbATbulxc6Ylgo5WU38tNS
	/dvIJ1wtG7fhLhOYX3071HHEF23swFffG1i0/oEvd9IBS1BDTy542VXzDx9gvvxAhYlnWmUYB50lR
	RregARRDNYgnoNTC++PWnFJd3AGtvcGYV95LCQiAZB4nE30dWxpInR9XSTf7ltgV37V+7EiSgVQV+
	3zeZgvmh9LCGFXEg46O0VTeAl5QQO+705MwcusNKgLeOeKp4wbOY/L0YjdXsQ3YbHFjhGyNyEABOf
	8lqmjRbT3pDNAlgJqyPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4lax-0007U1-I3; Mon, 02 Sep 2019 12:38:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i4lai-0007Rk-Co
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 12:37:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 50E27337;
 Mon,  2 Sep 2019 05:37:50 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 31B413F246;
 Mon,  2 Sep 2019 05:37:49 -0700 (PDT)
Date: Mon, 2 Sep 2019 13:37:44 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: "Andrew F. Davis" <afd@ti.com>
Subject: Re: [PATCH] arm64: use x22 to save boot exception level
Message-ID: <20190902123601.GA8488@lakrids.cambridge.arm.com>
References: <20190828173318.12428-1-afd@ti.com>
 <20190829094720.GA44575@lakrids.cambridge.arm.com>
 <511d200c-9294-e562-5ba5-4f061965395d@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <511d200c-9294-e562-5ba5-4f061965395d@ti.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_053752_536071_7D6EB9F7 
X-CRM114-Status: GOOD (  20.44  )
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
Cc: Nishanth Menon <nm@ti.com>, Matthew Leach <matthew.leach@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 03:23:53PM -0400, Andrew F. Davis wrote:
> On 8/29/19 5:47 AM, Mark Rutland wrote:
> > On Wed, Aug 28, 2019 at 01:33:18PM -0400, Andrew F. Davis wrote:

> We are seeing is a write-back from L3 cache. Our bootloader writes the
> kernel image with caches on, then after turning off caching but before
> handing off to Linux it clean/invalidates all cache lines by set/way.
> This cleans out the L1/L2 but leaves dirty lines in L3. Our platform
> doesn't really have a good way to clean L3 as it only provides cache
> maintenance operations by VA, not by line, so we would need to clean
> every VA address manually..

Ensuring that the Image is clean to the PoC is required by the arm64
boot protocol, which states that maintenance by VA may be necessary in
the presence of a system cache. See:

https://www.kernel.org/doc/html/latest/arm64/booting.html

... which states:

| The MMU must be off. Instruction cache may be on or off. The address
| range corresponding to the loaded kernel image must be cleaned to the
| PoC. In the presence of a system cache or other coherent masters with
| caches enabled, this will typically require cache maintenance by VA
| rather than set/way operations. 

Please fix your bootloader to meet this requirement. The kernel is not
in a position to fix this up, e.g. as while the MMU is off instruction
fetches could fetch stale data from the PoC.

You only need to clean the kernel Image to the PoC, rather than all of
memory, so you should be able to do that with a loop of DC CVAC
instructions covering the VA range of the kernel Image.

> Also want to point out, although this isn't a problem for most platforms
> what this code does here, with writing to a location as non-cacheable,
> is not architecturally safe as the running cores that do the reads have
> this section marked as cacheable when they read, therefor you have
> mismatched attributes. When this happens like this according to the ARM
> ARM we should do a cache invalidate after the write *and* before the
> 
> I would like to work this fix from the U-Boot side also, but in parallel
> I would like to reduce the mismatched attributes as much as possible on
> the kernel side like done here. So yes, we still will have issue with
> __early_cpu_boot_status, but that only seems to be needed in the failure
> to boot case, I'd like to fix that up as well at some later point.

If you haven't cleaned the Image to the PoC, there's no guarantee that
any portion of it can be safely executed with the MMU off, so I don't
think that makes sense -- please fix your bootloader first.

I am aware that there are potential problems with mismatched attributes,
the primary issue here being unexpected-data-cache-hit. However, were
that to occur no amount of cache maintenance can save us in the presence
of a live cacheable alias. Practically speaking that's mainly a problem
for virtual environments.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
