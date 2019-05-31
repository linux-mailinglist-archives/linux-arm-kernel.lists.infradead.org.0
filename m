Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA433132B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 18:55:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=49F29uUN2xrOGSxAyiBc5BgvMcszs/mJiYmvyblMhvk=; b=bk2fdmi+EvdE/Z
	naV8KhH46eGJaNnZtRCclIxveFrgCrtngQ9Rdz94sTpxdhAyveDyWsd5ezg+CSNdh9Uto8DHOKRtB
	TGEly8mN9zPEqgT6HSmqW4apt10fZagaT5ODHdc84jNP9mf3ZuRKufWkv1elZZBJQ+7fWGj5kC2Xj
	q4Fa75JdDKu8hS0JB2ntMFAG2yhWNGr2OjKKip3M7PhMktSRgzUs0rF2C6Y+LBUV9FHl+JSVHm7bY
	aeavEqqbu5jW1oEof0q1rs1pgfDq8RS1uDR4dbwVgJI1HqpneRF6NnNRLjdaHd/ovlONvvWd/TaId
	suJuW4MNNJEAhmVCb6nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWkoa-0005Wg-LB; Fri, 31 May 2019 16:55:36 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hWkoU-0005W4-Et; Fri, 31 May 2019 16:55:30 +0000
Date: Fri, 31 May 2019 09:55:30 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Laurentiu Tudor <laurentiu.tudor@nxp.com>
Subject: Re: [PATCH v3 5/6] dpaa_eth: fix iova handling for contiguous frames
Message-ID: <20190531165530.GA16487@infradead.org>
References: <20190530141951.6704-1-laurentiu.tudor@nxp.com>
 <20190530141951.6704-6-laurentiu.tudor@nxp.com>
 <20190531163229.GA8708@infradead.org>
 <VI1PR04MB5134F5E31B993B2DC5275BB3EC190@VI1PR04MB5134.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR04MB5134F5E31B993B2DC5275BB3EC190@VI1PR04MB5134.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Madalin-cristian Bucur <madalin.bucur@nxp.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Roy Pledge <roy.pledge@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Christoph Hellwig <hch@infradead.org>,
 "jocke@infinera.com" <joakim.tjernlund@infinera.com>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Camelia Alexandra Groza <camelia.groza@nxp.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 04:53:16PM +0000, Laurentiu Tudor wrote:
> Unfortunately due to our hardware particularities we do not have alternatives. This is also the case for our next generation of ethernet drivers [1]. I'll let my colleagues that work on the ethernet drivers to comment more on this.

Then you need to enhance the DMA API to support your use case instead
of using an API only supported for two specific IOMMU implementations.

Remember in Linux you can should improve core code and not hack around
it in crappy ways making lots of assumptions in your drivers.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
