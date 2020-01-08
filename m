Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86DE01346C1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 16:56:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xJSOY797+OzKOQzObCkQ5k94RGuxemc9XWH3a0qm/0E=; b=YJ4UNCQI5xGzMi
	0+Ey6ZrrSScq1Wgbw91KioQ9eMmmV785sLjTbB2x3ednByx5LVfdJ5CD9pzgGUyN8sk02xzEze8Cc
	3pZGN+vVycGjLSXqU/CtRPCN21n5EZLs3kNf2ywAIqASF80BDuazqA3FkQt5VG18SiYGPmLj2LSUQ
	rtwJdD67RUcq103mQUuO4i8SQuEzNzjukCkQlW6kcoPESpCsZ02cv7KJJLiT+dx6PNgBlqzNg7IDf
	lGC89e5DCwb4iFyeEXj6zV4hMp/mwNQnI9fERPCtYfbmGCoOmOLR0AyvNJFH9JkCu+FvNaThQ+6Tr
	OpN/FGSUpWTY4+lyLdFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipDgn-0005Ko-A2; Wed, 08 Jan 2020 15:56:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipDgf-0005KU-KE
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 15:56:02 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 20FA320705;
 Wed,  8 Jan 2020 15:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578498961;
 bh=mIybP4hijuAZNFwcJH7CrRcU+FHWkFZ73CZ/1r0Pnx0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bBQfwWd5QGEc5g3fjdlxVj5i8T0yuRUFW1nHnXreVZ6rKhUWkgeyR/be309xRqBoy
 vt9G7u3FScxOFMirZal2juXZLYjHg3H+CYEp6QhS6Qfz3DVUB3Vx26vAK18ZgJSKR/
 57HDbFtFVhlCDGP9Lh70YRVOtgV2uC/2nfFuPIaQ=
Date: Wed, 8 Jan 2020 15:55:52 +0000
From: Will Deacon <will@kernel.org>
To: Stefano Stabellini <sstabellini@kernel.org>
Subject: Re: [PATCH v2] arm64: xen: Use modern annotations for assembly
 functions
Message-ID: <20200108155551.GA19197@willie-the-truck>
References: <20191219122532.6538-1-broonie@kernel.org>
 <alpine.DEB.2.21.1912191307410.9832@sstabellini-ThinkPad-T480s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1912191307410.9832@sstabellini-ThinkPad-T480s>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_075601_685581_D3B75BDD 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 Julien Grall <julien@xen.org>, linux-arm-kernel@lists.infradead.org,
 xen-devel@lists.xenproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 01:07:50PM -0800, Stefano Stabellini wrote:
> On Thu, 19 Dec 2019, Mark Brown wrote:
> > In an effort to clarify and simplify the annotation of assembly functions
> > in the kernel new macros have been introduced. These replace ENTRY and
> > ENDPROC. Update the annotations in the xen code to the new macros.
> > 
> > Signed-off-by: Mark Brown <broonie@kernel.org>
> > Reviewed-by: Julien Grall <julien@xen.org>
> > Reviewed-by: Stefano Stabellini <sstabellini@kernel.org>
> 
> Thank you!
> 
> > ---
> >  arch/arm64/xen/hypercall.S | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)

Is this going via the Xen tree, or shall I queue it along with the other
asm annotation patches in the arm64 tree? I don't see it in -next yet.

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
