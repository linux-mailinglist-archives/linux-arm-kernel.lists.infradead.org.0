Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9073BD5B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 22:13:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ea9o1wGEDiogoMQBp73ht5NnCHFZOVVumNtqrGIf3ZQ=; b=I/9WOw876NYNqT
	adOTSSJtaWBZcOZwbEJQSgwB0OdG29zeyG1tAF+jbaax06cGNtPumN4cDQrl4u9piI7nbEZT2CzRR
	FgJqp7nhJhwqwR0+niydfj3rX5rsIXxuneiLcq5E6bd9eS273I3MENQsBJ+OSLMgjlNME2a1F1497
	o2BC2RUBPRgqGwW54ogk78UBib2eAtc0jJTR5qcY01g7LxJyHhVXb49SERZNG4r47/+HlHEpSGHOt
	zBx+LuAzSW60CLZb1hKmb0HIgCTWjkF82tGjkt05/oi9TstHnMnYSoBOHicnMYgWOZcBtC+rNjt1k
	uxDYBX06z4t+ucteTScg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haQfb-00074h-O6; Mon, 10 Jun 2019 20:13:31 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haQfQ-00073g-0i
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 20:13:22 +0000
X-Originating-IP: 37.205.120.66
Received: from localhost (unknown [37.205.120.66])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 2B7A6E000B;
 Mon, 10 Jun 2019 20:13:04 +0000 (UTC)
Date: Mon, 10 Jun 2019 22:13:01 +0200
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [RFE]: watchdog: atmel: atmel-sama5d4-wdt
Message-ID: <20190610201301.GH25472@piout.net>
References: <BL0PR07MB41152EDB169FE9ED1AD3B4C9AD130@BL0PR07MB4115.namprd07.prod.outlook.com>
 <20190610162811.GA11270@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610162811.GA11270@roeck-us.net>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_131320_376853_DC25E566 
X-CRM114-Status: GOOD (  26.93  )
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Ken Sloat <KSloat@aampglobal.com>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "wim@iguana.be" <wim@iguana.be>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On 10/06/2019 09:28:11-0700, Guenter Roeck wrote:
> On Mon, Jun 10, 2019 at 03:51:52PM +0000, Ken Sloat wrote:
> > Hello Nicolas,
> > 
> > I wanted to open a discussion proposing new functionality to allow disabling of the watchdog timer upon entering 
> > suspend in the SAMA5D2/4.
> > 
> > Typical use case of a hardware watchdog timer in the kernel is a userspace application opens the watchdog timer and
> > periodically "kicks" it. If the application hits a deadlock somewhere and is no longer able to kick it, then the watchdog
> > intervenes and often resets the processor. Such is the case for the Atmel driver (which also allows a watchdog interrupt
> > to be asserted in lieu of a system reset). In most use cases, upon entering a low power/suspend state, the application 
> > will no longer be able to "kick" the watchdog. If the watchdog is not disabled or kicked via another method, then it will
> > reset the system. This is the current behavior of the Atmel driver as of today.
> > 
> > The watchdog peripheral itself does have a "WDIDLEHLT" bit however, and this is enabled via the "atmel,idle-halt" dt
> > property. However, this is not very useful, as it literally only makes the watchdog count when the CPU is active. This 
> > results in non-deterministic triggering of the WDT and means that if a critical application were to crash, it may be
> > quite a long time before the WDT would ever trigger. Below is a similar statement made in the device-tree doc for this
> > peripheral:
> > 
> > - atmel,idle-halt: present if you want to stop the watchdog when the CPU is
> > 		   in idle state.
> > 	CAUTION: This property should be used with care, it actually makes the
> > 	watchdog not counting when the CPU is in idle state, therefore the
> > 	watchdog reset time depends on mean CPU usage and will not reset at all
> > 	if the CPU stop working while it is in idle state, which is probably
> > 	not what you want.
> > 
> > It seems to me, that it would be logical and useful to introduce a new property that would cause the Atmel WDT
> > to disable on suspend and re-enable on resume. It also appears that the WDT is re-initialized anyways upon
> > resume, so the only piece missing here would really be a dt flag and a call to disable.
> > 
> Wondering - why would this need a dt property ? That would be quite unusual. Is
> there a condition where one would _not_ want the watchdog to stop on suspend ?
> 

There are customers that protects suspend/resume using the watchdog.
They wake up their platform every 15s to ping the watchdog.

Also, I don't see why the application deciding to go to suspend wouldn't
be able to disable the watchdog before do so if this is the wanted policy.

> If anything I would suggest to drop atmel,idle-halt completely; it really looks
> like it would make the watchdog unreliable.
> 
> Thanks,
> Guenter

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
