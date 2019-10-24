Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D21CE2C96
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 10:51:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rr/S7gcHYd1uUe50cH+0GHGPkvAQM815Hl2eokMGqso=; b=aQN+uJkyfwxu+Y
	8OFe0enhwd7ShSnVmul809UjPLPXGAmpC/Y6qfl8JGGmoZhWYUxo30Qld4wUkJdCABJgeg9w5IhQR
	vVYa/YbWTFXY/x9OVqQ1ETiOtJyJFtGIVO2faTDtq8z3y8QY8zvNUL5JE3yx74/pxpVZ52PVHEZzG
	Ux9+z0YfLm+9GivW21dOiSSIVyjD8ke2IWfcFr4wUFfOCDribuuyrtNM/vAEfArGiRcdgD6eqsPjn
	ctku85ZxPSQ7oYVsH1e2h9QHIetpfyRoJhr5PlfQn1uAeiy8unF1b5XU7KLJMmoyFOF8zobMLPeL4
	blgj0GBEcKgIwADAhkJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNYqT-0007mA-FS; Thu, 24 Oct 2019 08:51:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNYqG-0007lZ-L2; Thu, 24 Oct 2019 08:51:37 +0000
Received: from rapoport-lnx (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C60620684;
 Thu, 24 Oct 2019 08:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571907096;
 bh=yne+q2OXrSImKWVSiY3azP5LbAIN48uZobw79sAWlFU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xpwdM9yMJT3vwdJLbOI5KIPEEpEYHfqEfSqqKjUi5ZSSU5mfa5OWBh563R00Omteo
 1c6jhSHIeQS869/swtQtZqJJbFD6Wthojjuy5NInms0kvWdnjQNTpkjIm45S4+i5rs
 whgYfB8T+i91x0MJgndRbMS9GGWr99hizp8ehhpU=
Date: Thu, 24 Oct 2019 11:51:24 +0300
From: Mike Rapoport <rppt@kernel.org>
To: Rolf Eike Beer <eike-kernel@sf-tec.de>
Subject: Re: [PATCH 08/12] parisc: use pgtable-nopXd instead of 4level-fixup
Message-ID: <20191024085123.GB12281@rapoport-lnx>
References: <1571822941-29776-1-git-send-email-rppt@kernel.org>
 <1571822941-29776-9-git-send-email-rppt@kernel.org>
 <70339cfc547e2fa0f6b98fefb1b1a9fa@sf-tec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <70339cfc547e2fa0f6b98fefb1b1a9fa@sf-tec.de>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_015136_715548_D7CE93FC 
X-CRM114-Status: GOOD (  12.78  )
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
Cc: linux-parisc-owner@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 linux-mm@kvack.org, sparclinux@vger.kernel.org,
 Vincent Chen <deanbo422@gmail.com>, Greg Ungerer <gerg@linux-m68k.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, linux-arch@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, Richard Weinberger <richard@nod.at>,
 Helge Deller <deller@gmx.de>, Russell King <linux@armlinux.org.uk>,
 Mike Rapoport <rppt@linux.ibm.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Mark Salter <msalter@redhat.com>, Matt Turner <mattst88@gmail.com>,
 Jeff Dike <jdike@addtoit.com>, Sam Creasey <sammy@sammy.net>,
 Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-um@lists.infradead.org, linux-m68k@lists.linux-m68k.org,
 Greentime Hu <green.hu@gmail.com>, "Kirill A. Shutemov" <kirill@shutemov.name>,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-alpha@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 12:20:29PM +0200, Rolf Eike Beer wrote:
> >diff --git a/arch/parisc/include/asm/page.h
> >b/arch/parisc/include/asm/page.h
> >index 93caf17..1d339ee 100644
> >--- a/arch/parisc/include/asm/page.h
> >+++ b/arch/parisc/include/asm/page.h
> >@@ -42,48 +42,54 @@ typedef struct { unsigned long pte; } pte_t; /*
> >either 32 or 64bit */
> >
> > /* NOTE: even on 64 bits, these entries are __u32 because we allocate
> >  * the pmd and pgd in ZONE_DMA (i.e. under 4GB) */
> >-typedef struct { __u32 pmd; } pmd_t;
> > typedef struct { __u32 pgd; } pgd_t;
> > typedef struct { unsigned long pgprot; } pgprot_t;
> >
> >-#define pte_val(x)	((x).pte)
> >-/* These do not work lvalues, so make sure we don't use them as such. */
> >+#if CONFIG_PGTABLE_LEVELS == 3
> >+typedef struct { __u32 pmd; } pmd_t;
> >+#define __pmd(x)	((pmd_t) { (x) } )
> >+/* pXd_val() do not work lvalues, so make sure we don't use them as such.
> >*/
> 
> For me it sounds like there is something missing, maybe an "as" before
> lvalues?

Right, "as lvalues" makes sense.

> And it was "These", so plural, and now it is singular, so do -> does?

There's also pgd_val() a few lines below, it's just not visible in the
patch.
 
> Eike

-- 
Sincerely yours,
Mike.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
