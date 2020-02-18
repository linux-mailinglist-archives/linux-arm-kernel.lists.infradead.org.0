Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4106162A6E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 17:27:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1/rJNjbCrRnGdB9sXIVJe/EXvLzaSNs/fhFIvb0hz3k=; b=E37B3xizemklkt
	otAl6pckhI8VPY+91Lk+AZggpS2YoKBlX0D1Fw3MfBjPXIJ6+SNSIr1mHc9eG8ZWOuq4OnFqdfxeP
	KnRwZySMwpDfY/BRF7gsXFUl47yGojqivT5vJH2ge6/tLxXzirs0K+lAhI9QKLpTEhbVAg7xVw158
	WNzwpsaxT4MI3yDv7sZy1DIkuSmjRTzT1hUOsQ8vRNu6C6KT0yWxNzCZSL9VgvvkNkZOYfEsS0ny7
	cb2rSnbRHE5qNsFruKyQh+tKZfBKQewClWFWSewJIFCyyte03n+QEClHA2Mx7iVeOjOcRcOxY8Tjo
	gug7+7fzVjYTKgiJoxBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j45in-0007qi-Hm; Tue, 18 Feb 2020 16:27:41 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j45iZ-0007pJ-Qt
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 16:27:29 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48MR8R2sQDz1rfcQ;
 Tue, 18 Feb 2020 17:27:19 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48MR8R1ZxZz1qrnN;
 Tue, 18 Feb 2020 17:27:19 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id AKh25iX5XmKa; Tue, 18 Feb 2020 17:27:17 +0100 (CET)
X-Auth-Info: FjyVC0AvfVuJZbbbHCumiarSvEf7DE3eoJ2kZJ3WIXU=
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 18 Feb 2020 17:27:17 +0100 (CET)
Subject: Re: [PATCH v2 0/2] Add GPIO level-sensitive interrupt support
To: Alexandre Torgue <alexandre.torgue@st.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <marc.zyngier@arm.com>, Linus Walleij <linus.walleij@linaro.org>
References: <20200218131218.10789-1-alexandre.torgue@st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <b5a2dcab-06db-4863-ac5c-28f4ef0c5ac9@denx.de>
Date: Tue, 18 Feb 2020 17:25:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200218131218.10789-1-alexandre.torgue@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_082728_026174_2316274F 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/18/20 2:12 PM, Alexandre Torgue wrote:
> This series adds the possibility to handle gpio interrupts on level.
> 
> GPIO hardware block is directly linked to EXTI block but EXTI handles
> external interrupts only on edge. To be able to handle GPIO interrupt on
> level a "hack" is done in gpio irq chip: parent interrupt (exti irq chip)
> is retriggered following interrupt type and gpio line value.
> 
> In exti irq chip, retrigger ops function is added.

btw. this might be unrelated, but is it possible to have e.g. gpioC2 set
as trigger-level-low and gpioD2 set as trigger-edge-falling ? It seems
8eb2dfee9fb1 ("pinctrl: stm32: add lock mechanism for irqmux selection")
prevents that.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
