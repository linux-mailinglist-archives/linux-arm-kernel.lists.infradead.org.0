Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C8535A96
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 12:39:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yw6z5x+wAIZ4dqZlkDHD3Yw3asjnmfXtfQDGXCUPOYM=; b=qpVsZk/p6hFuUG
	PWFnWuoHQnBNsuDZZnAR/tURlx+XaRbR1AfZYtHO6BMqYfClV5B0a+4KAq1N42eXk8wx74VDUliE2
	Bt3YOLUZiLje8Ew82JUc1mFOJ87jCvpAtrhXf4vGqe8MxRs8DJwR5Jy64rEHzs4tUytY2l301qf7v
	2n5vICd1LiQ7fl6bsgKModYIATpdwvKJnkiJ2DXHnSw3ffgCm4Q6J7XywRGz48sM6PI8/2PkRy8JD
	X0mGMWa453V0DApnlgdM87oeGGq+aGIBkdmKuDM8Jjc+DdIpwyiUXesscevGSKearNAURJxoTdikH
	o+JncWiSTQOOjaJWxUWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYTKE-0003oH-PF; Wed, 05 Jun 2019 10:39:22 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYTK8-0003nv-7o
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 10:39:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 42558374;
 Wed,  5 Jun 2019 03:39:15 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D56273F690;
 Wed,  5 Jun 2019 03:39:12 -0700 (PDT)
Date: Wed, 5 Jun 2019 11:38:40 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH 2/3] arm64: export acpi_psci_use_hvc
Message-ID: <20190605103840.GA30925@lakrids.cambridge.arm.com>
References: <20190604203100.15050-1-alisaidi@amazon.com>
 <20190604203100.15050-3-alisaidi@amazon.com>
 <20190605094031.GB28613@e107155-lin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605094031.GB28613@e107155-lin>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_033916_285541_04E429EC 
X-CRM114-Status: GOOD (  19.50  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Matt Mackall <mpm@selenic.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Ron Rindjunsky <ronrindj@amazon.com>,
 Ali Saidi <alisaidi@amazon.com>, Catalin Marinas <catalin.marinas@arm.com>,
 David Woodhouse <dwmw@amazon.co.uk>, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 05, 2019 at 10:40:31AM +0100, Sudeep Holla wrote:
> On Tue, Jun 04, 2019 at 08:30:59PM +0000, Ali Saidi wrote:
> > Allow a module that wants to make SMC calls to detect if it should be
> > using smc or hvc.
> >
> > Signed-off-by: Ali Saidi <alisaidi@amazon.com>
> > ---
> >  arch/arm64/kernel/acpi.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/arm64/kernel/acpi.c b/arch/arm64/kernel/acpi.c
> > index 803f0494dd3e..ea41c6541d3c 100644
> > --- a/arch/arm64/kernel/acpi.c
> > +++ b/arch/arm64/kernel/acpi.c
> > @@ -119,6 +119,7 @@ bool acpi_psci_use_hvc(void)
> >  {
> >  	return acpi_gbl_FADT.arm_boot_flags & ACPI_FADT_PSCI_USE_HVC;
> >  }
> > +EXPORT_SYMBOL_GPL(acpi_psci_use_hvc);
> >
> 
> I would rather have this in drivers/firmware/psci/psci.c checking the
> value of psci_ops.conduit so that it's not just ACPI specific and can
> be used on DT platforms too if required.

I'd also like this to not hook into PSCI internals. This code cares
about SMCCC, not PSCI. We also really shouldn't need to spread the
conduit management everywhere, too. We should be abel to have probe code
do:

	if (!is_smccc_1_1_available())
		goto fail_probe;

... and runtime code do:

	res = arm_smccc_1_1_call(...);

... which is much clearner.

I'd started cleaning that up [1], but I haven't had the chance to rebase
and repost it.

Ali, I assume your firmware has SMCCCv1.1+. Is that the case?

Thanks,
Mark.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git/log/?h=arm64/smccc-cleanup

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
