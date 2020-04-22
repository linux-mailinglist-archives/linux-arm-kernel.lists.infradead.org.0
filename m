Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DED1B3F4C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 12:36:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MMb5d7TM26tnC7yJLpJju7TfZgRalkpHGqsP7yiynSs=; b=fde5WP9oE+N/T8
	Lz9LVdfEZeLLuf5x0+8bIe24MrGfl4ZwqHtA+vobwoQxP2Y0sOxLU+wstOg6J+AOcoYJb9fnVUaqA
	Vv/YQFRuj1tF0T8Z8UQ7GSEPDVbAEr4DyuTqR2J2R9pi+dxQM/Pl8IiRHxkuM4lf4Mx8U1B3+ZFbk
	JxVcFFJ3tdUiynSt1ckKQYARDtizdD59MsT3CwBIzwakDztlTVEsochXHY9QPdeHzf8y1rBcE2t3o
	H0yiNRJ+m9s+Q+P0XqsO2bMmJ28FeNGl09C6olpQQfarXdvt5Ypnu7KdhGCp7PP1zSFbxoW0vZpu+
	j+Cvt/IoMJWtXjWy5cwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRCkN-00010r-To; Wed, 22 Apr 2020 10:36:51 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRCk7-0000yf-74
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 10:36:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587551794;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vi1WDtY0BZGKxdQdcdOvRzo61jzFKRgMVI1AV+nvsO0=;
 b=XWnN3fmR12FNcgUD64JGwJqzw7w5QnzzXLwx2KGH0oUdg5o82WQtf7R2KBinv74yzyPmFy
 X3XmHLqgqDNgG51oH/qfFoZIHKpH27Q6n2+lvnT9RCaUKQsvCzABI9de0kTd43/NTNAcK0
 XHM8urAgBMa3BgakBA/6eGfvwENKi1U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-374-vKdB4GUsPkaQRYP4GmMljw-1; Wed, 22 Apr 2020 06:36:32 -0400
X-MC-Unique: vKdB4GUsPkaQRYP4GmMljw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EA3BF800FF0;
 Wed, 22 Apr 2020 10:36:30 +0000 (UTC)
Received: from localhost (ovpn-12-47.pek2.redhat.com [10.72.12.47])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3D69B5D710;
 Wed, 22 Apr 2020 10:36:27 +0000 (UTC)
Date: Wed, 22 Apr 2020 18:36:23 +0800
From: Baoquan He <bhe@redhat.com>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
Message-ID: <20200422103623.GV4247@MiWiFi-R3L-srv>
References: <18cf6afd-c651-25c7-aca3-3ca3c0e07547@redhat.com>
 <20200416140247.GA12723@MiWiFi-R3L-srv>
 <4e1546eb-4416-dc6d-d549-62d1cecccbc8@redhat.com>
 <20200416143634.GH4247@MiWiFi-R3L-srv>
 <2525cc9c-3566-6275-105b-7f4af8f980bc@redhat.com>
 <9a4eb1d7-33bf-8707-9c0c-1ca657c3e502@redhat.com>
 <20200422091718.GT4247@MiWiFi-R3L-srv>
 <b9173744-6be4-5b41-d205-319542d821ba@redhat.com>
 <20200422095733.GU4247@MiWiFi-R3L-srv>
 <b0e7b7e8-01d0-e03e-83a8-4763ccbede43@redhat.com>
