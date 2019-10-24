Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B04E2DEB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 11:51:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fAHIQt/GJuugZtvH4tmwH6IKo/eW6bCmCdrZDrYaWBE=; b=YIentN1Z8DfdUI
	WeG0F3L3aPqMnP5qdvMpeyLalFgv1ouOYP6novCCDFx634oWmd6P4rv37D/5WvFHDmryRXWgo61Q9
	wt2altxAzLMapA05G/LRlQqo9qeDn+5fg7UVDxx7vs7YreLS7WTetgWST8oNKmt019Tc94l+hWenC
	gV+1/2nQRUfcdSzxMzKo/y2BoTKQp4YNzWzAemmx2mI3QtKoBWQD6w/haIFPOQ0K91Kq0TYUsRjR6
	I8u74LF7oWKlimOtA/12oLklQj6WXOdU64RFNWX4UcsOFijdgSpT/WVZiqWUmMmUJ76D9T+3h2Ni1
	uD5iS3N+Bm2r6q16RSmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNZm0-0003Z3-Ao; Thu, 24 Oct 2019 09:51:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNZlr-0003Yd-7f; Thu, 24 Oct 2019 09:51:08 +0000
Received: from rapoport-lnx (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A218C20856;
 Thu, 24 Oct 2019 09:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571910666;
 bh=/+Ql7TLHSuqRBTRatle/8UuavLp8M4wg90FkQYvX1ZA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fHWraPApPelpUnhz80IdJ6qZ3Jw5R++RrLd4l7PfuOCafzao2ErCM/1ApQ91lUK7E
 0uYS2e9f/H3CF0FLyqr+11wZLk0ellanlE4rDMkvpBd62/g9WmtWFtWw6GDYvxb0sb
 DxnPSUgn8n7OenmDPbNDDb0vZF9lfVpAL0VLc18U=
Date: Thu, 24 Oct 2019 12:50:54 +0300
From: Mike Rapoport <rppt@kernel.org>
To: Peter Rosin <peda@axentia.se>
Subject: Re: [PATCH 08/12] parisc: use pgtable-nopXd instead of 4level-fixup
Message-ID: <20191024095053.GC12281@rapoport-lnx>
References: <1571822941-29776-9-git-send-email-rppt@kernel.org>
 <20191024093451.15161-1-peda@axentia.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024093451.15161-1-peda@axentia.se>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_025107_296321_225CE2C4 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "James.Bottomley@HansenPartnership.com"
 <James.Bottomley@HansenPartnership.com>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>,
 "deanbo422@gmail.com" <deanbo422@gmail.com>,
 "gerg@linux-m68k.org" <gerg@linux-m68k.org>,
 "anton.ivanov@cambridgegreys.com" <anton.ivanov@cambridgegreys.com>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "linux-c6x-dev@linux-c6x.org" <linux-c6x-dev@linux-c6x.org>,
 "richard@nod.at" <richard@nod.at>, "deller@gmx.de" <deller@gmx.de>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "geert@linux-m68k.org" <geert@linux-m68k.org>,
 "msalter@redhat.com" <msalter@redhat.com>,
 "mattst88@gmail.com" <mattst88@gmail.com>,
 "jdike@addtoit.com" <jdike@addtoit.com>, "sammy@sammy.net" <sammy@sammy.net>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "Vineet.Gupta1@synopsys.com" <Vineet.Gupta1@synopsys.com>,
 "linux-um@lists.infradead.org" <linux-um@lists.infradead.org>,
 "linux-m68k@lists.linux-m68k.org" <linux-m68k@lists.linux-m68k.org>,
 "green.hu@gmail.com" <green.hu@gmail.com>,
 "kirill@shutemov.name" <kirill@shutemov.name>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "monstr@monstr.eu" <monstr@monstr.eu>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-alpha@vger.kernel.org" <linux-alpha@vger.kernel.org>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "torvalds@linux-foundation.org" <torvalds@linux-foundation.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 09:35:12AM +0000, Peter Rosin wrote:
> On 2019-10-23 12:28, Mike Rapoport <rppt@kernel.org> wrote:
> > parisc has two or three levels of page tables and can use appropriate
> > pgtable-nopXd and folding of the upper layers.
> >
> > Replace usage of include/asm-generic/4level-fixup.h and explicit
> > definitions of __PAGETABLE_PxD_FOLDED in parisc with
> > include/asm-generic/pgtable-nopmd.h for two-level configurations and with
> > include/asm-generic/pgtable-nopmd.h for three-lelve configurations and
> 
> I think you mean .../pgtable-nopud.h in the latter case.

Right, thanks!
 
> Cheers,
> Peter

-- 
Sincerely yours,
Mike.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
