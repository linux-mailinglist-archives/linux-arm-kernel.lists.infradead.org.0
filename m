Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFBA97CA3A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 19:22:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KjezJCWGqDbK9ChWBXf0IqRan+DPHTVAHeizq8zXhY4=; b=L6aueFB8PfyHon
	EJ/2iLLcUbChjWgv8tlppmIMCwfHpRyxMXlvF8w7vZ+NjYfBtSWrMMIMeWDoL0m88n62N6hxBw2PE
	YhaXwQOunn+7kNgZ2DchGF9Jj/JNrD0qzyzKEE3ul4By3W3vBRYiOwjGhvxtKTjvTj03iVC0KR91f
	J4TrKS/dAsc3bTrHcSG5kS7rZEtUr2Q/wXEvXkpy+NXd6Y90D8Wx8SARkLWoiAiYnshurfCLCFhpY
	oEI9YLG7NQM851o6joNMvNaEkr1C0UxZG5nC8kDaRLGyZZEqa8Bbijwhaq/jZx1QE+xg7F22VG0T5
	GC/mxpLwNsUHCqczC97w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hssJM-00075a-UG; Wed, 31 Jul 2019 17:22:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hssJG-00075C-2X
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 17:22:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7BF29337;
 Wed, 31 Jul 2019 10:22:41 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 93A143F71F; Wed, 31 Jul 2019 10:22:40 -0700 (PDT)
Date: Wed, 31 Jul 2019 18:22:38 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Julien Thierry <julien.thierry.kdev@gmail.com>
Subject: Re: [PATCH] arm64: Lower priority mask for GIC_PRIO_IRQON
Message-ID: <20190731172238.GG17773@arrakis.emea.arm.com>
References: <1564412266-9790-1-git-send-email-julien.thierry.kdev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564412266-9790-1-git-send-email-julien.thierry.kdev@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_102242_165121_09FA007A 
X-CRM114-Status: GOOD (  10.96  )
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
Cc: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, linux-arm-kernel@lists.infradead.org,
 julien.thierry@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 03:57:46PM +0100, Julien Thierry wrote:
> On a system with two security states, if SCR_EL3.FIQ is set, non-secure
> IRQ priorities get shifted to fit the secure view but priority masks
> aren't.
> 
> On such system, it turns out that GIC_PRIO_IRQON masks the priority of
> normal interrupts, which obviously ends up in a hang.
> 
> Increase GIC_PRIO_IRQON value (i.e. lower priority) to make sure
> interrupts are not blocked by it.
> 
> Fixes: bd82d4bd21880b7c ("arm64: Fix incorrect irqflag restore for
>        priority masking")
> Signed-off-by: Julien Thierry <julien.thierry.kdev@gmail.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Oleg Nesterov <oleg@redhat.com>
> Cc: Marc Zyngier <maz@kernel.org>

I queued this through the arm64 for-next/fixes tree. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
