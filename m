Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87EC0FC943
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 15:50:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r/ZSHNAUc+3I/zKi+StRdN+Hg8BPh2H5PPegWokTXEE=; b=Tq5NcZU1jDL+fB
	vQxsdXY1m/7P42UpHenpYZCfvN/GoDpDjELMiHGQquOq663tVrKkuEb003U5ZdxS50Qz0zhrr3LpA
	1wIEN58XtxFqPvlQax6ANKbn4cRrD7KgoIdeUEGlcXWw5UkYnODFZ7FJRxO9mQGd2c8k2sHOa/uE7
	F6eV7rNVJBi28wM4ZsWE9sT5QODuCR1NAg4l7PEisA1NcuHctWk6K8DzXb//+fR7+lI+uRE8viBZy
	Gorol0NhJV16DseIr6VlhNO0GXfbCvCeZwhjk2Gw+VCI3/mbuUhCCiMT2GJNKCIgnf26s+76r4QhX
	6rvKg7Ye+5Klkl8zwP2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVGSK-0004Eb-Hk; Thu, 14 Nov 2019 14:50:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVGS2-0004Dn-Gt
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 14:50:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DFFED328;
 Thu, 14 Nov 2019 06:50:25 -0800 (PST)
Received: from [10.1.32.172] (e121487-lin.cambridge.arm.com [10.1.32.172])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6A1423F52E;
 Thu, 14 Nov 2019 06:50:24 -0800 (PST)
Subject: Re: [kvm-unit-tests PATCH 09/17] arm: gic: Add test for flipping
 GICD_CTLR.DS
To: Andre Przywara <andre.przywara@arm.com>
References: <20191108144240.204202-1-andre.przywara@arm.com>
 <20191108144240.204202-10-andre.przywara@arm.com>
 <2e14ccd4-89f4-aa90-cc58-bebf0e2eeede@arm.com>
 <7ca57a0c-3934-1778-e3f9-a3eee0658002@arm.com>
 <20191114141745.32d3b89c@donnerap.cambridge.arm.com>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <90cdc695-f761-26bd-d2a7-f8655ce04463@arm.com>
Date: Thu, 14 Nov 2019 14:50:22 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191114141745.32d3b89c@donnerap.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_065026_615628_5BC759D9 
X-CRM114-Status: GOOD (  11.96  )
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
 Alexandru Elisei <alexandru.elisei@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/14/19 2:17 PM, Andre Przywara wrote:
> On Thu, 14 Nov 2019 13:39:33 +0000
> Vladimir Murzin <vladimir.murzin@arm.com> wrote:
> 
>> Hi,
>>
>> On 11/12/19 4:42 PM, Alexandru Elisei wrote:
>>> Are we not testing KVM? Why are we not treating a behaviour different than what
>>> KVM should emulate as a fail?
>>
>> Can kvm-unit-tests be run with qemu TCG?
> 
> Yes, it does that actually by default if you cross compile. I also tested this explicitly on TCG: unlike KVM that actually passes all those tests.
> If you set the environment variable ACCEL to either tcg or kvm, you can select this at runtime:
> $ ACCEL=tcg arm/run arm/gic.flat -smp 3 -append irq

Great! Then, IMO, it is absolutely valid to test this functionality!

Thanks
Vladimir

> 
> Cheers,
> Andre
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
