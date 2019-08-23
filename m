Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 434E69B162
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 15:54:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=H6vNtme21mal0rFyEOOAjGF0TO9L1l/NK/QUsPnHHds=; b=Zle9jdkApEAP9/xmh9s4dL7g/
	udvz9hDpPBKlZ+vfvmTs0GoomSuqzMblMwXUEKTfjmQ3EkjBfZfaZgHh4elBm5HG692kNVG+lauUx
	7k/0/lZWciMLXqSfbPZauKG/oi0CeaPXyPJQEpNJcqCtIXbkZRJZuDSRAzgNmVm1fpCThGaeb958j
	wV+fpbTvfYe6iGhn2Dlw/2Us7eUQ4Qj30NpmYCPWFeV5OfDQW3o6wJ9HSwDCTX2J3AZn+tvGcFpn7
	rF4EAQnujwO5g+HmG7Yve4jM3l6+sqgFAA6Ot//sBiM6HItOTYp9qHN7uI18X16Z0r30qGoiA4eRc
	oMFHtiWMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1A1g-00018X-O3; Fri, 23 Aug 2019 13:54:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i1A1a-00017m-OP
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 13:54:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5F60D28;
 Fri, 23 Aug 2019 06:54:40 -0700 (PDT)
Received: from [10.1.196.50] (e108454-lin.cambridge.arm.com [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 895E63F718;
 Fri, 23 Aug 2019 06:54:39 -0700 (PDT)
Subject: Re: [PATCH v3] KVM: arm: VGIC: properly initialise private IRQ
 affinity
To: Andre Przywara <andre.przywara@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>
References: <20190823103416.110976-1-andre.przywara@arm.com>
From: Julien Grall <julien.grall@arm.com>
Message-ID: <bdb1426b-1c00-fce3-5e42-25c97d4311e1@arm.com>
Date: Fri, 23 Aug 2019 14:54:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190823103416.110976-1-andre.przywara@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_065442_841952_E5BD2DD3 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Dave Martin <dave.martin@arm.com>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andre,

On 23/08/2019 11:34, Andre Przywara wrote:
> At the moment we initialise the target *mask* of a virtual IRQ to the
> VCPU it belongs to, even though this mask is only defined for GICv2 and
> quickly runs out of bits for many GICv3 guests.
> This behaviour triggers an UBSAN complaint for more than 32 VCPUs:
> ------
> [ 5659.462377] UBSAN: Undefined behaviour in virt/kvm/arm/vgic/vgic-init.c:223:21
> [ 5659.471689] shift exponent 32 is too large for 32-bit type 'unsigned int'
> ------
> Also for GICv3 guests the reporting of TARGET in the "vgic-state" debugfs
> dump is wrong, due to this very same problem.
> 
> Because there is no requirement to create the VGIC device before the
> VCPUs (and QEMU actually does it the other way round), we can't safely
> initialise mpidr or targets in kvm_vgic_vcpu_init(). But since we touch
> every private IRQ for each VCPU anyway later (in vgic_init()), we can
> just move the initialisation of those fields into there, where we
> definitely know the VGIC type.
> 
> On the way make sure we really have either a VGICv2 or a VGICv3 device,
> since the existing code is just checking for "VGICv3 or not", silently
> ignoring the uninitialised case.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> Reported-by: Dave Martin <dave.martin@arm.com>

I have tested with both a combination of GICv2/GICv3 and kvmtools/QEMU. I can 
confirm the UBSAN warning is not present anymore. Feel free to add my tested-by:

Tested-by: Julien Grall <julien.grall@arm.com>

Cheers,

-- 
Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
