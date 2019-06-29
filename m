Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF575AB81
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 15:22:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cD4+2q10wvDHH1E3Sn/PryMVLo/xY71ON2qs1qO1vko=; b=OUGaEUXr3hvS9Y
	BbDhHFx4wRTFAR1MyqU1ROzUVosBOkTNMZglY1L0sEiVlPZS+dDVDfLoXJt0RPSNfQrVLjNDbNsSs
	u+PMCQCM2Mfrtqk5jbslubOL+OF5JxB3rf5FNGHSg68SFzEfRL6p/5ayS/Pgtad+QL+9VyU7e2Bii
	yHzo8zek2PsrHDXYk62Ihtz1I812D/nTAeZiiYahKI0WE/+CZ12da49Ka6kz7T92dqfCZ6UhTp0kH
	dHtHcPERLQN8dLq/SnQr6YlEm27ZTUJtxOWD/UIzGmTwlPzrQ8hY7JmMoDe9gJ7cXe0J44W258nMW
	+E75A94yZEXw/sxVxUJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhDIf-0004hX-Vx; Sat, 29 Jun 2019 13:21:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hhDIV-0004gM-A7
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Jun 2019 13:21:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 00543344;
 Sat, 29 Jun 2019 06:21:36 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3564D3F718;
 Sat, 29 Jun 2019 06:21:35 -0700 (PDT)
Date: Sat, 29 Jun 2019 14:21:29 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2] arm64: Add initial support for E0PD
Message-ID: <20190629132128.fdv4f23sjpsaxypg@mbp>
References: <20190627141532.6452-1-broonie@kernel.org>
 <20190628110430.ffdqy5on3retyr42@willie-the-truck>
 <20190628123040.GG5379@sirena.org.uk>
 <20190628163642.GB56463@arrakis.emea.arm.com>
 <20190628173920.GA2793@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190628173920.GA2793@sirena.org.uk>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_062143_397230_10CDD2C0 
X-CRM114-Status: GOOD (  16.64  )
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

Hi Mark,

On Fri, Jun 28, 2019 at 06:39:20PM +0100, Mark Brown wrote:
> On Fri, Jun 28, 2019 at 05:36:42PM +0100, Catalin Marinas wrote:
> > On Fri, Jun 28, 2019 at 01:30:40PM +0100, Mark Brown wrote:
> 
> > > It's largely on the general theory that it's better to carry less out of
> > > tree code - there's less diff to manage, less chance of collisions with
> > > other work (in either direction), and less pending review to worry about.
> > > So long as something represents forward progress I tend to work on the
> > > basis of why not rather than why.
> 
> > A reason is that once we add the support for disabling kpti based on
> > the E0PD feature, this patch may turn out to be slightly different (for
> > example, you may add a common has_e0pd() check that is called from
> > both unmap_kernel_at_el0() and the E0PD arm64_features[] entry). Given
> 
> Hrm, I don't really get that - incremental patches can always be done
> (indeed they're often really helpful for people trying to understand how
> the code got to be the way it is).

Sorry, I wasn't clear enough. I'm perfectly fine to incremental patches
and encourage them as part of a series achieving an end goal. Here the
end goal (and the reason behind this architecture feature) is to be able
to safely disable KPTI in favour of a hardware-based mitigation. Your
one-patch series does not achieve this yet, so I suggest we don't merge
this until we have the other part of the series.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
