Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E842A18E879
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 12:51:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+72/MQxJJLYeOTagIs5bsHf6WyAj+J+a99cHiLHAnTQ=; b=JAJ/iR6gmCbNwP7BsJebLtv/Q
	Esufp+4vFmfzAbuvX1RO0u5vvzm+D1Ri7ym39uNNRmJNFsh2YOdTyD9//DGZiAr2/Z9+t6f0opt3D
	xBy+c4eoUOpO7wajTrifxftlnAS7DGuLRIG2yBvBxIor2nAIfWI5ElRn+9xEN/8AJ+Tpyj4GpHZ7K
	Q8qenUUNMq3wcoVVykhHreWdrTDgdOVHQJ3UcMRoQaH+QZTrdeYBnvUaopuY7VCESX5SQRcRlxuL3
	2Rzd7XTEhGAcfIK+GgsVVuk7i3eehe89J/WYClASInKGGBYNvSasQT6ifTsag3M91iVQkoQcbTjme
	IUxuWiKfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFz8U-0000MX-FS; Sun, 22 Mar 2020 11:51:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFz8K-0000LZ-8P
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Mar 2020 11:51:13 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4178F20732;
 Sun, 22 Mar 2020 11:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584877871;
 bh=4L+US9oyt6r1I7CpRdSaSOrHJKplo8D3RFAXhA3hdMo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=R0BqIzrd/qCI/exH8dYpR45RGV/pyISkZIgqN7y2yAXCqvYqhd8Vf/qEKtoxxD0VO
 HcJciWvxoDtlyvS9WwhU6zu6Q1GxV5/58aTbT8GWbIn+CXbBQ5hP7iqrjWWgQhR7Zt
 bLXMWyxFZcJRkFdeVFgNmDJxl8quAtU6aW2ZalJY=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jFz8H-00Efyv-IX; Sun, 22 Mar 2020 11:51:09 +0000
MIME-Version: 1.0
Date: Sun, 22 Mar 2020 11:51:09 +0000
From: Marc Zyngier <maz@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] irqchip/versatile-fpga: Apply clear-mask earlier
In-Reply-To: <CACRpkdYvoVF_q1Re_v_sJCYVDOhte0NpdU91UtYB2SpHH60-jg@mail.gmail.com>
References: <20200321133842.2408823-1-mans0n@gorani.run>
 <CACRpkdYvoVF_q1Re_v_sJCYVDOhte0NpdU91UtYB2SpHH60-jg@mail.gmail.com>
Message-ID: <b333772bbc3037c47060cf1af1fff3e8@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: linus.walleij@linaro.org, mans0n@gorani.run,
 linux-oxnas@groups.io, tglx@linutronix.de, jason@lakedaemon.net,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 narmstrong@baylibre.com, daniel@makrotopia.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_045112_325486_608A5A60 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jason Cooper <jason@lakedaemon.net>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 Daniel Golle <daniel@makrotopia.org>, Sungbo Eo <mans0n@gorani.run>,
 Thomas Gleixner <tglx@linutronix.de>, linux-oxnas@groups.io,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-22 11:45, Linus Walleij wrote:
> On Sat, Mar 21, 2020 at 2:40 PM Sungbo Eo <mans0n@gorani.run> wrote:
> 
>> Clear its own IRQs before the parent IRQ get enabled, so that the
>> remaining IRQs do not accidentally interrupt the parent IRQ 
>> controller.
>> 
>> This patch also fixes a reboot bug on OX820 SoC, where the remaining
>> rps-timer IRQ raises a GIC interrupt that is left pending. After that,
>> the rps-timer IRQ is cleared during driver initialization, and there's
>> no IRQ left in rps-irq when local_irq_enable() is called, which evokes
>> an error message "unexpected IRQ trap".
>> 
>> Fixes: bdd272cbb97a ("irqchip: versatile FPGA: support cascaded 
>> interrupts from DT")
>> Signed-off-by: Sungbo Eo <mans0n@gorani.run>
>> Cc: Neil Armstrong <narmstrong@baylibre.com>
>> Cc: Daniel Golle <daniel@makrotopia.org>
> 
> Good catch!
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> 
> Marc: Cc stable?

Sure, I'll add that.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
