Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64EA11294B9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 12:06:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MWNMslIIOABqTfeWcU9twDhyf0ZHsPTULE/PshmX+i8=; b=Snwz7bK3d7wo0V
	4NhTgRjZ7i815W+OMMZSpJlemUIHz/0CQBiyodJiCF51fmzdAK1zgzuW0izf1bjsZoUOFonC3UC9/
	SQQUJgooVbx6CRXznygUBW131I/+zbfu7LHdf2OFbSZjhalJDxiEvwfzOg/k7xH+r9pb3LHGpv7VD
	bhaRSxTNGy7+RDA0RRbcxu47tNq+My7kSh07HOgC25hg1IOLZghv0TaQUKg8qsDlA4/D+kjIKHXkB
	r7Tv5N4dTk3a+aV3jib6Fmc6gra48URGF5wRS5aDNQ1lgSRu0j7bTSAvLMz+nOUxF3S0joApg7juq
	5EXMHXvv1dUHJZlZPagQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijLXj-0002iA-IE; Mon, 23 Dec 2019 11:06:31 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijLWT-0001bS-UP
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 11:05:15 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBNB58JQ085642;
 Mon, 23 Dec 2019 05:05:08 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1577099108;
 bh=yfoeRD47afhb+LjeVfQOdleb+v6AX3JXFvJ9Nn4f53s=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=aeG/KIw1uwJy2AKeOrDQ6+4KERloMCKDQCtpeYGM9DihnfDRYyAS58Rc2KxQm+9XK
 wU6Ceq53+yx/+HWx6X1PtmX30AZIvxSurpFH3tNy4yoli7Z9uD/3JFs2GnEPcWUsQ+
 WxOpbu6x4intBld+hnXEvZkvFBsS7TfFBWVfYf/c=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBNB58Ku037203;
 Mon, 23 Dec 2019 05:05:08 -0600
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 23
 Dec 2019 05:05:08 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 23 Dec 2019 05:05:08 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBNB4eMD025693;
 Mon, 23 Dec 2019 05:05:04 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>, <nm@ti.com>,
 <ssantosh@kernel.org>
Subject: [PATCH v8 06/18] dmaengine: Add helper function to convert direction
 value to text
Date: Mon, 23 Dec 2019 13:04:46 +0200
Message-ID: <20191223110458.30766-7-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191223110458.30766-1-peter.ujfalusi@ti.com>
References: <20191223110458.30766-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_030514_148397_02F06862 
X-CRM114-Status: UNSURE (   9.76  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, vigneshr@ti.com,
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, frowand.list@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dmaengine_get_direction_text() can be useful when the direction is printed
out. The text is easier to comprehend than the number.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 include/linux/dmaengine.h | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/include/linux/dmaengine.h b/include/linux/dmaengine.h
index 7f9a7150a632..9852ba7399db 100644
--- a/include/linux/dmaengine.h
+++ b/include/linux/dmaengine.h
@@ -1537,4 +1537,23 @@ static inline struct dma_chan
 
 	return __dma_request_channel(mask, fn, fn_param, NULL);
 }
+
+static inline char *
+dmaengine_get_direction_text(enum dma_transfer_direction dir)
+{
+	switch (dir) {
+	case DMA_DEV_TO_MEM:
+		return "DEV_TO_MEM";
+	case DMA_MEM_TO_DEV:
+		return "MEM_TO_DEV";
+	case DMA_MEM_TO_MEM:
+		return "MEM_TO_MEM";
+	case DMA_DEV_TO_DEV:
+		return "DEV_TO_DEV";
+	default:
+		break;
+	}
+
+	return "invalid";
+}
 #endif /* DMAENGINE_H */
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
