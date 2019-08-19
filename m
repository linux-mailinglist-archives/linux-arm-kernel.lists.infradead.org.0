Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B29292192
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 12:45:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NWwMqOoQoZx9wh9niPcFC924qVhm1TED+CeLjwQY7wg=; b=qNi6x4YGIay0fa
	4TLj57T4RJQk/Tweuy2ix6uK23bX4lILUjNYueEDFvwk4wbScFdi2WWeZbsaogZ3lCp3GBtuAqNpY
	RoKrQIQpy4ZwRNXrAzW2lCt/kXOQ0dC3TzLb++QH/Xe2DN+8N7cFy5e7HKuKm9pQpVFh6d8nY8OYU
	yIdk4+MMZ4p+1Fgr1S3OnO5ga6h45zBq6Ev/kozV2XKFlF7mZA3YOeaGoiaGwW4s1vfrmGMHi8hsY
	oaT3I3VZ/XnAsbDfEfe6Cu1Tpk+AoDLmdovuqskUVdyNF+YyAyncV68NabxWbJI5T2eQVbI+cVHes
	9x9zuzF6R7Zy51cRmoig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzf9l-0003xq-Ql; Mon, 19 Aug 2019 10:44:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzf9C-0003xP-Ao
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 10:44:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5B917344;
 Mon, 19 Aug 2019 03:44:18 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 072A83F246;
 Mon, 19 Aug 2019 03:44:16 -0700 (PDT)
Date: Mon, 19 Aug 2019 11:44:14 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCHv3 6/6] smccc: make 1.1 macros value-returning
Message-ID: <20190819104414.GC7482@lakrids.cambridge.arm.com>
References: <20190809132245.43505-1-mark.rutland@arm.com>
 <20190809132245.43505-7-mark.rutland@arm.com>
 <20190815164243.2hzydvjly6iwr3jf@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190815164243.2hzydvjly6iwr3jf@willie-the-truck>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_034422_413379_385D2F78 
X-CRM114-Status: GOOD (  12.77  )
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
Cc: lorenzo.pieralisi@arm.com, suzuki.poulose@arm.com, marc.zyngier@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, linux@armlinux.org.uk,
 james.morse@arm.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 05:42:44PM +0100, Will Deacon wrote:
> On Fri, Aug 09, 2019 at 02:22:45PM +0100, Mark Rutland wrote:
> > The arm_smccc_1_1_{smc,hvc}() macros for inline invocation take a res
> > pointer as their final argument, matching the out-of-line SMCCC
> > invocation functions.
> > 
> > However, the inline invocation macros are variadic, so it's easy to mess
> > up passsing the correct parameters.
> 
> passing
> 
> > Instead, let's make them value-returning, which is less confusing.
> 
> I'm not completely sure I agree with you here because, as far as I can
> tell, it means that we have a different calling convention for 1.0 (i.e.
> arm_smccc_smc()) and 1.1 (i.e. arm_smccc_1_1_smc).
> 
> Can we do the same for 1.0 as well or am I missing something?

I will take a look; I think the QC quirk is the only thing that gets in
the way.

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
