Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C8011D361
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 18:13:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zXt2jWYVPr2BVzKpQDShtcewq/6UdPZ5xwzkhSL/om0=; b=DQU1yqamvjADib
	5VZxEf++nKUFBL/gh8UJ8wPIeolBzB1uE+5fy04VhI7QQF5iqcCZr81FHfaMtFLSZbdD9HzvmVwiB
	SRcTbyMZFb8MHUoWxPNAENf+jJJWOEYPGvEn7jx9HqMdLigdyul++kOn6pzA+1NUAJw9sVsSWlBEj
	47ZIEs2TTRcOXGIJBpOsxA9rMTXdFW6/yLI5Ue3DyEmDqgW1MtMSiiLA5el+GZ3cbqlWp2HNDzNwA
	vwsRUo+0qPUQwpFyFhY6aiMbcdABZfYkNp2SN34fN0NbV6XXrsYEMivH9eNaFC/KtpyIGXmXpuh/j
	sgdBO+aeWXeZRfPB0hcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifS1a-0006Gp-VM; Thu, 12 Dec 2019 17:13:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifS1Q-0006En-Vk
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 17:13:07 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C58FA205C9;
 Thu, 12 Dec 2019 17:13:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576170784;
 bh=6WWgXHRmBLyrGztQsiGlzPd1w6CVO+6p+6mHF4MHqF4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bzcW/B3m1BHg6ciyfd426DSmgDvMp8fyzLITw0NTbNCe3KSyZubOiwt5v1T98oPxv
 2g65JEnLOk8tI8BrQbUqrbNCtOzFfTxQxh2aSNJu0Ym8fa0hGW3zwIRIFxBY5qZyex
 Vo6oN694WbNvDywipdKFbaSab2bDKSa+yIALT7v0=
Date: Thu, 12 Dec 2019 17:12:58 +0000
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: arm_smccc_smc as generic smc interface?
Message-ID: <20191212171257.GB16364@willie-the-truck>
References: <20191209180752.GJ35479@atomide.com>
 <CAHUa44EJAjL+MGqgKd6YvQAg0z4hRYXb9MeTqsTYhAe-RBZt+g@mail.gmail.com>
 <20191210153840.GL35479@atomide.com>
 <20191212142305.GD46910@lakrids.cambridge.arm.com>
 <622404c8-8ca7-11bb-64fe-14d280827cd2@ti.com>
 <20191212155811.GG46910@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212155811.GG46910@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_091305_738643_6C860F8A 
X-CRM114-Status: GOOD (  19.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sumit Garg <sumit.garg@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 Tony Lindgren <tony@atomide.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Volodymyr Babchuk <vlad.babchuk@gmail.com>, "Andrew F. Davis" <afd@ti.com>,
 Olof Johansson <olof@lixom.net>, Russell King <rmk+kernel@armlinux.org.uk>,
 Marc Zyngier <maz@kernel.org>, Andy Gross <andy.gross@linaro.org>,
 Colin Ian King <colin.king@canonical.com>,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 03:58:12PM +0000, Mark Rutland wrote:
> On Thu, Dec 12, 2019 at 10:23:47AM -0500, Andrew F. Davis wrote:
> > On 12/12/19 9:23 AM, Mark Rutland wrote:
> > > On Tue, Dec 10, 2019 at 07:38:40AM -0800, Tony Lindgren wrote:
> > >> * Jens Wiklander <jens.wiklander@linaro.org> [191210 08:10]:
> > >>> On Mon, Dec 9, 2019 at 7:07 PM Tony Lindgren <tony@atomide.com> wrote:
> > >>> In <arm-smccc.h> there's already been made room for some Qualcomm
> > >>> quirks, perhaps it's possible to use or extend it to cover the TI
> > >>> cases you have in mind.
> > >>
> > >> Yeah that's my thinking too as long as there are no issues using
> > >> arm_smccc_smc() for non-optee cases.
> > > 
> > > I don't think that we wan't to turn the SMCCC code itself into a generic
> > > SMC interface, and this boils down to how divergent the TI calling
> > > convention is from SMCCC. What are the differences?
> > 
> > There are three levels of differences based on the the type of legacy
> > SMC call we make, first type omap_smc1():
> > 
> >  * r2-r12 are clobbered vs SMCCC only saving r4-r7
> >  * r12 used as command ID vs SMCCC using r0
> > 
> > omap_smc2(), in addition to the above incompatibilities:
> > 
> >  * r6 must contain #0xff
> >  * r12 used as command ID again
> > 
> > omap_smc3(), in addition to the above incompatibilities:
> > 
> >  * Uses SMC #1 vs #0
> > 
> > My personal opinion would be to leave arm_smccc_smc() alone and only
> > allow SMCCC complaint callers to use it (even QCOM's quark should not
> > have gone in if the plan was not to allow the same exceptions for
> > others). 
> 
> I agree. Given the above examples, I'd rather have this separated out.
> While I'd have preferred to not have the QCOM quirk, that's simply
> something we have to live with now.

It's not ABI is it, so we could split that out as well? That said, my
recollection of the qcom quirk is that they were mostly following the
SMCCC spec, but just with an extra register to save/restore, which is
a lot less invasive than the stuff above.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
