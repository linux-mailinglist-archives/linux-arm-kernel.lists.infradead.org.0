Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A58AF1F8C3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 18:38:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qedNEqDk2IuiE+xwkwDE4ccbBaM35wulHeILN1i9cro=; b=hUzpg977rydnHe
	1gtoHXayjsALSoRE0e8eDjFvA89WBmH6uC82+Wn68XGkclweyUBTMh7g+R3CnBbATVUbXb1AXEXqN
	cgWE1cAbcRWr3BK9J7E60z5p/wyF9i69Bj2OidjLHqpGVtVJRA4zf6uQXsRNo3Aoy/z+I8ikfAfPz
	5YPwNZsQQHyZV/V6sI90XkIj1UlQ5SSuM1Mt0L6dgHeq6u86kVWz8/TPr4lYLA0SoSnDbpduMm6XL
	kF5EPpMQGZLI3NUQtsU6PhlcHsJT6QpNODAhYmGOAByMRAGFsPkqiP+cgBz+YTk+r4PJO1JXe51uq
	uE2ZskUQEmxY+InLjT+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQwvZ-000506-2R; Wed, 15 May 2019 16:38:49 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQwvR-0004zR-Tz
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 16:38:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4841C80D;
 Wed, 15 May 2019 09:38:38 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8DDE13F703;
 Wed, 15 May 2019 09:38:35 -0700 (PDT)
Date: Wed, 15 May 2019 17:38:32 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [RFC PATCH] KVM: arm/arm64: Enable direct irqfd MSI injection
Message-ID: <20190515173832.62afdd90@donnerap.cambridge.arm.com>
In-Reply-To: <20190318133040.1cfad9a4@why.wild-wind.fr.eu.org>
References: <1552833373-19828-1-git-send-email-yuzenghui@huawei.com>
 <86o969z42z.wl-marc.zyngier@arm.com>
 <20190318133040.1cfad9a4@why.wild-wind.fr.eu.org>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_093841_973222_AED892AC 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: rkrcmar@redhat.com, mst@redhat.com, kvm@vger.kernel.org,
 suzuki.poulose@arm.com, "Raslan, KarimAllah" <karahmed@amazon.de>,
 julien.thierry@arm.com, christoffer.dall@arm.com, linux-kernel@vger.kernel.org,
 eric.auger@redhat.com, james.morse@arm.com, wanghaibin.wang@huawei.com,
 Zenghui Yu <yuzenghui@huawei.com>, pbonzini@redhat.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 18 Mar 2019 13:30:40 +0000
Marc Zyngier <marc.zyngier@arm.com> wrote:

Hi,

> On Sun, 17 Mar 2019 19:35:48 +0000
> Marc Zyngier <marc.zyngier@arm.com> wrote:
> 
> [...]
> 
> > A first approach would be to keep a small cache of the last few
> > successful translations for this ITS, cache that could be looked-up by
> > holding a spinlock instead. A hit in this cache could directly be
> > injected. Any command that invalidates or changes anything (DISCARD,
> > INV, INVALL, MAPC with V=0, MAPD with V=0, MOVALL, MOVI) should nuke
> > the cache altogether.  
> 
> And to explain what I meant with this, I've pushed a branch[1] with a
> basic prototype. It is good enough to get a VM to boot, but I wouldn't
> trust it for anything serious just yet.
> 
> If anyone feels like giving it a go and check whether it has any
> benefit performance wise, please do so.

So I took a stab at the performance aspect, and it took me a while to find
something where it actually makes a difference. The trick is to create *a
lot* of interrupts. This is my setup now:
- GICv3 and ITS
- 5.1.0 kernel vs. 5.1.0 plus Marc's rebased "ITS cache" patches on top
- 4 VCPU guest on a 4 core machine
- passing through a M.2 NVMe SSD (or a USB3 controller) to the guest
- running FIO in the guest, with:
  - 4K block size, random reads, queue depth 16, 4 jobs (small)
  - 1M block size, sequential reads, QD 1, 1 job (big)

For the NVMe disk I see a whopping 19% performance improvement with Marc's
series (for the small blocks). For a SATA SSD connected via USB3.0 I still
see 6% improvement. For NVMe there were 50,000 interrupts per second on
the host, the USB3 setup came only up to 10,000/s. For big blocks (with
IRQs in the low thousands/s) the win is less, but still a measurable 3%.

Now that I have the setup, I can rerun experiments very quickly (given I
don't loose access to the machine), so let me know if someone needs
further tests.

Cheers,
Andre.

> [1] https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git/log/?h=kvm-arm64/its-translation-cache


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
