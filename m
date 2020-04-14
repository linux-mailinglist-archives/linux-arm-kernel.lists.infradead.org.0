Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 217BA1A7D09
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 15:21:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u6FNquPDiZtZAskCKY+h6rsnziJLPODC/JtOSx1TQg8=; b=FkB1AHW0k5+jy9
	XJNegLrFvx6uiaWUwFpf6w932NqfoEbKxz0EhLoXHc0gl3O2vR+I532c1a8hptebObyt9NO/TgECT
	9xLQHgnKr/2g2JiTRfUVrPl3fiZ6ZqZJA/o96p6+UDjN01nW5zT5G2WOkSUFY0Eg3T4hTLquhvKOS
	0h+VoU6abWSO8N5nYSeFOV7vd68sNK2Lbuy1tr7ad+NyPohZoo744h7RdomvrtaN/Odv/+th2vevI
	btoJ7qG69qp9xNJMsFCDWCUSpOA1knoqXGUb1LDlieheiTiXh/0wLYHMhqm0jWtTqMIsKhy/0phJV
	zogXJIEnMAtgJ97dGO/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLVQ-0001lx-L0; Tue, 14 Apr 2020 13:21:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLPE-00007S-O1
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 13:15:15 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 993552075E;
 Tue, 14 Apr 2020 13:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586870110;
 bh=v0a5YinYfPspIVz+q0NHgE/kUU23yUEY3inKhdoX4tU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=w3390RS3SR8v6HZfOEkZCrpHMCPLgbTFJk2j24PRa75T/76LECBlHWumjlVFr0KQt
 IOQF4ZkQGozqEMqhJMSKG1XR3b5udb0nV9muqMutN7bn/yOq95DbwY8+nEVqhJ4uLm
 d3glyW9gRNB4lcZpGcAtrdqQrBuS2VORrG3uSas0=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jOLPA-0039rd-KC; Tue, 14 Apr 2020 14:15:08 +0100
Date: Tue, 14 Apr 2020 14:15:07 +0100
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH 1/2] KVM: arm64: vgic-v3: Retire all pending LPIs on
 vcpu destroy
Message-ID: <20200414141507.0d0a0f93@why>
In-Reply-To: <a1c67c96-56f0-2976-ba1b-0991972254b3@huawei.com>
References: <20200414030349.625-1-yuzenghui@huawei.com>
 <20200414030349.625-2-yuzenghui@huawei.com>
 <20200414115417.451f8b66@why>
 <a1c67c96-56f0-2976-ba1b-0991972254b3@huawei.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, kvmarm@lists.cs.columbia.edu,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 wanghaibin.wang@huawei.com, yezengruan@huawei.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_061513_083407_B36516F4 
