Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2AB1C6CF8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 11:30:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Lf0xXKyjFUISc+wcaFUkuhJ1hyGasQVX4ZSWgh79sE=; b=WMuOHZ0Ju7j5NW
	D/8paJTz96eHqLG2dz3qdlLokgBbRWuwTcC3+lUDsy5KxJZUet1tM4kUE1vR0K8WTo3w5TEty++JQ
	eZpsEeja/XbwOqkwePUjZ4ZibmJUoJ96rQBkDWku8BtwEz19jP2sq2ab8Zl2zvhlCCO4hc6EjEmOu
	9CrVJCN1U5MMrtLyyefVO5yJgt6ErOBCtaVGQm6Y3YSr0ECOCAgwHRJO7EyrrLg9szQemwaRx13Gz
	k3FsKLQ/Q8fclezejxXf2mtPD4jurHaWIzUGLFofJkByEVOvUEZpBkCtU9bNEYxUadGcb7mntLvwZ
	WWgS8Iu5aNLNs7NxCLZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWGO2-0005Va-8b; Wed, 06 May 2020 09:30:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWGNt-0005Uv-P6
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 09:30:35 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3C8022073A;
 Wed,  6 May 2020 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588757433;
 bh=Fz1Pqdbpgc/bySY2VzRgx4entrNkwjB8l09H9tBKs+Q=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=A6AXkxkOxO9KqbRlc+m5bTrgAkj41jx0GT7sLL5hOC4ygkxzOEKUhn9deltnjF2SI
 ZkHf3lD/5cJAMJXWSEF0GBGdc4k2G0dD+DGGrEO3Zib+4Z9yE5J8wneTTJzkZm44Kw
 dygjsIJjIyP2cVfm2Y3xLSoEReD5OxHsOxUw0xLA=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jWGNr-009u8C-Ky; Wed, 06 May 2020 10:30:31 +0100
Date: Wed, 6 May 2020 10:30:29 +0100
From: Marc Zyngier <maz@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 03/26] KVM: arm64: Factor out stage 2 page table data
 from struct kvm
Message-ID: <20200506103029.4f6ca0d3@why>
In-Reply-To: <86o8r2tg83.wl-maz@kernel.org>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-4-maz@kernel.org>
 <660a6638-5ee0-54c5-4a9d-d0d9235553ad@arm.com>
 <86o8r2tg83.wl-maz@kernel.org>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: james.morse@arm.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, andre.przywara@arm.com,
 christoffer.dall@arm.com, Dave.Martin@arm.com, jintack@cs.columbia.edu,
 alexandru.elisei@arm.com, gcherian@marvell.com, prime.zeng@hisilicon.com,
 will@kernel.org, catalin.marinas@arm.com, mark.rutland@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_023033_859119_E61D9FCF 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>, Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, kvmarm@lists.cs.columbia.edu,
 Will Deacon <will@kernel.org>, George Cherian <gcherian@marvell.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 05 May 2020 18:59:56 +0100
Marc Zyngier <maz@kernel.org> wrote:

Hi James,

> > But accessing VTCR is why the stage2_dissolve_p?d() stuff still
> > needs the kvm pointer, hence the backreference... it might be neater
> > to push the vtcr properties into kvm_s2_mmu that way you could drop
> > the kvm backref, and only things that take vm-wide locks would need
> > the kvm pointer. But I don't think it matters.  
> 
> That's an interesting consideration. I'll have a look.

So I went back on forth on this (the joys of not sleeping), and decided
to keep the host's VTCR_EL2 where it is today (in the kvm structure).
Two reasons for this:

- This field is part of the host configuration. Moving it to the S2 MMU
  structure muddies the waters a bit once you start nesting, as this
  structure really describes an inner guest context. It has its own
  associated VTCR, which lives in the sysreg file, and it becomes a bit
  confusing to look at a kvm_s2_mmu structure in isolation and wonder
  whether this field is directly related to the PTs in this structure,
  or to something else.

- It duplicates state. If there is one thing I have learned over the
  past years, it is that you should keep a given state in one single
  place at all times. Granted, VTCR doesn't change over the lifetime of
  the guest, but still.

I guess the one thing that would push me to the other side of the
debate is if we can show that the amount of pointer chasing generated
by the mmu->kvm->vtcr dance is causing actual performance issues. So
far, I haven't measured such an impact.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
