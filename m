Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5996B1BC005
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 15:41:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RQtuwXQH4YdU6W8hCwOzIXK9d117t5LSv2ZT1wY0cI0=; b=qYycXRQhkvQSC/
	oJuIP5xUpk05kJRFNhPZwgBMwBaF1TC88UQ5T3SxrJCwStmKsqggnY2sE1/PuTeieqpW1d2iuQZ2t
	Wi+w0Y4lJe/MoPuVzXd1O5PDR+U6Yls8EsyNS5sEXalY/VqqttdAnupVaOUePytiag1/b9F8XvWZT
	DYC8z2XPb6YsjnwevEtmu0JR5y9sIciPcRfOXzuU3X9erPYX+xgzPdq6eEqHWnJ1IYYTsvaLzujuI
	u25ZnR7Qt7iA9vgmwOkqp8F5dtLnCFalxifhP0SQUMeQj0VMQaWxIfvAlp+O103KWU4DkIkNk1K89
	xVqFvdkQAGJ8CFEg9SdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQUU-0007oq-0q; Tue, 28 Apr 2020 13:41:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQUH-0007oN-5Q
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 13:41:26 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AFB85206D6;
 Tue, 28 Apr 2020 13:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588081284;
 bh=32XblPO5eWtVQsa5Z1EdHpcI+szWzWP9tJmego4SeIU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HCn/T2L6kaGp5DFj+3z9NI7YbGvJhFhBqs9O5oi6IgW3nPKtSClBZOY+/uvqHcKDs
 Bs751IUB4B8N7WZE0sctYvX3D25RPKQsDkb+SHMk5W2gR0zmfkXI9QuquGE2FdOl7O
 egH1woT0GREwSQXHaQ3nKE6T9CkI/91rszZLICcM=
Date: Tue, 28 Apr 2020 14:41:20 +0100
From: Will Deacon <will@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] arm64: set TEXT_OFFSET to 0x0 in preparation for
 removing it entirely
Message-ID: <20200428134119.GI6791@willie-the-truck>
References: <20200415082922.32709-1-ardb@kernel.org>
 <20200415083900.GA12621@willie-the-truck>
 <CAMj1kXFLte7R2zXRLRBxetS1WTYaGTonOC0nvyzK+be8EsfDrA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXFLte7R2zXRLRBxetS1WTYaGTonOC0nvyzK+be8EsfDrA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_064125_232648_B8269899 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Catalin Marinas <catalin.marinas@arm.com>, james.morse@arm.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 10:48:55AM +0200, Ard Biesheuvel wrote:
> On Wed, 15 Apr 2020 at 10:39, Will Deacon <will@kernel.org> wrote:
> >
> > On Wed, Apr 15, 2020 at 10:29:22AM +0200, Ard Biesheuvel wrote:
> > > TEXT_OFFSET on arm64 is a historical artifact from the early days of
> > > the arm64 port where the boot protocol was basically 'copy this image
> > > to the base of memory + 512k', giving us 512 KB of guaranteed BSS space
> > > to put the swapper page tables. When the arm64 port was merged for
> > > v3.10, the Image header already carried the actual value of TEXT_OFFSET,
> > > to allow the bootloader to discover it dynamically rather than hardcode
> > > it to 512 KB.
> >
> > Hey, we're older than that! (3.7)
> >
> 
> Ah right. But the header field was added in v3.10 - I'll fix that in
> v2. All way before my time anyway :-)

Looks like that's the only change needed, so I'll just make it when I apply.

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
