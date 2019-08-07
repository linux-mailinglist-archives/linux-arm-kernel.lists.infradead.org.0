Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D14B784DB9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 15:40:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zMzVYRhmCstBznA5I2od/xGih6sVA7jRhr+kx7eI3W0=; b=OKNhp5r11igGeZ
	koHCk9WijMLYbuSub/sHAEXXVNqQYN4HuzvVCmO/SEexl4wb1sEGd15DlSZbtOz84kB8Ic1K5PCbx
	9bjNh6qeUiXQOnLvICmdnOtdTg8Nz8fVdQDRcqeUnDVzwU2zKAsGV0DK+Wq+e0LbntfhaMxiQyOmj
	UuZ4E7LAQ116fvD7QRehaSlqmDbNlVf5VCHpZWYHS263keQ9xBc8phOeKwbjxo5TIqexkRlKEd+4t
	UVdB1AS+AabIgxIqewDtHbca7KPp/W1rxFW9grnOwRblbMX2wMJ40zlVs74SqnsUh59NqUwoSrUqT
	rNKVAqspSkNu+eXbxXxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvMBL-0004g9-PN; Wed, 07 Aug 2019 13:40:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvM9s-0002OY-N8
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 13:39:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 024B528;
 Wed,  7 Aug 2019 06:39:16 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 63FC23F706;
 Wed,  7 Aug 2019 06:39:14 -0700 (PDT)
Subject: Re: [PATCH 6/9] KVM: arm64: Provide a PV_TIME device to user space
To: Marc Zyngier <maz@kernel.org>
References: <20190802145017.42543-1-steven.price@arm.com>
 <20190802145017.42543-7-steven.price@arm.com> <20190803135113.6cdf500c@why>
 <20190803183335.149e0113@why>
From: Steven Price <steven.price@arm.com>
Message-ID: <5aa54066-b9f6-22d1-fa2b-ce5cbf244ab5@arm.com>
Date: Wed, 7 Aug 2019 14:39:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190803183335.149e0113@why>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_063917_499511_8991637C 
X-CRM114-Status: GOOD (  13.44  )
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
Cc: kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/08/2019 18:34, Marc Zyngier wrote:
> On Sat, 3 Aug 2019 13:51:13 +0100
> Marc Zyngier <maz@kernel.org> wrote:
> 
> [forgot that one]
> 
>> On Fri,  2 Aug 2019 15:50:14 +0100
>> Steven Price <steven.price@arm.com> wrote:
> 
> [...]
> 
>>> +static int __init kvm_pvtime_init(void)
>>> +{
>>> +	kvm_register_device_ops(&pvtime_ops, KVM_DEV_TYPE_ARM_PV_TIME);
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +late_initcall(kvm_pvtime_init);
> 
> Why is it an initcall? So far, the only initcall we've used is the one
> that initializes KVM itself. Can't we just the device_ops just like we
> do for the vgic?

So would you prefer a direct call from init_subsystems() in
virt/kvm/arm/arm.c?

The benefit of initcall is just that it keeps the code self-contained.
In init_subsystems() I'd either need a #ifdef CONFIG_ARM64 or a dummy
function for arm.

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
