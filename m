Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F9713D82B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 11:48:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=isrMgq2KE4LjtD5J2H0wPlhrDueLcUIrBIB7FvmXMP0=; b=qnhq1jPhNmWcrN
	5YGHcQHCgJvF9O6MdLdeZWTmPb48EaoaBxWTUXUYRCan2VffFoJElt0DcdcFr3RvDfS0KSoumuDnm
	dA6lKYiZIkfNzOKxNWux+DFkJ66wOMl/06PGSM0y4DcKiuw3Ioj00VRKfP/UDQLHGajkc3oJ+U39b
	8fMdL0paHcy2fCT7RlwVy389s7wpq+EMUUe2npCgM3nqLZIKFTW0cZAyiI5vGhaj3sKTmZOlZbCsj
	XSU98/LRDcBZcrmvOzP6eAalrWA4yQWXdWKdmvTJDbmTUE/r78UmT9C0BZe7wjyoD7Y4tAAfwQYtU
	n4EtpHzJwiVQq2lQPr9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is2h5-0002KI-S3; Thu, 16 Jan 2020 10:48:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is2gq-0002Iw-Fb
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 10:47:58 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0B05E205F4;
 Thu, 16 Jan 2020 10:47:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579171671;
 bh=UdGMbdry9FO+CwnA8duoUtdCiqKW74vOro3QldKWGEI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=y36CublJYdb+gAUpr1THN6gtFzA+rYFet1+/+lybPdjg6sLMXpBBL6D3u6KwwNEyM
 Ty1MZot+GXFlhVjv0StXKTYDaTI0MCSBXpgiY25epD02ZX4JtS46YkvuFR1CDQSq84
 Ev3zkc60gd+jqw8BGBDcuH7pHwVmB8/64mcreyL0=
Date: Thu, 16 Jan 2020 10:47:46 +0000
From: Will Deacon <will@kernel.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v5 0/3] arm64: Workaround for Cortex-A55 erratum 1530923
Message-ID: <20200116104746.GB14761@willie-the-truck>
References: <20191216115631.17804-1-steven.price@arm.com>
 <20200114164543.GD2579@willie-the-truck>
 <3292551ef07b2c5354d48faedad849ff@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3292551ef07b2c5354d48faedad849ff@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_024752_543032_D23F1AC3 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Steven Price <steven.price@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 07:28:49AM +0000, Marc Zyngier wrote:
> On 2020-01-14 16:45, Will Deacon wrote:
> > On Mon, Dec 16, 2019 at 11:56:28AM +0000, Steven Price wrote:
> > > Version 5 is a rebasing of version 4 (no changes).
> > > 
> > > This series enables a workaround for Cortex-A55 erratum 1530923. The
> > > erratum potentially allows TLB entries to be allocated as a result
> > > of a
> > > speculative AT instruction. This may happen in the middle of a guest
> > > world switch while the relevant VMSA configuration is in an
> > > inconsistent
> > > state, leading to erroneous content being allocated into TLBs.
> > > 
> > > There are existing workarounds for similar issues, 1165522 is
> > > effectively the same, and 1319367/1319537 is similar but without VHE
> > > support.  Rather than add to the selection of errata, the first patch
> > > renames 1165522 to WORKAROUND_SPECULATIVE_AT which can be reused (in
> > > the
> > > final patch) for 1530923.
> > > 
> > > The workaround for errata 1319367 and 1319537 although similar cannot
> > > use VHE (not available on those CPUs) so cannot share the workaround.
> > > However, to keep some sense of symmetry the workaround is renamed to
> > > SPECULATIVE_AT_NVHE.
> > > 
> > > Changes since v4:
> > >  * Rebased to v5.5-rc1
> > 
> > Looks fine to me. Marc, are you ok with me queueing this via arm64
> > (that's
> > where the existing workarounds came from), or would you prefer to take
> > them
> > via kvm-arm?
> 
> Please go ahead and take it (with my ack) via the arm64 tree.

Will do, thanks!

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
