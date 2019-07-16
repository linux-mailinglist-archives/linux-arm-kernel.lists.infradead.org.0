Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BE56A3C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 10:25:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2b3/Gd74MtEagGaaLEB/3MvNPQcgMhLhA5g6NEK91Js=; b=cUKITQSaJZhjcR
	0HRWrJtE2jg6dWWu60MK+3wbDVgFgpltgGJF+twEZUKQzaxZ2+c/TLkxl/+/qjt930/FKd+mDMIKb
	ai+wU0+L91fOA8BsbVX5+xYVoIV3HCFPYKj3r+Lv+GF+WTjjdRfA+TTuEw4X2btL44b/dp9X0+BoF
	1dQB9MX40sw1BchBIH+KonNL+3n/pyMYGeyChSmNvbfjbhAOyYOmjHtMCpwn5kGLjZ5FlpLWuPE88
	t5YXZ4x622DPfYtzvIW/04nMFG1yw5gMx01p8MV3pgysbP5f7A2Ua/XZP4gIS7uUflSxCbaqG4UZ4
	Y07ZTNamZZp+pywRE4xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnIlv-0005v3-Aa; Tue, 16 Jul 2019 08:25:15 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnIkz-0005Ot-G8
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 08:24:19 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6G8O5Zh113419;
 Tue, 16 Jul 2019 03:24:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563265445;
 bh=KMXHtI3sKuhmBB8FFbgYzVJP9JhJyNEHQ+sOiwAQro0=;
 h=From:To:CC:Subject:Date;
 b=OIyhkG9qcRpBHqryRlLXbDKzbiHhcNe2+xpz8SCnfWbzHYNVEma3RATO9WqkffHHj
 c4Q5bvGzyL9NUdny2sMJvH8mPh0IWYvUULsXY0u4dplwO+Ua/ipaq+ShBLZc3IBYrk
 qs0BkosjHiK6L+L+zkrBpA7vZ3FfnDJYKIKAOUNI=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6G8O4uf051393
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 16 Jul 2019 03:24:05 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 16
 Jul 2019 03:24:02 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 16 Jul 2019 03:24:02 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6G8O0lf033709;
 Tue, 16 Jul 2019 03:24:01 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>
Subject: [PATCH v2 0/2] dmaengine: ti: omap-dma: Improved polling support
Date: Tue, 16 Jul 2019 11:24:57 +0300
Message-ID: <20190716082459.1222-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_012417_723100_7C17F9AB 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

changes since v1:
- New preparation cleanup patch
- Simplified code for the main patch to be easier to read

This series fine-tunes the omap-dma polled memcpy support to be inline with how
the EDMA driver is handling it.

The polled completion can be tested by applying:
https://patchwork.kernel.org/patch/10966499/

and run the dmatest with polled = 1 on boards where sDMA is used.

Or boot up any dra7 family device with display enabled. The workaround for DMM
errata i878 uses polled DMA memcpy.

Regards,
Peter
---
Peter Ujfalusi (2):
  dmaengine: ti: omap-dma: Readability cleanup in omap_dma_tx_status()
  dmaengine: ti: omap-dma: Improved memcpy polling support

 drivers/dma/ti/omap-dma.c | 52 +++++++++++++++++++++++++--------------
 1 file changed, 33 insertions(+), 19 deletions(-)

-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
