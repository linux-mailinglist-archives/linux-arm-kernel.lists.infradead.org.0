Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05780D72C1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 12:04:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0MCcjx4amcJ+8/flPfnsUczGkDrsrBbm0cWyi5KDEKA=; b=MHHImGk8uEqquf
	6DU1+6VbmO4fBtPJc6Gbggmfx+5eqL+D9nC9IviABsuxdrX94STUxuCrR/Ej72bbkwkS+ZZ0YiCp4
	e4nDMUnFuPpqLNG/JPueafzIipJxueewYN2xrn5xA82y8wfGPtgqDGU2ekpuh7yToxeUUzCnZjyQ+
	QSIRyARW5jzpK8NiOqdo42cgsNqec3/2l6UunqV6sLpdbs39Vjg4haYsfv/SRnZqCqeuZzz+eWr2C
	tDZ80gPVr/b6Jm/QfLN0gmBKv+SwpN8Nm9WkZJN/XGMagDyfvGYIzEBpWtfjSyn4KyUmPy5nyhIbH
	sOm1aO3gAsCFXmdEmGsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKJh1-0003gq-SG; Tue, 15 Oct 2019 10:04:39 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iKJgs-0003gF-EB; Tue, 15 Oct 2019 10:04:30 +0000
Date: Tue, 15 Oct 2019 03:04:30 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH RFC 2/5] ARM: introduce arm_dma_direct
Message-ID: <20191015100430.GA13893@infradead.org>
References: <20191014183108.24804-1-nsaenzjulienne@suse.de>
 <20191014183108.24804-3-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014183108.24804-3-nsaenzjulienne@suse.de>
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
Cc: mbrugger@suse.com, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, hch@infradead.org,
 iommu@lists.linux-foundation.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org,
 wahrenst@gmx.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I think we just need to byte the bullet and move over arm to dma-direct
entirely.  This needs a careful audit of what differs, but the biggest
item is that we need to ensure dmabounce keeps working (or is replaced
with swiotlb in a suitable way, but that might be a lot more work).

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
