Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C43B17CD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 06:46:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JIzVVQk1XSJ6zwXzqOC/rlzYQOxBX182dNZNr62KJBk=; b=oIiZ1RRpp90Dk8
	fRXLdN+dmYART53QIy9pUw7YFil5f9A6Zyj+0ZMFXymXm6eqsFLxhtZvD92uqaDY4zHxttv3JHODC
	1QGSR0+b31/ZhmfsWWswKeCNaM5wwWhTkbybu0Fb0pse96lavlzDPvLBOAgXEXRH8Lpn+iyj5V28Y
	QKb6m1DvqBrDlNeZj1O1u16ISiPxZdEUo2jtNByIsqL1eNHfA15FEwSBQBysyTrmsA2+HCbxnz4z+
	sM/UZNbMbjtUWHvLzyBKJCizhYqIwLESXGtd2Y84ToTpGhZoDneYEwRds4YX3mT2TIbzE1GhoU8A1
	AXzS2HSVDiS5Q26b8cgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8dTh-0007s9-VY; Fri, 13 Sep 2019 04:46:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8dTQ-0007q7-D6; Fri, 13 Sep 2019 04:46:21 +0000
Received: from localhost (unknown [84.241.200.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E110E20644;
 Fri, 13 Sep 2019 04:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568349979;
 bh=t3fz3+C+Rszs5v117iwBq01Z8XVjIxQhv9Gun6u8tMU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nAxqE1jeHzcBqj7vt2s31JX2mZM36TzeeTNCnxyL124j8DT8qYynyf9uvPTX1WWBE
 C75UMsP2UwpAl28q5wSIIUIlBB6QPBGHaqSDmsd2y2Zh6WjEoo/yKgvSstp7N1vntj
 xDZK3JeX1rIm8lqy0gvUtH0FvxXLVy4WRzEMdS+c=
Date: Fri, 13 Sep 2019 05:46:14 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: Re: KASAN: slab-out-of-bounds Read in handle_vmptrld
Message-ID: <20190913044614.GA120223@kroah.com>
References: <000000000000a9d4f705924cff7a@google.com>
 <87lfutei1j.fsf@vitty.brq.redhat.com>
 <5218e70e-8a80-7c5f-277b-01d9ab70692a@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5218e70e-8a80-7c5f-277b-01d9ab70692a@redhat.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_214620_487854_E7A0EB46 
X-CRM114-Status: GOOD (  18.54  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, x86@kernel.org, wanpengli@tencent.com,
 kvm@vger.kernel.org, narmstrong@baylibre.com, catalin.marinas@arm.com,
 will.deacon@arm.com, hpa@zytor.com, khilman@baylibre.com, joro@8bytes.org,
 rkrcmar@redhat.com, mingo@redhat.com, Dmitry Vyukov <dvyukov@google.com>,
 syzbot <syzbot+46f1dd7dbbe2bfb98b10@syzkaller.appspotmail.com>,
 devicetree@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 robh+dt@kernel.org, bp@alien8.de, linux-amlogic@lists.infradead.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org, jmattson@google.com,
 USB list <linux-usb@vger.kernel.org>, linux-kernel@vger.kernel.org,
 sean.j.christopherson@intel.com, carlo@caione.org,
 Vitaly Kuznetsov <vkuznets@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 12, 2019 at 06:49:26PM +0200, Paolo Bonzini wrote:
> [tl;dr: there could be a /dev/usb bug only affecting KASAN
> configurations, jump to the end to skip the analysis and get to the bug
> details]
> 
> On 12/09/19 15:54, Vitaly Kuznetsov wrote:
> > Hm, the bisection seems bogus but the stack points us to the following
> > piece of code:
> > 
> >  4776)              if (kvm_vcpu_map(vcpu, gpa_to_gfn(vmptr), &map)) {
> > <skip>
> >  4783)                      return nested_vmx_failValid(vcpu,
> >  4784)                              VMXERR_VMPTRLD_INCORRECT_VMCS_REVISION_ID);
> >  4785)              }
> >  4786) 
> >  4787)              new_vmcs12 = map.hva;
> >  4788) 
> > *4789)              if (new_vmcs12->hdr.revision_id != VMCS12_REVISION ||
> >  4790)                  (new_vmcs12->hdr.shadow_vmcs &&
> >  4791)                   !nested_cpu_has_vmx_shadow_vmcs(vcpu))) {
> > 
> > the reported problem seems to be on VMCS12 region access but it's part
> > of guest memory and we successfuly managed to map it. We're definitely
> > within 1-page range. Maybe KASAN is just wrong here?
> 
> Here is the relevant part of the syzkaller repro:
> 
> syz_kvm_setup_cpu$x86(r1, 0xffffffffffffffff,
> &(0x7f0000000000/0x18000)=nil, 0x0, 0x133, 0x0, 0x0, 0xff7d)
> r3 = syz_open_dev$usb(&(0x7f0000000080)='/dev/bus/usb/00#/00#\x00',
> 0x40000fffffd, 0x200800000000042)
> mmap$IORING_OFF_SQES(&(0x7f0000007000/0x2000)=nil, 0x2000, 0x4, 0x13,
> r3, 0x10000000)
> syz_kvm_setup_cpu$x86(0xffffffffffffffff, r2,
> &(0x7f0000000000/0x18000)=nil, 0x0, 0xfefd, 0x40, 0x0, 0xfffffffffffffdd4)
> ioctl$KVM_RUN(r2, 0xae80, 0x0)
> 
> The mmap$IORING_OFF_SQES is just a normal mmap from a device, which
> replaces the previous mapping for guest memory and in particular
> 0x7f0000007000 which is the VMCS (from the C reproducer: "#define
> ADDR_VAR_VMCS 0x7000").
> 
> The previous mapping is freed with do_munmap and then repopulated in
> usbdev_mmap with remap_pfn_range.  In KVM this means that kvm_vcpu_map
> goes through hva_to_pfn_remapped, which correctly calls get_page via
> kvm_get_pfn.  (Note that although drivers/usb/core/devio.c's usbdev_mmap
> sets VM_IO *after* calling remap_pfn_range, remap_pfn_range itself
> helpfully sets it before calling remap_p4d_range.  And anyway KVM is
> looking at vma->vm_flags under mmap_sem, which is held during mmap).
> 
> So, KVM should be doing the right thing.  Now, the error is:
> 
> > Read of size 4 at addr ffff888091e10000 by task syz-executor758/10006
> > The buggy address belongs to the object at ffff888091e109c0 
> > The buggy address is located 2496 bytes to the left of
> >  8192-byte region [ffff888091e109c0, ffff888091e129c0) 
> 
> And given the use of remap_pfn_range in devusb_mmap, the simplest
> explanation could be that USB expects kmalloc-8k to return 8k-aligned
> values, but this is not true anymore with KASAN.  CCing Dmitry, Greg and
> linux-usb.

USB drivers expect kmalloc to return DMA-able memory.  I don't know
about specific alignment issues, that should only an issue for the host
controller being used here, which you do not say in the above list.

We have had some reports that usbdev_mmap() does not do the "correct
thing" for all host controllers, but a lot of the DMA work that is in
linux-next for 5.4-rc1 should have helped resolve those issues.  What
tree are you seeing these bug reports happening from?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
