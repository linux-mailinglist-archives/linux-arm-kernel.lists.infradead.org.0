Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF17D95B17
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 11:37:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ACl+cOEVp/2a7fIgof6wcB0ADb/0ZbJnjlqta4Qc9mM=; b=rtTzFJvApn/WN3
	MIjtp1apq4vBsxMuzhggpG+5mi+Y8IQxorSFVDw1Tk3fwv7s83EzIQUJfvhHE0JgqQmHIDz2mwDzP
	1egmbki6+uiP9tLiv6sVWq9myM7/xp+hm2kvgiSzJaxl4wT/Fs2TPWqkTB8O3hM0OCUUVtpxxzCk3
	mRZse6C12u3oGJbHpBmTq7yQtE/NEAyD6m9cJHrkX8rprt7sz8yYv6rHBh5tjPpMc0z7xh/zUs1RS
	kOYrnUiLxkUvyybVizn+XdPkjnKKU1Ws2FPqQY0E8KGemPiink0f7UZ3JBx06TmOMbdQJZ5c8lHEb
	MffqWvPs6h5rwOqSn8yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i00Zz-0005yl-Rj; Tue, 20 Aug 2019 09:37:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i00Zn-0005y3-3F
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 09:37:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BAEAA344;
 Tue, 20 Aug 2019 02:37:12 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EE2F13F706;
 Tue, 20 Aug 2019 02:37:11 -0700 (PDT)
Date: Tue, 20 Aug 2019 10:37:09 +0100
From: Will Deacon <will.deacon@arm.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [GIT PULL] arm64: Second round of fixes for -rc2
Message-ID: <20190820093709.GD14085@fuggles.cambridge.arm.com>
References: <20190524174357.GC9120@fuggles.cambridge.arm.com>
 <CAHk-=wijeJ5OjswsUkm0Fns=0kd7kgRo98uPsJE3HQfwP5mBRA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wijeJ5OjswsUkm0Fns=0kd7kgRo98uPsJE3HQfwP5mBRA@mail.gmail.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_023715_184592_C5B08227 
X-CRM114-Status: GOOD (  11.41  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 11:14:02AM -0700, Linus Torvalds wrote:
> Only tangentially relevant to this pull request:
> 
> On Fri, May 24, 2019 at 10:44 AM Will Deacon <will.deacon@arm.com> wrote:
> >
> > - Add workaround for Cortex-A76 CPU erratum #1463225
> > - Handle Cortex-A76/Neoverse-N1 erratum #1418040 w/ existing workaround
> 
> could you perhaps talk to somebody inside ARM about making the errata
> documentation publicly available?
> 
> I'm not sure why it seems to want an account at arm.com, and as a
> result some pretty fundamental development tools ("let me google
> that") don't work.

Thanks to the tech comms folks at Arm, this should now be available and
work is ongoing to open up more of the documentation too.

For example, the A76 SDEN is here:

	https://static.docs.arm.com/sden885749/d/Arm_Cortex-A76_MP052_Software_Developer_Errata_Notice_v16.0.pdf

and if you hammer "cortex a76 1463225" into google, then it shows up
after the Linux hits.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
