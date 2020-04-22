Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D77C51B3E85
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 12:30:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=12dmm8/IaHgEMaOqFr9ffWKt68XbTMsAf600CBrLRsg=; b=r5SNqmyS4FDv1t
	hV6vtfk38yu2IDns69OHvMIYcEm6dLmQmTqHdEH+0+dJotWwaVZX3jY1X4u471dyHG+L0rFdyv+vf
	zcV5BsXIhB5RGvKVa3Pyi7B4FVdJOquVmVLF1v/temoBfOztakfN5Tem0TXK8/iOeJpDovbD3WOQG
	AdDCrYyntAUIOY6NU8Twsps66S2S6BVza+ZKYczkaZR+bt3XZ1o50BIg4zpFbTHfV+b/X9tmJh/xb
	oIegXfitXN1ZXwyT6m4HG79Ln06wSeCQOpPt8ZMZ+/WIyE2EbW1UreAllkl/UclhIA0bPLJ3/ER0r
	cb6/VWsoML3GT4MlZUmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRCdi-0001wN-Ps; Wed, 22 Apr 2020 10:29:58 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRCdA-0001V9-7i
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 10:29:25 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03MAS5xx017009; Wed, 22 Apr 2020 12:29:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=hX7L0nE5JA6X8n9fkmiMK0qtz3ve5bvKWHb4t+EobHs=;
 b=tfjSZSJ7FzTF5KEHO10VpSEll5r4CcvTvj0b38S5QxaIBf44sEZeuPo1Lw+2U1rBw35a
 XyVf+7Jzee+hxoeiY539v+7hsGgFIFfBUhixA+/Ywhp/PxImjuQDnTU6vPK8NnHOJBIJ
 FiwivbGGjr0udu4gPv+RrqZWQHR6WvQvwMuRcv9CJb55Rux3xLXTRofhAd6oDUcZT+pd
 YJRy/KvmdTl23IP776OMBJersLGPuaFDVfWiTd1Llo0KUt5WbiFKSqAZvEwWmo+IbBg2
 Jl8bqg5B2xeFU/GXKj2spctbrOpv1a1X+dzE3+Ahl0tElqg9YIKaQl3JjfefU7oX4VsX Rw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30fq11nt23-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Apr 2020 12:29:14 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4A30610002A;
 Wed, 22 Apr 2020 12:29:14 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 38BDD2A9560;
 Wed, 22 Apr 2020 12:29:14 +0200 (CEST)
Received: from localhost (10.75.127.44) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 22 Apr 2020 12:29:13
 +0200
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>, Dan
 Williams <dan.j.williams@intel.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@st.com>
Subject: [PATCH 1/2] dt-bindings: dma: add direct mode support through device
 tree in stm32-dma
Date: Wed, 22 Apr 2020 12:29:03 +0200
Message-ID: <20200422102904.1448-2-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200422102904.1448-1-amelie.delaunay@st.com>
References: <20200422102904.1448-1-amelie.delaunay@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-22_03:2020-04-22,
 2020-04-22 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_032924_572191_68BCCA2A 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Amelie Delaunay <amelie.delaunay@st.com>,
 linux-kernel@vger.kernel.org, Pierre-Yves Mordret <pierre-yves.mordret@st.com>,
 dmaengine@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Direct mode or FIFO mode is computed by stm32-dma driver. Add a way for the
user to force direct mode, by setting bit 2 in the bitfield value
specifying DMA features in the device tree.

Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
---
 Documentation/devicetree/bindings/dma/st,stm32-dma.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/dma/st,stm32-dma.yaml b/Documentation/devicetree/bindings/dma/st,stm32-dma.yaml
index 0c0ac11ad55f..71987878e4ae 100644
--- a/Documentation/devicetree/bindings/dma/st,stm32-dma.yaml
+++ b/Documentation/devicetree/bindings/dma/st,stm32-dma.yaml
@@ -36,6 +36,11 @@ description: |
          0x1: 1/2 full FIFO
          0x2: 3/4 full FIFO
          0x3: full FIFO
+       -bit 2: DMA direct mode
+         0x0: FIFO mode with threshold selectable with bit 0-1
+         0x1: Direct mode: each DMA request immediately initiates a transfer
+              from/to the memory, FIFO is bypassed.
+
 
 maintainers:
   - Amelie Delaunay <amelie.delaunay@st.com>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
