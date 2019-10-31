Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B10FEB104
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 14:17:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DRF44rTUCtQNOE1mQDXfJ7k2F9uhzTFRkUlDIjq8rvY=; b=gFebbLC1ONugY5
	7OiESMOqCMCz6N9zvIcPQYlFRz3HWgqesJUfVCHf40kry5s0hIkUkoHTLvxVWryIGBsOvi+CQYIoT
	9KzW6K3GCfg/VO9JgB2U6udDUroQLASLchMiORbOOY2G4a8zJCVhmIZcdc5ZteuScRYRhmusoCUE9
	2jqWDcgJ6gYZiefhNGi09QvG/ovAff6IsblXOt6mIIXq2Ix3+ibGuzmQunSLD8bpXPY1QstvrgDwW
	N8KeQBV6lD7d4PZokvROUD+Pr/vQjYBwns9evJ5kwYqz6H8ubuKKuqN4Lq0A704DusvXtQuUpCotW
	Ei2BSUrOa7LCQqcYbnXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQAK2-0002Mv-MM; Thu, 31 Oct 2019 13:17:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQAJq-0002MG-JP
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 13:16:55 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D78E520873;
 Thu, 31 Oct 2019 13:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572527814;
 bh=ZQ0V22YoSa9c7EKuj3yIdixpoPPlTAbI84D2KqgffqY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0fMUQ/WsRACP6CLkTRGspWvAEX7hCe2P2F1Rbk1u0/Xv5aCIO8QOTzjkEFZzOxO68
 lfZmVNz6KEOYg0uILdfJPZ66g8PYoJ3H8NsbHwuf77Hszsd3ajX+S5pTMfrJEY97+Q
 CD4KbBrTXpLkvf2z5ikEgBqzsu+zJ2pwrq35jpCM=
Date: Thu, 31 Oct 2019 13:16:49 +0000
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [RFC] arm64: cpufeatures: Add support for tlbi range maintenance
Message-ID: <20191031131649.GB27196@willie-the-truck>
References: <1572417685-32955-1-git-send-email-zhangshaokun@hisilicon.com>
 <20191030173359.GF13309@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030173359.GF13309@arrakis.emea.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_061654_662267_A937738D 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Tangnianyao <tangnianyao@huawei.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 05:34:00PM +0000, Catalin Marinas wrote:
> On Wed, Oct 30, 2019 at 02:41:25PM +0800, Shaokun Zhang wrote:
> > ARMv8.4-TLBI provides TLBI invalidation instruction that apply to a
> > range of input addresses. This patch adds support for this feature.
> > And provide another implementation for flush_tlb_range with tlbi
> > range instruction.
> 
> Do you have any performance numbers in favour of this patch? Last time
> we looked, it didn't really matter for Linux since most user TLBI ranges
> were 1 or 2 pages long. Of course you can write some mprotect() loop to
> show that it matters but I'm rather interested in real world impact.

The other major concern I have with this patch relates to the feature in
general: my understanding is that probing for the presence of the
instruction at the CPU level tells you nothing about whether or not it's
support by the interconnect/DVM implementation.

There's this ominous and badly-worded note in the Arm ARM:

  | The set of masters containing TLBs that can be affected by the TLB range
  | maintenance instructions are defined by the system architecture. This means
  | that all masters in a system might not contain TLBs within the defined
  | shareability domains.

which I think makes this practically useless without something like a
firmware-based discoverability mechanism.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
