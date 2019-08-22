Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 111CA99288
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 13:49:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=myVaYJDy/3p4Amn9L+b1CBmhuYkul10b8sNMT/ghmPg=; b=Vt21VLbLHFS3rN
	QImzxgY6mAYXmOPgzjSxp20VEqK3qVgJimGx/ZWKiH5UVO6LrzQmOqBpO0NhORsNjLzAPwPAnwbs6
	EXbcfYttAF/s5bUqm0o6H5IdWJCutUVmxg/uduYek5h3AVcOirThx5s/lF2mqYdkqHQTlJ2qr4Pte
	y75WBLeHlCuqTwTHYfWcuLsR3Ne3Pwl2kKpGvP540piDnZAvuZB5Um4SQ0QJL/AWVmFutdjBUgcS9
	+rDmevFEAVcpU3HOEhTCuz03874ATrZPax8LF/SEsQAu341bhdZXAtQrzk5KNcrdBCe1mR9i6o2HM
	w10iCZajUlUD0FuMmWmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0laS-0007zW-Cx; Thu, 22 Aug 2019 11:49:04 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0la7-0007xd-Mg
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 11:48:45 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id E3D4ACC6F3D6B9BD062D;
 Thu, 22 Aug 2019 19:48:39 +0800 (CST)
Received: from localhost (10.202.226.61) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.439.0; Thu, 22 Aug 2019
 19:48:38 +0800
Date: Thu, 22 Aug 2019 12:48:25 +0100
From: Jonathan Cameron <jonathan.cameron@huawei.com>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v3 07/10] KVM: arm64: Provide a PV_TIME device to user
 space
Message-ID: <20190822124825.000009f1@huawei.com>
In-Reply-To: <87bc2a01-8cf5-5161-45f8-00384775cf3a@arm.com>
References: <20190821153656.33429-1-steven.price@arm.com>
 <20190821153656.33429-8-steven.price@arm.com>
 <20190822115722.00005aa7@huawei.com>
 <87bc2a01-8cf5-5161-45f8-00384775cf3a@arm.com>
