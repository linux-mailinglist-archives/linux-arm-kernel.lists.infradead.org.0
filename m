Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC9A11F5B8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 05:27:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s0jYacxQQkwRqQ7jdNf5PGw/XM4/ogxLok9y7OeGTr4=; b=leAg/D4bsucgGQ
	N3a759fEEcYHkfYelbNva7aS5sFHJzS/MyZwaSjWgxZ7fuhExxBdjpCSgNi62R3o/vlBKkYBbN2Jt
	/1QBmNbg84QeLEpjv6QmgD8mltQ5r9k1m+DPgj/BLAruj9U2Xhl9B2uN4P+JSgDfJ6qSm4s9sHiBU
	cvBKaGM1LXl+nCqzqGEfSQLDVndHGtR+Z0pWx+nGKBJSvNzVxljGABzy7brnqSf+P5PmoCVf+RtRi
	TVp3hcvxu2KEAdNOvC6yR/4Wkd6y9RcaWXOBRJPdxVzFKi+Nt7+8Zj0MeVD9NnrIIWv5s2V+ui8yD
	0SdlMninJPBTMtrKm0XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igLVR-00030K-Cz; Sun, 15 Dec 2019 04:27:45 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igLSz-0000pc-J6
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 04:25:19 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 379475AC9;
 Sat, 14 Dec 2019 23:25:04 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sat, 14 Dec 2019 23:25:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=eiExqcZ7ujXnf
 ULrpep8+tjQvNG7hCVX9mCQFkEA6Uo=; b=Y3B7esRl9WjdxAbHeNYyrAjnpTM5n
 /sxSOD24kVHfDwnWXzc2FcA0QeX+Syj9i8dtZz/HLEb96dWpD90JPa2DDsbG10qq
 4qp9saXXWWXMD7wOGjpEfA2ZBy3F588WejM4+hUDCNddldCGctUhQTjJJtEdZKtU
 ZgnuJFqVGgxe/FVzNxYkWApkmkQJrbeaHg0jYbhFfXNJ841aeD5t4oRGtFGb7ifU
 4WPajAbXxI4R+C5O4WTzm7HJfHbrNNMalRaXBdTqC4HPlL2YOHJWdBeREiek+29K
 EIuP5IbCbDQfy6RvOT9C/Wcf9cOAswMvclhtT7bRCGpal1ek3jqsaqBNQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=eiExqcZ7ujXnfULrpep8+tjQvNG7hCVX9mCQFkEA6Uo=; b=Oe0HD8Xi
 1Mk7itRp/qo0Mk7pIEd/zKrwkmAT+4VBjv7vwuJq/ybqpemhfBTI2Xne8EBclGfP
 xNl+10hp1MAddEx9AbVSXE8Ng/PNI5k/jg/2QyYhZDNaKn2jW3xrs0YMtSG3YRKc
 ldF0KsHlOmF87mgZ2kNbtFwm8GA1/MqlUFnXvZo1zx9LTj3zwBb3K+yyU6GGraqs
 ZK0I0U8K9kKd5kF67i/XKy84Rdny2+Evnn/QD3II5pRN6QN/4As1oC4QdrBaz5E3
 1nnzBqdiPxMr5+CCw63bWtt6T0/aBKS4SjkkJsEV+PelyL4PDUmtjesCRm1EBZfk
 pQR+e8WWak2tXA==
X-ME-Sender: <xms:oLX1XYDiok_1POBQxg95OkoXKhgLHZktDPGxuFQK7HTd-nJ1SQFbtA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddtvddgieelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghm
 uhgvlhesshhhohhllhgrnhgurdhorhhgnecuvehluhhsthgvrhfuihiivgepvd
X-ME-Proxy: <xmx:oLX1XSLpkAWwI3qOhoCsdTWKd9fqMHG0la571rOACOwOKvyhpipQdQ>
 <xmx:oLX1XbzWSA3A86E2CJGAWj90Ea1rxhHH_sRktGr7nCtFPxqbiVhXfA>
 <xmx:oLX1XWw7An2FuzIJTNcjVCiiH8eFAWLmCHz95XkzsfH8fRw2GK3Tpw>
 <xmx:oLX1XRH3K7Di1erBh9UIyftu4nis3iwYuRKcTDaFU4EYI89DrSYflQ>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2730A80059;
 Sat, 14 Dec 2019 23:25:03 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Ondrej Jirman <megous@megous.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH v5 8/8] firmware: arm_scpi: Support unidirectional mailbox
 channels
Date: Sat, 14 Dec 2019 22:24:55 -0600
Message-Id: <20191215042455.51001-9-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191215042455.51001-1-samuel@sholland.org>
References: <20191215042455.51001-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_202513_808708_FE4FEAB5 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Samuel Holland <samuel@sholland.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some mailbox controllers have only unidirectional channels, so we need a
pair of them for each SCPI channel. If a mbox-names property is present,
look for "rx" and "tx" mbox channels; otherwise, the existing behavior
is preserved, and a single mbox channel is used for each SCPI channel.

