Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D02BFD073
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 22:40:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T7Z4bypRz3gq8j/4j/SedXiWRoaWpGvrw2Ve7w3Vpks=; b=nBBgDY4B9DLdlq
	9GcCG8BZay3UZsTfCcrlNbNTWAzVBkkdpLOu5nvBk9i+1IDDGkFEaRByxuGLYTPGIiHJAWBINmNk8
	wza30E7qn8CvlTCJlpIzO+nWwWKiWvfdxRLTK9ozzN3nmmMWvIyTZLVPrFwIuHoY5HLDtnAnmroMj
	fsrLoZSpRSNFluJ64PWmDFyj02tYrsK4plG99LaQHtcFZBlvEMdusOYGS1ugc6uZb1+l81CRU/WJs
	XLe/qBiBoRvcx/VIlvjB+sgVLj2VTfriCYlcw3/kIv6BzXL/bKtbFHT7jkm2ikMH4WJs8Dr8LMhLR
	lkiBit86XUSZqNPeQmGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVMqb-00064K-QN; Thu, 14 Nov 2019 21:40:13 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVMqP-0005cL-5h
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 21:40:02 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 6E6EB14A6F7EB;
 Thu, 14 Nov 2019 13:40:00 -0800 (PST)
Date: Thu, 14 Nov 2019 13:39:59 -0800 (PST)
Message-Id: <20191114.133959.2299796714037910835.davem@davemloft.net>
To: linux@rasmusvillemoes.dk
Subject: Re: [PATCH v2 0/2] ARM: dts: ls1021a: define and use external
 interrupt lines
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191114110254.32171-1-linux@rasmusvillemoes.dk>
References: <20191114110254.32171-1-linux@rasmusvillemoes.dk>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 14 Nov 2019 13:40:00 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_134001_264595_C57ED371 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, andrew@lunn.ch,
 maz@kernel.org, linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 robh+dt@kernel.org, netdev@vger.kernel.org, olteanv@gmail.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Date: Thu, 14 Nov 2019 12:02:51 +0100

> A device tree binding documentation as well as a driver implementing
> support for the external interrupt lines on the ls1021a has been
> merged into irqchip-next, so will very likely appear in v5.5. See
> 
> 87cd38dfd9e6 dt/bindings: Add bindings for Layerscape external irqs
> 0dcd9f872769 irqchip: Add support for Layerscape external interrupt lines
> 
> present in next-20191114.
> 
> These patches simply add the extirq node to the ls1021a.dtsi and make
> use of it on the LS1021A-TSN board. I hope these can be picked up so
> they also land in v5.5, so we don't have to wait a full extra release
> cycle.
> 
> v2: fix interrupt type in 2/2 (s/IRQ_TYPE_EDGE_FALLING/IRQ_TYPE_LEVEL_LOW/).

I am assuming this will go via an ARM tree.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
