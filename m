Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 865451BF3E2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 11:13:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yIaynYOWqFVzaNUWtVo0xMmsTrhNbrSSpDR413WLCUA=; b=u4h4MGAa6OZfz0
	ctc1v8eUKGLQKJ1ZtXRYglYZC32xG9/q8PdJnNFsx52sRUwtj3dYXG5SFBZ8MAaaC0dy7kGt3BrKF
	TN2ezALLFn4I2iNYA5EVFdeEf9V6+ohKbKLiG3ROIn6aToKVQ39x2u3QTZKBkg2iKZfrZMcASCtfN
	LLIDfpF35b1lRvrhmEKUNyLLcpL/6N1DMoYppiGJDDblTfiP4NiwoYFg0+i7pzIJGMtY2yOyVCIb/
	nWbB2YEIQ7nCvie9tVCEXposycL08b7t1fbXh7QIYxir6H2eIQSeG+9NmAjSTppq5QKUrjh4epsJM
	kdJsRi7/H+j/5GW5jOnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU5GC-0001Ds-PU; Thu, 30 Apr 2020 09:13:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU5G2-0001DE-2q
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 09:13:27 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6447E2082E;
 Thu, 30 Apr 2020 09:13:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588238005;
 bh=JNYY/lIhM+KmdtUid3oVijBTFJzmnGX8VYYWh0ljOVM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=amam8/YRxVFOJY0P8cbDGOng2efgsO4eZKRsGMKz1P1/NT9yf/O8TivOn/9sMmHx5
 wUCMkApwmRepMAyqdrzEuaRIDxKqEMl3Rk3vHoTxrEpjk1gIbdIuUtnTGLbW0iIRJE
 hsQRCHqD3dsrNODE12FNE6mysH5j7dnRabx6Tw64=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jU5Fz-007yZV-OB; Thu, 30 Apr 2020 10:13:23 +0100
Date: Thu, 30 Apr 2020 10:13:22 +0100
From: Marc Zyngier <maz@kernel.org>
To: Sumit Garg <sumit.garg@linaro.org>
Subject: Re: [RFC Patch v1 2/4] irqchip/gic-v3: Add support to handle SGI as
 pseudo NMI
Message-ID: <20200430101322.420e4052@why>
In-Reply-To: <CAFA6WYMheJxeKVC_YWN9owNJhcWTBsaOCvZXxq=GVj5ROJ0cvg@mail.gmail.com>
References: <1587726554-32018-1-git-send-email-sumit.garg@linaro.org>
 <1587726554-32018-3-git-send-email-sumit.garg@linaro.org>
 <20200425112950.3a4815b6@why>
 <6fd3d96181ec53f735ef1b6a79d28da1@kernel.org>
 <CAFA6WYPNNNZeX5zpadayfiZ7P_mHmiREpUd5LZ3Jp+TjGVqoEw@mail.gmail.com>
 <ac57cb4bbb6507ee98f199d68a514503@kernel.org>
 <CAFA6WYMheJxeKVC_YWN9owNJhcWTBsaOCvZXxq=GVj5ROJ0cvg@mail.gmail.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: sumit.garg@linaro.org, daniel.thompson@linaro.org,
 jason@lakedaemon.net, catalin.marinas@arm.com, dianders@chromium.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 jason.wessel@windriver.com, kgdb-bugreport@lists.sourceforge.net,
 tglx@linutronix.de, will@kernel.org, julien.thierry.kdev@gmail.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_021326_165664_A9B4DCFC 
X-CRM114-Status: GOOD (  23.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Douglas Anderson <dianders@chromium.org>, julien.thierry.kdev@gmail.com,
 Jason Wessel <jason.wessel@windriver.com>,
 kgdb-bugreport@lists.sourceforge.net, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 30 Apr 2020 12:50:28 +0530
Sumit Garg <sumit.garg@linaro.org> wrote:

> Hi Marc,
> 
> On Wed, 29 Apr 2020 at 13:53, Marc Zyngier <maz@kernel.org> wrote:

[...]

> > What I would like is for the arch code to request these interrupts as
> > normal interrupts, for which there is one problem to solve: how do you
> > find out about the Linux IRQ number for a given IPI. Or rather, how
> > do you get rid of the requirement to have IPI numbers at all and just
> > say "give me a per-cpu interrupt that I can use as an IPI, and by the
> > way here's the handler you can call".  
> 
> I think what you are looking for here is something that could be
> sufficed via enabling "CONFIG_GENERIC_IRQ_IPI" framework for arm64/arm
> architectures. It's currently used for mips architecture. Looking at
> its implementation, I think it should be possible to hook up SGIs
> under new IPI irq_domain for GICv2/v3.
> 
> So with this framework we should be able to dynamically allocate IPIs
> and use common APIs such as request_irq()/request_nmi() to tell IPI
> specific handlers.
> 
> If this approach looks sane to you then I can start working on a PoC
> implementation for arm64.

I can't say I'm keen. This IPI framework doesn't really work for the
GIC:

- it requires a separate irqdomain to be able to guarantee that you
  allocate the hwirq in the SGI range. What is the point?
- it creates yet another level of indirection on IPI injection

This framework was created to deal with two cases:
- systems that can't represent their IPI with a single hwirq spanning
  all the CPUs
- "accelerator cores" that don't run Linux

The GIC architecture avoids the first point, and I don't even want to
think of the second one.

Also, it doesn't solve the initial problem, which is to bootstrap the
whole thing. The IPI framework relies on an irqdomain to be created the
first place. This would mean teaching the arch code about the
intricacies of irqdomains, FW nodes and other terrible things. All
things which are better hidden in the GIC drivers (not to mention the
other horror stories that are the RPi-2/3 irqchip and the Huawei GIC
knock-off).

What I have in mind is to replace the set_smp_cross_call() with
something that passes the required set of information (interrupt range,
at the very least). The only thing that I plan to reuse from the IPI
framework is the chip->ipi_send_mask() callback.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