Organization: Huawei
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.61]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_044843_906464_713B489B 
X-CRM114-Status: GOOD (  27.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Radim =?utf-8?Q?Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 kvm@vger.kernel.org, Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Marc Zyngier <maz@kernel.org>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 22 Aug 2019 12:11:55 +0100
Steven Price <steven.price@arm.com> wrote:

> On 22/08/2019 11:57, Jonathan Cameron wrote:
> > On Wed, 21 Aug 2019 16:36:53 +0100
> > Steven Price <steven.price@arm.com> wrote:
> >   
> >> Allow user space to inform the KVM host where in the physical memory
> >> map the paravirtualized time structures should be located.
> >>
> >> A device is created which provides the base address of an array of
> >> Stolen Time (ST) structures, one for each VCPU. There must be (64 *
> >> total number of VCPUs) bytes of memory available at this location.
> >>
> >> The address is given in terms of the physical address visible to
> >> the guest and must be page aligned. The guest will discover the address
> >> via a hypercall.
> >>
> >> Signed-off-by: Steven Price <steven.price@arm.com>  
> > 
> > Hi Steven,
> > 
> > One general question inline.  I'm not particularly familiar with this area
> > of the kernel, so maybe I'm missing something obvious, but having
> > .destroy free the kvm_device which wasn't created in .create seems
> > 'unusual'. 
> > 
> > Otherwise, FWIW looks good to me.
> > 
> > Jonathan
> >   
> [...]
> >> +static void kvm_arm_pvtime_destroy(struct kvm_device *dev)
> >> +{
> >> +	struct kvm_arch_pvtime *pvtime = &dev->kvm->arch.pvtime;
> >> +
> >> +	pvtime->st_base = GPA_INVALID;
> >> +	kfree(dev);  
> > 
> > Nothing to do with your patch as such... All users do the same.
> > 
> > This seems miss balanced. Why do we need to free the device by hand
> > when we didn't create it in the create function?  I appreciate
> > the comments say this is needed, but as far as I can see every
> > single callback does kfree(dev) at the end which seems an
> > odd thing to do.  
> 
> Yes I think this is odd too - indeed when I initially wrote this I
> missed off the kfree() call and had to track down the memory leak.
> 
> When I looked into potentially tiding this up I found some other
> oddities, e.g. "kvm-xive" (arch/powerpc/kvm/book3s_xive.c) doesn't have
> a destroy callback. But I can't see anything in the common code which
> deals with that case. So I decided to just "go with the flow" at the
> moment, since I don't understand how some of these existing devices work
> (perhaps they are already broken?).

It has a release however and kvm_device_release also removes the
device from the list that would then be cleared by kvm_destroy_devices.

kvm_device_release is a release callback for the file operations so it
'might' be called in all paths.

Fun though, in kvm_ioctl_create_device the error handling for
the anon_inode_getfd calls ops->destroy without checking it exists.
Boom.

Possibly never happens in reality but looks like a bug to me.

Jonathan


> 
> Steve
> 
> >> +}
> >> +
> >> +static int kvm_arm_pvtime_set_attr(struct kvm_device *dev,
> >> +				   struct kvm_device_attr *attr)
> >> +{
> >> +	struct kvm *kvm = dev->kvm;
> >> +	struct kvm_arch_pvtime *pvtime = &kvm->arch.pvtime;
> >> +	u64 __user *user = (u64 __user *)attr->addr;
> >> +	struct kvm_dev_arm_st_region region;
> >> +
> >> +	switch (attr->group) {
> >> +	case KVM_DEV_ARM_PV_TIME_REGION:
> >> +		if (copy_from_user(&region, user, sizeof(region)))
> >> +			return -EFAULT;
> >> +		if (region.gpa & ~PAGE_MASK)
> >> +			return -EINVAL;
> >> +		if (region.size & ~PAGE_MASK)
> >> +			return -EINVAL;
> >> +		switch (attr->attr) {
> >> +		case KVM_DEV_ARM_PV_TIME_ST:
> >> +			if (pvtime->st_base != GPA_INVALID)
> >> +				return -EEXIST;
> >> +			pvtime->st_base = region.gpa;
> >> +			pvtime->st_size = region.size;
> >> +			return 0;
> >> +		}
> >> +		break;
> >> +	}
> >> +	return -ENXIO;
> >> +}
> >> +
> >> +static int kvm_arm_pvtime_get_attr(struct kvm_device *dev,
> >> +				   struct kvm_device_attr *attr)
> >> +{
> >> +	struct kvm_arch_pvtime *pvtime = &dev->kvm->arch.pvtime;
> >> +	u64 __user *user = (u64 __user *)attr->addr;
> >> +	struct kvm_dev_arm_st_region region;
> >> +
> >> +	switch (attr->group) {
> >> +	case KVM_DEV_ARM_PV_TIME_REGION:
> >> +		switch (attr->attr) {
> >> +		case KVM_DEV_ARM_PV_TIME_ST:
> >> +			region.gpa = pvtime->st_base;
> >> +			region.size = pvtime->st_size;
> >> +			if (copy_to_user(user, &region, sizeof(region)))
> >> +				return -EFAULT;
> >> +			return 0;
> >> +		}
> >> +		break;
> >> +	}
> >> +	return -ENXIO;
> >> +}
> >> +
> >> +static int kvm_arm_pvtime_has_attr(struct kvm_device *dev,
> >> +				   struct kvm_device_attr *attr)
> >> +{
> >> +	switch (attr->group) {
> >> +	case KVM_DEV_ARM_PV_TIME_REGION:
> >> +		switch (attr->attr) {
> >> +		case KVM_DEV_ARM_PV_TIME_ST:
> >> +			return 0;
> >> +		}
> >> +		break;
> >> +	}
> >> +	return -ENXIO;
> >> +}
> >> +
> >> +static const struct kvm_device_ops pvtime_ops = {
> >> +	"Arm PV time",
> >> +	.create = kvm_arm_pvtime_create,
> >> +	.destroy = kvm_arm_pvtime_destroy,
> >> +	.set_attr = kvm_arm_pvtime_set_attr,
> >> +	.get_attr = kvm_arm_pvtime_get_attr,
> >> +	.has_attr = kvm_arm_pvtime_has_attr
> >> +};
> >> +
> >> +void kvm_pvtime_init(void)
> >> +{
> >> +	kvm_register_device_ops(&pvtime_ops, KVM_DEV_TYPE_ARM_PV_TIME);
> >> +}  
> > 
> > 
> > 
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> >   
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
