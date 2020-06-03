Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 712A21ED00A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 14:45:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jgT1NYv3SG4Daqu5uixrqb381u4KUU313haKkE1CoNc=; b=XZyC9589jxlPZoVlsyGp6dwmN
	bxqrq7qLvCTXboChT7+8xNfQh+2WSDWrlkqoz6BVjuLMX7J13BhXdKB2flZx07NNK0KbxfY/aMVYv
	P1t/ChMbIGHTe4K4JYsHbk2s2BTeC1yRBtSU5wNJv6jf/3h3a4gnHlA4/D5E0+V8J3AKg9pOGZh+w
	4YzGgbdzcKmDRwTTAvl81jIxSivFQ0J1+XxG5fP2MQCYNEG82Zk06jhRzH97IVrRF8WHXoHrBfXO/
	u5phszmXpCoPjXjWNq0qif+GOn24dNPzJyWG8SQM+MBRl0aT9eQIYI45RPMABUDCg3n/wdWLWXz0M
	MdVdaK1fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgSlh-00050f-5T; Wed, 03 Jun 2020 12:45:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgSlQ-0004rl-0B
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 12:45:01 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9684920678;
 Wed,  3 Jun 2020 12:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591188299;
 bh=wznEth5LdDyFT2k6Sw+uElZFtO2dV9GyNCqcSvMWmiU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=TqJZLS5KZ9qZJvkMiMjiz8zauZtj59/mrNXISG8AqBgMaf8/TuF8N+oZrprg8teTI
 4UID6E/9spmMnTEyVpOI9wvGbKsF36T3yX1UJtK7385ZNLwGPoz0I+aM7PPH4UnVoB
 4R8DDi7tJvwRzWGeYlcOU/FHpmjL9zY+rndY/WeQ=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jgSlO-00HS6q-6J; Wed, 03 Jun 2020 13:44:58 +0100
MIME-Version: 1.0
Date: Wed, 03 Jun 2020 13:44:58 +0100
From: Marc Zyngier <maz@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH] irqchip/gic-v3-its: Don't try to move a disabled irq
In-Reply-To: <87y2p5fatl.fsf@nanos.tec.linutronix.de>
References: <20200529015501.15771-1-alisaidi@amazon.com>
 <8c3be990888ecfb7cca9503853dc4aac@kernel.org>
 <2C4F431F-8140-4C82-B4BD-E51DE618FC08@amazon.com>
 <20200530174929.7bf6d5d7@why> <eed907d48de84c96e3ceb27c1ed6f622@kernel.org>
 <37e55e71faf76dc3db76d89c20c1bdfff942e380.camel@amazon.com>
 <87y2p5fatl.fsf@nanos.tec.linutronix.de>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <d08bd61ffffe59091f6542b4f75292d1@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: tglx@linutronix.de, benh@amazon.com, alisaidi@amazon.com,
 jason@lakedaemon.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dwmw@amazon.co.uk, zeev@amazon.com,
 zorik@amazon.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_054500_083731_B0A3B72A 
X-CRM114-Status: GOOD (  15.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: "Herrenschmidt, Benjamin" <benh@amazon.com>, jason@lakedaemon.net,
 "Machulsky, Zorik" <zorik@amazon.com>, linux-kernel@vger.kernel.org, "Saidi,
 Ali" <alisaidi@amazon.com>, "Zilberman, Zeev" <zeev@amazon.com>, "Woodhouse,
 David" <dwmw@amazon.co.uk>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-06-02 21:54, Thomas Gleixner wrote:
> "Herrenschmidt, Benjamin" <benh@amazon.com> writes:
>> On Sun, 2020-05-31 at 12:09 +0100, Marc Zyngier wrote:
>>> > The semantic of activate/deactivate (which maps to started/shutdown
>>> > in the IRQ code) is that the HW resources for a given interrupt are
>>> > only committed when the interrupt is activated. Trying to perform
>>> > actions involving the HW on an interrupt that isn't active cannot be
>>> > guaranteed to take effect.
>>> >
>>> > I'd rather address it in the core code, by preventing set_affinity (and
>>> > potentially others) to take place when the interrupt is not in the
>>> > STARTED state. Userspace would get an error, which is perfectly
>>> > legitimate, and which it already has to deal with it for plenty of
>>> > other
>>> > reasons.
>> 
>> So I finally found time to dig a bit in there :) Code has changed a 
>> bit
>> since last I looked. But I have memories of the startup code messing
>> around with the affinity, and here it is. In irq_startup() :
>> 
>> 
>> 		switch (__irq_startup_managed(desc, aff, force)) {
>> 		case IRQ_STARTUP_NORMAL:
>> 			ret = __irq_startup(desc);
>> 			irq_setup_affinity(desc);
>> 			break;
>> 		case IRQ_STARTUP_MANAGED:
>> 			irq_do_set_affinity(d, aff, false);
>> 			ret = __irq_startup(desc);

Grump. Nice catch. In hindsight, this is obvious, as managed interrupts
may have been allocated to target CPUs that have been hot-plugged off.

>> 			break;
>> 		case IRQ_STARTUP_ABORT:
>> 			irqd_set_managed_shutdown(d);
>> 			return 0;
>> 
>> So we have two cases here. Normal and managed.
>> 
>> In the managed case, we set the affinity before startup. I feel like 
>> your
>> patch might break that or am I missing something ?
> 
> It will break stuff because the affinity is not stored in case that the
> interrupt is not started.
> 
> I think we can fix this in the core code but that needs more thought.
> __irq_can_set_affinity() is definitely the wrong place.

Indeed. I completely missed the above. Back to square one.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
