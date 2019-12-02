Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 777A110F192
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 21:32:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7uDMurfzXUyxayGo05Z6IrXfEZJrdqIoBcGUAE0/xyI=; b=l2QZhMAmWfBIn8
	ZdHh+vnT7yPvNXrZ7s/FRcX7jstkjMfin54kTtnoCNUmChs/756gKfCUovk4GstM+GYRA8sKTcwDQ
	vRIeXwG+IA/8t2UyNLlzp/fz55aM82PHDFgmwnoAFHGhjoYaDiV/kGAd4GParp+4CYQgC98Ngbcvg
	6TchwUATfaXZcpq5Y7mfgLonaSIk5v1dL/I1z6bUrnkbIs6uy6H6K/sGPBIt4QWvsuev3MQqOMdoH
	bmlMfoErwe+F6+42dXfTS3Lfyg6hrxYgxPBlZDC6b/uk4549wZyQMeHbHs7UVN6SQ5BQRGOlaosQX
	pWp95Frx1uR/wZqN5J9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibsMT-00066g-6k; Mon, 02 Dec 2019 20:32:01 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibsM9-0005xb-UT
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 20:31:43 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xB2KVS18016993;
 Mon, 2 Dec 2019 14:31:28 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1575318688;
 bh=5Z6pCiRczTsYgQn5fCzOc5mk4+KH6wL16PymQnDr8y8=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=eYXPYGYH7sO4YJnmAcvQhTGPUN1O4mVzP8PHJtTZBPYxLilbfXy0n2A8QTFXbgCdK
 Pse+gKeoZmZ++iXKXMreChEq7j++1GDk33ldUV/53wN9EXMGXe7CJnktOO+Ucp6JqF
 cFAyAZpA+kSGvQDrcqBqUkEe5iGcDXAUlmZZto58=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xB2KVRwN090288
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 2 Dec 2019 14:31:28 -0600
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 2 Dec
 2019 14:31:27 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 2 Dec 2019 14:31:27 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xB2KVOPl106889;
 Mon, 2 Dec 2019 14:31:25 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>
Subject: [PATCH 0/3] dmaengine: ti: k3-udma: Fixes against v6 series
Date: Mon, 2 Dec 2019 22:31:25 +0200
Message-ID: <20191202203128.14348-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <0191128105945.13071-1-peter.ujfalusi@ti.com>
References: <0191128105945.13071-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_123142_060862_EBD7B5F3 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: grygorii.strashko@ti.com, vigneshr@ti.com, tony@atomide.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vinod,

When I thought that all corner cases are handled I got report of a failure on a
miss-configured setup:
UART without lines connected
Enable HW flow control (nothing is connected)
Do a small tx like "dd if=/dev/urandom of=/dev/ttyS1 bs=128 count=1"

The result is an interrupt flood caused by constant TDCM reception.

The explanation comes from the DMA split design and explained in patch 3:

"If the peripheral is disabled (or it is not able to send out data) the
UDMAP will complete a 'short' transfer. In other words: if the amount of
data can fit into PSI-L and PDMA (and peripheral FIFO) then UDMAP will
send out the data and return as the transfer is completed, however the
peripheral did not actually received all the data.

It was wrong to issue a normal teardown on the channel for several reasons:
UDMAP is not processing any packet so it will just return the TDCM and if
the peripheral is not consuming data from PDMA then we will have constant
flood of TDCMs (interrupts).
After the teardown the channel will be in reset state and we would need to
reset the rings as well, but it can not be done in interrupt context.
If the peripheral is just slow to consume data or even there is a delay
between starting the DMA then we will have again issues detecting the
state.

We could set force teardown, but that will make PDMA to discard the data
which is not correct in case of slow or delayed transfer start on the
peripheral.

The only solution is to use a work and check the progress in there after
the descriptor is returned and the UDMA and PDMA counters are not showing
the same number of bytes processed."

I'll squash these to v7, but I thought that this change is better to be visible
alone as it is kind of a big one on handling the early TX completion.

Regards,
Peter
---
Peter Ujfalusi (3):
  dmaengine: ti: k3-udma: Correct completed descriptor's residue value
  dmaengine: ti: k3-udma: Workaround for stale transfers
  dmaengine: ti: k3-udma: Fix early TX completion against PDMAs

 drivers/dma/ti/k3-udma.c | 89 +++++++++++++++++++++++++++++-----------
 1 file changed, 66 insertions(+), 23 deletions(-)

-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
