Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4FC13BE48
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 12:17:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jKWTxkwLePayNib0A6Y481+GXpvkzxTvYBmDPkc2tXg=; b=KQVlu21EjIQF1O
	CMpAj0FnL5NfSGXSI9otveHWbAdnxX348XgNrM0XCWsuJCH0WWEr84xNqltJUZxTArH6vVf65/oza
	MqbPMuvgtw/MH66ezqAnJR676fwRaF51TZl4QbUE3rx8JniYz99fu++LOGP4FOWvN7WIYdAskfL/y
	LsABOdq3j47/hKdgOmPpXUezyBW0u5AzmGLbtnItmtNDIBrOh2KbNdbEnGnsRecIn5dGFNCmIY89E
	ZmIkTJQpaCx4T8Fl6FgiW1E2TfHgovuEBkyCoHDVuF+Rala4XVd8rxGrzBSggb74GT/7ts3SplzFA
	C5aTVHc8XPtc6o65RnzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irgfb-0003t7-Oe; Wed, 15 Jan 2020 11:17:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irgfQ-0003sJ-Nm
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 11:17:02 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5465B2187F;
 Wed, 15 Jan 2020 11:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579087016;
 bh=Y1xXj9ILsoE37rRr+v9R8IGf4VVprVtBcflp3G8QO38=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B1zw50IwKGR5nw2aUVUeXlhcyigUs0zq6uOrG6JH9dh9S86Ixm+HoaFw3S5KnXvZA
 wq83b6FDzZOf5mf90Ri0Im780cjoQEexvO8uXxweqCzlJqcVDAHtJUWP3xenweCiuj
 1R+mgyZnDFDSV+G9JeL+rHC9Yj/7xUdhxsHZdNTY=
Date: Wed, 15 Jan 2020 11:16:51 +0000
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v10 1/3] arm64: Implement archrandom.h for ARMv8.5-RNG
Message-ID: <20200115111651.GE21692@willie-the-truck>
References: <20200110122341.8445-1-broonie@kernel.org>
 <20200110122341.8445-2-broonie@kernel.org>
 <20200114174432.GG2579@willie-the-truck>
 <CAKv+Gu9pVZZm_gvsKfrCG_cM=1TmAAH+sj06GzT+Ag9Ej7__fg@mail.gmail.com>
 <20200115091651.GB21692@willie-the-truck>
 <CAKv+Gu-NZBo2q4_Yh068UENun0mkLitN473D-w7KBFXVpfdKqA@mail.gmail.com>
 <20200115110720.GG3897@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200115110720.GG3897@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_031656_791540_36656E89 
X-CRM114-Status: GOOD (  14.39  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 11:07:20AM +0000, Mark Brown wrote:
> On Wed, Jan 15, 2020 at 10:24:21AM +0100, Ard Biesheuvel wrote:
> > On Wed, 15 Jan 2020 at 10:16, Will Deacon <will@kernel.org> wrote:
> 
> > > I see your argument, but I was just going on the side of consistency because
> > > we're continuing to expose other features as HWCAPs when the capability is
> > > just a proxy for the cpuid field. I was in favour of stopping the addition
> > > of such HWCAPs years ago, but I couldn't convince Catalin ;)
> 
> > > The way I see it, we'll soon run out of HWCAP2 bits and then we'll have
> > > our hand forced.
> 
> > I don't have a strong opinion either way.
> 
> Me either, or at least not enough to object to doing it - Will?
> Catalin?

Unless we all agree to stop adding new HWCAPs, then I think you may as well
add a new one here (i.e. I don't think this discussion should derail your
work).

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
