Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F672F9605
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 17:51:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iKoYU7hTz5PPg1o8I0cbPRO65rurz0mbH0QpIB4Leyc=; b=o3hb+eGg5y713j
	l0e0qfPNctXJ5roRZCp47s4iHXGVcS9sic4LXqGsjhBuxllWYMxwdviBcDr3FOLgv3CFLWmzVR40d
	3uPJcrM9UA+gVaT+3ujtCLE093oGxYxiplai8+73KpeZHKZrZ+j3Xw1HQ0BxDXXawX49/gdxTAZNh
	bdvIBem75/4Q6xfG+Mo1l+kX7fRtSIhwQdoEaGckAodQR8TbUkZhm+bEghi3VyWo6EgT5RWfKDDOp
	OuunFxbbJBFx+O8VkclXdIGMslobn+XPTZTvgbnH5oj5bwPj9Drp2TO5YnbwWCJswdKdMrsOELeO1
	yIJnGc8N81xqOAWJ9Emw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUZNs-0005ES-2W; Tue, 12 Nov 2019 16:51:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUZNj-0005Dh-Kf
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 16:51:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8DDF730E;
 Tue, 12 Nov 2019 08:51:06 -0800 (PST)
Received: from [10.1.196.63] (e123195-lin.cambridge.arm.com [10.1.196.63])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9B1C83F534;
 Tue, 12 Nov 2019 08:51:05 -0800 (PST)
Subject: Re: [kvm-unit-tests PATCH 10/17] arm: gic: Check for writable IGROUPR
 registers
To: Andre Przywara <andre.przywara@arm.com>, Andrew Jones
 <drjones@redhat.com>, Paolo Bonzini <pbonzini@redhat.com>
References: <20191108144240.204202-1-andre.przywara@arm.com>
 <20191108144240.204202-11-andre.przywara@arm.com>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <30e68410-9ed4-91db-df2e-60272d4cd877@arm.com>
Date: Tue, 12 Nov 2019 16:51:04 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191108144240.204202-11-andre.przywara@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_085107_722813_CB361DA9 
X-CRM114-Status: GOOD (  17.14  )
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
Cc: Marc Zyngier <maz@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 11/8/19 2:42 PM, Andre Przywara wrote:
> When both groups are avaiable to the non-secure side, the MMIO group
> registers need to be writable, so that the group that an IRQ belongs to
> can be programmed.
>
> Check that the group can be flipped, after having established that both
> groups are usable.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arm/gic.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/arm/gic.c b/arm/gic.c
> index c882a24..485ca4f 100644
> --- a/arm/gic.c
> +++ b/arm/gic.c
> @@ -683,6 +683,7 @@ static bool gicv3_check_security(void *gicd_base)
>  static void test_irq_group(void *gicd_base)
>  {
>  	bool is_gicv3 = (gic_version() == 3);
> +	u32 reg;

The return value for gic_get_irq_group is an int, not a u32. Also, maybe it should
be named group instead, so it's clear what it represents.

>  
>  	report_prefix_push("GROUP");
>  	gic_enable_defaults();
> @@ -692,6 +693,16 @@ static void test_irq_group(void *gicd_base)
>  		if (!gicv3_check_security(gicd_base))
>  			return;
>  	}
> +
> +	/*
> +	 * On a security aware GIC in non-secure world the IGROUPR registers
> +	 * are RAZ/WI. KVM emulates a single-security-state GIC, so both
> +	 * groups are available and the IGROUPR registers are writable.
> +	 */
> +	reg = gic_get_irq_group(SPI_IRQ);
> +	gic_set_irq_group(SPI_IRQ, !reg);
> +	report("IGROUPR is writable", gic_get_irq_group(SPI_IRQ) != reg);

This is nitpicking, but from a consistency point of view, shouldn't you check that
the new group is the value that you wrote, meaning the check should be
gic_get_irq_group(SPI_IRQ) == !reg?

Thanks,
Alex
> +	gic_set_irq_group(SPI_IRQ, reg);
>  }
>  
>  static void spi_send(void)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
