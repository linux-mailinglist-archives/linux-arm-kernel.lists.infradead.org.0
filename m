Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9B01E9BC8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 04:41:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:From:Subject:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BObUt6o76m2ga8vcu/hpdxBVKOMKiVUsr9KBaNFF+jE=; b=HLQE5L0sXWBuTq
	8O0kg+SuNBl58Gn9H8wgBgiYh+88yRvPmMcbLs80pzMQflscsdS5+veuQW1tlxSwxmNHUZVvRlFgO
	pR4XTShm9XLOr4x3+FMgPivWm8xTG175UodCojPD3zLCWMZtdXyND/Zb43c1H2mSW4rrg/GsKUqEZ
	NDEAg3drf24G0JQmuvuiLxp7NJwL0+Ch7kEsG0p4PTG2YbaL7bjc28twqebH64bwZOTAjR3lM77PA
	dVVcYG6ECTo0qQ1QI/aR6XnHC4wxWvPD++RBdkB7S82sB5M53ptG9wzv2aVFFN69zEdUpK56M3HJW
	myN/bbQSd9sxYtd9trjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfaOF-0001hh-Uj; Mon, 01 Jun 2020 02:41:27 +0000
Received: from smtp-fw-6002.amazon.com ([52.95.49.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfaO4-0001hE-Iu
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 02:41:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1590979277; x=1622515277;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version:subject;
 bh=TltawOQQY80cO1c2Km92kR007GNJdrez0Cda0l2On4I=;
 b=IyLVtv2grodTMuW51fxIfBHG3DHxpiYTvY6yNB8BS53Hc5yPjtnse9hV
 AnmMbBxSr2Fq5SAg9Ny6ChOccfPrsMYBiwF8QnItkfuLVGrfUgcrunm0G
 jqiboRUxHJupArzinq8Fke9Iy1V3/dqTSjPvTn6ySsqIAqSp3XdaH7jMv 4=;
IronPort-SDR: QXzEuie2ebNPVhf0YRsfjs3PmNkASVT8hIlc7CcFYobdLQaBDOBuaceiVdRl4JrisoTlMnnqW9
 d0DXCAP4KVJA==
X-IronPort-AV: E=Sophos;i="5.73,459,1583193600"; d="scan'208";a="33497482"
Subject: Re: [PATCH] irqchip/gic-v3-its: Don't try to move a disabled irq
Thread-Topic: [PATCH] irqchip/gic-v3-its: Don't try to move a disabled irq
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-1e-303d0b0e.us-east-1.amazon.com) ([10.43.8.6])
 by smtp-border-fw-out-6002.iad6.amazon.com with ESMTP;
 01 Jun 2020 02:40:57 +0000
Received: from EX13MTAUWB001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan3.iad.amazon.com [10.40.159.166])
 by email-inbound-relay-1e-303d0b0e.us-east-1.amazon.com (Postfix) with ESMTPS
 id 50FE8A07B4; Mon,  1 Jun 2020 02:40:56 +0000 (UTC)
Received: from EX13D02UWB003.ant.amazon.com (10.43.161.48) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.207) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Mon, 1 Jun 2020 02:40:55 +0000
Received: from EX13D21UWB003.ant.amazon.com (10.43.161.212) by
 EX13D02UWB003.ant.amazon.com (10.43.161.48) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Mon, 1 Jun 2020 02:40:55 +0000
Received: from EX13D21UWB003.ant.amazon.com ([10.43.161.212]) by
 EX13D21UWB003.ant.amazon.com ([10.43.161.212]) with mapi id 15.00.1497.006;
 Mon, 1 Jun 2020 02:40:55 +0000
