Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 078A21484C3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 12:56:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:To:From:
	Subject:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=8DVW+o2FOzhQ4Xdvn7wGnoEqsrasKRiT0VJ1tDRyLqM=; b=X6k2WWAbtGsIxG
	5H81HOZhmFIz+owlpToIYufur86pQhDftCfvpfrwKWuv5uiQ/t4xWEWLODiVczot+xlsUZ6x+UBBU
	fY0Pyd53n0x59G5FBB6qy/fFjjCnhTKLfyGH0QrNJ4CSxBncrhPXet9QTW+0A6BbS4hXKi4O3V0GV
	pEpOCOBtM4jGT2Yv6drgsFNZUlR5Z8BPBboyAOovP8VAlCIMzVFtEXF1J7gAxUuK+XcbdM2HVL/r/
	x38I0nt4T9eW5wslQgM4hq0pXbEiOiVABDyRnkTRvAQBv5csJiBLcQiMY9wAbbLDxhkLt9yeovzOx
	dyvrhfYZf/1A9zAA6DNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuxZ6-00025D-Nc; Fri, 24 Jan 2020 11:55:56 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuxYy-00024G-C8; Fri, 24 Jan 2020 11:55:49 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id C0972ABED;
 Fri, 24 Jan 2020 11:55:46 +0000 (UTC)
In-Reply-To: <adf69613-518f-db01-c1c1-8d3fda4b5182@ti.com>
Date: Fri, 24 Jan 2020 12:51:52 +0100
Subject: Re: [PATCH for-next] arm64: defconfig: Set bcm2835-dma as built-in
From: "Nicolas Saenz Julienne" <nsaenzjulienne@suse.de>
To: "Peter Ujfalusi" <peter.ujfalusi@ti.com>, "Ulf Hansson"
 <ulf.hansson@linaro.org>
Message-Id: <C0400CAEQS8N.3P1J37PC0KU9F@linux-9qgx>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_035548_557826_E902C39A 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: f.fainelli@gmail.com, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peter,

On Fri Jan 24, 2020 at 1:31 PM, Peter Ujfalusi wrote:
> Hi Nicolas,
>
> On 24/01/2020 13.17, Nicolas Saenz Julienne wrote:
> > With the introduction of 738987a1d6f1 ("mmc: bcm2835: Use
> > dma_request_chan() instead dma_request_slave_channel()") sdhost-bcm2835
> > now waits for its DMA channel to be available when defined in the
> > device-tree (it would previously default to PIO). Albeit the right
> > behaviour, the MMC host is needed for booting. So this makes sure the
> > DMA channel shows up in time.
> > 
> > Fixes: 738987a1d6f1 ("mmc: bcm2835: Use dma_request_chan() instead dma_request_slave_channel()")
>
> it is not a bug, it is a feature ;)

Agree, I'm just afraid of your series being picked up by a stable
release without this patch. But maybe it's not necessary?

> Yes, if a driver have DMA binding and it is needed during boot then the
> DMA driver also needs to be built in.
> I believe it is desired to use DMA instead of PIO in any case for MMC
> and in the past bcm2835 did not used DMA if DMA was module and the MMC
> was built in.
>
> Sorry for the inconvenience this change has caused to bcm2835!

Not at all :)

> Reviewed-by: Peter Ujfalusi <peter.ujfalusi@ti.com>

Thanks,
Nicolas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
