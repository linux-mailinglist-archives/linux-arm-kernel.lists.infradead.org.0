Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 723F6148ABF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 15:55:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:To:From:
	Subject:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=kT5C0Vkr4tfKI8MZmef1mUqdTnhPxWe9vqathFtmCZc=; b=Rr6PEzIg/UpuS1
	UiKZBwHDyL2WKWCnkHymn5oPquef5NqsxmdSxd6PSJ4LMtCT8nTyYOJznI0VaYs52OA9GY9IVly3/
	V1ZqFHRld/ZcP6wL0BT1fddDDLq7cWC6FLObzd/9R6aABmG/o+ufQ5mQbPLxP2kSoprFU8CJt6b/r
	2NRfqlcgwTmCUw2Fltq3uazsl9KiE9RRlsmDJIsuufBSIaJd+p1tUHFPO6dJvHIDkBNg49jXWCS32
	kMQf8VBNFQXqGAG9kh2gHP6X7DDyNG2O5Wca+uis9Mh811ZOHECCbev9t8vEKVQ+pzPmAyS+tDGYm
	sjHCTVT8j6I0qGQO3hcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv0N1-0000r4-Hv; Fri, 24 Jan 2020 14:55:39 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv0Mp-0000M1-E7; Fri, 24 Jan 2020 14:55:29 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 68062AD5C;
 Fri, 24 Jan 2020 14:55:25 +0000 (UTC)
In-Reply-To: <86672a12-6b88-dba8-0945-b6321ccf28c3@ti.com>
Date: Fri, 24 Jan 2020 15:47:19 +0100
Subject: Re: [PATCH for-next] arm64: defconfig: Set bcm2835-dma as built-in
From: "Nicolas Saenz Julienne" <nsaenzjulienne@suse.de>
To: "Peter Ujfalusi" <peter.ujfalusi@ti.com>, "Ulf Hansson"
 <ulf.hansson@linaro.org>
Message-Id: <C043QOCZ7SMB.2XXX2ESS1ZJ98@linux-9qgx>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_065527_622944_8856A45F 
X-CRM114-Status: GOOD (  18.13  )
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

On Fri Jan 24, 2020 at 2:05 PM, Peter Ujfalusi wrote:
> On 24/01/2020 13.51, Nicolas Saenz Julienne wrote:
> > Hi Peter,
> > 
> > On Fri Jan 24, 2020 at 1:31 PM, Peter Ujfalusi wrote:
> >> Hi Nicolas,
> >>
> >> On 24/01/2020 13.17, Nicolas Saenz Julienne wrote:
> >>> With the introduction of 738987a1d6f1 ("mmc: bcm2835: Use
> >>> dma_request_chan() instead dma_request_slave_channel()") sdhost-bcm2835
> >>> now waits for its DMA channel to be available when defined in the
> >>> device-tree (it would previously default to PIO). Albeit the right
> >>> behaviour, the MMC host is needed for booting. So this makes sure the
> >>> DMA channel shows up in time.
> >>>
> >>> Fixes: 738987a1d6f1 ("mmc: bcm2835: Use dma_request_chan() instead dma_request_slave_channel()")
> >>
> >> it is not a bug, it is a feature ;)
> > 
> > Agree, I'm just afraid of your series being picked up by a stable
> > release without this patch. But maybe it's not necessary?
>
> If you need MMC rootfs then the DMA needs to be built in or have initrd
> with the modules.
> The driver expects to have DMA channel and it is going to wait for it to
> appear unless the request fails.
>
> Without moving the DMA as built in and removing the deferred probe
> handling form the MMC driver, one can just remove the DMA support from
> the mmc-bcm2835 as it is not used at all.

Oh sorry, I meant to ask if the 'Fixes:' tag was really needed. The
patch itself is very much needed since not everyone uses initrds in the
RPi world, and we want to keep being compatible as much as possible with
older device-trees.

> I wonder why this is not signaled by automated boot testing, if any
> exists for bcm2835.

Actually now that you mention it, it's failing since today here:
https://kernelci.org/boot/bcm2837-rpi-3-b/

Regards,
Nicolas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
