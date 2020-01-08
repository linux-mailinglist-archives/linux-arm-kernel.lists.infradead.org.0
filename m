Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E846B13400F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 12:16:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=65QfTLtLhuOJgI/bkr5mkkNd+fivexR1J9mffzzXY3k=; b=uZBZWlVx9ohtQj
	BeU1jNFSRSMXGgXbJ0C45Isi9y1QDotqx6QcjLcd+WFvGzHE8yMRjYeXM4/vBFcYaW5WDNklVGhZZ
	FVU+IPSi+dv19vH90ct06oVodx4wWUKYXlJOkIreL8hxeeJXNcfP0RKlgQXgRL0oA0U6U8EzFyg+w
	PaWeT5vExjZIXA5vZGeGHCr6xMQ2TITLoXcMb+o4LfG2Kjk5yijFlZR7+CIO0Ek8rac+7Wt093Evx
	pcyajnW+h+IBAbBDm1w/lBFnk/mrDhgBIgFeQhLF0R/vYVAXQ67YvgwMM4BtCJBwpmnT3rR6RPFiq
	UrNdQoQ2Y8yfT+HbJNYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip9JY-0000HI-6A; Wed, 08 Jan 2020 11:15:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip9JP-0000Gp-7S
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 11:15:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3D05D30E;
 Wed,  8 Jan 2020 03:15:41 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C5EDA3F703;
 Wed,  8 Jan 2020 03:15:39 -0800 (PST)
Date: Wed, 8 Jan 2020 11:15:37 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 1/3] KVM: arm64: correct PSTATE on exception entry
Message-ID: <20200108111537.GB49203@lakrids.cambridge.arm.com>
References: <20191220150549.31948-1-mark.rutland@arm.com>
 <20191220150549.31948-2-mark.rutland@arm.com>
 <bace4197-a723-5312-3990-84232aab30d9@arm.com>
 <86zhfbgnzf.wl-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <86zhfbgnzf.wl-maz@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_031543_311185_A9B329B6 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Peter Maydell <peter.maydell@linaro.org>, Drew Jones <drjones@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will@kernel.org>,
 stable@vger.kernel.org, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Alexandru Elisei <alexandru.elisei@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Dec 29, 2019 at 03:17:40PM +0000, Marc Zyngier wrote:
> On Fri, 27 Dec 2019 13:01:57 +0000,
> Alexandru Elisei <alexandru.elisei@arm.com> wrote:
> > On 12/20/19 3:05 PM, Mark Rutland wrote:
> > > +	// PSTATE.PAN is unchanged unless overridden by SCTLR_ELx.SPAN
> > > +	// See ARM DDI 0487E.a, page D5-2578.
> > > +	new |= (old & PSR_PAN_BIT);
> > > +	if (sctlr & SCTLR_EL1_SPAN)
> > > +		new |= PSR_PAN_BIT;
> > 
> > On page D13-3264, it is stated that the PAN bit is set unconditionally if
> > SCTLR_EL1.SPAN is clear, not set.
> 
> Indeed. Given that when ARMv8.1-PAN is not implemented, SCTLR_EL1[23]
> is RES1, it seems surprising to force PAN based on this bit being set.
> 
> I've now dropped this series from my tree until Mark has a chance to
> clarify this.

Sorry for the mess; I'm fixing up the patches now and looking out for
any similar mistakes.

I'll try to have a v2 out by the end of today.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
