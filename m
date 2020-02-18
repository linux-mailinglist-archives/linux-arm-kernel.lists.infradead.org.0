Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C60AC162D81
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 18:54:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ttGmtn0KoQskWDokDtHb6vez5Ut8gW70hztit7mNKUc=; b=YAJW28V26meafQ
	k2r/6dQcYzhXDsvOC1jn47OPxRsnpGqJ2ESUBK7eQPprs1khuvGcCjfCK4BIA6kTpwzWPL/UqcYTc
	bVEpjbqAfrFk3+7l1qSsch6Qcjilo9nL53Ns8uxFA5XVJZBPJWS0JmEm0uYJS/B5PRdoxCHif9jRx
	2nU+KHLAuE0jp4vmBalznopKP6MwkjIVl4bEPTfKfvyUkvVkn4Er35GeqK0qUSosj27w5WZZsfAU5
	/JsSHvIII4takM5XJhIL3Or5dIsdnrLXFO99MxHEQO8N7tHZs+u1LlwG30G2XgXvUgZgehg5zy4Dk
	YWKcIXpXvFmpwwFAfvhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j474V-0006kg-J1; Tue, 18 Feb 2020 17:54:11 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4748-0006XO-6c
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 17:53:49 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48MT4B1LRdz1qrLp;
 Tue, 18 Feb 2020 18:53:46 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48MT4B0VT8z1qqkc;
 Tue, 18 Feb 2020 18:53:46 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id 7a4_xjb2W3Wt; Tue, 18 Feb 2020 18:53:44 +0100 (CET)
X-Auth-Info: +1fpDYi5PO7Wc+uaFk/H/AOq0cR/pIY5FLcDyTGbJJI=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 18 Feb 2020 18:53:44 +0100 (CET)
Subject: Re: [PATCH v2 2/2] pinctrl: stm32: Add level interrupt support to
 gpio irq chip
To: Alexandre Torgue <alexandre.torgue@st.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <marc.zyngier@arm.com>, Linus Walleij <linus.walleij@linaro.org>
References: <20200218131218.10789-1-alexandre.torgue@st.com>
 <20200218131218.10789-3-alexandre.torgue@st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <139584ff-4452-b576-f22b-ce2b24869e46@denx.de>
Date: Tue, 18 Feb 2020 18:51:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200218131218.10789-3-alexandre.torgue@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_095348_402177_2B68F564 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/18/20 2:12 PM, Alexandre Torgue wrote:
> This patch adds level interrupt support to gpio irq chip.
> 
> GPIO hardware block is directly linked to EXTI block but EXTI handles
> external interrupts only on edge. To be able to handle GPIO interrupt on
> level a "hack" is done in gpio irq chip: parent interrupt (exti irq chip)
> is retriggered following interrupt type and gpio line value.
> 
> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
> Tested-by: Marek Vasut <marex@denx.de>

Reviewed-by: Marek Vasut <marex@denx.de>
(and I tested the previous version on STM32MP1)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
