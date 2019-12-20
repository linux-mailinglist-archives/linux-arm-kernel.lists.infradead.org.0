Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DF7127C67
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 15:20:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9dIbTdOLF3EUzMLUReP7vCiYA0rA93/1kBd8+MMg+ko=; b=Pa8rvj3tyhktEwnvvewDFmocC
	eN39cwtrVjbRsNEPm9H1Grep2wyQc7tsuWF7byq0kOdH6PRNGIU0oqCrvgtuCtLIPsvWh5jhf4IVA
	psLZkjrZrRY9uXwTt0fG1Oqh1V+jcNPWaeKcj/N5clism6Fdliw3Z4/oI1fDzjSoqeg22fGbOR6X4
	AOvOgQRxwWxX2STzoZRIUN9ZHUa6We4PQkVqwxeZ4CU36j3wIUM7QLPXEiTpQ/GkLZT6N9wGdd9NM
	s03aQ7ZuHIq6aOv/2kZzE73gLDuH1zkGJnxOlGkYa/BmfE3pLCYW/OnxQqnbCXEUZRMoRmVbcYtdD
	e4ksO6scA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiJ8m-0006aE-Si; Fri, 20 Dec 2019 14:20:28 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiJ8b-0006ZN-J4
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 14:20:19 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iiJ8R-0006rT-NQ; Fri, 20 Dec 2019 15:20:07 +0100
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: RE: [PATCH V3 2/2] drivers/irqchip: add NXP INTMUX interrupt
 multiplexer support
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Fri, 20 Dec 2019 14:20:07 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <DB7PR04MB4618B9A227807CCF884910C6E62D0@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <1576827431-31942-1-git-send-email-qiangqing.zhang@nxp.com>
 <1576827431-31942-3-git-send-email-qiangqing.zhang@nxp.com>
 <ad5165ba-24d7-ceeb-8794-cdbe4e564bd5@ti.com>
 <DB7PR04MB4618B9A227807CCF884910C6E62D0@DB7PR04MB4618.eurprd04.prod.outlook.com>
Message-ID: <8bc6bcf113cce13816c62c166f091785@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: qiangqing.zhang@nxp.com, lokeshvutla@ti.com,
 tglx@linutronix.de, jason@lakedaemon.net, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 fugang.duan@nxp.com, shengjiu.wang@nxp.com, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_062017_778249_C72BFFB9 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: mark.rutland@arm.com, Andy Duan <fugang.duan@nxp.com>, jason@lakedaemon.net,
 Lokesh Vutla <lokeshvutla@ti.com>, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 dl-linux-imx <linux-imx@nxp.com>, kernel@pengutronix.de, tglx@linutronix.de,
 shawnguo@kernel.org, "S.j. Wang" <shengjiu.wang@nxp.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-20 14:10, Joakim Zhang wrote:
>> -----Original Message-----
>> From: Lokesh Vutla <lokeshvutla@ti.com>

[...]

>> Does the user care to which channel does the interrupt source goes 
>> to? If not,
>> interrupt-cells in DT can just be a single entry and the channel 
>> selection can be
>> controlled by the driver no? I am trying to understand why user 
>> should specify
>> the channel no.
> Hi Lokesh,
>
> If a fixed channel is specified in the driver, all interrupt sources
> will be connected to this channel, affecting the interrupt priority 
> to
> some extent.
>
> From my point of view, a fixed channel could be enough if don't care
> interrupt priority.

Hold on a sec:

Is the channel to which an interrupt is routed to programmable? What 
has
the priority of the interrupt to do with this? How does this affect
interrupt delivery?

It looks like this HW does more that you initially explained...

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
