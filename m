Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A8943553
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 12:57:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QD1jYWSafBy9jEFjr4FZeDtKksTdluM8A9XU0+ja8Fw=; b=jtHOfketGm39kz
	T/pDay/N8IiZdnA8Wh0yp9XG9xuoNzAs/m3cVxuI+4/fQvbllkNnu1VfQAfpxxm5KYwQhePM8y80O
	O9HgY7Cn3F3NMYt108kdL/MkqKjSE83nYgjZ4LmK8lOrky6bwJNNCw+f6lm42IS0W6J6l91d8Q2HH
	wzvSG3wLCd68m6nrdHEyxP/y+yvTfPPtM95qkjMcujNY1WGKIdTAR3+ouRmhreCl6kxS8PtRPYLx/
	EuUEC623iAzzCIT5XwN6KbZtJLUGTrOvO/zJYPnX13FavAQDivtxJma/Bv/Uni2p74+KkJQIIj1Hk
	TIYbHIrUhIRotJg46N+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbNPj-0001cD-O7; Thu, 13 Jun 2019 10:57:03 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbNPb-0001bj-Av
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 10:56:57 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x5DAuVOr010532;
 Thu, 13 Jun 2019 05:56:32 -0500
Message-ID: <5e3e3f21b53f45cb115b4c04e04dc7557c63982d.camel@kernel.crashing.org>
Subject: Re: [PATCH+DISCUSSION] irqchip: armada-370-xp: Remove redundant ops
 assignment
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Marc Zyngier <marc.zyngier@arm.com>
Date: Thu, 13 Jun 2019 20:56:31 +1000
In-Reply-To: <86muilc012.wl-marc.zyngier@arm.com>
References: <e4c7b434452775d00b6621012ad5e263076b3fcf.camel@kernel.crashing.org>
 <86muilc012.wl-marc.zyngier@arm.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_035655_526383_8FE3389D 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>,
 Gregory CLEMENT <gregory.clement@free-electrons.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-06-13 at 10:22 +0100, Marc Zyngier wrote:
> 
> It looks to me that masking at the PCI level is rather superfluous as
> long as the MSI controller HW has the capability to mask the interrupt
> on a per MSI basis. After all, most non MSI-X endpoint lack support
> for masking of individual vectors, so I think that we should just mask
> things at the irqchip level. This is also consistent with what you'd
> have to do for non-PCI MSI, where nothing standardises the MSI
> masking.
> 
> I think this is in effect a split in responsibilities:
> 
> - the end-point driver should (directly or indirectly) control the
>   interrupt generation at the end-point level,
> 
> - the MSI controller driver should control the signalling of the MSI
>   to the CPU.
> 
> The only case where we should rely on masking interrupts at the
> end-point level is when the MSI controller doesn't provide a method to
> do so (hopefully a rare exception).

While I would tend to agree, I'm also wary of standardizing on
something which isn't what x86 does today :-)

You know what happens when we break them... interestingly enough they
(like quite a few other drivers) don't even bother trying to mask at
the APIC level unless I misread the code. That means that for endpoints
that don't support masking, they just get those MSIs and
"ignore" them...

But I'll look into it, see what the patch looks like.

I've also looked at trying to make the "inner domain" more generic but
that's looking a tad trickier... not giving up yet though :-)

Cheers,
Ben.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
