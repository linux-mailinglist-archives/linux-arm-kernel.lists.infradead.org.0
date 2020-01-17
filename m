Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0BA140139
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 01:59:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VUt3dBULB+we1gMak8MF3ql7Ak1ONGEJGZSFxvcmBxg=; b=AmrvlKR+ioYVvO
	JrFO57/vxzrbVUuXUgMxmnif+pKygbWiLneQMhLKtnWWeLzC0xgXJtNhMDQzobowBHhkcE2Ouzdmc
	zlmoA0xwNFO6vcMkDMgNIAzWdvQC+jbRslPAvgF5MuQ5IGrJRT5j7yU9Jpb9G1c8x6WgKXN+N+Xl3
	ZtrX5eEY+bfF4yUS4tQYqhY3VWKBlcplvU14m5Mc0sEbqxPUP9n1Zh2gNXh28EqUAJXugcGxxQIuZ
	Qu7CK6+ZFODbcMWnr08ZM328GDUK1ZIdizHJJMNnCK2CUYIuLBebf6MMZTrMxr0N/BSGWdJpcYQBV
	AiNmWCeQXTw5b48Xr58g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isFyr-0002D0-GN; Fri, 17 Jan 2020 00:59:21 +0000
Received: from mail.prewas.sk ([212.5.209.170])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isFyg-0002C3-S6; Fri, 17 Jan 2020 00:59:12 +0000
dkim-signature: v=1; a=rsa-sha256; d=3ksolutions.sk; s=mail.prewas.sk;
 c=relaxed/relaxed; q=dns/txt;
 h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:Content-Transfer-Encoding:In-Reply-To:References;
 bh=joY66v7Mt3fGNDLPvMmR7lEkVuZrgs2jMtaE6jZ8mCk=;
 b=tD0DF0Jw9lF5zWH+nIiIBYGVDFfn8ar+Kk2PyWQlWUE8+7+Uq3gvSum4Ko11j+v2lyLbrj71grDti0uH52ncIFVT99KNPOA/T66BQpPk7nw71mhow4kFDlB4M9yuXrfiWXXslIHFDQdFkRLaZ9yW5nqy83Fw5qEq8AntrQXjNzeEJNcpq+t5LC5bYTvLyQGNwNQow+4I1O1v6NK7DTpot8zUYtOqAsRtoaLUg256TKywQrhUsmO4IVgcw4
 cUbVnyB7BKU5xGsTjaM8ou4lS/MIAqbnonWvr2wFKBkXYq8jwLl1BO2kXyvHWralWU/3r+tcqttv/PKmlBXJ0rQjjLjw==
Received: from [10.0.1.61] (pcfilo.vital.sk [10.0.1.61])
 by mail.prewas.sk with ESMTPSA
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128)
 ; Fri, 17 Jan 2020 01:58:57 +0100
From: =?UTF-8?B?SXZhbiDFoGnFoXTDrWsgLSAzSyBTb2x1dGlvbnMsIHMuIHIuIG8u?=
 <sistik@3ksolutions.sk>
Subject: Re: [PATCH] tty: serial: amba-pl011: added RS485 support
To: Lukas Wunner <lukas@wunner.de>
References: <20200106235203.27256-1-sistik@3ksolutions.sk>
 <20200116132954.5tcxmezs5qhseiem@wunner.de>
Message-ID: <4e082c29-9a47-accc-425b-8d1854fb6ac6@3ksolutions.sk>
Date: Fri, 17 Jan 2020 01:58:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200116132954.5tcxmezs5qhseiem@wunner.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_165911_250386_A3A0F638 
X-CRM114-Status: GOOD (  24.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.5.209.170 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Jiri Slaby <jslaby@suse.com>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16. 1. 2020 at 14:29 Lukas Wunner wrote:

> So I've implemented rs485 support for amba-pl011.c two years ago
> but the patches need a little more polishing before they can be
> upstreamed and I haven't gotten around to that yet.  I apologize
> that it meant you had to reinvent the wheel.
> You can find my implementation on this branch:
> https://github.com/RevolutionPi/linux/commits/revpi-4.19
> 
> Specifically this commit:
> https://github.com/RevolutionPi/linux/commit/0099313962a5

The wheel with octagonal shape is still not perfect. I made it more
smoother. Your implementation in recommended commit use an active
waiting (pl011_rs485_tx_start, pl011_rs485_tx_stop) and that could
cause lots of problems in upper layers of tty driver or application.
I think you forgot to implement possibility to start TX during
"delay after send", too.


> You've used hrtimers in case delays are necessary after assertion
> or before deassertion of RTS.  Note that 8250_port.c already contains
> code for that.  If one wants to go that route, it would probably be
> best to move that code into serial_core.c to make it available to
> non-8250 ports.

The 8250_port.c use DMA. Do you thin that it shoud be moved to
serial_core.c? If there will be default implementation of handling
RTS by serial_core.c using timers, than I will refactor this driver
to use it.


> I took a completely different approach:  I converted amba-pl011.c
> to threaded interrupt handling using two kthreads, one for sending,
> one for receiving.  This allows simultaneous writing to and reading
> from the FIFO.  The driver keeps track of the FIFO fill level,
> which allows writing to the FIFO blindly.  The hardirq handler
> updates the fill level counter and wakes either of the IRQ threads.

I do not see any used thread in link:
https://github.com/RevolutionPi/linux/commit/0099313962a5
I am not kernel thread expert but I think that thread is not as
lightweight as hrtimer. According to my knowledge the hrtimer use some
kind of interrupt. Compare to this the kthread is created as thread
with all its scheduling structures. Did you implemented proper thread
shutdown? Has the thread right priority? There are many questions
like this...


> Once the driver was converted to threaded interrupts, it became
> possible to sleep in the IRQ handler, so I just used msleep()
> for the RTS delays.

I think that thread with main purpose to wait is waist of resources.
This kind of task should be handled by timers. I saw this passion for
threads in Windows CE 6 drivers. Did you read some of them?


> The tty layer lets you know when there's nothing more to transmit by
> calling the ->stop_tx() hook.  Then you just busy-wait for the FIFO
> to empty before you deassert RTS.

This would be wasting of CPU time and as I mentioned above it can cause
problems in above layers. Busy-wait in any method require deep
knowledge of "caller".


> Another idea would be to set TXIFLSEL (TX interrupt FIFO level select)
> in the UARTIFLS register to the lowest possible setting.  Then you'll
> get an interrupt when the TX FIFO only contains 2 bytes (on a PL011
> with 16 byte FIFOs), thus minimizing the busy-wait duration.

TX interrupt is used by other parts of driver. I would not recommend to
change this behavior without complete analysis of buffer refill timing.
There can be some devices which can be "IDLE" sensitive. This devices
would not work properly on higher baud rates.
I do not use busy-wait in timer tick. If there is data in FIFO I do not
stop timer and let it tick one more time.


Thanks,

Ivan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
