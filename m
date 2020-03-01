Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D617174DB8
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 15:43:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wMRG4iUFcxJfPv9Tb6B0wF3N9rHwgWkFfwlTsYwmVCY=; b=RnIqEhir3OOsNo
	eBec5tmklDsmiIW739G5ZrBKJPLEH03H7svULfQfS8D4s9VCzprypeolQNvABBFeW9HMRa+dmAjEK
	FLobVIhkN4mS8Erp5rL58h83hmHCr0Un0niz34A1Ge9JRnDNdQwroWBBKUhGnM7OWcagJ1EWMp9vF
	5aiZBogG0hZEdE6dI8Cy9kTINynjDRwC2BDHZOSn1ILqmoPzANhPaVgrPjq19U7edTOdTEDmTSaJ/
	+vhs71Q49QXI7PDjjj0dryU3/sWZoF1fVRy7J6fIVm/M3TySQSLBFufshtWjRuGnVrCC1VvTKiBYl
	ggCOHPG2UKpQlJHwPxgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8PoC-0001hE-2z; Sun, 01 Mar 2020 14:43:08 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8Po3-0001gr-Ml
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Mar 2020 14:43:01 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 71AEC68BE1; Sun,  1 Mar 2020 15:42:54 +0100 (CET)
Date: Sun, 1 Mar 2020 15:42:53 +0100
From: Christoph Hellwig <hch@lst.de>
To: Roger Quadros <rogerq@ti.com>
Subject: Re: take the bus_dma_limit into account on arm
Message-ID: <20200301144253.GB22459@lst.de>
References: <20200218184103.35932-1-hch@lst.de>
 <6e0988f4-7958-29d9-6249-24ee51edee3a@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6e0988f4-7958-29d9-6249-24ee51edee3a@ti.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_064259_890655_AAC0C9DF 
X-CRM114-Status: UNSURE (   5.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: "Nori, Sekhar" <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As there seems no movement I've added it to my for-next branch so that
it at least gets some linux-next exposure.

But it really needs a few reviews.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
