Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3AC14CA72
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 11:15:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+t4yYLuRTEYaTUr2dJPtSlGW4Hh2trguvUzGYhPFCnA=; b=No2vIYUZVzJbyd
	xynGA6a1zwc1MRxYe0i/sFlIgvrp4Zo4rvKCWH2dv1Gcwl9qhQHgltCa3Tl+iDNxd6AnnETzql41M
	unsFBAp47muIwcb/sd/5kAN3k7ccGyBUpbcLiOKnBlbTuiTAcRZ847feRZK09jAQVvR9TjHZF9qvz
	kl8/DEvOj4C91F9WO2aqdMsxAIxeFMHiL30/cioZt+//Z/quGqyRK/G+WE/PtTK9LF65gUsGjP/Ei
	vHJ+9JcCTpQBAm370Q4SkUFnCPqCPq9InTEdW3V4kFzmSvvkrnDkmlsm71efH2OHSzFvDqC/uyFNE
	4rOyGs3fWENYrKbdfSfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdtA3-0007fW-Go; Thu, 20 Jun 2019 09:15:15 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdt9Z-0007ew-DF
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 09:14:47 +0000
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 3E5B2200004;
 Thu, 20 Jun 2019 09:14:42 +0000 (UTC)
Date: Thu, 20 Jun 2019 11:14:41 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3] dt-bindings: arm: Convert Atmel board/soc bindings to
 json-schema
Message-ID: <20190620091441.GW23549@piout.net>
References: <20190517153911.19545-1-robh@kernel.org>
 <20190601214050.GG3558@piout.net> <20190613224652.GB5119@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613224652.GB5119@bogus>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_021445_610815_9293412B 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/06/2019 16:46:52-0600, Rob Herring wrote:
> On Sat, Jun 01, 2019 at 11:40:50PM +0200, Alexandre Belloni wrote:
> > On 17/05/2019 10:39:11-0500, Rob Herring wrote:
> > > Convert Atmel SoC bindings to DT schema format using json-schema.
> > > 
> > > Cc: Mark Rutland <mark.rutland@arm.com>
> > > Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
> > > Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
> > > Cc: devicetree@vger.kernel.org
> > > Cc: linux-arm-kernel@lists.infradead.org
> > > Signed-off-by: Rob Herring <robh@kernel.org>
> > Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> 
> Is someone going to apply this?
> 

I applied it now, I had to fix the missing sam9x60 though.

> Rob

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
