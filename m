Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 293641B059F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 11:28:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sEvGUcXQ5h8dwJWS7CgkwLR9ttYZo9cVwFapy2dE1TQ=; b=liDmoQ1cfOsz8Z
	cn+s8Lf5alzoY1O1a1OL0HC1/+eyjb4qxZP1wBVpJgdlscyaqA/7KSdWAd8PJu77g21vPIcWqQ36f
	9xqyyR9rsaX4VBBdXUofp7sPK/ciT/mhuoCnjJ6LpMF+YqvTM8D711nJQGOpi21lDgRnMFj5yZMu6
	zO1TqSn6pDPqVQpHslc3Kp7wqsXn2Jq7BcIsrEfbzLgu6atEpaKMc4deV32KnITSVzgSEsNkhYpku
	aHJZPKBXVYgUlQi6pd95zYbslPmqH58rMx6wARZWBa98YgSF+dMfDE0Q/u6jYnBUHYRF/SOeOcEg2
	gQGFwW5RowziyzGeIZPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQSio-0003I0-Bw; Mon, 20 Apr 2020 09:28:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQSig-0003HU-3V
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 09:28:03 +0000
Received: from sudo.home (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr
 [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EF6FA20CC7;
 Mon, 20 Apr 2020 09:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587374881;
 bh=jSEKGWqsrT6A07i0d90hlri1Jat4wE9wmFvoKlPRqM0=;
 h=From:To:Cc:Subject:Date:From;
 b=mq0viWMww53XTmD3oHdx/2kondNR/5TNTFZTHZwB2Z0xNMl2NYS8b/nODRRi1efll
 RB5Fg9YGAMc0RWZoTh6xo3htp7Sth3FH6fcbBmZeVBgO6XNp776QwlzJOKRN8rJggr
 6rwkChmt9mJdPIkHqaGcLonX4zt4hwP/wyFGvJRE=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-acpi@vger.kernel.org
Subject: [PATCH v2] ACPI/IORT: take _DMA methods into account for named
 components
Date: Mon, 20 Apr 2020 11:27:53 +0200
Message-Id: <20200420092753.9819-1-ardb@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_022802_162560_B98BDF35 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: lorenzo.pieralisi@arm.com, guohanjun@huawei.com, rjw@rjwysocki.net,
 Andrei Warkentin <awarkentin@vmware.com>, sudeep.holla@arm.com,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Where IORT nodes for named components can describe simple DMA limits
expressed as the number of address bits a device can drive, _DMA methods
in AML can express more complex topologies, involving DMA translation in
particular.

Currently, we only take this _DMA method into account if it appears on a
ACPI device node describing a PCIe root complex, but it is perfectly
acceptable to use them for named components as well, so let's ensure
we take them into account in those cases too.

Note that such named components are expected to reside under a
pseudo-bus node such as the ACPI0004 container device, which should be
providing the _DMA method as well as a _CRS (as mandated by the ACPI
spec). This is not enforced by the code however.

Reported-by: Andrei Warkentin <awarkentin@vmware.com>
Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/acpi/arm64/iort.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index ed3d2d1a7ae9..07eb78baf198 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -1146,13 +1146,10 @@ void iort_dma_setup(struct device *dev, u64 *dma_addr, u64 *dma_size)
 	else
 		size = 1ULL << 32;
 
-	if (dev_is_pci(dev)) {
-		ret = acpi_dma_get_range(dev, &dmaaddr, &offset, &size);
-		if (ret == -ENODEV)
-			ret = rc_dma_get_range(dev, &size);
-	} else {
-		ret = nc_dma_get_range(dev, &size);
-	}
+	ret = acpi_dma_get_range(dev, &dmaaddr, &offset, &size);
+	if (ret == -ENODEV)
+		ret = dev_is_pci(dev) ? rc_dma_get_range(dev, &size)
+				      : nc_dma_get_range(dev, &size);
 
 	if (!ret) {
 		/*
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
