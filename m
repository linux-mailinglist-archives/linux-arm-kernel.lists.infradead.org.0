Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7C61B5A9C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 13:35:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2HIxyj0ZAQX+BF2lWXfG5ggXbw2RZTwTLOArQmtn2wg=; b=hpbpLy8hQfScA/
	atWnHwO5CI3mk2UD+HAyTEgKofHUSQRNh2qs8vmlEeBp52z818/6WrR45/vMpa3dWPDVVkQz/17fs
	7Zd/LA4ONX5atQKCNT++btdBDvOLk3yWBV2WNtPywVuUH9pHmBGQXve/0iM4WaMRsYlS4DYFP9a/N
	RdHKA5dgNArUIwCS71aJuo4HeO1p95sFFr/LKMORXYATxVprBknmhjEZnppGYZwwj9AoR17k4XmbO
	prxJsxOdZPtJ2BDxnwXW1PKcUSbwyKC5CPV4pkmrZlFqm+pesg9C77JMf9GdibrhaiRd04CObZroK
	aY7jzEv/gLie04TKV57w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRa90-00083D-4B; Thu, 23 Apr 2020 11:35:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRa8p-00081y-ED
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 11:35:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9566531B;
 Thu, 23 Apr 2020 04:35:38 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 33A933F68F;
 Thu, 23 Apr 2020 04:35:37 -0700 (PDT)
Subject: Re: [PATCH v3 5/6] KVM: arm64: vgic-v3: Retire all pending LPIs on
 vcpu destroy
To: Marc Zyngier <maz@kernel.org>, Zenghui Yu <yuzenghui@huawei.com>
References: <20200422161844.3848063-1-maz@kernel.org>
 <20200422161844.3848063-6-maz@kernel.org>
From: James Morse <james.morse@arm.com>
Message-ID: <2a0d1542-1964-c818-aae8-76f9227676b8@arm.com>
Date: Thu, 23 Apr 2020 12:35:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200422161844.3848063-6-maz@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_043539_570535_C6BBC7ED 
X-CRM114-Status: GOOD (  15.15  )
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
Cc: Julien Grall <julien@xen.org>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <Andre.Przywara@arm.com>, Eric Auger <eric.auger@redhat.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc, Zenghui,

On 22/04/2020 17:18, Marc Zyngier wrote:
> From: Zenghui Yu <yuzenghui@huawei.com>
> 
> It's likely that the vcpu fails to handle all virtual interrupts if
> userspace decides to destroy it, leaving the pending ones stay in the
> ap_list. If the un-handled one is a LPI, its vgic_irq structure will
> be eventually leaked because of an extra refcount increment in
> vgic_queue_irq_unlock().

> diff --git a/virt/kvm/arm/vgic/vgic-init.c b/virt/kvm/arm/vgic/vgic-init.c
> index a963b9d766b73..53ec9b9d9bc43 100644
> --- a/virt/kvm/arm/vgic/vgic-init.c
> +++ b/virt/kvm/arm/vgic/vgic-init.c
> @@ -348,6 +348,12 @@ void kvm_vgic_vcpu_destroy(struct kvm_vcpu *vcpu)
>  {
>  	struct vgic_cpu *vgic_cpu = &vcpu->arch.vgic_cpu;
>  
> +	/*
> +	 * Retire all pending LPIs on this vcpu anyway as we're
> +	 * going to destroy it.
> +	 */

Looking at the other caller, do we need something like:
|	if (vgic_cpu->lpis_enabled)

?

> +	vgic_flush_pending_lpis(vcpu);
> +

Otherwise, I get this on a gic-v2 machine!:
[ 1742.187139] BUG: KASAN: use-after-free in vgic_flush_pending_lpis+0x250/0x2c0
[ 1742.194302] Read of size 8 at addr ffff0008e1bf1f28 by task qemu-system-aar/542
[ 1742.203140] CPU: 2 PID: 542 Comm: qemu-system-aar Not tainted
5.7.0-rc2-00006-g4fb0f7bb0e27 #2
[ 1742.211780] Hardware name: ARM LTD ARM Juno Development Platform/ARM Juno Development
Platform, BIOS EDK II Jul 30 2018
[ 1742.222596] Call trace:
[ 1742.225059]  dump_backtrace+0x0/0x328
[ 1742.228738]  show_stack+0x18/0x28
[ 1742.232071]  dump_stack+0x134/0x1b0
[ 1742.235578]  print_address_description.isra.0+0x6c/0x350
[ 1742.240910]  __kasan_report+0x10c/0x180
[ 1742.244763]  kasan_report+0x4c/0x68
[ 1742.248268]  __asan_report_load8_noabort+0x30/0x48
[ 1742.253081]  vgic_flush_pending_lpis+0x250/0x2c0
[ 1742.257718]  __kvm_vgic_destroy+0x1cc/0x478
[ 1742.261919]  kvm_vgic_destroy+0x30/0x48
[ 1742.265773]  kvm_arch_destroy_vm+0x20/0x128
[ 1742.269976]  kvm_put_kvm+0x3e0/0x8d0
[ 1742.273567]  kvm_vm_release+0x3c/0x60
[ 1742.277248]  __fput+0x218/0x630
[ 1742.280406]  ____fput+0x10/0x20
[ 1742.283565]  task_work_run+0xd8/0x1f0
[ 1742.287245]  do_exit+0x87c/0x2640
[ 1742.290575]  do_group_exit+0xd0/0x258
[ 1742.294254]  __arm64_sys_exit_group+0x3c/0x48
[ 1742.298631]  el0_svc_common.constprop.0+0x10c/0x348
[ 1742.303529]  do_el0_svc+0x48/0xd0
[ 1742.306861]  el0_sync_handler+0x11c/0x1b8
[ 1742.310888]  el0_sync+0x158/0x180
[ 1742.315716] The buggy address belongs to the page:
[ 1742.320529] page:fffffe002366fc40 refcount:0 mapcount:0 mapping:000000007e21d29f index:0x0
[ 1742.328821] flags: 0x2ffff00000000000()
[ 1742.332678] raw: 2ffff00000000000 0000000000000000 ffffffff23660401 0000000000000000
[ 1742.340449] raw: 0000000000000000 0000000000000000 00000000ffffffff 0000000000000000
[ 1742.348215] page dumped because: kasan: bad access detected
[ 1742.355304] Memory state around the buggy address:
[ 1742.360115]  ffff0008e1bf1e00: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[ 1742.367360]  ffff0008e1bf1e80: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[ 1742.374606] >ffff0008e1bf1f00: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[ 1742.381851]                                   ^
[ 1742.386399]  ffff0008e1bf1f80: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[ 1742.393645]  ffff0008e1bf2000: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[ 1742.400889] ==================================================================
[ 1742.408132] Disabling lock debugging due to kernel taint


With that:
Reviewed-by: James Morse <james.morse@arm.com>


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
