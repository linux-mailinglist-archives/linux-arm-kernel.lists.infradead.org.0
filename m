Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A74AB4FB2B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 12:47:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wQt7b4q35k1c/062iMLeoG3CgzH9t1kHUwzdkAedTfQ=; b=SYtWEtxHKjpExA
	eYnEtvXD0jnQ5OzqsPk+kNTeFpeG8JkJIFwpEmhOl0guAmm0n2B2E2GA1a3X7375tZMcVbcnnq/tZ
	nlX+UNj7t0ITghn8lhHbInQhjaytGevG2zQcNFtVVVDhMySdw9t21qm97e1E/fSOS4CvFNbAlQzOa
	sE6Y1Fg29y/1rcsmZUPF4wiGfBmDOK52nMjFKaNPV3fYuD70MbALUYM+e1LEVzqfMN5NyqeJHw1T9
	zWujmxbonJPNpea6cyo5EEG6oNN2kOxFGdDoGHvn9ZCEwRzWM871StniQRf6RSas5tn7roUwCQh9w
	RkjcBVOLQ1zji7/J7iAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf01U-0004A8-KE; Sun, 23 Jun 2019 10:47:00 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf01M-00049f-47
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 10:46:53 +0000
Received: from p5b06daab.dip0.t-ipconnect.de ([91.6.218.171] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hf01B-0007hi-S8; Sun, 23 Jun 2019 12:46:42 +0200
Date: Sun, 23 Jun 2019 12:46:40 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH 1/3] clocksource/drivers/sysctr: Add an optional property
In-Reply-To: <20190621082838.12630-1-Anson.Huang@nxp.com>
Message-ID: <alpine.DEB.2.21.1906231232520.32342@nanos.tec.linutronix.de>
References: <20190621082838.12630-1-Anson.Huang@nxp.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_034652_312732_A21DF62A 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, angus@akkea.ca,
 abel.vesa@nxp.com, ccaione@baylibre.com, andrew.smirnov@gmail.com,
 festevam@gmail.com, s.hauer@pengutronix.de, daniel.lezcano@linaro.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org, agx@sigxcpu.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Anson,

On Fri, 21 Jun 2019, Anson.Huang@nxp.com wrote:

> Subject : [PATCH 1/3] clocksource/drivers/sysctr: Add an optional property

That subject line is not really informative. From Documentation:

     The ``summary phrase`` in the email's Subject should concisely
     describe the patch which that email contains.

That means that it should tell which property it adds so it's immediately
clear what this is about. Something like:

 Subject: clocksource/drivers/sysctr: Add optional clock-frequency property

Hmm?

> From: Anson Huang <Anson.Huang@nxp.com>
> 
> This patch adds an optional property "clock-frequency" to pass

Please read Documentation/process/submitting-patches.rst and search for
'This patch'

> the system counter frequency value to kernel system counter
> driver and indicate the driver to skip of_clk operations, this
> is to support those platforms using platform driver model for
> clock driver.

That sentence does not parse. Please structure your changelog in the
following order:

   1) Context or problem

   2) Detailed analysis (if applicable and necessary)

   3) Short description of the solution (the rest is obvious from the patch
      itself).

So something like this (assumed I decoded the above correctly):

   Systems which use the system counter with the platform driver model
   require the clock frequency to be supplied via device tree.

   This is necessary as in the platform driver model the of_clk operations
   do not work correctly because LENGHTY EXPLANATION WHY ...

   Add the optinal clock-frequency to the device tree bindings of the NXP
   system counter so the frequency can be handed in and the of_clk
   operations can be skipped.

The important part is the missing LENGTHY EXPLANATION WHY. I can't fill
that in because you did not provide that information.

Thanks,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
