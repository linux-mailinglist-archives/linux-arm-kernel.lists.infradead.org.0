Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BCDB71CFE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 18:34:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QG8sOMRaeTGC+kUvZcvYMMgdZblum0Hq8m3FDMmvvCE=; b=e0iA+rgmY1Nopv
	5+AYSmZWdNUfwp+iAZu4nPeDCaKaW6nY1Ka7FkjSK05OrQGD91rdDCvLoQemtz7soMzgqf8BkLlIS
	LXujOLosVvqGLJ30g5E+0VhcLxYh93GNg/UsTy74PrLsDKSJWUVn4d1eB4jyZ+OPYv+xZl2AbTrr8
	IaQLdi6CimergI19gnGHQWI2/PUOfhQrQjZmVtAsbh0LZ+AF10xxMBSTeyK+t1pHZk6PAsJN7oiQf
	dEr27zaMSQtf6vo2KDakAmtdu2PBlMTj15+wtTw4zv6IdzcL0GI4xOhQ/ef9AsrrFztSvwUI4SZBw
	sS0w9iPsrnWG+PCNz4Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpxkZ-0002mo-Bo; Tue, 23 Jul 2019 16:34:51 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpxkK-0002fl-Ti; Tue, 23 Jul 2019 16:34:38 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 7270068B02; Tue, 23 Jul 2019 18:34:33 +0200 (CEST)
Date: Tue, 23 Jul 2019 18:34:33 +0200
From: Christoph Hellwig <hch@lst.de>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [RFC] ARM: bcm2835: register dmabounce on devices hooked to
 main interconnect
Message-ID: <20190723163433.GA2234@lst.de>
References: <20190723161934.4590-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190723161934.4590-1-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_093437_109740_9ACED587 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, mbrugger@suse.com,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 hch@lst.de, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> +static int bcm2835_needs_bounce(struct device *dev, dma_addr_t dma_addr, size_t size)

Too long line..

> +void __init bcm2835_init_early(void)
> +{
> +	if(of_machine_is_compatible("brcm,bcm2711"))

Odd formatting.

Otherwise this looks good to me.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
