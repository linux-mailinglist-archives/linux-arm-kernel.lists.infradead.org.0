Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F865F71A6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 11:15:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YD7bQtXrfTfcGzLMUck4j57+Xm0elLx67M1uy3Sz7SM=; b=BiYhjilUPrM/vXFcbQB6CiNiw
	KmB3FOD0dWv2f/FHk4/M3Yj/VSqZF3lFx84O8pNSY0LDdsGT1QXAHDzMFvUlIUqbgHKSN366eLxU8
	TCqtlMBJmoKPiAO3P6v1xZKWfEDd3J69cr3Bvd5FbFNq4kDHvClqyVdFEHhefopHsEF/M9Yx/u0k8
	Z/NrxEJGDuPnTCUhdNN7kaAd8m1m4hLcRp3Qr3c44uZJN9KiHbm1J36FDOKjAQ77Mgi5SsFilOeoe
	fPvvNywj5U52vqiXOQ0hR8OQ0YiVte82l8X6D8iEQG+xDWnsRtrtgBmYMOAMVfzzLOTHtKCGlwD08
	vASWQpBgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU6j9-0007Kg-NY; Mon, 11 Nov 2019 10:15:19 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU6ix-0006mD-2j
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 10:15:08 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iU6it-0007sA-5c; Mon, 11 Nov 2019 11:15:03 +0100
To: Lokesh Vutla <lokeshvutla@ti.com>
Subject: Re: [PATCH] irqchip/ti-sci-inta: Use =?UTF-8?Q?ERR=5FCAST=20inlin?=
 =?UTF-8?Q?ed=20function=20instead=20of=20ERR=5FPTR=28PTR=5FERR=28=2E=2E?=
 =?UTF-8?Q?=2E=29=29?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Mon, 11 Nov 2019 11:24:24 +0109
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <670cd9a2-2083-bb5e-7bfc-58d5c90ec756@ti.com>
References: <776b7135-26af-df7d-c3a9-4339f7bf1f15@web.de>
 <670cd9a2-2083-bb5e-7bfc-58d5c90ec756@ti.com>
Message-ID: <29a69991ec7726d133e54a2891159e86@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: lokeshvutla@ti.com, markus.elfring@web.de,
 linux-arm-kernel@lists.infradead.org, jason@lakedaemon.net, nm@ti.com,
 ssantosh@kernel.org, t-kristo@ti.com, tglx@linutronix.de,
 linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_021507_283241_03BA54D7 
X-CRM114-Status: UNSURE (   7.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.6 INVALID_DATE_TZ_ABSURD Invalid Date: header (timezone does not
 exist)
 0.1 BUG6152_INVALID_DATE_TZ_ABSURD No description available.
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Nishanth Menon <nm@ti.com>, Jason Cooper <jason@lakedaemon.net>,
 kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Markus Elfring <markus.elfring@web.de>,
 Santosh Shilimkar <ssantosh@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-11 04:45, Lokesh Vutla wrote:
> On 05/11/19 5:00 PM, Markus Elfring wrote:
>> From: Markus Elfring <elfring@users.sourceforge.net>
>> Date: Tue, 5 Nov 2019 12:19:39 +0100
>>
>> A coccicheck run provided information like the following.
>>
>> drivers/irqchip/irq-ti-sci-inta.c:250:9-16: WARNING: ERR_CAST can be 
>> used
>> with vint_desc.
>>
>> Generated by: scripts/coccinelle/api/err_cast.cocci
>>
>> Thus adjust the exception handling in one if branch.
>>
>> Fixes: 9f1463b86c13277d0bd88d5ee359577ef40f4da7 
>> ("irqchip/ti-sci-inta: Add support for Interrupt Aggregator driver")
>
> Fixes: 9f1463b86c13 ("irqchip/ti-sci-inta: Add support for Interrupt 
> Aggregator driver")

I fundamentally disagree with the "Fixes:" tag. This isn't a fix,
just a minor readability improvement. Flagging things as "Fixes:"
ends up triggering all kind of unnecessary backports to -stable.

> With this:
>
> Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>

I'll otherwise take this patch in -next.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
