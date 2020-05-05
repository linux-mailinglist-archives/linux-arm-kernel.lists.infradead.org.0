Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 130CA1C5CF9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 18:07:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CAhLs0mDyifFjgqO4VlVry0HBHzd7KGSorBnSlnGntw=; b=NYJH4a0CcgUmuY
	wJ9GSIf+QHUzIfCodiC8zp7kdTXezlj/bvNyiahQypcv0eKupYfJsTz/iofbPlUzjppcY4KSNy9FS
	Xu+btkLZ+XUDIP4mCbPTXJoSrw8k3xr6c9VC5A3SzZOcZv+okJhsM0r89PgY1GSU6KecFFVvhkUhA
	Vn4xmfO516PV6ANw5kbKp5fiLthjYMCKsmOUQyTmkH+uJU70RRZUwPz0DVXFK85tCSeX8WL4iePrW
	FA1naT+lGtNIp5IcZIdfA/0TX5rv34Vh+dgx/AXzBebObBrq8CJSlw8DiNZ/04wixV0Rdo0iR2cRV
	x/bEqvREtsljUic1+kEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW064-0007S7-Vc; Tue, 05 May 2020 16:07:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW05x-0007R3-GF
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 16:06:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DE2251FB;
 Tue,  5 May 2020 09:06:55 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 050A63F71F;
 Tue,  5 May 2020 09:06:54 -0700 (PDT)
Date: Tue, 5 May 2020 17:06:52 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 2/2] syscall.2: arm64: Fix syscall number register size
Message-ID: <20200505160652.GP30377@arm.com>
References: <1588692280-15878-1-git-send-email-Dave.Martin@arm.com>
 <1588692280-15878-3-git-send-email-Dave.Martin@arm.com>
 <20200505155457.GE24239@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505155457.GE24239@willie-the-truck>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_090657_579802_2BC38070 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-man@vger.kernel.org,
 Michael Kerrisk <mtk.manpages@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 04:54:57PM +0100, Will Deacon wrote:
> On Tue, May 05, 2020 at 04:24:40PM +0100, Dave Martin wrote:
> > arm64 is currently documented as receiving the syscall number in
> > x8.
> > 
> > While this is the correct register, the syscall number is a 32-bit
> > integer.  Bits [63:32] are ignored by the kernel.
> > 
> > So it is more correct to say "w8".
> > 
> > Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> > ---
> >  man2/syscall.2 | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/man2/syscall.2 b/man2/syscall.2
> > index 53ab40e..d724651 100644
> > --- a/man2/syscall.2
> > +++ b/man2/syscall.2
> > @@ -203,7 +203,7 @@ alpha	callsys	v0	v0	a4	a3	1, 6
> >  arc	trap0	r8	r0	-	-
> >  arm/OABI	swi NR	-	r0	-	-	2
> >  arm/EABI	swi 0x0	r7	r0	r1	-
> > -arm64	svc #0	x8	x0	x1	-
> > +arm64	svc #0	w8	x0	x1	-
> 
> Acked-by: Will Deacon <will@kernel.org>

Thanks!

---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
