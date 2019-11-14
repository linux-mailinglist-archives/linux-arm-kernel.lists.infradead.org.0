Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D85FC9D1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 16:22:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k384PuboQ9OlUbkzJUbAVSnKo/NtfDvXqv4SdwviAow=; b=f37cXJP3iwSWE7
	n+/mRNuyYFZHXlhW5onEzs75HTR7OWceV3kD5rdsA2SFQqkhS+/uIMwA8vI4SNW/Z1an4JnSp8m0T
	JZPOByqtzGo1AychCqPNdqhjzRh/fqb8uvJsYwadtIgrIRVE3kk+4vKmm2np/onYE8qc77aHi6zXi
	PBIolz0IXRScCtX5thyT87nD1bPxfhsPkIg/csXY7/qhBwMS9w1eVEp0BdpGwmGOadNUZ5Efd0zoB
	g74uaXMkq+1ARLjjpaLkB81J9Hwubm2rV2KWMC9XgJPCUu20GKAafO9/VvXw4Z4mEkWlEjfuGPIHh
	d4jnpBGtGUQQHkS9QdUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVGwf-0007oC-Qb; Thu, 14 Nov 2019 15:22:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVGwW-0007ne-Pj
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 15:21:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D614F328;
 Thu, 14 Nov 2019 07:21:52 -0800 (PST)
Received: from [10.1.196.63] (e123195-lin.cambridge.arm.com [10.1.196.63])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BE3D13F52E;
 Thu, 14 Nov 2019 07:21:51 -0800 (PST)
Subject: Re: [kvm-unit-tests PATCH 09/17] arm: gic: Add test for flipping
 GICD_CTLR.DS
To: Vladimir Murzin <vladimir.murzin@arm.com>,
 Andre Przywara <andre.przywara@arm.com>
References: <20191108144240.204202-1-andre.przywara@arm.com>
 <20191108144240.204202-10-andre.przywara@arm.com>
 <2e14ccd4-89f4-aa90-cc58-bebf0e2eeede@arm.com>
 <7ca57a0c-3934-1778-e3f9-a3eee0658002@arm.com>
 <20191114141745.32d3b89c@donnerap.cambridge.arm.com>
 <90cdc695-f761-26bd-d2a7-f8655ce04463@arm.com>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <187393bb-a32d-092d-d0ea-44c58a54d1de@arm.com>
Date: Thu, 14 Nov 2019 15:21:46 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <90cdc695-f761-26bd-d2a7-f8655ce04463@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_072156_878794_86180F84 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Andrew Jones <drjones@redhat.com>, kvm@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Paolo Bonzini <pbonzini@redhat.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 11/14/19 2:50 PM, Vladimir Murzin wrote:
> On 11/14/19 2:17 PM, Andre Przywara wrote:
>> On Thu, 14 Nov 2019 13:39:33 +0000
>> Vladimir Murzin <vladimir.murzin@arm.com> wrote:
>>
>>> Hi,
>>>
>>> On 11/12/19 4:42 PM, Alexandru Elisei wrote:
>>>> Are we not testing KVM? Why are we not treating a behaviour different than what
>>>> KVM should emulate as a fail?
>>> Can kvm-unit-tests be run with qemu TCG?
>> Yes, it does that actually by default if you cross compile. I also tested this explicitly on TCG: unlike KVM that actually passes all those tests.
>> If you set the environment variable ACCEL to either tcg or kvm, you can select this at runtime:
>> $ ACCEL=tcg arm/run arm/gic.flat -smp 3 -append irq
> Great! Then, IMO, it is absolutely valid to test this functionality!

TCG emulates a GIC with a single security state for me:

/usr/bin/qemu-system-aarch64 -nodefaults -machine virt,gic-version=3,accel=tcg
-cpu cortex-a57 -device virtio-serial-device -device virtconsole,chardev=ctd
-chardev testdev,id=ctd -device pci-testdev -display none -serial stdio -kernel
arm/gic.flat -append irq
PASS: gicv3: irq: SPI triggered by CPU write
PASS: gicv3: irq: disabled SPI does not fire
PASS: gicv3: irq: now enabled SPI fires
INFO: gicv3: irq: GROUP: GIC is one security state only
[..]

But that could change someday, so I'm fine with failing only if we are not allowed
to have GICD_CTLR.DS=1, because that will prevent us from testing group 0 interrupts.

Thanks,
Alex
> Thanks
> Vladimir
>
>> Cheers,
>> Andre
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
