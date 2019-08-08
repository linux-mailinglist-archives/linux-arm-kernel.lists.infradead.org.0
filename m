Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0344A860D7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 13:28:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L4amm5jC1RDbLoZ/lmoKYvxJxoryE9ZUekRNZFuqV+M=; b=jjq/4S/0d2feJC
	aKwtkG4Bc4AQuw7OjTPuzm9VxBwmOyR7cjPHMJcuDZvo9NtonGMYGRBit97iF1D1L9mIJe5l9gDlU
	hCs9M5Ygjea9txVti9OnuWe39ICCv1EbYMtY6/SQ6unxhRs4UDheoVi8Kow8uUuzB/aaxcDFG0I46
	S8m1d3QC/+JetfkjTm9RCLEGKR3ySiAX3JEmXzSFj47tGXG5IP2GcgORcmOt2LeVsA7V3oCU+ygbY
	sls81l9KQOlmA7D43XGQN/pu+0Zz3Nk5xzFWGtyPpax8I1y3hXoSpZsVP78R2UtIOUBWFKtb1ChMn
	R+bZNe342Hioaw0788rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvgaz-0005ff-I8; Thu, 08 Aug 2019 11:28:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvgal-0005fB-BK
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 11:28:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6F53F28;
 Thu,  8 Aug 2019 04:28:20 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 880083F694;
 Thu,  8 Aug 2019 04:28:19 -0700 (PDT)
Date: Thu, 8 Aug 2019 12:28:17 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Stefan Agner <stefan@agner.ch>
Subject: Re: Detecting AArch32 support from a AArch64 process in user space
Message-ID: <20190808112817.GH10425@arm.com>
References: <ffbb92107af81971c03ec832cf25116c@agner.ch>
 <20190808093522.GG10425@arm.com>
 <09a5d28f865ef0bd034ba9acbe1b5334@agner.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <09a5d28f865ef0bd034ba9acbe1b5334@agner.ch>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_042823_436039_8A6DB2E3 
X-CRM114-Status: GOOD (  17.32  )
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, ynorov@caviumnetworks.com,
 will.deacon@arm.com, linux-arm-kernel@lists.infradead.org,
 suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 12:30:03PM +0200, Stefan Agner wrote:
> On 2019-08-08 11:35, Dave Martin wrote:
> > On Thu, Aug 08, 2019 at 09:36:42AM +0200, Stefan Agner wrote:
> >> [resend this time with the correct mailing list address]
> >>
> >> Hello,
> >>
> >> I am trying to detect whether an ARMv8 system running in AArch64 state
> >> supports AArch32 state from a user space process. The arm64_features[]
> >> in
> > 
> > Why?  Is this just for diagnostic purposes, or some programmatic reason?
> 
> The use case I currently have in mind is to decide whether to show
> 32-bit ARM Docker images in a UI (or arm32v7 images how it is nowadays
> called in Docker land).
> 
> > 
> > In the latter case, just try to do what ever it is you want to do that
> > depends on AArch32: if it fails, you don't have AArch32.
> 
> 
> Yeah one option I considered was just fetching a minimalistic arm32v7
> container, but still seems a bit excessive.

Ah, right.

So, I guess trying to set the personality or trying to exec a trivial
32-bit binary would answer that.

You could ship a trivial static binary with docker for that: trying
to run a whole container is probably overkill.

If trying to set the personality is more convenient though, that seems
an equally good approach in practice.

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
