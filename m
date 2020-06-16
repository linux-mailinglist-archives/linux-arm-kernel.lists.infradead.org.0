Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1C61FB10B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 14:45:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4/fSRJ015BfHKUiH4GARmk75kO/4S+gdDAIlGiSD/1o=; b=cU7SLyqvTuDMC4
	mg4Su4S6+IZcSKYuPt+h0w8toZyijtdscaAdrQ99SoGJNUlhnt9MwAmh9PioExoYrq/T5/FYjqoQE
	cNM/q9U76Qt3e9b0EIQV/xAmPryb42F1dAxHfT/7HuOMRVTXDM0DSV+4j8X03dwIi1Otwytziydgy
	ffgWtFBdpUlmaUZJH0/yUlcltQFyGvl7TwIqf332qX+BaeKPeN3ptCOowoH7U2yhKRKzW0JG+SF20
	ghfDHxcfmIeqQIxjuOhgSUhwRGujDhw33eOaHYnneuR8r+Lgt59P3z8RJHECwhkPC5adI08uyOZAl
	a1BW+kMnpyb/8iImYtRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlAy4-00077n-LE; Tue, 16 Jun 2020 12:45:32 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlAxa-0004VV-Ml; Tue, 16 Jun 2020 12:45:04 +0000
X-UUID: 4d82aed94592474f8381813f80a32ca5-20200616
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=1y6jYCU5bn8D2X7/K/Tvzzlj7X36JuNHASO4pxrPu4w=; 
 b=iQnnbsRTQitClaSbkDUZL8p5j1UhN/N0a5ci1xagj+SPqnGJrzpDu9K8qXY0GEqvkm/5tOJCUIW8SFZRqygRE0vjXP9Z9AzJdl2QGfFmTsN48qrV1puJ+aD5Em255xhl/L0G4KiP4alOAGAH4vg/szZj1braTQKUI3CFef5Iscw=;
X-UUID: 4d82aed94592474f8381813f80a32ca5-20200616
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1256596933; Tue, 16 Jun 2020 04:44:46 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 16 Jun 2020 05:34:51 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 16 Jun 2020 20:34:45 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Tue, 16 Jun 2020 20:34:45 +0800
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Felipe Balbi <balbi@kernel.org>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?=
 <mirq-linux@rere.qmqm.pl>, Sergey Organov <sorganov@gmail.com>, "Fabrice
 Gasnier" <fabrice.gasnier@st.com>, <linux-usb@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>, 
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/2] usb: gadget: introduce flag for large request
Date: Tue, 16 Jun 2020 20:34:43 +0800
Message-ID: <1592310884-4307-1-git-send-email-macpaul.lin@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_054502_767313_080F3DFB 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Macpaul Lin <macpaul.lin@gmail.com>, Macpaul Lin <macpaul.lin@mediatek.com>,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some USB hardware like DMA engine can help to process (split) the data
of each URB request into small packets. For example, the max packet size
of high speed is 512 bytes. These kinds of hardware can help to split
the continue Tx/Rx data requests into packets just at the max packet
size during transmission. Hence upper layer software can reduce some
effort for queueing many requests back and forth for larger data.

Here we introduce "can_exceed_maxp" flag in gadget when these kinds of
hardware is ready to support these operations.

Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
---
 drivers/usb/mtu3/mtu3_qmu.c |   11 ++++++++++-
 include/linux/usb/gadget.h  |    1 +
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/mtu3/mtu3_qmu.c b/drivers/usb/mtu3/mtu3_qmu.c
index 3f414f9..2b51a20 100644
--- a/drivers/usb/mtu3/mtu3_qmu.c
+++ b/drivers/usb/mtu3/mtu3_qmu.c
@@ -620,7 +620,7 @@ irqreturn_t mtu3_qmu_isr(struct mtu3 *mtu)
 
 int mtu3_qmu_init(struct mtu3 *mtu)
 {
-
+	int i;
 	compiletime_assert(QMU_GPD_SIZE == 16, "QMU_GPD size SHOULD be 16B");
 
 	mtu->qmu_gpd_pool = dma_pool_create("QMU_GPD", mtu->dev,
@@ -629,10 +629,19 @@ int mtu3_qmu_init(struct mtu3 *mtu)
 	if (!mtu->qmu_gpd_pool)
 		return -ENOMEM;
 
+	/* Let gadget know we can process request larger than max packet */
+	for (i = 1; i < mtu->num_eps; i++)
+		mtu->ep_array[i].ep.can_exceed_maxp = 1;
+
 	return 0;
 }
 
 void mtu3_qmu_exit(struct mtu3 *mtu)
 {
+	int i;
 	dma_pool_destroy(mtu->qmu_gpd_pool);
+
+	/* Disable large request support */
+	for (i = 1; i < mtu->num_eps; i++)
+		mtu->ep_array[i].ep.can_exceed_maxp = 0;
 }
diff --git a/include/linux/usb/gadget.h b/include/linux/usb/gadget.h
index 6a17817..60e0645 100644
--- a/include/linux/usb/gadget.h
+++ b/include/linux/usb/gadget.h
@@ -236,6 +236,7 @@ struct usb_ep {
 	unsigned		max_streams:16;
 	unsigned		mult:2;
 	unsigned		maxburst:5;
+	unsigned		can_exceed_maxp:1;
 	u8			address;
 	const struct usb_endpoint_descriptor	*desc;
 	const struct usb_ss_ep_comp_descriptor	*comp_desc;
-- 
1.7.9.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