Note that since the mailbox framework only supports a single phandle
with each name (mbox_request_channel_byname always returns the first
one), this new mode only supports a single SCPI channel.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 drivers/firmware/arm_scpi.c | 58 +++++++++++++++++++++++++++++--------
 1 file changed, 46 insertions(+), 12 deletions(-)

diff --git a/drivers/firmware/arm_scpi.c b/drivers/firmware/arm_scpi.c
index a80c331c3a6e..36ff9dd8d0fa 100644
--- a/drivers/firmware/arm_scpi.c
+++ b/drivers/firmware/arm_scpi.c
@@ -231,7 +231,8 @@ struct scpi_xfer {
 
 struct scpi_chan {
 	struct mbox_client cl;
-	struct mbox_chan *chan;
+	struct mbox_chan *rx_chan;
+	struct mbox_chan *tx_chan;
 	void __iomem *tx_payload;
 	void __iomem *rx_payload;
 	struct list_head rx_pending;
@@ -505,7 +506,7 @@ static int scpi_send_message(u8 idx, void *tx_buf, unsigned int tx_len,
 	msg->rx_len = rx_len;
 	reinit_completion(&msg->done);
 
-	ret = mbox_send_message(scpi_chan->chan, msg);
+	ret = mbox_send_message(scpi_chan->tx_chan, msg);
 	if (ret < 0 || !rx_buf)
 		goto out;
 
@@ -854,8 +855,13 @@ static void scpi_free_channels(void *data)
 	struct scpi_drvinfo *info = data;
 	int i;
 
-	for (i = 0; i < info->num_chans; i++)
-		mbox_free_channel(info->channels[i].chan);
+	for (i = 0; i < info->num_chans; i++) {
+		struct scpi_chan *pchan = &info->channels[i];
+
+		if (pchan->tx_chan != pchan->rx_chan)
+			mbox_free_channel(pchan->tx_chan);
+		mbox_free_channel(pchan->rx_chan);
+	}
 }
 
 static int scpi_remove(struct platform_device *pdev)
@@ -903,6 +909,7 @@ static int scpi_probe(struct platform_device *pdev)
 	struct resource res;
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
+	bool use_mbox_names = false;
 
 	scpi_info = devm_kzalloc(dev, sizeof(*scpi_info), GFP_KERNEL);
 	if (!scpi_info)
@@ -916,6 +923,14 @@ static int scpi_probe(struct platform_device *pdev)
 		dev_err(dev, "no mboxes property in '%pOF'\n", np);
 		return -ENODEV;
 	}
+	if (of_get_property(dev->of_node, "mbox-names", NULL)) {
+		use_mbox_names = true;
+		if (count != 2) {
+			dev_err(dev, "need exactly 2 mboxes with mbox-names\n");
+			return -ENODEV;
+		}
+		count /= 2;
+	}
 
 	scpi_info->channels = devm_kcalloc(dev, count, sizeof(struct scpi_chan),
 					   GFP_KERNEL);
@@ -961,15 +976,34 @@ static int scpi_probe(struct platform_device *pdev)
 		mutex_init(&pchan->xfers_lock);
 
 		ret = scpi_alloc_xfer_list(dev, pchan);
-		if (!ret) {
-			pchan->chan = mbox_request_channel(cl, idx);
-			if (!IS_ERR(pchan->chan))
-				continue;
-			ret = PTR_ERR(pchan->chan);
-			if (ret != -EPROBE_DEFER)
-				dev_err(dev, "failed to get channel%d err %d\n",
-					idx, ret);
+		if (ret)
+			return ret;
+
+		if (use_mbox_names) {
+			pchan->rx_chan = mbox_request_channel_byname(cl, "rx");
+			if (IS_ERR(pchan->rx_chan)) {
+				ret = PTR_ERR(pchan->rx_chan);
+				goto fail;
+			}
+			pchan->tx_chan = mbox_request_channel_byname(cl, "tx");
+			if (IS_ERR(pchan->rx_chan)) {
+				ret = PTR_ERR(pchan->tx_chan);
+				goto fail;
+			}
+		} else {
+			pchan->rx_chan = mbox_request_channel(cl, idx);
+			if (IS_ERR(pchan->rx_chan)) {
+				ret = PTR_ERR(pchan->rx_chan);
+				goto fail;
+			}
+			pchan->tx_chan = pchan->rx_chan;
 		}
+		continue;
+
+fail:
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "failed to get channel%d err %d\n",
+				idx, ret);
 		return ret;
 	}
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
