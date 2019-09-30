Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FCD8C20FC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 14:54:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=plLcMFdE6oD2SU5Xe5o9PGUlfSJFZPsSwfGpv0HyEiE=; b=UazJU1kJ6vsHzt
	IkyMTAwCz0Qeq9++NKHu9sNIKGBoQiaN24CQ6wKZT3s/Pmjpw/SoTnQ6KmVYsGkVqedppbIMn27gr
	TUKUI9xxBa1HD+yA2wFiDm7ecIeU3wGiU+ST0SvmzvF9TM69swvKk3kdFG4imrL1QI3fIeB1sIAta
	asQmNfDKyzt28nz0YLCzcgwdrOuFr6xYxsBbGloIiWOdTAxWYBP4Cn+zH7U06BxYPN8I+pceZOWTm
	boVouMTubkqMJwYDTquHHK1lE1Dbh3orIe0oB0EgYRLRR5zRuBwb08rLqvkpMqpkCdJeSn0Cs9YSh
	8D38zG+fnom+YKSEL5qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEvC6-00060J-CM; Mon, 30 Sep 2019 12:54:26 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iEvBu-000604-Qj; Mon, 30 Sep 2019 12:54:14 +0000
Date: Mon, 30 Sep 2019 05:54:14 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 03/11] of: address: Report of_dma_get_range() errors
 meaningfully
Message-ID: <20190930125414.GC12051@infradead.org>
References: <20190927002455.13169-1-robh@kernel.org>
 <20190927002455.13169-4-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190927002455.13169-4-robh@kernel.org>
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 linux-pci@vger.kernel.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-kernel@vger.kernel.org, Marek Vasut <marek.vasut@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Oza Pawandeep <oza.oza@broadcom.com>, Stefan Wahren <wahrenst@gmx.net>,
 Simon Horman <horms+renesas@verge.net.au>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 26, 2019 at 07:24:47PM -0500, Rob Herring wrote:
> From: Robin Murphy <robin.murphy@arm.com>
> 
> If we failed to translate a DMA address, at least show the offending
> address rather than the uninitialised contents of the destination
> argument.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Rob Herring <robh@kernel.org>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
