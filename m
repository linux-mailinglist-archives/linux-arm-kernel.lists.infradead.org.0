Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 186643434F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 11:37:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GXdEodbcVnv77sFpobaRGUHyVBhJMteNgPgq3JYYoZk=; b=b36otyqYUmcUCj
	nT3F1KkxCqbCFitdYAzElFOQWdrIRNf+ag2sCbZC1qO8/gW4/0KsWOOHcUHDnXTX1Q37ZYNWQ1ZKF
	xBkOaUH9UmmRvtvu2FAFujiW1tVXHdEjwwaJWa4qqmSjbwoaI1PgnICbRle0s1SCntT7Jo16G7fTj
	Za1on6k3b5g/HtLC2N0if12/C1gNmDJtjfCjBO/BKHfT/oPaWQiMTBJPKkGX5zC3Hm7uMjKK9Ohl+
	P0oJ3KUvOynAt7oStTc1h+ufSzVx0Cl5uzSiWi0ZOGG775n0fY/M4UWPb1molgMHc0lhPd/WGEy8A
	HXGXh7QFPbCgbfKuQNmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY5sT-0000S2-Lz; Tue, 04 Jun 2019 09:37:09 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY5sN-0000Ri-7s
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 09:37:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A33D680D;
 Tue,  4 Jun 2019 02:37:02 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 904793F246;
 Tue,  4 Jun 2019 02:37:01 -0700 (PDT)
Date: Tue, 4 Jun 2019 10:36:59 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Andrew Jones <drjones@redhat.com>
Subject: Re: [PATCH] KVM: arm64: Filter out invalid core register IDs in
 KVM_GET_REG_LIST
Message-ID: <20190604093658.GT28398@e103592.cambridge.arm.com>
References: <1559580727-13444-1-git-send-email-Dave.Martin@arm.com>
 <20190604092301.26vbijfoapl4whp6@kamzik.brq.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604092301.26vbijfoapl4whp6@kamzik.brq.redhat.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_023703_297222_1DA8EB4F 
X-CRM114-Status: GOOD (  24.69  )
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, kvmarm@lists.cs.columbia.edu,
 stable@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 11:23:01AM +0200, Andrew Jones wrote:
> On Mon, Jun 03, 2019 at 05:52:07PM +0100, Dave Martin wrote:
> > Since commit d26c25a9d19b ("arm64: KVM: Tighten guest core register
> > access from userspace"), KVM_{GET,SET}_ONE_REG rejects register IDs
> > that do not correspond to a single underlying architectural register.
> > 
> > KVM_GET_REG_LIST was not changed to match however: instead, it
> > simply yields a list of 32-bit register IDs that together cover the
> > whole kvm_regs struct.  This means that if userspace tries to use
> > the resulting list of IDs directly to drive calls to KVM_*_ONE_REG,
> > some of those calls will now fail.
> > 
> > This was not the intention.  Instead, iterating KVM_*_ONE_REG over
> > the list of IDs returned by KVM_GET_REG_LIST should be guaranteed
> > to work.
> > 
> > This patch fixes the problem by splitting validate_core_offset()
> > into a backend core_reg_size_from_offset() which does all of the
> > work except for checking that the size field in the register ID
> > matches, and kvm_arm_copy_reg_indices() and num_core_regs() are
> > converted to use this to enumerate the valid offsets.
> > 
> > kvm_arm_copy_reg_indices() now also sets the register ID size field
> > appropriately based on the value returned, so the register ID
> > supplied to userspace is fully qualified for use with the register
> > access ioctls.
> 
> Ah yes, I've seen this issue, but hadn't gotten around to fixing it.
> 
> > 
> > Cc: stable@vger.kernel.org
> > Fixes: d26c25a9d19b ("arm64: KVM: Tighten guest core register access from userspace")
> > Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> > 
> > ---
> > 
> > Changes since v3:
> 
> Hmm, I didn't see a v1-v3.

Looks like I didn't mark v3 as such when posting [1], but this has been
knocking around for a while.  It was rather low-priority and I hadn't
got around to testing it previously...


[1] [PATCH] KVM: arm64: Filter out invalid core register IDs in KVM_GET_REG_LIST
https://lists.cs.columbia.edu/pipermail/kvmarm/2019-April/035417.html

> > 
> >  * Rebased onto v5.2-rc1.
> > 
> >  * Tested with qemu by migrating from one qemu instance to another on
> >    ThunderX2.
> 
> One of the reasons I was slow to fix this is because QEMU doesn't care
> about the core registers when it uses KVM_GET_REG_LIST. It just completely
> skips all core reg indices, so it never finds out that they're invalid.
> And kvmtool doesn't use KVM_GET_REG_LIST at all. But it's certainly good
> to fix this.

[...]

> Reviewed-by: Andrew Jones <drjones@redhat.com>
> 
> I've also tested this using a kvm selftests test I wrote. I haven't posted
> that test yet because it needs some cleanup and I planned on getting back
> to that when getting back to fixing this issue. Anyway, before this patch
> every other 64-bit core reg index is invalid (because its indexing 32-bits
> but claiming a size of 64), all fp regs are invalid, and we were even
> providing a couple indices that mapped to struct padding. After this patch
> everything is right with the world.
> 
> Tested-by: Andrew Jones <drjones@redhat.com>

Thanks
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
