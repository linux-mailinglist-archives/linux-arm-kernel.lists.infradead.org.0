Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC1F9186B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 18 Aug 2019 19:43:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=748jDwK9zeerjEqRa2E/avrM+HQYApND5K6WOko8KsA=; b=hZpQ0SsEltgnY0
	XBW797oOGrmfFeX/4Fu0hn+AGpGShfIVh6eOBHuVdgQojDN5pFAfDiUSpDLMkw+M/Mp7y92nsKSMF
	t6xGFuQC8VbTi+MzjsVZliKOLheHm1wzl2Inxq1j9dTE4i6QKk4uwEZ48Hie6WQ3mVDiPM9W4hcLY
	cHuCayKrfK6pwnzEE+B3ZKqXu84nfvKN9Cl8ocNwbU2AEH5A/5/i0aCR6LOkEKHbMkn4+0gjsIKMs
	oUtAQO/sntcLsQGwb9smMaBPkOOWgtQQo+tSvGn/4LCUrfiorascsGE30b/DHjk3ubMR4iVPjS97C
	B0dJdrgEmid7S8aAJX6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzPDE-0002fi-Ga; Sun, 18 Aug 2019 17:43:28 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzPCY-0002fI-O8
 for linux-arm-kernel@lists.infradead.org; Sun, 18 Aug 2019 17:42:48 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1hzPCU-0007Qm-QH; Sun, 18 Aug 2019 19:42:43 +0200
Date: Sun, 18 Aug 2019 18:42:40 +0100
From: Marc Zyngier <maz@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH] arm64/kvm: remove VMID rollover I-cache maintenance
Message-ID: <20190818184240.507e0716@why>
In-Reply-To: <1dca0489-9e85-cb8f-b846-b6da65f41773@arm.com>
References: <20190806155737.39307-1-mark.rutland@arm.com>
 <1dca0489-9e85-cb8f-b846-b6da65f41773@arm.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: james.morse@arm.com, mark.rutland@arm.com,
 linux-arm-kernel@lists.infradead.org, suzuki.poulose@arm.com,
 christoffer.dall@arm.com, kvmarm@lists.cs.columbia.edu,
 julien.thierry.kdev@gmail.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_104246_987858_BD88D359 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 16 Aug 2019 14:39:31 +0100
James Morse <james.morse@arm.com> wrote:

> Hi Mark,
> 
> On 06/08/2019 16:57, Mark Rutland wrote:
> > For VPIPT I-caches, we need I-cache maintenance on VMID rollover to
> > avoid an ABA problem. Consider a single vCPU VM, with a pinned stage-2,
> > running with an idmap VA->IPA and idmap IPA->PA. If we don't do
> > maintenance on rollover:
> > 
> >         // VMID A
> >         Writes insn X to PA 0xF
> >         Invalidates PA 0xF (for VMID A)
> > 
> >         I$ contains [{A,F}->X]
> > 
> >         [VMID ROLLOVER]
> > 
> >         // VMID B
> >         Writes insn Y to PA 0xF
> >         Invalidates PA 0xF (for VMID B)
> > 
> >         I$ contains [{A,F}->X, {B,F}->Y]
> > 
> >         [VMID ROLLOVER]
> > 
> >         // VMID A
> >         I$ contains [{A,F}->X, {B,F}->Y]
> > 
> >         Unexpectedly hits stale I$ line {A,F}->X.
> > 
> > However, for PIPT and VIPT I-caches, the VMID doesn't affect lookup or
> > constrain maintenance. Given the VMID doesn't affect PIPT and VIPT
> > I-caches, and given VMID rollover is independent of changes to stage-2
> > mappings, I-cache maintenance cannot be necessary on VMID rollover for
> > PIPT or VIPT I-caches.
> > 
> > This patch removes the maintenance on rollover for VIPT and PIPT
> > I-caches. At the same time, the unnecessary colons are removed from the
> > asm statement to make it more legible.  
> 
> Makes sense!
> 
> Reviewed-by: James Morse <james.morse@arm.com>

Queued for 5.4. Thanks both.

	M.
-- 
Without deviation from the norm, progress is not possible.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
