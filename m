Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B88E18BC2E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 17:16:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+K9XrRWyqCzoiqXjBF4TRaeCHdqIxmzNNoGHrDXNyI8=; b=ou9EqYC4N5vSfTKBgQcu5a+7i
	2tTQDtKQ+YD8I+VHKVwlv9lCkw+1d6Hn8Z9XPj9xyMl60Xi6J/CLaPELMKjg7oi51GDB4KXIGZdMc
	ixSDcVWl07YBPOn/umSQqSuyzTpZlDjlRf653763EdePGIlpuuJmBKL48CQyWz5/RNYNXj9XxoUsl
	EE9HUeBCjHCa6OrXpjxZPNdrgkoDJRaOyjMT449uN+HQKO0LLE2WQa4+r+3rizo1jtdrtl1rwhQou
	uK8VpICu3DADHCakjpr6xo0GR9Sj7xjGRoWwgCNH9au3XzDz4MY7Ve34XHwVska94Z304wnVKoN/5
	ft9tclLxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jExqE-00020n-KM; Thu, 19 Mar 2020 16:16:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jExq1-000206-W6
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 16:16:07 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 78BC62072C;
 Thu, 19 Mar 2020 16:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584634565;
 bh=zx6EpVvCurtuHtjYl9daum/XLOGNhScxk2ZlhM+sgp4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=MVrB/l2Ov9AOX1/m6SVkK9uZGb1qcoR5fiVh4jakV9y29Z6EhwW3+EFUfqW1Emwzu
 zxtAd/Mtwaj6SXLkaqxYnXwNkInqmq/klFiOnlihfyCuxxvpzAsElanIXBOCFH95E8
 WHwkjglTUs6K2R+94xx/HW7BdwlTf6asizPE2Li8=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jExpz-00E13G-QY; Thu, 19 Mar 2020 16:16:03 +0000
MIME-Version: 1.0
Date: Thu, 19 Mar 2020 16:16:03 +0000
From: Marc Zyngier <maz@kernel.org>
To: Auger Eric <eric.auger@redhat.com>
Subject: Re: [PATCH v5 23/23] KVM: arm64: GICv4.1: Expose HW-based SGIs in
 debugfs
In-Reply-To: <33576d89-2b12-b98b-e392-3342b9b1265c@redhat.com>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-24-maz@kernel.org>
 <4cb4c3d4-7b02-bb77-cd7a-c185346b6a2f@redhat.com>
 <45c282bddd43420024633943c1befac3@kernel.org>
 <33576d89-2b12-b98b-e392-3342b9b1265c@redhat.com>
Message-ID: <17921081f98a589c67b37b1d07a9cfcc@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: eric.auger@redhat.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, lorenzo.pieralisi@arm.com, jason@lakedaemon.net,
 rrichter@marvell.com, tglx@linutronix.de, yuzenghui@huawei.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_091606_053754_934F15B7 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Thomas Gleixner <tglx@linutronix.de>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Eric,

On 2020-03-19 15:43, Auger Eric wrote:
> Hi Marc,
> 
> On 3/19/20 4:21 PM, Marc Zyngier wrote:
>> Hi Eric,

[...]

>>> The patch looks good to me but I am now lost about how we retrieve 
>>> the
>>> pending stat of other hw mapped interrupts. Looks we use
>>> irq->pending_latch always. Is that correct?
>> 
>> Correct. GICv4.0 doesn't give us an architectural way to look at the
>> vLPI pending state (there isn't even a guarantee about when the GIC
>> will stop writing to memory, if it ever does).
>> 
>> With GICv4.1, you can introspect the HW state for SGIs. You can also
>> look at the vLPI state by peeking at the virtual pending table, but
>> you'd need to unmap the VPE first, which I obviously don't want to do
>> for this debug interface, specially as it can be used whilst the guest
>> is up and running.
> OK for vLPIs, what about other HW mapped IRQs (arch timer?)

Different kind of HW. With those, the injection is still virtual, so the
SW pending bit is still very much valid. You can actually try and make
the timer interrupt pending, it should show up.

What the irq->hw bit means is "this virtual interrupt is somehow related
to the host_irq". How this is interpreted is completely 
context-dependent.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
