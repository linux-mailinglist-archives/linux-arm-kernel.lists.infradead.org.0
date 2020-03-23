Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D09418FD3E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 20:04:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lju0uiT/nrx2+18k00F4hLN7L+bpNfiQBkf1TRF2ihc=; b=erbXIP7CMHJU20
	370nnsRKVcGH3TNLKOB9q47ZPEn59MpiSc1nKogRDC09EDDaZZe/xPGqlP8G8M7VmQBlxRWzfs1tZ
	iBfD5q+qBd8BbxnIjzF5LU55Fj2UVik0A6olseHo9/S4WJqvcI3p05PzSagmSmWkccpJ1oq7SSOAz
	KUk1S8Kg75/tLoHYDwAeS9yA9+7ROpvGAwjIYSTVGvymhzjQi+zVYf+nKqxE7uZtIErpvSfIi+BVS
	myJumQghNVnjzdBQYkoYvYnYc3hXyChRuA8Q8rdh2hoe/u/rdnwgsu9zdCLC/ZndsOlrnaU1VZZpA
	jUS0fvM49cZZ7nP4aAKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGSNR-0005Un-OM; Mon, 23 Mar 2020 19:04:45 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGSNC-0005O9-Ko
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 19:04:32 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48mP213YTmz1qs3f;
 Mon, 23 Mar 2020 20:04:25 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48mP212dwFz1qyDb;
 Mon, 23 Mar 2020 20:04:25 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id QqK1mG1Wus-J; Mon, 23 Mar 2020 20:04:24 +0100 (CET)
X-Auth-Info: I4MqN1cNOhqaPCP1appfZmyf8HYmdhHvee0xhz+7aVc=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Mon, 23 Mar 2020 20:04:24 +0100 (CET)
Subject: Re: [PATCH v3 2/2] pinctrl: stm32: Add level interrupt support to
 gpio irq chip
To: Marc Zyngier <maz@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
References: <20200219143229.18084-1-alexandre.torgue@st.com>
 <20200219143229.18084-3-alexandre.torgue@st.com>
 <CACRpkdZ7uq4U6GBQQQh=pTLf4wW3KfH3Zrz9z_3ZQgoaJD9Ynw@mail.gmail.com>
 <c991edca3e8925cf0489c0a5676f77b2@kernel.org>
From: Marek Vasut <marex@denx.de>
Message-ID: <a7fc5e43-34c2-a4e6-e0c5-1584f17fb024@denx.de>
Date: Mon, 23 Mar 2020 20:04:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <c991edca3e8925cf0489c0a5676f77b2@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_120430_842336_193DD958 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Jason Cooper <jason@lakedaemon.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/20/20 10:17 AM, Marc Zyngier wrote:
> On 2020-02-20 09:04, Linus Walleij wrote:
>> On Wed, Feb 19, 2020 at 3:32 PM Alexandre Torgue
>> <alexandre.torgue@st.com> wrote:
>>
>>> GPIO hardware block is directly linked to EXTI block but EXTI handles
>>> external interrupts only on edge. To be able to handle GPIO interrupt on
>>> level a "hack" is done in gpio irq chip: parent interrupt (exti irq
>>> chip)
>>> is retriggered following interrupt type and gpio line value.
>>>
>>> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
>>> Tested-by: Marek Vasut <marex@denx.de>
>>
>> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>>
>> If Marc want to merge it with patch 1/2 go ahead!
> 
> I'll queue the whole thing for 5.7.

I have a feeling this doesn't work with threaded interrupts.

If the interrupt handler runs in a thread context, the EOI will happen
almost right away (while the IRQ handler runs) and so will the code
handling the IRQ retriggering. But since the IRQ handler still runs and
didn't return yet, the retriggering doesn't cause the IRQ handler to be
called again once it finishes, even if the IRQ line is still asserted.
And that could result in some of the retriggers now happening I think.
Or am I doing something wrong ?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
