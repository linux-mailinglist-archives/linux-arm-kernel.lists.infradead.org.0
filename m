Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8AAB499A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 10:36:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dejOIOKoiw+XFALXHbjaWwxGs22LseyEYyXpSa0ir+E=; b=fTv1IdlliJGNRB
	QLiobNYpWVs1z9RJHgcTaO58OCoPyf/+KBkbwNc6oc4W6bOBroe2huD5VW+3MxfvD9Xx4wZqO8Txm
	uyFQPXB6lxkW2i8JedQaJq5JGJetwk/v8TdtHpD83Z6KTc7GlzJvlP2oQG9Lk7Bl7CP8xFtZj++Uh
	gtnzx28Jn0C8D7/xbN/E6rHQv/qOQMRkaxNMbEcdPp6Pb2kJi0q1nqY6yLWDMTOHU+FhL3OIddiPe
	5VNCYqFZqblEs3vybbes326G+gfGc/Wb5ywy8q7IOAH8VLwPhqYMrFSHNv2c5RGuJMddCy5F1Kc+z
	FxNxzDMDdL4bZEUZ/h6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA8xt-0008Qi-5o; Tue, 17 Sep 2019 08:36:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA8xb-0008Q9-F1
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 08:35:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2856928;
 Tue, 17 Sep 2019 01:35:42 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 725C53F575; Tue, 17 Sep 2019 01:35:41 -0700 (PDT)
Subject: Re: [PATCH] KVM: arm64: vgic-v4: Move the GICv4 residency flow to be
 driven by vcpu_load/put
To: Zenghui Yu <yuzenghui@huawei.com>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org
References: <20190903155747.219802-1-maz@kernel.org>
 <5ab75fec-6014-e3b4-92a3-63d5015814c1@huawei.com>
From: Marc Zyngier <maz@kernel.org>
Organization: Approximate
Message-ID: <07ddb304-9a7a-64a3-386a-96eea4516346@kernel.org>
Date: Tue, 17 Sep 2019 09:35:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <5ab75fec-6014-e3b4-92a3-63d5015814c1@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_013543_550730_CE5DCEE9 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Andre Przywara <Andre.Przywara@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Zenghui,

On 17/09/2019 09:10, Zenghui Yu wrote:
> Hi Marc,
> 
> I've run this patch on my box and got the following messages:
> 
> ---8<
> 
> [ 2258.490030] BUG: sleeping function called from invalid context at 
> kernel/irq/manage.c:138
> [ 2258.490034] in_atomic(): 1, irqs_disabled(): 0, pid: 59278, name: CPU 
> 0/KVM
> [ 2258.490039] CPU: 32 PID: 59278 Comm: CPU 0/KVM Kdump: loaded Tainted: 
> G        W         5.3.0+ #26
> [ 2258.490041] Hardware name: Huawei TaiShan 2280 /BC11SPCD, BIOS 1.58 
> 10/29/2018
> [ 2258.490043] Call trace:
> [ 2258.490056]  dump_backtrace+0x0/0x188
> [ 2258.490060]  show_stack+0x24/0x30
> [ 2258.490066]  dump_stack+0xb0/0xf4
> [ 2258.490072]  ___might_sleep+0x10c/0x130
> [ 2258.490074]  __might_sleep+0x58/0x90
> [ 2258.490078]  synchronize_irq+0x58/0xd8
> [ 2258.490079]  disable_irq+0x2c/0x38
> [ 2258.490083]  vgic_v4_load+0x9c/0xc0
> [ 2258.490084]  vgic_v3_load+0x94/0x170
> [ 2258.490088]  kvm_vgic_load+0x3c/0x60
> [ 2258.490092]  kvm_arch_vcpu_load+0xd4/0x1d0
> [ 2258.490095]  vcpu_load+0x50/0x70
> [ 2258.490097]  kvm_arch_vcpu_ioctl_run+0x94/0x978
> [ 2258.490098]  kvm_vcpu_ioctl+0x3d8/0xa28
> [ 2258.490104]  do_vfs_ioctl+0xc4/0x8e8
> [ 2258.490106]  ksys_ioctl+0x8c/0xa0
> [ 2258.490108]  __arm64_sys_ioctl+0x28/0x58
> [ 2258.490112]  el0_svc_common.constprop.0+0x7c/0x188
> [ 2258.490114]  el0_svc_handler+0x34/0xb8
> [ 2258.490117]  el0_svc+0x8/0xc
> [ 2259.497070] BUG: sleeping function called from invalid context at 
> kernel/irq/manage.c:138

Thanks for reporting this.

[...]

> The logic of disabling the doorbell interrupt in vgic_v4_load() might
> need a fix?

The logic itself looks OK, but doing a full blown disable_irq() is both
counter productive (if we race against a doorbell, there is not much we
can do about it and waiting for it to end is pointless) and wrong
(despite the comment that this can be called in IRQ context, it is
pretty unsafe to do so).

Can you try turning it into a disable_irq_nosync() and let me know if
that helps?

Thanks,

	M.
-- 
Jazz is not dead, it just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
