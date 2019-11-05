Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FCDF004F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 15:52:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1VkakG5FBR3JbCypxQ9Zk2e2T6VNFQCzgKpRcwUzLIY=; b=awiv0YlfWw+pkI
	rtKupJz0fSdKGvsOInLpk43Qr7jTdFpjId/c/U3EqeqxHVf/xg/SoHJA5bLmBELmrYG0vhtqOyWc0
	CNDZ8qldAvQJ++JbwbMerGToXD7x8FQGrGKJmxZgaqVxb/H/yYgfoYr368y5lrmSlPWLnkTGjRl5I
	iok1sh8/W5zITfquDIPtH9f/PDpf9mAggWLosdnP96i5LGhm81/xigptIT1OuikpWzvX2Lk3YOwUz
	2neebNn2pBfilMeFLguu2/5e0ameaFPHgTdKt6/EdB4eFe4LVHXUxLdcWJOEh4+MjPCTcB+REAsH7
	ebcuh8LWRbR6mnjyoG8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS0Bf-0001KW-3Y; Tue, 05 Nov 2019 14:52:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS0BY-0001Jf-Ne; Tue, 05 Nov 2019 14:51:58 +0000
Received: from arrakis.emea.arm.com (unknown [46.69.195.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 525C220663;
 Tue,  5 Nov 2019 14:51:53 +0000 (UTC)
Date: Tue, 5 Nov 2019 14:51:50 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH 1/2] ARM: dts: bcm2711: force CMA into first GB of memory
Message-ID: <20191105145150.GB22987@arrakis.emea.arm.com>
References: <20191104135412.32118-1-nsaenzjulienne@suse.de>
 <20191104135412.32118-2-nsaenzjulienne@suse.de>
 <588d05b4-e66c-4aa0-436e-12d244a6efd8@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <588d05b4-e66c-4aa0-436e-12d244a6efd8@gmx.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_065156_790749_CF29910E 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, linux-kernel@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 06:09:39PM +0100, Stefan Wahren wrote:
> Hi Nicolas,
> 
> Am 04.11.19 um 14:54 schrieb Nicolas Saenz Julienne:
> > arm64 places the CMA in ZONE_DMA32, which is not good enough for the
> > Raspberry Pi 4 since it contains peripherals that can only address the
> > first GB of memory. Explicitly place the CMA into that area.
> >
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> 
> do you want this in Linux 5.5 via devicetree/fixes? In this case please
> add an fixes tag.

That's not really a fix since AFAICT CMA never worked properly on RPi4
with mainline. For 5.5, I queued the arm64 for-next/zone-dma patches
which would allow RPi4 to get a CMA in the correct physical address
range. However, since these patches cause a regression on other
platforms that don't need a small ZOEN_DMA, my suggestion was to leave
the CMA handling for RPi4 as per the current mainline (i.e. broken) and
allow CMA from the full ZONE_DMA32 range (second patch in this series).

IIUC, this dts patch can be merged independently of the ZONE_DMA patches
for arm64 and it may be beneficial for current mainline (even without
the arm64/for-next/zone-dma patches).

[1] git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux for-next/zone-dma

> Otherwise this will be queued for Linux 5.6.

I'm happy to queue them together with your ack for 5.5, otherwise I'll
only pick the second patch in this series.

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
