Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 169AC509BA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 13:24:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ERB+yalwNau3ekGXXEFj/lDFTWZZfdJM3SGAUr/Qync=; b=hRmJSSXwPNpmj5
	6jEpGr/Ot9oz4BYsnHoY4SKrw4MG4H5u+WcT6IO0MalDDcPUI9hAFo0Rok83JWrpre1SMXSH8aK5U
	ubzRyGcN2pK96wNkxXqRejAWf0WKX+3POSYE5dXHwDXoALy6volbkWd4pjR7GnUxsps7qbVPq26VF
	zAm7ITb/RR8QnZVF7FRy8hT+oQ/KH0zDNgUY9LQsiVqHvQl/EOcCQwwraOvNvfhgYyaEttAdw7i4Q
	v8CleRtuf+JWbOVnptLUHJT7Zq72PqdkKgGqJH4Klt9byC7Xt62uG8vTKSJXolLJZJ1gVI6UPF4YO
	mX+dof9oTXV+c70I08Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfN0d-0001NC-L8; Mon, 24 Jun 2019 11:19:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfN0U-0001MV-CJ
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 11:19:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 38D1A2B;
 Mon, 24 Jun 2019 04:19:28 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D6BD93F718;
 Mon, 24 Jun 2019 04:19:26 -0700 (PDT)
Date: Mon, 24 Jun 2019 12:19:24 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH 02/59] KVM: arm64: Move __load_guest_stage2 to kvm_mmu.h
Message-ID: <20190624111924.GK2790@e103592.cambridge.arm.com>
References: <20190621093843.220980-1-marc.zyngier@arm.com>
 <20190621093843.220980-3-marc.zyngier@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621093843.220980-3-marc.zyngier@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_041930_463563_1C3430E7 
X-CRM114-Status: GOOD (  10.97  )
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
Cc: kvm@vger.kernel.org, Julien Thierry <julien.thierry@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>, James Morse <james.morse@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 10:37:46AM +0100, Marc Zyngier wrote:
> Having __load_guest_stage2 in kvm_hyp.h is quickly going to trigger
> a circular include problem. In order to avoid this, let's move
> it to kvm_mmu.h, where it will be a better fit anyway.
> 
> In the process, drop the __hyp_text annotation, which doesn't help
> as the function is marked as __always_inline.

Does GCC always inline things marked __always_inline?

I seem to remember some gotchas in this area, but I may be being
paranoid.

If this still only called from hyp, I'd be tempted to heep the
__hyp_text annotation just to be on the safe side.

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