X-CRM114-Status: GOOD (  22.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: suzuki.poulose@arm.com, linux-kernel@vger.kernel.org, yezengruan@huawei.com,
 james.morse@arm.com, linux-arm-kernel@lists.infradead.org,
 wanghaibin.wang@huawei.com, kvmarm@lists.cs.columbia.edu,
 julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 14 Apr 2020 19:17:49 +0800
Zenghui Yu <yuzenghui@huawei.com> wrote:

> Hi Marc,
> 
> On 2020/4/14 18:54, Marc Zyngier wrote:
> > On Tue, 14 Apr 2020 11:03:47 +0800
> > Zenghui Yu <yuzenghui@huawei.com> wrote:
> > 
> > Hi Zenghui,
> >   
> >> It's likely that the vcpu fails to handle all virtual interrupts if
> >> userspace decides to destroy it, leaving the pending ones stay in the
> >> ap_list. If the un-handled one is a LPI, its vgic_irq structure will
> >> be eventually leaked because of an extra refcount increment in
> >> vgic_queue_irq_unlock().
> >>
> >> This was detected by kmemleak on almost every guest destroy, the
> >> backtrace is as follows:
> >>
> >> unreferenced object 0xffff80725aed5500 (size 128):
> >> comm "CPU 5/KVM", pid 40711, jiffies 4298024754 (age 166366.512s)
> >> hex dump (first 32 bytes):
> >> 00 00 00 00 00 00 00 00 08 01 a9 73 6d 80 ff ff ...........sm...
> >> c8 61 ee a9 00 20 ff ff 28 1e 55 81 6c 80 ff ff .a... ..(.U.l...
> >> backtrace:
> >> [<000000004bcaa122>] kmem_cache_alloc_trace+0x2dc/0x418
> >> [<0000000069c7dabb>] vgic_add_lpi+0x88/0x418
> >> [<00000000bfefd5c5>] vgic_its_cmd_handle_mapi+0x4dc/0x588
> >> [<00000000cf993975>] vgic_its_process_commands.part.5+0x484/0x1198
> >> [<000000004bd3f8e3>] vgic_its_process_commands+0x50/0x80
> >> [<00000000b9a65b2b>] vgic_mmio_write_its_cwriter+0xac/0x108
> >> [<0000000009641ebb>] dispatch_mmio_write+0xd0/0x188
> >> [<000000008f79d288>] __kvm_io_bus_write+0x134/0x240
> >> [<00000000882f39ac>] kvm_io_bus_write+0xe0/0x150
> >> [<0000000078197602>] io_mem_abort+0x484/0x7b8
> >> [<0000000060954e3c>] kvm_handle_guest_abort+0x4cc/0xa58
> >> [<00000000e0d0cd65>] handle_exit+0x24c/0x770
> >> [<00000000b44a7fad>] kvm_arch_vcpu_ioctl_run+0x460/0x1988
> >> [<0000000025fb897c>] kvm_vcpu_ioctl+0x4f8/0xee0
> >> [<000000003271e317>] do_vfs_ioctl+0x160/0xcd8
> >> [<00000000e7f39607>] ksys_ioctl+0x98/0xd8
> >>
> >> Fix it by retiring all pending LPIs in the ap_list on the destroy path.
> >>
> >> p.s. I can also reproduce it on a normal guest shutdown. It is because
> >> userspace still send LPIs to vcpu (through KVM_SIGNAL_MSI ioctl) while
> >> the guest is being shutdown and unable to handle it. A little strange
> >> though and haven't dig further...  
> > 
> > What userspace are you using? You'd hope that the VMM would stop
> > processing I/Os when destroying the guest. But we still need to handle
> > it anyway, and I thing this fix makes sense.  
> 
> I'm using Qemu (master) for debugging. Looks like an interrupt
> corresponding to a virtio device configuration change, triggered after
> all other devices had freed their irqs. Not sure if it's expected.
> 
> >>
> >> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
> >> ---
> >>   virt/kvm/arm/vgic/vgic-init.c | 6 ++++++
> >>   1 file changed, 6 insertions(+)
> >>
> >> diff --git a/virt/kvm/arm/vgic/vgic-init.c b/virt/kvm/arm/vgic/vgic-init.c
> >> index a963b9d766b7..53ec9b9d9bc4 100644
> >> --- a/virt/kvm/arm/vgic/vgic-init.c
> >> +++ b/virt/kvm/arm/vgic/vgic-init.c
> >> @@ -348,6 +348,12 @@ void kvm_vgic_vcpu_destroy(struct kvm_vcpu *vcpu)
> >>   {
> >>   	struct vgic_cpu *vgic_cpu = &vcpu->arch.vgic_cpu;  
> >>   >> +	/*  
> >> +	 * Retire all pending LPIs on this vcpu anyway as we're
> >> +	 * going to destroy it.
> >> +	 */
> >> +	vgic_flush_pending_lpis(vcpu);
> >> +
> >>   	INIT_LIST_HEAD(&vgic_cpu->ap_list_head);
> >>   }  
> >>   > > I guess that at this stage, the INIT_LIST_HEAD() is superfluous, right?  
> 
> I was just thinking that the ap_list_head may not be empty (besides LPI,
> with other active or pending interrupts), so leave it unchanged.

It isn't clear what purpose this serves (the vcpus are about to be
freed, and so are the ap_lists), but I guess it doesn't hurt either.
I'll queue both patches.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
