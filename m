Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD67B24997
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 09:59:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xz4iR4P4HlYiz/dZrEK0gCsyUw8Nnr1m1fT8TIogsLA=; b=oyvBMCI1zP3R4L
	GPfgxSczVTJFb80fJQ7gQGRSXGsN8TNR9GnBhnrCH+yd4rSMuRMCjDsCUOYmIuwhNtjvxDQp8sCIS
	1Zr+T9p2AFkYZZhGKAMf2ynLNwoEN19Vv8RTT9khgXv3ZIH2ADbyByD3Ipj72PZkmgCwNZZBhsnIj
	JrkiTUCVG29FCrJGCE5Qe6EIgRmg4adw56pKURPGbLHI3lmFSGau9KxOEhqvFwqrgsiTaBvENnuFF
	qfmycCZ5ULrAW3uAD9Ss5vLiX2+YVYjQbQGHD3GsnEQKR7K69/ubSi9K2+s06mts9WT5Blpaz2VYN
	uM44NvFBWJuLg2I8o2Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzgV-0003zD-Nb; Tue, 21 May 2019 07:59:43 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzgO-0003yZ-3r
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 07:59:37 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4L7xXqj072922;
 Tue, 21 May 2019 02:59:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1558425573;
 bh=IzWT3e6xVFbiZmSHFjmPBCCwZEObs0gFBMkK0Qxp8bg=;
 h=From:To:CC:Subject:Date;
 b=onyOFoYd6iT3zbfUFrP1jChuvkmOzb97Db8+o2dfG3+pdNkb8jHonbpEOYD/98gld
 ivbuzODleKw4Yhuj+epqWIS3u2uD5zqVAw8bdZ67wshrYaLduB02Hr20a/+5nAneUS
 AwGMIZAwmsAK1329HQVpIOXBSCS5lhVfi8YL7rBs=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4L7xWYj051369
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 21 May 2019 02:59:33 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 21
 May 2019 02:59:32 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 21 May 2019 02:59:32 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4L7xUjx078442;
 Tue, 21 May 2019 02:59:30 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>
Subject: [PATCH v2 0/2] dmaengine: ti: edma: Polled completion support
Date: Tue, 21 May 2019 10:59:43 +0300
Message-ID: <20190521075945.14085-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_005936_239908_DA39DBED 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Changes since v1:
- Cleanup patch for the array register handling
- typo fixed in patch2 commit message

The code around the array register access was pretty confusing for the first
look, so clean them up first then use the cleaner way in the polled handling.

When a DMA client driver decides that it is not providing callback for
completion of a transfer (and/or does not set the DMA_PREP_INTERRUPT) but
it will poll the status of the transfer (in case of short memcpy for
example) we will not get interrupt for the completion of the transfer and
will not mark the transaction as done.

Check the event registers (ER and EER) and if the channel is inactive then
return wioth DMA_COMPLETE to let the client know that the transfer is
completed.

Regards,
Peter
---
Peter Ujfalusi (2):
  dmaengine: ti: edma: Clean up the 2x32bit array register accesses
  dmaengine: ti: edma: Enable support for polled (memcpy) completion

 drivers/dma/ti/edma.c | 129 ++++++++++++++++++++++++++----------------
 1 file changed, 81 insertions(+), 48 deletions(-)

-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
