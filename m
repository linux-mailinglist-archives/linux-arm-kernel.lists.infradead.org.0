Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE8C1C97CD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 19:30:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u+DkS/MlFv7vb4TjrM+dNKiI08wHZSOb1bgQC2MSdF4=; b=k7wN3SVY5r+QZM
	/qGYogZx9B5UDpdlk8ozhCvpdE1F6nm9g3l0b6HkEcrNw0SxFPogFrLWRjSJNDSG9k9u/r7hWmx7N
	rRmKevx1i1/d1RrA8Af46Ih+JDxid2C6InuPIi33MtiRZF1pzZ6DtqOF7U0s5595vlq9+Hwm18dJT
	1oeenbwdivNwbDDgmnFIo7FVVIeI+XsZH7mRHuWnrB32goe8RuQZagytKxYmeZSxHGljEEyrNFSmX
	mDfwNMuBNpVq6fuKbp8LueQxPnB99orNX2zSru7aWNq7PFJEqX4IJ92B4DCU/Zy+GJtbzctI3KfFC
	WwKYwMIZqBGuJGAAxy+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWkLr-0003HH-Do; Thu, 07 May 2020 17:30:27 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWkLd-0001nO-85
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 17:30:14 +0000
Received: from p5de0bf0b.dip0.t-ipconnect.de ([93.224.191.11]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1jWkLW-0001Z4-63; Thu, 07 May 2020 19:30:06 +0200
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 9030A102652; Thu,  7 May 2020 19:30:05 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] [RFC] genirq: Check irq_data_get_irq_chip() return value
 before use
In-Reply-To: <20200507150729.244468-1-marex@denx.de>
References: <20200507150729.244468-1-marex@denx.de>
Date: Thu, 07 May 2020 19:30:05 +0200
Message-ID: <87r1vvejqa.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_103013_440611_AFDF39DD 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Marek Vasut <marex@denx.de>, Marc Zyngier <marc.zyngier@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Stephen Boyd <sboyd@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Marek Vasut <marex@denx.de> writes:

> The irq_data_get_irq_chip() can return NULL. If the kernel accesses
> chip->irq_get_irqchip_state without checking whether chip is valid,
> we get a crash. Fix this by checking whether chip is not NULL before
> using it.
>
> Fixes: 1b7047edfcfb ("genirq: Allow the irqchip state of an IRQ to be save/restored")
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> NOTE: I don't know whether this is a correct fix. Maybe the
>       irq_data_get_irq_chip() should never return NULL, and
>       I have some other issue?

What's the callchain?

Thanks,

        tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
