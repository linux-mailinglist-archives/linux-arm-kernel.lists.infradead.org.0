Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20918135D46
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 16:58:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gU3QShM2jF8U12QEMPwyOLqnBUupwGyY7fakuKnXLr4=; b=gtBpc4rNJ7Ny9H
	KU0mlIu0kgeQ1VwLeX5gYzqC9fM7//qXiTCa23Vmxd6fms9lnZ3x5MXEC/bi6nHCQ6sYT4zMh8W3B
	X+wAMATZCpC9MmqFB98ERRiHgLosAod7b9CLOHGk75A85x5jiu9mepV6GYtMvjb/zZL0/QAhstwwg
	eyfAqR4tUazCoMedQlDZopoucOvbef42bMzVQwsvUq287dZKCToW+TlqSwCCQCVu6oBLXLotBorQU
	gefYMCJYWkvs25EW8W0+WxLCgjrpvFwLVScJqtb1UZ0CZ55yLeF0k/Lc6ogWdWo38QwejgJ+hbCBA
	ZRvDuLbph+EYeTITXSTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaCi-0002cH-AU; Thu, 09 Jan 2020 15:58:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaCb-0002bI-5o
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 15:58:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B95CB1FB;
 Thu,  9 Jan 2020 07:58:27 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 D477D3F703; Thu,  9 Jan 2020 07:58:26 -0800 (PST)
Date: Thu, 9 Jan 2020 15:58:24 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2] arm64: xen: Use modern annotations for assembly
 functions
Message-ID: <20200109155824.GG25655@arrakis.emea.arm.com>
References: <20191219122532.6538-1-broonie@kernel.org>
 <alpine.DEB.2.21.1912191307410.9832@sstabellini-ThinkPad-T480s>
 <20200108155551.GA19197@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200108155551.GA19197@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_075829_261687_2DC40BA4 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: xen-devel@lists.xenproject.org, Mark Brown <broonie@kernel.org>,
 Stefano Stabellini <sstabellini@kernel.org>, Julien Grall <julien@xen.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 08, 2020 at 03:55:52PM +0000, Will Deacon wrote:
> On Thu, Dec 19, 2019 at 01:07:50PM -0800, Stefano Stabellini wrote:
> > On Thu, 19 Dec 2019, Mark Brown wrote:
> > > In an effort to clarify and simplify the annotation of assembly functions
> > > in the kernel new macros have been introduced. These replace ENTRY and
> > > ENDPROC. Update the annotations in the xen code to the new macros.
> > > 
> > > Signed-off-by: Mark Brown <broonie@kernel.org>
> > > Reviewed-by: Julien Grall <julien@xen.org>
> > > Reviewed-by: Stefano Stabellini <sstabellini@kernel.org>
> > 
> > Thank you!
> > 
> > > ---
> > >  arch/arm64/xen/hypercall.S | 8 ++++----
> > >  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> Is this going via the Xen tree, or shall I queue it along with the other
> asm annotation patches in the arm64 tree? I don't see it in -next yet.

Since it has been reviewed by the Xen maintainers, just queue it via the
arm64 tree.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
