Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CC11BC5F7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 19:02:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Scm/o5KDa1V3YYdkdT8+Q4bTPGXtR1FeBKFFP68JwU=; b=qExKSOtyQ8yszo
	i6iGdtk7nmo5+eGNl8U5EyMKQiMvH8EElZc8TKi+KqK3xVa+sQLqgLBUSSDhmiEaDPMwz12h3UoSr
	B8kWpV2JR9WM5rxYbT3dmZao/ZnGiVCJSoifsnOftStVKwXPxslVgmXP//9wrU4l4UnWMG2atYpPK
	5HTxLnADKzs6iz6tHmcvpHdUcP5PgFDY2NeIwhxWYObY0YTT6vynyLm8C6ZOD7oewyF7GuwrxwIoN
	mQBDWZZ6HF2Z04T9iceSH8gf1xBeV1nwb7aPU7Xj1m7RCXBPIVo7ojFh0L2lWt7sQGXsKVcyipadk
	V4HCeFBX8jw/IaAbQiFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTTcI-0008Fu-0V; Tue, 28 Apr 2020 17:01:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTTc9-0008FE-AP
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 17:01:46 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 051E620730;
 Tue, 28 Apr 2020 17:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588093305;
 bh=xcQPhPELoJFmrkYBG9DGhjiWZOwVw5TLM1bfB0MNv0o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CeyQtE+MJq+TQHXeEpQybkBUhgB1VpjAq4ANhMU0tPZMvw6Pzf+I+SVmcZCm5CJ9k
 cZ7BjROAZ+eHsAghzfoHDkWNDzBN7tLVfjRUtlPotAGFypSeC/kBqQfxe/w9dh5NS5
 FjO9iq000CUQqKuybnjyZPwchnyjs93uwhP+AJ6g=
Date: Tue, 28 Apr 2020 18:01:39 +0100
From: Will Deacon <will@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] arm64: iort: take _DMA methods into account for named
 components
Message-ID: <20200428170138.GF12697@willie-the-truck>
References: <20200404073047.17898-1-ardb@kernel.org>
 <20200420084051.GA12852@red-moon.cambridge.arm.com>
 <CAMj1kXHjeSFK7yH+pZCcdaK8Sdf+fhJFm+yn6JA3gH8jgbZwCA@mail.gmail.com>
 <20200420091342.GA6867@e121166-lin.cambridge.arm.com>
 <CAMj1kXHFJMyw6jYPd9puaN=xc1BYpF7+VnCMkBhMxBgDm9skgg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXHFJMyw6jYPd9puaN=xc1BYpF7+VnCMkBhMxBgDm9skgg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_100145_383450_308C7FEB 
X-CRM114-Status: GOOD (  20.70  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, robin.murphy@arm.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 11:14:50AM +0200, Ard Biesheuvel wrote:
> On Mon, 20 Apr 2020 at 11:13, Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com> wrote:
> >
> > On Mon, Apr 20, 2020 at 10:58:02AM +0200, Ard Biesheuvel wrote:
> > > On Mon, 20 Apr 2020 at 10:41, Lorenzo Pieralisi
> > > <lorenzo.pieralisi@arm.com> wrote:
> > > >
> > > > On Sat, Apr 04, 2020 at 09:30:47AM +0200, Ard Biesheuvel wrote:
> > > > > Where IORT nodes for named components can describe simple DMA limits
> > > > > expressed as the number of address bits a device can driver, _DMA methods
> > > > > in AML can express more complex topologies, involving DMA translation in
> > > > > particular.
> > > > >
> > > > > Currently, we only take this _DMA method into account if it appears on a
> > > > > ACPI device node describing a PCIe root complex, but it is perfectly
> > > > > acceptable to attach them to named components as well, so let's ensure
> > > > > we take them into account in those cases too.
> > > > >
> > > > > Reported-by: Andrei Warkentin <awarkentin@vmware.com>
> > > > > Fixes: 7ad4263980826e8b ("ACPI: Make acpi_dma_configure() DMA regions aware")
> > > > > Cc: <stable@vger.kernel.org> # v4.14+
> > > > > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > > > > ---
> > > > >  drivers/acpi/arm64/iort.c | 11 ++++-------
> > > > >  1 file changed, 4 insertions(+), 7 deletions(-)
> > > >
> > > > Only question is whether there is FW in the field with _DMA methods that
> > > > now we would start parsing (and hopefully everything will still work)
> > > > but for that the only choice is applying this patch and see, so:
> > > >
> > >
> > > Perhaps it would be better to call acpi_dma_get_range() on dev->parent then?
> >
> > I think it is fine as it is -  maybe we can hold off sending it all
> > the way to stable kernels until we are confident it does not cause
> > unintended breakage ?
> >
> > Anyway, thanks for putting it together.
> >
> > Minor nit: I'd make "arm64: iort:" in the subject "ACPI/IORT:"
> > just to keep logs uniform.
> >
> 
> OK, I'll respin and resend, with the ACPI folks on cc this time.

Thanks. I'm happy to queue this in the arm64 tree with the CC: stable
dropped for now, so please keep me on cc for v2.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
