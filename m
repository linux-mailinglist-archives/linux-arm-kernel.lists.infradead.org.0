Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1AA41D239B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 02:26:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f6IcWocNyQpcbjxQUKlbJIeb5bKzxRbQSID6aKAsahs=; b=V39TTm14FWolON
	Ymy8PLaMBeMD0Dberm/O6Cxcw6p8ONn/bFgTwjHf1zhjUik7wrDw+gTUF5mN0NerqhxA7pNLLxmPg
	j5Y47GfzFVUL1r6H3vfP2l+xocU/k+od6XEsnnTTgyq+u4id9S/D1P3rZiAW5B8XajYb0I0/AdygQ
	8K4IWMM28bl5ADU1tPTqCCVrnnNUX5EmCG3owdEALVkHb4Unfk4h6jmjyclnE9O2AZR8Q2DfWRZxU
	f9ol4IxH5X03QZZYey+dc1Q1rvOjAc/V7cs1PM95QEEZ5s1DNrIMt1xFkebVsTFAQ9Ca9IIA5FVXy
	0teJa1iz0XWRwZvTRAyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ1hw-0001QR-Sq; Thu, 14 May 2020 00:26:40 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ1hm-0001Po-2Z
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 00:26:31 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 49Msm41YGXz1rqqS;
 Thu, 14 May 2020 02:26:28 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 49Msm41CWkz1qql9;
 Thu, 14 May 2020 02:26:28 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id SRYnKyLQS5I8; Thu, 14 May 2020 02:26:26 +0200 (CEST)
X-Auth-Info: +x9lne/fv2vZpZBKflsne7Kxp6RD1OArXyCjXyzbo0U=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Thu, 14 May 2020 02:26:26 +0200 (CEST)
Subject: Re: [PATCH] [RFC] genirq: Check irq_data_get_irq_chip() return value
 before use
To: Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
References: <20200507150729.244468-1-marex@denx.de>
 <87r1vvejqa.fsf@nanos.tec.linutronix.de>
 <05c06df8-f871-c20f-3b7e-bcfa0b5d88cd@denx.de>
 <875zd7e7m0.fsf@nanos.tec.linutronix.de>
 <d3b76d43-675b-c699-06fa-aab448504f25@denx.de>
 <87a72b1rxe.fsf@nanos.tec.linutronix.de>
From: Marek Vasut <marex@denx.de>
Message-ID: <461c5fe4-66f6-7805-9235-310a0d95806b@denx.de>
Date: Thu, 14 May 2020 02:26:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <87a72b1rxe.fsf@nanos.tec.linutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_172630_263457_9CE4739A 
X-CRM114-Status: GOOD (  20.61  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.10 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Stephen Boyd <sboyd@codeaurora.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Fabien Dessenne <fabien.dessenne@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/13/20 10:49 PM, Thomas Gleixner wrote:
> Marek,
> 
> Marek Vasut <marex@denx.de> writes:
>> On 5/7/20 11:51 PM, Thomas Gleixner wrote:
>> All right, so I found out the root cause is already fixed in next, and
>> just needs to be backported to stable. I'll ping the patch author about
>> that.
>>
>> It's this patch:
>> 69269446ccbf ("mailbox: stm32-ipcc: Update wakeup management")
>>
>> I also need to revisit the regulator suspend topic next, that seems to
>> be a separate issue after all.
>>
>> Sorry for the noise.
> 
> Nothing to be sorry about.
> 
>> That said, do you want to take this patch to add the missing check
>> anyway or is there a reason the check is missing ?
> 
> The reason is probably that chip == NULL is unexpected at least from the
> initial callers.
> 
> Adding a check for robustness is a good thing, but it should be done
> slightly different.
> 
> 	do {
> 		chip = irq_data_get_irq_chip(data);
>                 if (WARN_ON_ONCE(!chip))
>                 	return -ENODEV;
> 
> Simply because to alert the developer that this call is at the wrong
> place.
> 
> Care to refresh it?

Yep, done.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
