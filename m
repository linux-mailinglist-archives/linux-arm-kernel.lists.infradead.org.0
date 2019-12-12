Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F9311D1A3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 16:58:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n4j0ri+T7KMxlpORhYPKeQdGnKu8Dm+ae6CtRoiN64M=; b=Usbl9eX+76aIer
	3u0PrIzOPTC4OFeJ9KHx7RpLjjEO2iTbRLOrxKEvV2h0VuIOm02YDFKA8D7QDhFKo/kV5NxBwe0Ds
	Un5j8XjOrhmiBn6BoUk75+xde2lndaekcTKdeVZn4VQT38j0zE6GydM7WJlguN4bwQZ0Kub8lF7BS
	b7v8igKEi8FmsdD8/LPqRpesRML1vUqm5C9X7umadK62fxUe89pxELArSPniV+3nE2Cyn8uU5KOJO
	m066vneHIz6+/PyArX9TeCsx+Vyu/d6tnVbywfAPcmc8oDDMSYY7rYuaN3aBjAdBiZBbhSESJRdT3
	z0N9yantiFRXRIjgPOvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifQrF-0000JY-B7; Thu, 12 Dec 2019 15:58:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifQr6-0000J0-Be
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 15:58:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EF4F430E;
 Thu, 12 Dec 2019 07:58:15 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 322383F6CF;
 Thu, 12 Dec 2019 07:58:14 -0800 (PST)
Date: Thu, 12 Dec 2019 15:58:12 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: "Andrew F. Davis" <afd@ti.com>
Subject: Re: arm_smccc_smc as generic smc interface?
Message-ID: <20191212155811.GG46910@lakrids.cambridge.arm.com>
References: <20191209180752.GJ35479@atomide.com>
 <CAHUa44EJAjL+MGqgKd6YvQAg0z4hRYXb9MeTqsTYhAe-RBZt+g@mail.gmail.com>
 <20191210153840.GL35479@atomide.com>
 <20191212142305.GD46910@lakrids.cambridge.arm.com>
 <622404c8-8ca7-11bb-64fe-14d280827cd2@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <622404c8-8ca7-11bb-64fe-14d280827cd2@ti.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_075820_441696_C6F0B2AA 
X-CRM114-Status: GOOD (  17.30  )
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

On Thu, Dec 12, 2019 at 10:23:47AM -0500, Andrew F. Davis wrote:
> On 12/12/19 9:23 AM, Mark Rutland wrote:
> > On Tue, Dec 10, 2019 at 07:38:40AM -0800, Tony Lindgren wrote:
> >> * Jens Wiklander <jens.wiklander@linaro.org> [191210 08:10]:
> >>> On Mon, Dec 9, 2019 at 7:07 PM Tony Lindgren <tony@atomide.com> wrote:
> >>> In <arm-smccc.h> there's already been made room for some Qualcomm
> >>> quirks, perhaps it's possible to use or extend it to cover the TI
> >>> cases you have in mind.
> >>
> >> Yeah that's my thinking too as long as there are no issues using
> >> arm_smccc_smc() for non-optee cases.
> > 
> > I don't think that we wan't to turn the SMCCC code itself into a generic
> > SMC interface, and this boils down to how divergent the TI calling
> > convention is from SMCCC. What are the differences?
> 
> There are three levels of differences based on the the type of legacy
> SMC call we make, first type omap_smc1():
> 
>  * r2-r12 are clobbered vs SMCCC only saving r4-r7
>  * r12 used as command ID vs SMCCC using r0
> 
> omap_smc2(), in addition to the above incompatibilities:
> 
>  * r6 must contain #0xff
>  * r12 used as command ID again
> 
> omap_smc3(), in addition to the above incompatibilities:
> 
>  * Uses SMC #1 vs #0
> 
> My personal opinion would be to leave arm_smccc_smc() alone and only
> allow SMCCC complaint callers to use it (even QCOM's quark should not
> have gone in if the plan was not to allow the same exceptions for
> others). 

I agree. Given the above examples, I'd rather have this separated out.
While I'd have preferred to not have the QCOM quirk, that's simply
something we have to live with now.

> I believe what Tony might really want is a separate generic
> arm_smc() that can handle the above cases based on parameters so that we
> don't have to drop into custom assembly in mach-omap2.

FWIW, I agree that having a separate arm_generic_smc() feels like a
better way of handling the omap cases above. I think that only needs to
exist for arch/arm, too, so some complexity involved with making that
arch-neutral can be avoided.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
