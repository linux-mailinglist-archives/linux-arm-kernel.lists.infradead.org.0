Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9ED06542B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 11:52:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SG41RA9GeRISiw4gsj55CLKi7qulQ4Ge2++BbPUZotk=; b=DBeloVQrzZtVfN
	nzLocHDXUjYd3qQf7hZyaS6gDXad1l8DaAeC1ZNR2Z+S64IBAbvriz2qQxT0NSGe/+NB7MHsyGVGq
	ddN2al0EWjsJnru+9bQy47SN/ZwXQUHwUJUY9u6DxIcD9Z2JYaAicyojmav1OKlve4qnjPAnKanuA
	HiQXdfTIpnK0FFOLg7Ot7cr392wkY12NjxLgDC5A2BLs4mOBsifZF4RTCd0FvS/9o5+LFZsd1wI/I
	0kWyNgD61DxC6MbGM2vampWrnanse4mgGceBS+IT9sPaJYRQqfe8tzWPrOBfAC02DCsaNKEdJ1WVg
	4+UtrKOK2gIscNmzkS9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlVkP-0006ZE-AE; Thu, 11 Jul 2019 09:52:17 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlVkB-0006Xk-Qt
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 09:52:05 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 5CB0DAE56;
 Thu, 11 Jul 2019 09:51:59 +0000 (UTC)
Message-ID: <0439cc08532849b1d0adb44a7b2cbc9ce5dceaf7.camel@suse.de>
Subject: Limiting the DMA zone in arm64
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: linux-arm-kernel@lists.infradead.org
Date: Thu, 11 Jul 2019 11:51:57 +0200
User-Agent: Evolution 3.32.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_025204_014503_96E9ADCC 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>, will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
I'm trying to bring up the new RPi4 on arm64, and running into issues with DMA
allocations. The device has up to 4GB of ram, but AFAIK only the first GB of
ram can be used for DMA: the DMA address range is 0xc0000000-0xffffffff which
is aliased to the first GB of memory 0x00000000-0x40000000.

This is solved in arm32 using a board file with '.dma_zone_size = SZ_1G'. But I
haven't found any similar mechanism for arm64. Any suggestions?

Just it case it helps understand the issue, I managed to get things going by
doing the following:

diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index f3c795278def..ec3cb7b76a76 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -407,7 +407,8 @@ void __init arm64_memblock_init(void)
 
        /* 4GB maximum for 32-bit only capable devices */
        if (IS_ENABLED(CONFIG_ZONE_DMA32))
-               arm64_dma_phys_limit = max_zone_dma_phys();
+               arm64_dma_phys_limit = 0x40000000;
        else
                arm64_dma_phys_limit = PHYS_MASK + 1;

Regards,
Nicolas



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
