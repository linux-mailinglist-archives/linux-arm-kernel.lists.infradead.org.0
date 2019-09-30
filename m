Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF8EC1D14
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 10:23:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cOIXAHuJVquMtlyZWVu5Hmk7yJ21MFzkL3PKlPj2U2w=; b=hXwnQij+OjtUCM
	JuvDAyf3xv9jPuHXlLeQbSPZ3mX6CIAVQfaiHz3+31KVujFN8n2qsIZbZLkozC1nNYDVmYi8/eLMC
	z4xg3DduMaGBSax7AcFZZbvayQ91TxeRlQta5bLg+RE4hYRQEbq/YBDPTyiJwLbWYb8xlVzpl60Su
	/2GxEkr+/EcBEJZPksdWXc5x8DWsfTk/RRJTKb/3cipSuRHEc9jV6IOurpwiLyai2e3U/k+OPC3MN
	xfJy/+MaaUENkNsl0ntjq2tbT6emGMLAf1u1Dr22vR58qCdwGN6ubSgCN0xmicW23dtmwyR6YAJxS
	GXWcs1RwKelEeOW2QKZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEqxx-0001xf-KW; Mon, 30 Sep 2019 08:23:33 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iEqvP-000835-Nr; Mon, 30 Sep 2019 08:20:55 +0000
Date: Mon, 30 Sep 2019 01:20:55 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 00/11] of: dma-ranges fixes and improvements
Message-ID: <20190930082055.GA21971@infradead.org>
References: <20190927002455.13169-1-robh@kernel.org>
 <CAK8P3a0oct0EOMi5t4BmpgdkiBM+LjC+2pTST4hcvNCa3MGLmw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a0oct0EOMi5t4BmpgdkiBM+LjC+2pTST4hcvNCa3MGLmw@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Frank Rowand <frowand.list@gmail.com>, DTML <devicetree@vger.kernel.org>,
 linux-pci <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Marek Vasut <marek.vasut@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Oza Pawandeep <oza.oza@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Simon Horman <horms+renesas@verge.net.au>, Robin Murphy <robin.murphy@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Stefan Wahren <wahrenst@gmx.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 29, 2019 at 01:16:20PM +0200, Arnd Bergmann wrote:
> On a semi-related note, Thierry asked about one aspect of the dma-ranges
> property recently, which is the behavior of dma_set_mask() and related
> functions when a driver sets a mask that is larger than the memory
> area in the bus-ranges but smaller than the available physical RAM.
> As I understood Thierry's problem and the current code, the generic
> dma_set_mask() will either reject the new mask entirely or override
> the mask set by of_dma_configure, but it fails to set a correct mask
> within the limitations of the parent bus in this case.

There days dma_set_mask will only reject a mask if it is too small
to be supported by the hardware.  Larger than required masks are now
always accepted.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
