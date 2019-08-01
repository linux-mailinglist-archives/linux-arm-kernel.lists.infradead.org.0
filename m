Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E92597D98C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 12:41:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FAzBUVEISCmXCQNibrBowqdtNohVA1PosXX47agqlIY=; b=bczpgDDJ9C4k60
	yG7h0G+27d7s9JgqkrRErmiJxoh/W68Jn9EExoPhYxZGGixyTandA1q7g7pbUsq83T8OQbbhEVKKN
	HBo2cnxcSHDEUtR6/eKUeaH1wpqDYofWOWDaCH+Gh33qKyMrJkAsc7+kpT0MbpjZcH0nJm220IsVG
	urI+66yfyw9ahp29+ysFJ8nDn+saWyCWOLSXmjvZO1ypBmmyGMvhtd3gty7Ei0nl2tFOef3aOeRVq
	2sqG685wHoKLInbY+mCs+CdH25PaCqaAK40cxP2ymfKmWluYLDvWfTQayE9XSFvZDHurrA0+6ZmJM
	fhlukI7Dbadt1YJMhA2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht8Wh-0008Qo-4i; Thu, 01 Aug 2019 10:41:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht8WT-0008QN-86
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 10:41:26 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1817520665;
 Thu,  1 Aug 2019 10:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564656084;
 bh=uWit8t+Yc/LMpuGkkYjlcUozAh28GgkJyRZRiOS1DB4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oi4FGTzJMnIP4AXNUxK7TCEQOKMw3x0lYXwy4+VTvlPOR5PVwULjsQPQJYDkzq2MJ
 vwLleVyC/SNeT8MyrlZ5vCO2s6PZRaq8pDbHHLxRNGkuuZw2Gcn5Ml3Vo33zQWIu+v
 EZcckiuKxyb2SHWFKzbxU2B3Iu9wtR52nWcwwBbc=
Date: Thu, 1 Aug 2019 11:41:20 +0100
From: Will Deacon <will@kernel.org>
To: Julien Thierry <julien.thierry.kdev@gmail.com>
Subject: Re: [PATCH] arm64: Relax ICC_PMR_EL1 accesses when ICC_CTLR_EL1.PMHE
 is clear
Message-ID: <20190801104119.quzlr5artm4s2sbc@willie-the-truck>
References: <1564496445-53486-1-git-send-email-julien.thierry.kdev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564496445-53486-1-git-send-email-julien.thierry.kdev@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_034125_307959_9655A86B 
X-CRM114-Status: GOOD (  12.77  )
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
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 James Morse <james.morse@arm.com>, huawei.libin@huawei.com,
 guohanjun@huawei.com, liwei391@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 03:20:45PM +0100, Julien Thierry wrote:
> From: Marc Zyngier <marc.zyngier@arm.com>
> 
> The GICv3 architecture specification is incredibly misleading when it
> comes to PMR and the requirement for a DSB. It turns out that this DSB
> is only required if the CPU interface sends an Upstream Control
> message to the redistributor in order to update the RD's view of PMR.
> 
> This message is only sent when ICC_CTLR_EL1.PMHE is set, which isn't
> the case in Linux. It can still be set from EL3, so some special care
> is required. But the upshot is that in the (hopefuly large) majority
> of the cases, we can drop the DSB altogether.
> 
> This requires yet another capability and some more runtime patching.

Hmm, does this actually require explicit runtime patching, or can we make
things a bit simpler with a static key?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
