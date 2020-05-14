Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2AD1D3917
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 20:28:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/I5Uu/xD/FersRT0ZN8i0KPxe+u1giNhqcXGtIGXl0c=; b=iru83CU8zAo3eB
	onBPLm/jWP1XswJHVn6P7fEbDQDB7+STg6UROM6g7aeNM8GvTk6rh3VeRr6IvW+HaMJL9hYNJ5crv
	8V3xEroBzNPqqCFtgp35lfHENO6jfg33rpnR8vumxySVOZnSnpxuL72QU+l4vFA0V56N2LoGzsZN/
	+UJrhv+l5i6oqfhOnbPej4XFNNSxln+cXUoA/u48MfG9nUG8tc5/C/qOWG32JOIBuH/dO3OeaeaLB
	n++hukw4hKSp7fPeM4pR1S/WHdWn1dGnCmtvMy1Q1skKm6ffbtd6Dm6K6JVAlFo5qgZ2p5y00KihZ
	K7XwWokbmbksakk03Ong==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZIaa-0000o5-Tq; Thu, 14 May 2020 18:28:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZIaT-0000nc-8A; Thu, 14 May 2020 18:28:06 +0000
Received: from localhost (unknown [122.182.193.86])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 462C62054F;
 Thu, 14 May 2020 18:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589480884;
 bh=IJ4hFZiqwGvf87PMadQdgP9uSiu4rcBcBLlDJAVJ62Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kXXEvD46YIcvnij6/xTmbOaf1GMFpP9Yo2KduvLoeCC0HdIehZMr5HHoHIlieiysQ
 nPhZodFP8pECwFe2sbgbIwbmBI2gWs5AnVL12CeJuWrblGhGMBgxUMKLg0GMVaGidk
 9dMdO0bgV94tKjYsHEYzdZR0Z7142B5ziy13j4OM=
Date: Thu, 14 May 2020 23:57:50 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Amit Singh Tomar <amittomer25@gmail.com>
Subject: Re: [PATCH v1 1/9] dmaengine: Actions: get rid of bit fields from
 dma descriptor
Message-ID: <20200514182750.GJ14092@vkoul-mobl>
References: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
 <1589472657-3930-2-git-send-email-amittomer25@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589472657-3930-2-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_112805_309769_FA833DDA 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: andre.przywara@arm.com, linux-actions@lists.infradead.org,
 cristian.ciocaltea@gmail.com, manivannan.sadhasivam@linaro.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com, afaerber@suse.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14-05-20, 21:40, Amit Singh Tomar wrote:
> At the moment, Driver uses bit fields to describe registers of the DMA
> descriptor structure that makes it less portable and maintainable, and
> Andre suugested(and even sketched important bits for it) to make use of
> array to describe this DMA descriptors instead. It gives the flexibility
> while extending support for other platform such as Actions S700.
> 
> This commit removes the "owl_dma_lli_hw" (that includes bit-fields) and
> uses array to describe DMA descriptor.

So i see patch 1/9 and 2/9 in my inbox... where are the rest ? No cover
to detail out what the rest contains, who should merge them etc etc!

If you are sending a series to different subsystem please make a habit
to CC everyone on cover letter so that we understand details about the
series. If not dependent, just send as individual units to subsystems!

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
