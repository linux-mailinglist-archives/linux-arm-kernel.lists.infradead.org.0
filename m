Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6593E11D670
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 19:56:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6BMPiSxdBG4MFpCJrfMif7hp7GQs5wCavUmvCYJorBk=; b=uMkRT0bFuZGQzg
	xbxFO+XPG0EDBQ/cECg7j7PQ5+tkb3uL0+gyDS6X0E+Vc0psaMuQ8EJUkzno2wiSYJCXRAD+cRFq2
	p2CgoG3RzH5MxLV445SmfveEvmsPKvJoTkbFEKYVLiRXJALSAmTpuIOhLXX7EtrhLDnmvAMzCtT52
	3uxsvSy9C4lWw0jsxtSP5CsdejwOzO66aOK9fFh8AoE81WUA6rjuyvrJNF8wGUl8OuGIBCAssRY04
	+ZAJL7Z+a9f+sSt0RPC/wiTT/WY9CVnH8BOw0oGPzzj4ljhnm5X7ucHkWOC4IaMDS7eZeK1IJf4Lg
	b476IeZ7yJ6mQbudxd+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifTdT-00071i-CY; Thu, 12 Dec 2019 18:56:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifTdI-00071E-4f
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 18:56:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 38FF0328;
 Thu, 12 Dec 2019 10:56:15 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 707233F718;
 Thu, 12 Dec 2019 10:56:13 -0800 (PST)
Date: Thu, 12 Dec 2019 18:56:11 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: "Andrew F. Davis" <afd@ti.com>
Subject: Re: arm_smccc_smc as generic smc interface?
Message-ID: <20191212185524.GL46910@lakrids.cambridge.arm.com>
References: <20191209180752.GJ35479@atomide.com>
 <CAHUa44EJAjL+MGqgKd6YvQAg0z4hRYXb9MeTqsTYhAe-RBZt+g@mail.gmail.com>
 <20191210153840.GL35479@atomide.com>
 <20191212142305.GD46910@lakrids.cambridge.arm.com>
 <622404c8-8ca7-11bb-64fe-14d280827cd2@ti.com>
 <20191212155811.GG46910@lakrids.cambridge.arm.com>
 <20191212171257.GB16364@willie-the-truck>
 <b8a942db-71b3-d581-fddc-40278de3ef87@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b8a942db-71b3-d581-fddc-40278de3ef87@ti.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_105616_270640_BE46EE7C 
X-CRM114-Status: GOOD (  26.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Sumit Garg <sumit.garg@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 Tony Lindgren <tony@atomide.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Volodymyr Babchuk <vlad.babchuk@gmail.com>, Olof Johansson <olof@lixom.net>,
 Russell King <rmk+kernel@armlinux.org.uk>, Marc Zyngier <maz@kernel.org>,
 Andy Gross <andy.gross@linaro.org>, Colin Ian King <colin.king@canonical.com>,
 Will Deacon <will@kernel.org>, Jens Wiklander <jens.wiklander@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 12:47:37PM -0500, Andrew F. Davis wrote:
> On 12/12/19 12:12 PM, Will Deacon wrote:
> > On Thu, Dec 12, 2019 at 03:58:12PM +0000, Mark Rutland wrote:
> >> On Thu, Dec 12, 2019 at 10:23:47AM -0500, Andrew F. Davis wrote:
> >>> On 12/12/19 9:23 AM, Mark Rutland wrote:
> >>>> On Tue, Dec 10, 2019 at 07:38:40AM -0800, Tony Lindgren wrote:
> >>>>> * Jens Wiklander <jens.wiklander@linaro.org> [191210 08:10]:
> >>>>>> On Mon, Dec 9, 2019 at 7:07 PM Tony Lindgren <tony@atomide.com> wrote:
> >>>>>> In <arm-smccc.h> there's already been made room for some Qualcomm
> >>>>>> quirks, perhaps it's possible to use or extend it to cover the TI
> >>>>>> cases you have in mind.
> >>>>>
> >>>>> Yeah that's my thinking too as long as there are no issues using
> >>>>> arm_smccc_smc() for non-optee cases.
> >>>>
> >>>> I don't think that we wan't to turn the SMCCC code itself into a generic
> >>>> SMC interface, and this boils down to how divergent the TI calling
> >>>> convention is from SMCCC. What are the differences?
> >>>
> >>> There are three levels of differences based on the the type of legacy
> >>> SMC call we make, first type omap_smc1():
> >>>
> >>>  * r2-r12 are clobbered vs SMCCC only saving r4-r7
> >>>  * r12 used as command ID vs SMCCC using r0
> >>>
> >>> omap_smc2(), in addition to the above incompatibilities:
> >>>
> >>>  * r6 must contain #0xff
> >>>  * r12 used as command ID again
> >>>
> >>> omap_smc3(), in addition to the above incompatibilities:
> >>>
> >>>  * Uses SMC #1 vs #0
> >>>
> >>> My personal opinion would be to leave arm_smccc_smc() alone and only
> >>> allow SMCCC complaint callers to use it (even QCOM's quark should not
> >>> have gone in if the plan was not to allow the same exceptions for
> >>> others). 
> >>
> >> I agree. Given the above examples, I'd rather have this separated out.
> >> While I'd have preferred to not have the QCOM quirk, that's simply
> >> something we have to live with now.
> > 
> > It's not ABI is it, so we could split that out as well? That said, my
> > recollection of the qcom quirk is that they were mostly following the
> > SMCCC spec, but just with an extra register to save/restore, which is
> > a lot less invasive than the stuff above.

IIRC they misunderstood the spec rather than having a deliberately
divergent calling convention.

> Two problems with the QCOM quirk.
> 
> First is that it was done in just about the worst way: QCOM code that
> uses it has to use a new function arm_smccc_smc_quirk(), but then this
> calls into the generic arm_smccc_smc() which itself was modified to
> handle the QCOM specific quark. That means not only does a different
> function need to be called by QCOM code anyway but then also everyone
> else not using it has to still do all the quirk check handling, even
> when using the generic call!
>
> Second it opens the flood gates for other looking for similar quirk
> handling, and if we don't get it we cry foul that QCOM got preferential
> treatment.
> 
> It's not ABI, so I'd say take out the quirk handling from the base
> arm_smccc_smc() and have arm_smccc_smc_quirk() take it's own QCOM
> specific path.

I have no problem with splitting that out. I expect that that the QCOM
quirk will end up getting split out as part of adding support for
SMCCCv1.2, which will require refactoring the SMCCC code. To avoid
having to juggle multiple sets of patches fiddling with that, I'd prefer
to leave the SMCCC code as-is for now.

The intent is certainly not to give anyone preferential treatment, and I
hope that no-one on this thread sees things that way. We simply did the
easiest thing at the point we introduced the quirk.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
