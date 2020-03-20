Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 871C118CCA3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 12:20:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uFr8bkZMZZHeOmwMWvlR953S5ulrALL5Mx/6HrsAiRs=; b=fu6CreOXBRw4GdooK7MXyszPJ
	c9UPefTqMHqxjsEU3wkOvWo0+E48QP3Vh2jVenpyG3/N5IYSPS9PRt4A99zdeeOUXzDPlAuRufLux
	l+BOsUj4GE3SpweV5b3nBWqDj+mw63EI7i+zrp4kyfkrHhWNksZO3UyvvdeJIXKknxftBTzKJORkM
	hqlyKds2HkxOLBMEKRhGN5QXoGLNIE0+dv6DcRe8wXWrzlB3IN/jNZBaRJScFNrUurrS2hnZWDuVQ
	ebclpwqx5Qa+u+7jlxrJeTLTJ/pdCU7fDrSTuVUO9imZpMTDr1WgicudCyTot2RB/XyByVBC02UI2
	EL0uuPxjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFFhM-0004P4-DH; Fri, 20 Mar 2020 11:20:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFFhA-0003sZ-8D
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 11:20:09 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 295E220754;
 Fri, 20 Mar 2020 11:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584703207;
 bh=Fht9Bm+/mYo7KEXWQ1/nQ2VCA8zoKCq/hHDNDTuxjm0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=clI/ORQwfpfhrnfMm5AIOneqPE/E+/tdWg4GgU6mywyMitPwxnn9AHUKVNzrFU/bi
 cKkABgDTJVz4pUJ1Qs/n57po0+9Ar5rg3pdhhhmpeCRhfTBMcc2geRr/qvHxaFngo4
 FjY8oUuRIVVYwYBxhtPJ7+8EZ5F+wBMhtZLSpmIg=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jFFh7-00EDxA-CV; Fri, 20 Mar 2020 11:20:05 +0000
MIME-Version: 1.0
Date: Fri, 20 Mar 2020 11:20:05 +0000
From: Marc Zyngier <maz@kernel.org>
To: Auger Eric <eric.auger@redhat.com>
Subject: Re: [PATCH v5 20/23] KVM: arm64: GICv4.1: Plumb SGI implementation
 selection in the distributor
In-Reply-To: <02350520-8591-c62c-e7fa-33db30c25b96@redhat.com>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-21-maz@kernel.org>
 <72832f51-bbde-8502-3e03-189ac20a0143@huawei.com>
 <4a06fae9c93e10351276d173747d17f4@kernel.org>
 <49995ec9-3970-1f62-5dfc-118563ca00fc@redhat.com>
 <b98855a1-6300-d323-80f6-82d3b9854290@huawei.com>
 <e60578b5-910c-0355-d231-29322900679d@redhat.com>
 <dfaf8a1b7c7fd8b769a244a8a779d952@kernel.org>
 <02350520-8591-c62c-e7fa-33db30c25b96@redhat.com>
Message-ID: <242f066aaa5f76861e7fe202944073b9@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: eric.auger@redhat.com, lorenzo.pieralisi@arm.com,
 jason@lakedaemon.net, kvm@vger.kernel.org, suzuki.poulose@arm.com,
 linux-kernel@vger.kernel.org, rrichter@marvell.com, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, yuzenghui@huawei.com, tglx@linutronix.de,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_042008_363763_47CB6102 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 Robert Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Zenghui Yu <yuzenghui@huawei.com>,
 Thomas Gleixner <tglx@linutronix.de>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Eric,

On 2020-03-20 11:09, Auger Eric wrote:
> Hi Marc,

[...]

>>>> It means that userspace will be aware of some form of GICv4.1 
>>>> details
>>>> (e.g., get/set vSGI state at HW level) that KVM has implemented.
>>>> Is it something that userspace required to know? I'm open to this 
>>>> ;-)
>>> Not sure we would be obliged to expose fine details. This could be a
>>> generic save/restore device group/attr whose implementation at KVM 
>>> level
>>> could differ depending on the version being implemented, no?
>> 
>> What prevents us from hooking this synchronization to the current 
>> behaviour
>> of KVM_DEV_ARM_VGIC_SAVE_PENDING_TABLES? After all, this is already 
>> the
>> point
>> where we synchronize the KVM view of the pending state with userspace.
>> Here, it's just a matter of picking the information from some other 
>> place
>> (i.e. the host's virtual pending table).
> agreed
>> 
>> The thing we need though is the guarantee that the guest isn't going 
>> to
>> get more vLPIs at that stage, as they would be lost. This effectively
>> assumes that we can also save/restore the state of the signalling 
>> devices,
>> and I don't know if we're quite there yet.
> On QEMU, when KVM_DEV_ARM_VGIC_SAVE_PENDING_TABLES is called, the VM is
> stopped.
> See cddafd8f353d ("hw/intc/arm_gicv3_its: Implement state 
> save/restore")
> So I think it should work, no?

The guest being stopped is a good start. But my concern is on the device 
side.

If the device is still active (generating interrupts), these interrupts 
will
be dropped because the vPE will have been unmapped from the ITS in order 
to
clean the ITS caches and make sure the virtual pending table is up to 
date.

In turn, restoring the guest may lead to a lockup because we would have 
lost
these interrupts. What does QEMU on x86 do in this case?

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
