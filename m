Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BBAE135E5B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:34:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BsQxZcy28wkiaZmOl9puJfx9twP0dfCx7cokrKMQ4IE=; b=SQUfgaUrNGCa2c
	a9DBfbrr+mr5m1lRWrxsvr1GXZmryf9Q7sJ7CFyroixR5RLQYKo+ygn9eo4rgdq1aVo01x1HwhPgh
	pi0QnBjHJIeqBth6fWi3rA9Crdc3Gv0h2Dx0V2qBzuIx2HuRtFRRWbHMIMhuaqdJr1dvuECcZajnh
	VvBE8KkS7F4hN5hHy08AQ2mESPhkHKMkPBGSwnGzBKF38hEU4P0qrHkyXCv7Zi8WZYTmcL6xghy0v
	FEQ5VVuQF6A2hGegWEqNsVtvsT1vnHkxrcckKp/4TgRi8EEFHp49LH1vqb6NvUnc+VvhQ+dnRirQR
	dr1CYUxcq9KPDMfKoP6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaks-0008V3-5b; Thu, 09 Jan 2020 16:33:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaki-0008Uf-Dj
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:33:45 +0000
Received: from localhost (c-67-164-102-47.hsd1.ca.comcast.net [67.164.102.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 827B220721;
 Thu,  9 Jan 2020 16:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578587623;
 bh=0PvoObVIe31z/I11WaTniqIm+DpgJaepCXn4s0n62Rc=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=RNGp5ZZmEJnSlqvfJe5nm/ypHkLJV9g9kK5hilHSNrsib6h0YIdUZplI4kU6w5QfR
 57esxv7xBqXygIOv7orp+wk+yGXSosbUsALeZQmRL3LYo6TTrw5wp/MyJTGwvFDI+x
 tXwqZf1PTZY0BDwZaLK1xky4mBbok6DgBpyloxRw=
Date: Thu, 9 Jan 2020 08:33:37 -0800 (PST)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v2] arm64: xen: Use modern annotations for assembly
 functions
In-Reply-To: <20200109155824.GG25655@arrakis.emea.arm.com>
Message-ID: <alpine.DEB.2.21.2001090833280.18413@sstabellini-ThinkPad-T480s>
References: <20191219122532.6538-1-broonie@kernel.org>
 <alpine.DEB.2.21.1912191307410.9832@sstabellini-ThinkPad-T480s>
 <20200108155551.GA19197@willie-the-truck>
 <20200109155824.GG25655@arrakis.emea.arm.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_083344_476440_C4A165F8 
X-CRM114-Status: GOOD (  15.19  )
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
Cc: Stefano Stabellini <sstabellini@kernel.org>, Julien Grall <julien@xen.org>,
 Mark Brown <broonie@kernel.org>, xen-devel@lists.xenproject.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 9 Jan 2020, Catalin Marinas wrote:
> On Wed, Jan 08, 2020 at 03:55:52PM +0000, Will Deacon wrote:
> > On Thu, Dec 19, 2019 at 01:07:50PM -0800, Stefano Stabellini wrote:
> > > On Thu, 19 Dec 2019, Mark Brown wrote:
> > > > In an effort to clarify and simplify the annotation of assembly functions
> > > > in the kernel new macros have been introduced. These replace ENTRY and
> > > > ENDPROC. Update the annotations in the xen code to the new macros.
> > > > 
> > > > Signed-off-by: Mark Brown <broonie@kernel.org>
> > > > Reviewed-by: Julien Grall <julien@xen.org>
> > > > Reviewed-by: Stefano Stabellini <sstabellini@kernel.org>
> > > 
> > > Thank you!
> > > 
> > > > ---
> > > >  arch/arm64/xen/hypercall.S | 8 ++++----
> > > >  1 file changed, 4 insertions(+), 4 deletions(-)
> > 
> > Is this going via the Xen tree, or shall I queue it along with the other
> > asm annotation patches in the arm64 tree? I don't see it in -next yet.
> 
> Since it has been reviewed by the Xen maintainers, just queue it via the
> arm64 tree.

Yes, that's fine by me

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
