Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD881135E61
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:35:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UXrhKxUrNKWbn5CWY8hbjp9kBo92fyZCSwfPSLvsW48=; b=fyo17TCNNyRzAB
	GFHtCEvWbm7+ZOYvuDTNIZSQVpuw1hHjSqnRzfp1vz/Z6+or0i3KRBCgbZ0J+HVo1JfN78l2HsKOV
	lw6p8HMt69w2yXfTU+V2ZvTh9yTpC7s4D3s66fP/+e0qEx/dOqBlco8SyJyMK9eOJ2B8IiBVejrfp
	gImt2TnpkzPkBx865C/Y5XGvQeXM1Z56/cyg/uPpJ8azdmyQs7L96sRG4Qz3z1ddPuPM1tGtmZfKC
	BIkt8TLPXWi6TZfKAWWu+dOPclxwynohwnGBY1yDTqoTyvYiIXESQ9H2p0Gd+qYO6tjuKQtJEv/QT
	fVgVmDoFJN2QX6YdGOJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipamM-0002U2-TG; Thu, 09 Jan 2020 16:35:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipamC-0002TS-7X
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:35:19 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CD5E82067D;
 Thu,  9 Jan 2020 16:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578587715;
 bh=9+3mtYJWy2X0xjwrbEXAnSe2x3zw/Yj81pMwQqQ9vks=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KtA3WfN5PSZoZnmkkdr548BNSJ/JxU53pmGFvgmvs2zounvUgg8wLq1HHnFqfsaOb
 IHC9S/t/YRogckZg5LXlGF5g81wd9pQ25g+VIRns9xYdETOfIU6ZwG4ObtiA+IG1xC
 D+pYAVp+S3jYKkrvBwkmebtzhQCNuV/HsiZXKTu0=
Date: Thu, 9 Jan 2020 16:35:11 +0000
From: Will Deacon <will@kernel.org>
To: Stefano Stabellini <sstabellini@kernel.org>
Subject: Re: [PATCH v2] arm64: xen: Use modern annotations for assembly
 functions
Message-ID: <20200109163511.GA14742@willie-the-truck>
References: <20191219122532.6538-1-broonie@kernel.org>
 <alpine.DEB.2.21.1912191307410.9832@sstabellini-ThinkPad-T480s>
 <20200108155551.GA19197@willie-the-truck>
 <20200109155824.GG25655@arrakis.emea.arm.com>
 <alpine.DEB.2.21.2001090833280.18413@sstabellini-ThinkPad-T480s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2001090833280.18413@sstabellini-ThinkPad-T480s>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_083517_848899_15AD277A 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 Julien Grall <julien@xen.org>, linux-arm-kernel@lists.infradead.org,
 xen-devel@lists.xenproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 08:33:37AM -0800, Stefano Stabellini wrote:
> On Thu, 9 Jan 2020, Catalin Marinas wrote:
> > On Wed, Jan 08, 2020 at 03:55:52PM +0000, Will Deacon wrote:
> > > On Thu, Dec 19, 2019 at 01:07:50PM -0800, Stefano Stabellini wrote:
> > > > On Thu, 19 Dec 2019, Mark Brown wrote:
> > > > > In an effort to clarify and simplify the annotation of assembly functions
> > > > > in the kernel new macros have been introduced. These replace ENTRY and
> > > > > ENDPROC. Update the annotations in the xen code to the new macros.
> > > > > 
> > > > > Signed-off-by: Mark Brown <broonie@kernel.org>
> > > > > Reviewed-by: Julien Grall <julien@xen.org>
> > > > > Reviewed-by: Stefano Stabellini <sstabellini@kernel.org>
> > > > 
> > > > Thank you!
> > > > 
> > > > > ---
> > > > >  arch/arm64/xen/hypercall.S | 8 ++++----
> > > > >  1 file changed, 4 insertions(+), 4 deletions(-)
> > > 
> > > Is this going via the Xen tree, or shall I queue it along with the other
> > > asm annotation patches in the arm64 tree? I don't see it in -next yet.
> > 
> > Since it has been reviewed by the Xen maintainers, just queue it via the
> > arm64 tree.
> 
> Yes, that's fine by me

Done. Will update the branch tomorrow.

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
