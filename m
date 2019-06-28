Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 462F25A10D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 18:37:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NuUMN1cbv7gq7M3mkMKYKAM23jmopiZOZ9ielxUJcoY=; b=kMZ0KdA+bX0ZVR
	2bxzJKWmZwZ5hDKzLnMD+5EtNF+n1LkZsSq6arJQTKcAln6C0f2OCn0/NNs1QzbRYMmSHsxxcRClj
	d41WBKtCwVXngv91pcBmYHoLuQv2RDDqKeyayMcoI1Ek2XOpOvCEaZBl2lyBlN+oX8YXo5+NOaXXm
	fsylp7QFoPkybHtg5u1EsIVaZJcoGX/s8PzYXMIxJXW2vHNdLpDicrIBIdoJKs0Fe3HcayB9CmP8m
	cSf2k56cG+TmUyq/D/M07JEE3BJGfU4cWQRBSwyTTHMHeTFKXHHxJzLZC3GYEPRucMqIBGCNQ0AK6
	br2pwY5cvMJApq0R8LFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgtrw-0004bM-DJ; Fri, 28 Jun 2019 16:37:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgtrj-0004at-UN
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 16:36:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9A47028;
 Fri, 28 Jun 2019 09:36:45 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 0F6843F706; Fri, 28 Jun 2019 09:36:44 -0700 (PDT)
Date: Fri, 28 Jun 2019 17:36:42 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2] arm64: Add initial support for E0PD
Message-ID: <20190628163642.GB56463@arrakis.emea.arm.com>
References: <20190627141532.6452-1-broonie@kernel.org>
 <20190628110430.ffdqy5on3retyr42@willie-the-truck>
 <20190628123040.GG5379@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190628123040.GG5379@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_093648_027399_4D2C26C9 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 01:30:40PM +0100, Mark Brown wrote:
> On Fri, Jun 28, 2019 at 12:04:30PM +0100, Will Deacon wrote:
> > Thanks for the quick v2, although I still don't see the rush to merge this
> > without the associated kaslr/kpti changes we've been discussing. It's not
> > like there's a whole load of 8.5 silicon we're rushing to support.
> 
> It's largely on the general theory that it's better to carry less out of
> tree code - there's less diff to manage, less chance of collisions with
> other work (in either direction), and less pending review to worry about.
> So long as something represents forward progress I tend to work on the
> basis of why not rather than why.

A reason is that once we add the support for disabling kpti based on
the E0PD feature, this patch may turn out to be slightly different (for
example, you may add a common has_e0pd() check that is called from
both unmap_kernel_at_el0() and the E0PD arm64_features[] entry). Given
that both patches would be relatively small, I agree with Will that
there is no rush to merge them independently.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
