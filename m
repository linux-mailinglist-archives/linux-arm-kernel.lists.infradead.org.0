Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD039114FEE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 12:44:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1pFSPLs4pXU457KkWLi1WmgW8I8acas2lYdVELGZURM=; b=kLKflc1K3RYgnMRyvMF32AaiS
	u0rEkz/ruEinXff1MjOBvlFKlKQcwPAtxK9UHUGmEYlwntosGsZ2F7O8fBCc1wuldce+lrew5rBhQ
	kL+0Mgh1eoWINiGvKTPLoDajmjqMFsMY9C4jWQdVqcE6iiNNbeqwuOnKf/Z9GzpklvurNJLYf6K3K
	uLL9LXtg4FmOVWquwOLLnQogAkNLxIQd6SbBu1zQ9oeRtzC+S/dPZRbp1KV0ZOjXcidWjf63rJUF0
	bw5ZwvtlFlcW14PVczpAUdA9vAbnBz1bBuJM7bJ0UugjsOVsJyNyokGhp+DrM+u7VsSEMfcvLP2CY
	GHGdVbSQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idC2L-0002vj-6F; Fri, 06 Dec 2019 11:44:41 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idC2D-0002v8-V3
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 11:44:35 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1idC2C-0001th-7s; Fri, 06 Dec 2019 12:44:32 +0100
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 0/2] kvm/arm64: unimplemented sysreg improvements
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Fri, 06 Dec 2019 11:44:32 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191205180652.18671-1-mark.rutland@arm.com>
References: <20191205180652.18671-1-mark.rutland@arm.com>
Message-ID: <5fdc9f333b8658a73645b6ed40280402@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org,
 alexandru.elisei@arm.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 kvmarm@lists.cs.columbia.edu, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_034434_147654_F0C9078A 
X-CRM114-Status: UNSURE (   6.87  )
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
Cc: suzuki.poulose@arm.com, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, alexandru.elisei@arm.com,
 kvmarm@lists.cs.columbia.edu, julien.thierry.kdev@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-05 18:06, Mark Rutland wrote:
> While testing some other patches, I realised that KVM's logging of
> trapped sysreg accesses can log inconsistent information, and this is
> arguably unnecessary for IMPLEMENTATION DEFINED system registers.
>
> This patches fix that up, ensureing that logged information is
> consistent, and avoiding logging for IMPLEMENTATION DEFINED 
> registers.
>
> Mark.
>
> Mark Rutland (2):
>   kvm/arm64: sanely ratelimit sysreg messages
>   kvm/arm64: don't log IMP DEF sysreg traps
>
>  arch/arm64/kvm/sys_regs.c | 20 ++++++++++++++------
>  arch/arm64/kvm/sys_regs.h | 17 +++++++++++++++--
>  2 files changed, 29 insertions(+), 8 deletions(-)

Applied, thanks.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
