Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F307DA12
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 13:13:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qNnUhlG9xXggOmFka/EDrm1mmW9x8oqbZ8/vf+qnMEg=; b=emwN9vucseKm4m
	HIqYeeHE/otNoMZ5CpB1aR1xa6iaDJsu2FATHrNlagcdwtaxXXqRdnezM/E1or5wuxDhUKuJD8NwF
	/LiGMDyO+GEGjuUkkNrDqVk4vG7FncvgwH85tt4pujE8cvv8lQhq7f1ypqxAt2pSXQYx4vpuxXF46
	GaphD/uOSAa2tZuWNALw633PUAa0Nv7ZIvYI9kamceBCsGWbkwFFK0r3nKrP94m3IF+V5jwC+Y0XC
	8ldvYNWlihBXOVzeP1NbF7nTtVYru0v10897AWr6q8IvIxdZOgzcRTAJswdHipznoMIiv/FgdqtjE
	y3eHnXsCwtKlqnJyFmPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht91o-0004My-Nx; Thu, 01 Aug 2019 11:13:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht91c-0004LO-IL
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 11:13:37 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 53C5F2087E;
 Thu,  1 Aug 2019 11:13:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564658016;
 bh=sOLRAivqQwhcDkoJBFqCBOYcZGi9dD2g8UuB/uMMpoM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rllvDfi6xnnfPd27s3e+K364W6Aapusk5z0JY2V+Cf14I6ckzxBKKtDflwrygCw/A
 E3KVcjvnuTOsLN8FYqsHAsvFHArfQHJCnyhqotS6QHv0mzEhdn3UTn/IGpwaf9ETWJ
 3boJnP3Tjk7dcexmPkCoT/zSFUplZb0iRo/3QvC4=
Date: Thu, 1 Aug 2019 12:13:31 +0100
From: Will Deacon <will@kernel.org>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH] arm64: Relax ICC_PMR_EL1 accesses when ICC_CTLR_EL1.PMHE
 is clear
Message-ID: <20190801111330.42mebbdwnsbkglf6@willie-the-truck>
References: <1564496445-53486-1-git-send-email-julien.thierry.kdev@gmail.com>
 <20190801104119.quzlr5artm4s2sbc@willie-the-truck>
 <a7aaf75d-af41-e162-8b78-84342be36907@arm.com>
 <CAA3o8kyYnek=7boO_szVoNvQks8DFGN5s37ROQKqwyWZQZiXZw@mail.gmail.com>
 <166cd7e1-4a4c-021b-eca6-f3f11fc4993d@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <166cd7e1-4a4c-021b-eca6-f3f11fc4993d@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_041336_631176_8A9D1535 
X-CRM114-Status: GOOD (  23.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Marc Zyngier <maz@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, huawei.libin@huawei.com,
 guohanjun@huawei.com, liwei391@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 01, 2019 at 12:07:58PM +0100, Marc Zyngier wrote:
> On 01/08/2019 11:56, Julien Thierry wrote:
> > On Thu, 1 Aug 2019 at 11:51, Marc Zyngier <marc.zyngier@arm.com> wrote:
> >>
> >> On 01/08/2019 11:41, Will Deacon wrote:
> >>> On Tue, Jul 30, 2019 at 03:20:45PM +0100, Julien Thierry wrote:
> >>>> From: Marc Zyngier <marc.zyngier@arm.com>
> >>>>
> >>>> The GICv3 architecture specification is incredibly misleading when it
> >>>> comes to PMR and the requirement for a DSB. It turns out that this DSB
> >>>> is only required if the CPU interface sends an Upstream Control
> >>>> message to the redistributor in order to update the RD's view of PMR.
> >>>>
> >>>> This message is only sent when ICC_CTLR_EL1.PMHE is set, which isn't
> >>>> the case in Linux. It can still be set from EL3, so some special care
> >>>> is required. But the upshot is that in the (hopefuly large) majority
> >>>> of the cases, we can drop the DSB altogether.
> >>>>
> >>>> This requires yet another capability and some more runtime patching.
> >>>
> >>> Hmm, does this actually require explicit runtime patching, or can we make
> >>> things a bit simpler with a static key?
> >>
> >> The hunk in entry.S is the blocker, AFAICS. Do we have a way to express
> >> static keys in asm?
> >>
> > 
> > Not that I'm aware of. I could leave the alternative in entry.S and
> > use a static_key for the pmr_sync() macro.
> 
> I'm not sure that helps. It means we end-up with two mechanisms to keep
> in sync instead of a single one.

Yes, I missed the entry.S part initially.

> > Does it change much over all? I don't see the static key simplifying
> > things too much, but I don't mind using that instead.
> 
> The complexity is the same. The added benefit is that we can control it
> from the GIC code rather than the architecture code. But that's assuming
> we can do it all using a static key...

Well I think we should look at the numbers for static key + conditional
branch in entry.S. If entry is being hammered, the predictor should do
its job (ignoring Spectre-V2). If entry isn't being hammered, then it
shouldn't matter.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
