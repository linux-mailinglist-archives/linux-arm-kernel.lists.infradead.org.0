Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0312D1C9672
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 18:26:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xqzHElnFK9JqTY8y8EJZ7uSanwVJsZAHwvAZMI1cAjA=; b=pZTYdVXOjGuMOE
	hkai8E9Y0Ms1/tyIIUShJ9G1ZYVwniyNc/WG/nmOUlF60wT1hyie8AeuwwvzMDQ7o9vwZ9Dgnl0/1
	ymg89grmGOt87+eM88a/NO1dhrh+1POHYWHBJdvkcVMVWVML9ir4jjS1LdP2WGleOX3Fgl5xMgz0Z
	f/eCmrJCzPKnp2nkrSAG7htUJXSWdSiYQE1IyBqI8FPd0bGhHSPW6+rssMNdxtl5NDcr+6Oe8SBfc
	Vx5H8Cm3Vl+90hiOkzMVEUOFawVxp1oDxWjSKbtsu2gnJJWtMTDOP5s2zCHaM3MQysfjJtPh86sp9
	Ik5esAItft3lYGLTmQuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWjLn-0003kz-I6; Thu, 07 May 2020 16:26:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWjLe-0003kH-Pz
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 16:26:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1A4B21FB;
 Thu,  7 May 2020 09:26:10 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0701C3F71F;
 Thu,  7 May 2020 09:26:07 -0700 (PDT)
From: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 09/26] KVM: arm64: vgic-v3: Take cpu_if pointer directly
 instead of vcpu
To: Marc Zyngier <maz@kernel.org>, kvmarm@lists.cs.columbia.edu
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-10-maz@kernel.org>
Message-ID: <3174eaad-7d8d-0c52-d71c-afc6b991b636@arm.com>
Date: Thu, 7 May 2020 17:26:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200422120050.3693593-10-maz@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_092610_894165_372E2018 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 Will Deacon <will@kernel.org>, George Cherian <gcherian@marvell.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc, Christoffer,

On 22/04/2020 13:00, Marc Zyngier wrote:
> From: Christoffer Dall <christoffer.dall@arm.com>
> 
> If we move the used_lrs field to the version-specific cpu interface
> structure, the following functions only operate on the struct
> vgic_v3_cpu_if and not the full vcpu:
> 
>   __vgic_v3_save_state
>   __vgic_v3_restore_state
>   __vgic_v3_activate_traps
>   __vgic_v3_deactivate_traps
>   __vgic_v3_save_aprs
>   __vgic_v3_restore_aprs
> 
> This is going to be very useful for nested virt, 

... because you don't need to consider whether the vcpu is running in vEL2?


> so move the used_lrs
> field and change the prototypes and implementations of these functions to
> take the cpu_if parameter directly.


> No functional change.

Looks like no change!

Reviewed-by: James Morse <james.morse@arm.com>


Thanks,

James


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
