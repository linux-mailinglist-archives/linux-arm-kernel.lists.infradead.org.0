Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4C7107343
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 14:31:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xBPzWxHKbN4/Vy7vAVy7SS8G4pHVDLcSu+LVi1aLUQg=; b=Qn7XDUcIsmPT6j
	RIJJsPbOp9uX82F9hTRKGWz+2ThT+Fx7F52+5I02ivV2iYhWrmvBYEbVx7tqIeaGzrP3GDvqpEoTt
	yeyMxr6Fza85P8qVcFn5veZLfCPkJM7pUAuLq0GiUKs/hqiE4L+1Y6ayU/bNEqGKQxejd84WRQ3MO
	qDSQc3yEv3J1GoJzTMmU8QVDg3zu41IDqZ93tSGG3lNX1x5lZRNZH4cSPGparWU/eKAgAXpE4lVzS
	bFqK55lDBXNuiudi3yyYhiHcMnuAqg44cEfundOxEyWU2X4Zb7CWifb96p6rDSyyJdIul6PJd+IMj
	dbpnYeZ3F1YLsCKM+efw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY92B-0001Vg-36; Fri, 22 Nov 2019 13:31:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY921-0001VC-3V
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 13:31:30 +0000
Received: from [2001:67c:670:100:6a05:caff:fe2d:a9b1]
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1iY91y-0007Iq-PR; Fri, 22 Nov 2019 14:31:26 +0100
Subject: Re: [Linux-stm32] [PATCH v2 1/1] drivers: watchdog: stm32_iwdg: set
 WDOG_HW_RUNNING at probe
To: Christophe ROULLIER <christophe.roullier@st.com>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "linux@roeck-us.net" <linux@roeck-us.net>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>
References: <20191122082442.21695-1-christophe.roullier@st.com>
 <ea80ec65-8621-453c-4d5b-af38d8afeb70@pengutronix.de>
 <70c319bd-866c-5305-e535-ead663652c5f@st.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <53b2f559-3456-d378-587d-d220920e9bf7@pengutronix.de>
Date: Fri, 22 Nov 2019 14:31:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <70c319bd-866c-5305-e535-ead663652c5f@st.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 2001:67c:670:100:6a05:caff:fe2d:a9b1
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_053129_146200_0D8E22C4 
X-CRM114-Status: GOOD (  13.36  )
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
Cc: "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Christophe,

On 11/22/19 2:15 PM, Christophe ROULLIER wrote:
>> On 11/22/19 9:24 AM, Christophe Roullier wrote:
>>> +	/*
>>> +	 * In case of CONFIG_WATCHDOG_HANDLE_BOOT_ENABLED is set
>>> +	 * (Means U-Boot/bootloaders leaves the watchdog running)
>>> +	 * When we get here we should make a decision to prevent
>>> +	 * any side effects before user space daemon will take care of it.
>>> +	 * The best option, taking into consideration that there is no
>>> +	 * way to read values back from hardware, is to enforce watchdog
>>> +	 * being run with deterministic values.
>> What about the "ONF: Watchdog enable status bit" in the IWDG_SR register?

> Thanks Ahmad for your feedback, it is a mistake in our ref manual. This 
> bit is not present
> 
> in our iwdg IP, we will update our documentation accordingly.

Thanks for the info. I think it would be nice to have this information in
the driver as well, something like:

* The best option, taking into consideration that that the ONF
* watchdog status bit is non-functional, is to enforce watchdog
* being run with deterministic values.

This way it's clear that it's a deliberate choice to do it this way.

Cheers
Ahmad



-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
