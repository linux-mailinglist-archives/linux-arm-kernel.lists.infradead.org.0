Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E997B174F0E
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 20:01:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=65HRK/awC0HcZsJxwnQgE+yQz/ZJWeko5zakwLf5r/Q=; b=ccQDTx82pd53okMwrfHoxl8Ig
	oxK8NKXolG6qGaQvYkKFZMbadkpu7z9gkFTGHPUTKkpd9SIl76c5b51QxTvOq6I7WCuZth6jOPAyB
	bBnyrXMZ2PUVg1ldjNbK/OZ2qvC69SMII4XckgSp+Ak/BKWZr/AQzYz4vT87bpHxCY0C+EqTB7Shf
	p5H8XYiyrZQThXmYS1JAidICU6AztauZaGSnOC8CbMCjSnxI0NE759QzYjUbTvMH2RBq/6xxpHc6a
	6EESmwE3q6NUn9lAn0egXrxuSZrpW1N/DcDMzqPfNvgtdSX7BV6IhYKdrPoFa5I0nRyqIQglP8gA7
	o5mceHYnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8Tpl-00029U-95; Sun, 01 Mar 2020 19:01:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8Tpe-000298-CW
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Mar 2020 19:00:55 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 73E20246BA;
 Sun,  1 Mar 2020 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583089253;
 bh=lOBsvT2AxEWe7zw8oMvGnToaUWaeiUegRMDNaAgLzRg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=uEaJoRvjqYKI1gpKc+b/lzqN2a8NT6CmeyIdXu1T3ihWUWlsOQ3gyftx/xOg1y6X6
 2lfDtMrjvEJpdpZyic9ghUIb9mJ/7b13d6Uy08In/THrIHzAz/IcWdVS58Q/iOhx6O
 qclaU7+BMmVmvNykILVDUNM34li0M7a6MefwO1Uc=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j8Tpb-009BxH-7Q; Sun, 01 Mar 2020 19:00:51 +0000
MIME-Version: 1.0
Date: Sun, 01 Mar 2020 19:00:51 +0000
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH v4 08/20] irqchip/gic-v4.1: Plumb get/set_irqchip_state
 SGI callbacks
In-Reply-To: <dd9f1224b3b21ad793862406bd8855ba@kernel.org>
References: <20200214145736.18550-1-maz@kernel.org>
 <20200214145736.18550-9-maz@kernel.org>
 <4b7f71f1-5e7f-e6af-f47d-7ed0d3a8739f@huawei.com>
 <75597af0d2373ac4d92d8162a1338cbb@kernel.org>
 <19a7c193f0e4b97343e822a35f0911ed@kernel.org>
 <3d725ede-6631-59fb-1a10-9fb9890f3df6@huawei.com>
 <dd9f1224b3b21ad793862406bd8855ba@kernel.org>
Message-ID: <54c52057161f925c818446953050c951@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, lorenzo.pieralisi@arm.com, jason@lakedaemon.net,
 rrichter@marvell.com, tglx@linutronix.de, eric.auger@redhat.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_110054_467889_82AF38FF 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Eric Auger <eric.auger@redhat.com>, Robert Richter <rrichter@marvell.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-28 19:37, Marc Zyngier wrote:
> On 2020-02-20 03:11, Zenghui Yu wrote:

>> Do we really need to grab the vpe_lock for those which are belong to
>> the same irqchip with its_vpe_set_affinity()? The IRQ core code should
>> already ensure the mutual exclusion among them, wrong?
> 
> I've been trying to think about that, but jet-lag keeps getting in the 
> way.
> I empirically think that you are right, but I need to go and check the 
> various
> code paths to be sure. Hopefully I'll have a bit more brain space next 
> week.

So I slept on it and came back to my senses. The only case we actually 
need
to deal with is when an affinity change impacts *another* interrupt.

There is only two instances of this issue:

- vLPIs have their *physical* affinity impacted by the affinity of the
   vPE. Their virtual affinity is of course unchanged, but the physical
   one becomes important with direct invalidation. Taking a per-VPE lock
   in such context should address the issue.

- vSGIs have the exact same issue, plus the matter of requiring some
   *extra* one when reading the pending state, which requires a RMW
   on two different registers. This requires an extra per-RD lock.

My original patch was stupidly complex, and the irq_desc lock is
perfectly enough to deal with anything that only affects the interrupt
state itself.

GICv4 + direct invalidation for vLPIs breaks this by bypassing the
serialization initially provided by the ITS, as the RD is completely
out of band. The per-vPE lock brings back this serialization.

I've updated the branch, which seems to run OK on D05. I still need
to run the usual tests on the FVP model though.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