From: "Herrenschmidt, Benjamin" <benh@amazon.com>
To: "maz@kernel.org" <maz@kernel.org>, "Saidi, Ali" <alisaidi@amazon.com>
Thread-Index: AQHWNbXPXXyA301h2EGDe5vwb83/i6jA2SaAgAEzUYCAAQRAgA==
Date: Mon, 1 Jun 2020 02:40:55 +0000
Message-ID: <37e55e71faf76dc3db76d89c20c1bdfff942e380.camel@amazon.com>
References: <20200529015501.15771-1-alisaidi@amazon.com>
 <8c3be990888ecfb7cca9503853dc4aac@kernel.org>
 <2C4F431F-8140-4C82-B4BD-E51DE618FC08@amazon.com>
 <20200530174929.7bf6d5d7@why> <eed907d48de84c96e3ceb27c1ed6f622@kernel.org>
In-Reply-To: <eed907d48de84c96e3ceb27c1ed6f622@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.162.140]
Content-ID: <579C4899EC03054D91EF4ED83B1F1AAC@amazon.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_194116_750624_26CBB60F 
X-CRM114-Status: GOOD (  22.94  )
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.95.49.90 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [52.95.49.90 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "jason@lakedaemon.net" <jason@lakedaemon.net>, "Machulsky,
 Zorik" <zorik@amazon.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Zilberman,
 Zeev" <zeev@amazon.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "Woodhouse,
 David" <dwmw@amazon.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 2020-05-31 at 12:09 +0100, Marc Zyngier wrote:
> 
> 
> > Not great indeed. But this is not, as far as I can tell, a GIC
> > driver problem.
> > 
> > The semantic of activate/deactivate (which maps to started/shutdown
> > in the IRQ code) is that the HW resources for a given interrupt are
> > only committed when the interrupt is activated. Trying to perform
> > actions involving the HW on an interrupt that isn't active cannot be
> > guaranteed to take effect.
> > 
> > I'd rather address it in the core code, by preventing set_affinity (and
> > potentially others) to take place when the interrupt is not in the
> > STARTED state. Userspace would get an error, which is perfectly
> > legitimate, and which it already has to deal with it for plenty of
> > other
> > reasons.

So I finally found time to dig a bit in there :) Code has changed a bit
since last I looked. But I have memories of the startup code messing
around with the affinity, and here it is. In irq_startup() :


		switch (__irq_startup_managed(desc, aff, force)) {
		case IRQ_STARTUP_NORMAL:
			ret = __irq_startup(desc);
			irq_setup_affinity(desc);
			break;
		case IRQ_STARTUP_MANAGED:
			irq_do_set_affinity(d, aff, false);
			ret = __irq_startup(desc);
			break;
		case IRQ_STARTUP_ABORT:
			irqd_set_managed_shutdown(d);
			return 0;

So we have two cases here. Normal and managed.

In the managed case, we set the affinity before startup. I feel like your
patch might break that or am I missing something ?

Additionally, your patch would break any userspace program that expects to
be able to change the affinity on an interrupt before it's been started.
I don't know if such a thing exsits but the fact that we hit that bug
makes me think it might.

Now most controller drivers (at least that I'm familiar with, which doesn't
include GiC at this point) can deal with that just fine.

Now there's also another possible issue:

Your patch checks irqd_is_started(). Now I always mixup irqd vs irq_state these
days so I may be wrong but irq_state_set_started() is only done in __irq_startup
which will *not* be called if the interrupt has NOAUTOEN.

Is that ok ? Do we intend for affinity setting not to work until the first
enable_irq() for such an interrupt ? We could check activated instead of
started I suppose. (again provided I didn't mixup two different things
between the irqd and the irq_state stuff).

For these reasons my gut feeling is we should just fix GIC as Ali wanted to
do initially.

The basic idea is simply to defer the HW configuration until the interrupt
has been started. I don't see why that would be an issue. Have set_affinity just
store the mask (and apply whatever other sanity checking it might want to do)
until the itnerrupt is started and when started, apply things to HW.

I might be missing a reason why it's more complicated than that :) But I do
feel a bit uncomfortable with your approach.

Cheers,
Ben.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
