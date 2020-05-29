Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF891E7E8B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 15:21:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6FOgi7t6S19liczT4smK05gkzUIFlJVrkFnPhp8QyVA=; b=Gs2DeO1uol2QBq
	LzCOoVC/ZUgaQeQEOGtUNmat9MtJubdRtrcaac+8zF+S5wqurwZBSkExNbHWo7qdJx+1iKWwIXEuQ
	Nq7/0qnkIjcbMgZd8V6ld8AsmBRX6y1qswnk/jWWRqNyoQx0vAL02Vu5FTRDs+hyuoQ5SQ5RZHa4I
	bvcqKz9iLCRodehZUZ5DN2jgMS27RMN+LfhWv+zgIhvfOvxYjYlCO6KrMuxrofE+xNQHZMA1JETsi
	ZC/jvwLpTigzX/jJAZDfLoaV40I6sQTobnv4KPsbzwpq2KoAsIb9wmczXbwwpTWP23Jf+wHJVCpeg
	qO00qD7lnYcOIser3w6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeexC-0007Bd-7v; Fri, 29 May 2020 13:21:42 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeewu-0007Aj-La
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 13:21:31 +0000
X-Originating-IP: 86.202.110.81
Received: from localhost (lfbn-lyo-1-15-81.w86-202.abo.wanadoo.fr
 [86.202.110.81])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 072C74000B;
 Fri, 29 May 2020 13:21:18 +0000 (UTC)
Date: Fri, 29 May 2020 15:21:18 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: [PATCH v3 1/9] dt-bindings: atmel-tcb: convert bindings to
 json-schema
Message-ID: <20200529132118.GF3972@piout.net>
References: <20200506080554.283177-1-alexandre.belloni@bootlin.com>
 <20200506080554.283177-2-alexandre.belloni@bootlin.com>
 <20200529101314.2ueuhgnrqq3a764f@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529101314.2ueuhgnrqq3a764f@linutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_062126_551581_298F3869 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, kamel.bouhara@bootlin.com,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 29/05/2020 12:13:14+0200, Sebastian Andrzej Siewior wrote:
> Rob, could you please bless the DT parts of this series? Daniel Lezcano
> asked for the blessing in:
>   https://lkml.kernel.org/r/f0feb409-11fb-08de-cc06-216a16de994a@linaro.org
> 

There is actually one comment I need to address that Rob made on another
series that was also including this patch. I'll send a new version
today.

> On 2020-05-06 10:05:46 [+0200], Alexandre Belloni wrote:
> > Convert Atmel Timer Counter Blocks bindings to DT schema format using
> > json-schema.
> > 
> > Also move it out of mfd as it is not and has never been related to mfd.
> > 
> > Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> > ---
> > Cc: Rob Herring <robh+dt@kernel.org>
> > 
> > Changes in v3:
> >  - Moved the child node documentation to the parent documentation
> > 
> > Changes in v2:
> >  - Rebased on v5.7-rc1
> >  - Moved the binding documentation to its proper place
> >  - Added back the atmel,tcb-timer child node documentation
> > 
> > 
> >  .../devicetree/bindings/mfd/atmel-tcb.txt     |  56 --------
> >  .../soc/microchip/atmel,at91rm9200-tcb.yaml   | 126 ++++++++++++++++++
> 
> Sebastian

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