MIME-Version: 1.0
In-Reply-To: <b0e7b7e8-01d0-e03e-83a8-4763ccbede43@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_033635_334677_E90D0123 
X-CRM114-Status: GOOD (  28.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: piliu@redhat.com, Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, linuxppc-dev@lists.ozlabs.org,
 kexec@lists.infradead.org,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>, linux-mm@kvack.org,
 James Morse <james.morse@arm.com>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/22/20 at 12:05pm, David Hildenbrand wrote:
> On 22.04.20 11:57, Baoquan He wrote:
> > On 04/22/20 at 11:24am, David Hildenbrand wrote:
> >> On 22.04.20 11:17, Baoquan He wrote:
> >>> On 04/21/20 at 03:29pm, David Hildenbrand wrote:
> >>>>>> ACPI SRAT is embeded into efi, need read out the rsdp pointer. If we don't
> >>>>>> pass the efi, it won't get the SRAT table correctly, if I remember
> >>>>>> correctly. Yeah, I remeber kvm guest can get memory hotplugged with
> >>>>>> ACPI only, this won't happen on bare metal though. Need check carefully. 
> >>>>>> I have been using kvm guest with uefi firmwire recently.
> >>>>>
> >>>>> Yeah, I can imagine that bare metal is different. kvm only uses ACPI.
> >>>>>
> >>>>> I'm also asking because of virtio-mem. Memory added via virtio-mem is
> >>>>> not part of any efi tables or whatsoever. So I assume the kexec kernel
> >>>>> will not detect it automatically (good!), instead load the virtio-mem
> >>>>> driver and let it add memory back to the system.
> >>>>>
> >>>>> I should probably play with kexec and virtio-mem once I have some spare
> >>>>> cycles ... to find out what's broken and needs to be addressed :)
> >>>>
> >>>> FWIW, I just gave virtio-mem and kexec/kdump a try.
> >>>>
> >>>> a) kdump seems to work. Memory added by virtio-mem is getting dumped.
> >>>> The kexec kernel only uses memory in the crash region. The virtio-mem
> >>>> driver properly bails out due to is_kdump_kernel().
> >>>
> >>> Right, kdump is not impacted later added memory.
> >>>
> >>>>
> >>>> b) "kexec -s -l" seems to work fine. For now, the kernel does not seem
> >>>> to get placed on virtio-mem memory (pure luck due to the left-to-right
> >>>> search). Memory added by virtio-mem is not getting added to the e820
> >>>> map. Once the virtio-mem driver comes back up in the kexec kernel, the
> >>>> right memory is readded.
> >>>
> >>> kexec_file_load just behaves as you tested. It doesn't collect later
> >>> added memory to e820 because it uses e820_table_kexec directly to pass
> >>> e820 to kexec-ed kernel. However, this e820_table_kexec is only updated
> >>> during boot stage. I tried hot adding DIMM after boot, kexec-ed kernel
> >>> doesn't have it in e820 during bootup, but it's recoginized and added
> >>> when ACPI scanning. I think we should update e820_table_kexec when hot
> >>> add/remove memory, at least for DIMM. Not sure if DLPAR, virtio-mem,
> >>> balloon will need be added into e820_table_kexec too, and if this is
> >>> expected behaviour.
> >>>
> >>> But whatever we do, it won't impact the kexec file_loading, because of
> >>> the searching strategy bottom up. Just adding them into e820_table_kexec
> >>> will make it consistent with cold reboot which get recognizes and get
> >>> them into e820 during bootup.
> >>
> >> Yeah, I think whatever a cold-booted kernel will see is what kexec-ed
> >> kernel should see. Not more, not less.
> >>
> >> Regarding virtio-mem: Not in e820 on cold-boot.
> >> Regarding DIMMs: DIMMs under KVM will never show up in the e820 map
> >> IIRC. I think on real HW it can be different.
> > 
> > Yeah, DIMMs under KVM won't show up in e820 map. While this is not feature
> > of QEMU/KVM, but a defect of it. I ever asked Igor who is developer of
> > QEMU/KVM guest in this area, why we don't make kvm guest recognize
> > hotpluggable DIMM and add it into e820 map, he said he had tried to make
> > it, but this will corrupt guest on HyperV. So he had to revert the
> 
> Yeah, I remember that this had to be reverted due to something breaking.
> But OTOH, it allows us to online coldplugged DIMMs online_movable
> easily, so I'd say it's even a feature (although, does not behave like
> real HW we have).
> 
> I use this extensively when testing memory hot(un)plug via coldplugged
> DIMMs.
> 
> I do wonder if there is real HW, where this is also the case.

None for what I know. Hotplug on real HW includes two parts, the boot
mem being hotpluggable is more flexiable one. It allows people to
replace bad DIMM. And you can see code in boot stage has been adjusted a
lot on this purpose, at that time, people haven't thought about kvm
guest.

> 
> > commit on qemu. So I think we can leave it for now for both real HW and
> > kvm, or update the e820_table_kexec to include added DIMM for both real
> > HW and KVM. I hope one day KVM dev will find a way to conquer the defect
> > on HyperV and make the e820map consistent with bare metal. After all,
> > kvm guest is trying to imitate real HW for the most part.
> > 
> > Anyway, I will think about the e820_table_kexec updating. See if we can
> > do something about it.
> 
> Yeah, for DIMMs on real HW it might definitely make sense. We might be
> able to hook into updates of /sys/firmware/memmap on memory add/remove.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
