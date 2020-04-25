Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A281B870E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 16:32:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k2xAZmiZHc3DDzK0ablHKixgWxk3alF3vTUAMufPI1c=; b=EqRWEVB1SMmdTyZOKxOP9P/Wh
	cbQh/BMGD6DCSkcg6NFEwBLC4SURVLjk/jjC11XWr1VDsLvRRxxISqKgZn03ftc7jWbOGGbn7MB8N
	ZduqgIdUyoobMaxOVAelgbBS1Ej3arUkUd9lHdBoFOO533HoRxKaMU+nZlEMXpIpcU5GcQoGtq3nP
	RaAeeImI5w82TGk1WzPKSMfIb1cvXNATFQa47VkmKy4p9u7nLFUlh8OPR8xB1XLGHf/9UjdrgNBA1
	CULM656S4jD1U/puv/X8Hi3984/b5lf5lVCka6uEPVLX9JtBKvQAxkNQxxhDPpYbBiY+tCpO7RV1j
	we1cKnzdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSLqp-0002cI-NU; Sat, 25 Apr 2020 14:32:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSLqd-0002b1-T1
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Apr 2020 14:32:05 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 50E2220714;
 Sat, 25 Apr 2020 14:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587825123;
 bh=2Q/upiP+dr67u4tRq9PLOWQ4B95IDVSlUcu4hEkJpe4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=pqJIWQw9M3rWg7TDjn7p8ySmB13X4El1kyX3qnH3LVPt7EWQldjodI8gIKPjOmFXc
 +F9pgnaMf8nMDBetjN8qhRuLlN42MkDOPh172YQrIGRlcVnQOH3DA3B9aa92uxas2e
 ny1OA5kT+BAn2KUT6jpCDd21GVXoGP3H1o56KKUs=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jSLqb-006JQH-4x; Sat, 25 Apr 2020 15:32:01 +0100
MIME-Version: 1.0
Date: Sat, 25 Apr 2020 15:32:01 +0100
From: Marc Zyngier <maz@kernel.org>
To: Sumit Garg <sumit.garg@linaro.org>
Subject: Re: [RFC Patch v1 2/4] irqchip/gic-v3: Add support to handle SGI as
 pseudo NMI
In-Reply-To: <20200425112950.3a4815b6@why>
References: <1587726554-32018-1-git-send-email-sumit.garg@linaro.org>
 <1587726554-32018-3-git-send-email-sumit.garg@linaro.org>
 <20200425112950.3a4815b6@why>
Message-ID: <6fd3d96181ec53f735ef1b6a79d28da1@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: sumit.garg@linaro.org, daniel.thompson@linaro.org,
 jason@lakedaemon.net, catalin.marinas@arm.com, dianders@chromium.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 jason.wessel@windriver.com, kgdb-bugreport@lists.sourceforge.net,
 tglx@linutronix.de, will@kernel.org, julien.thierry.kdev@gmail.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_073203_983177_BDDF8083 
X-CRM114-Status: GOOD (  18.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: daniel.thompson@linaro.org, jason@lakedaemon.net, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, dianders@chromium.org,
 julien.thierry.kdev@gmail.com, jason.wessel@windriver.com,
 kgdb-bugreport@lists.sourceforge.net, tglx@linutronix.de, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-25 11:29, Marc Zyngier wrote:
> On Fri, 24 Apr 2020 16:39:12 +0530
> Sumit Garg <sumit.garg@linaro.org> wrote:
> 
> Hi Sumit,
> 
>> With pseudo NMIs enabled, interrupt controller can be configured to
>> deliver SGI as a pseudo NMI. So add corresponding handling for SGIs.
>> 
>> Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
>> ---
>>  drivers/irqchip/irq-gic-v3.c | 22 +++++++++++++++++-----
>>  1 file changed, 17 insertions(+), 5 deletions(-)
>> 
>> diff --git a/drivers/irqchip/irq-gic-v3.c 
>> b/drivers/irqchip/irq-gic-v3.c
>> index d7006ef..be361bf 100644
>> --- a/drivers/irqchip/irq-gic-v3.c
>> +++ b/drivers/irqchip/irq-gic-v3.c
>> @@ -609,17 +609,29 @@ static inline void gic_handle_nmi(u32 irqnr, 
>> struct pt_regs *regs)
>>  	if (irqs_enabled)
>>  		nmi_enter();
>> 
>> -	if (static_branch_likely(&supports_deactivate_key))
>> -		gic_write_eoir(irqnr);
>>  	/*
>>  	 * Leave the PSR.I bit set to prevent other NMIs to be
>>  	 * received while handling this one.
>>  	 * PSR.I will be restored when we ERET to the
>>  	 * interrupted context.
>>  	 */
>> -	err = handle_domain_nmi(gic_data.domain, irqnr, regs);
>> -	if (err)
>> -		gic_deactivate_unhandled(irqnr);
>> +	if (likely(irqnr > 15)) {
>> +		if (static_branch_likely(&supports_deactivate_key))
>> +			gic_write_eoir(irqnr);
>> +
>> +		err = handle_domain_nmi(gic_data.domain, irqnr, regs);
>> +		if (err)
>> +			gic_deactivate_unhandled(irqnr);
>> +	} else {
>> +		gic_write_eoir(irqnr);
>> +		if (static_branch_likely(&supports_deactivate_key))
>> +			gic_write_dir(irqnr);
>> +#ifdef CONFIG_SMP
>> +		handle_IPI(irqnr, regs);
>> +#else
>> +		WARN_ONCE(true, "Unexpected SGI received!\n");
>> +#endif
>> +	}
>> 
>>  	if (irqs_enabled)
>>  		nmi_exit();
> 
> If there is one thing I would like to avoid, it is to add more ugly
> hacks to the way we handle SGIs. There is very little reason why SGIs
> should be handled differently from all other interrupts. They have the
> same properties, and it is only because of the 32bit legacy that we 
> deal
> with them in such a cumbersome way. Nothing that we cannot fix though.
> 
> What I would really like to see is first a conversion of the SGIs to
> normal, full fat interrupts. These interrupts can then be configured as
> NMI using the normal API.
> 
> I think Julien had something along these lines (or was that limited to
> the PMU?). Otherwise, I'll happily help you with that.

OK, to give you an idea of what I am after, here's a small series[1] 
that
can be used as a base (it has been booted exactly *once* on a model, and
is thus absolutely perfect ;-).

There is still a bit of work to be able to actually request a SGI (they
are hard-wired as chained interrupts so far, as this otherwise changes
the output of /proc/interrupts, among other things), but you will
hopefully see what I'm aiming for.

Thanks,

         M.

[1] 
https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git/log/?h=irq/gic-sgi
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
