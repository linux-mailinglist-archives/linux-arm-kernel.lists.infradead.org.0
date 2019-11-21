Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B30B104EB5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 10:06:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mWorEPZvEhUabNDJb9d/4t3hRADcyTdlOoj625wLb9U=; b=oIwElSTlO+3gPdkFCDy+8eqN6
	iTse3I95ujschXWFxRlE1LHTCpLyRgkdNYpQ+II/NTFU/eXLI2x9PIVeczb148J/hBgFnjQUiGEGh
	p+I8LtFatOuMXUIM4kDuEcTxI8Yzzh2kTikKLyaxTrraeIwwDzXF3/oXC803YHcuM+oUOSbLOWX3/
	XrigIaC7kQV2ss4wINWLOrZ0QvH26eCc4T+0bsLDCiwpfIWGDNB7E2mAlLFOv4Am7CGUhdRw7ZG+V
	zIqeLzQTIeDLfORpJimNo3nYT3+Ee8yMelaEJNZChq/7g/wstXZ3TF3bLHXA9KDRcKVXY1I9hrkCH
	YhmJIWpUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXiQD-0007vn-B5; Thu, 21 Nov 2019 09:06:41 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXiPx-0007p2-P9
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 09:06:27 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iXiPo-0004FK-NV; Thu, 21 Nov 2019 10:06:16 +0100
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: Re: [GIT PULL] KVM/arm updates for 5.5
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Thu, 21 Nov 2019 09:06:16 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <3cde0da8-62a5-d1a5-b6b9-58baf890707a@redhat.com>
References: <20191120164236.29359-1-maz@kernel.org>
 <3cde0da8-62a5-d1a5-b6b9-58baf890707a@redhat.com>
Message-ID: <3d2382e6ed7ea25cb13303760a79091a@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, rkrcmar@redhat.com,
 mark.rutland@arm.com, drjones@redhat.com, kvm@vger.kernel.org,
 eric.auger@redhat.com, xypron.glpk@gmx.de, bigeasy@linutronix.de,
 suzuki.poulose@arm.com, christoffer.dall@arm.com, steven.price@arm.com,
 borntraeger@de.ibm.com, julien.grall@arm.com, graf@amazon.com,
 linux-arm-kernel@lists.infradead.org, yuzenghui@huawei.com,
 james.morse@arm.com, tglx@linutronix.de, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, julien.thierry.kdev@gmail.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_010626_177386_0D5A5635 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvmarm@lists.cs.columbia.edu,
 Andrew Jones <drjones@redhat.com>, kvm@vger.kernel.org,
 =?UTF-8?Q?Radim_Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Steven Price <steven.price@arm.com>, Eric Auger <eric.auger@redhat.com>,
 Julien Grall <julien.grall@arm.com>, Alexander Graf <graf@amazon.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Zenghui Yu <yuzenghui@huawei.com>, James Morse <james.morse@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-21 08:58, Paolo Bonzini wrote:
> On 20/11/19 17:42, Marc Zyngier wrote:
>> Paolo, Radim,
>>
>> Here's the bulk of KVM/arm updates for 5.5. On the menu, two new 
>> features:
>> - Stolen time is finally exposed to guests. Yay!
>> - We can report (and potentially emulate) instructions that KVM 
>> cannot
>>   handle in kernel space to userspace. Yay again!
>>
>> Apart from that, a fairly mundane bag of perf optimization, cleanup 
>> and
>> bug fixes.
>>
>> Note that this series is based on a shared branch with the arm64 
>> tree,
>> avoiding a potential delicate merge.
>>
>> Please pull,
>
> Pulled, thanks.  Note that the new capabilities had a conflict and 
> were
> bumped by one.

Not a problem, nothing has been merged into any userspace so far.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
