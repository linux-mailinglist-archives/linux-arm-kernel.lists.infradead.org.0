Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8ED238D4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 15:54:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Aznn9gmVzMhDkqImmb9dNvJZsftbnDJBNiPBfnzojo=; b=bvxNJcAyPP02zG
	5pTWtyUdvdvL3MnLlzAHV/HNCD1+uRpUONYP1fd1GLhnuAEBvt4f18exPH1P9iKIgKJ8a4Yo2OIF0
	PTSlGTieDb+IEy5Nme+RypJ7GqhPfhzY2RNX1EhFrjf0pPJ5iev9rgAfx4/UYwyeSOueNvPlU93jg
	bF7pezWm7NETy9k6GD2V9WWXCRplP4TmBGqafRcAQzBZn/8F+fHb92WVrgQukwL8iD9J6c/NghtgT
	XtWOQCyKIiY+EyvjzCCJrGfnneq86O+tBQvy1VGaXTuCrRaLZBDRa/C+vRsQzUrjyWrrahxA4KsUf
	LEXMx0MN9CdkrC4y75gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSikO-0004OS-T7; Mon, 20 May 2019 13:54:36 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSijs-0003su-TT
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 13:54:06 +0000
Received: by mail-io1-xd41.google.com with SMTP id g16so11071324iom.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 06:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=njKYp+14ITtVWnHaTIS/znCm9EIrcpgkV5g8TLL3fv0=;
 b=P0r2Nz9M5k5sdUMKG8tZN6/xXI3z2RMasXRwJ6C6IeCz245s8PRpWOVSujb7b9MgyZ
 J9/23EYY+ddUAUrMZfay1vIRvXEYHtG0hgkeSCVzvMevIlhSks1nyvB39qMm5SDJ1eGA
 BNG5V3yHIpt/nBHeGeT2bHxz/w8RAvaWxH4Tocn/u83KGX2u/CAyCKsAlG4UfjmeL0UE
 ebkV8fpgkCucrce5oUMX+XrHRZHReuOACoOcTTPouoyUp0MvZHd70Sxxhy9Hrocqf59x
 mYBWhTiIugfAAZMLNxxUDAJxJh3D0s0zOqlJNAX883i+rNwOr+FuGKKyonpz2Hu5Al+6
 uJ8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=njKYp+14ITtVWnHaTIS/znCm9EIrcpgkV5g8TLL3fv0=;
 b=AZvtBC7m85Xq+QwkxH1k7+o3ZSyCpdmqD/71s63zrwydRkuHDICc/ZtWqrF+MLCBYo
 t63P+kz+xguLJz70rx+Xz0JLcxJwKNx3MFFgHHTOkPbaYTAtFO15oJ5Dlx16N6RmNOWv
 /MnNq67nTnWqd+XZvDBjhQwnR3mBE5f/J9nfW/bXpVfVE0EJcx8dDK3Dx10nqpzQiDRq
 vq1od3VmWit9ZR/yLyBdIrgT7PWtBOCLZMVIgjhzAiPRRCtwx7lt6mSHcMMhy7EZYnAH
 2Xl/f0cmt2oke2ROOgqcdhZzcFkYXN+BH+XZgnzY2CUquZ3+AWU5suCJv83A/4V+VXO3
 CMLg==
X-Gm-Message-State: APjAAAXUlpEO9vPdr6Jz1n6UjUEjVeus3VyVlsTN3lGNCIPUIQE7vc1M
 t/3h9g8KnwOK2KVEDlMoxof8GQ==
X-Google-Smtp-Source: APXvYqzj/S+XU04Ps+YBm6sesJFVcrQUv1xkS+ABddiyL4gw5WNdxLtQz26sYD5Yo18XZ6vi6RzsIw==
X-Received: by 2002:a5d:9687:: with SMTP id m7mr6337627ion.229.1558360444278; 
 Mon, 20 May 2019 06:54:04 -0700 (PDT)
Received: from localhost.localdomain (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.gmail.com with ESMTPSA id n17sm6581185ioa.0.2019.05.20.06.54.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 06:54:03 -0700 (PDT)
From: Alex Elder <elder@linaro.org>
To: arnd@arndb.de, subashab@codeaurora.org, david.brown@linaro.org,
 agross@kernel.org, davem@davemloft.net
Subject: [PATCH 3/8] net: qualcomm: rmnet: use field masks instead of C
 bit-fields
Date: Mon, 20 May 2019 08:53:49 -0500
Message-Id: <20190520135354.18628-4-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520135354.18628-1-elder@linaro.org>
References: <20190520135354.18628-1-elder@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_065404_951138_CC16BC0D 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: syadagir@codeaurora.org, ejcaruso@google.com, netdev@vger.kernel.org,
 ilias.apalodimas@linaro.org, linux-kernel@vger.kernel.org,
 evgreen@chromium.org, bjorn.andersson@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 cpratapa@codeaurora.org, benchan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Using C bitfields (e.g. int foo : 3) is not portable.  So stop
using them for the command/data flag and the pad length fields in
the rmnet_map structure.  Instead, use the functions defined in
<linux/bitfield.h> along with field mask constants to extract or
assign values within an integral structure member of a known size.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 drivers/net/ethernet/qualcomm/rmnet/rmnet_handlers.c | 5 +++--
 drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h      | 8 +++++---
 drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c | 5 ++++-
 3 files changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_handlers.c b/drivers/net/ethernet/qualcomm/rmnet/rmnet_handlers.c
index 4c1b62b72504..5fff6c78ecd5 100644
--- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_handlers.c
+++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_handlers.c
@@ -13,6 +13,7 @@
  *
  */
 
+#include <linux/bitfield.h>
 #include <linux/netdevice.h>
 #include <linux/netdev_features.h>
 #include <linux/if_arp.h>
@@ -70,7 +71,7 @@ __rmnet_map_ingress_handler(struct sk_buff *skb,
 	u16 len, pad;
 	u8 mux_id;
 
-	if (map_header->cd_bit) {
+	if (u8_get_bits(map_header->cmd_pad_len, RMNET_MAP_CMD_FMASK)) {
 		if (port->data_format & RMNET_FLAGS_INGRESS_MAP_COMMANDS)
 			return rmnet_map_command(skb, port);
 
@@ -78,7 +79,7 @@ __rmnet_map_ingress_handler(struct sk_buff *skb,
 	}
 
 	mux_id = map_header->mux_id;
-	pad = map_header->pad_len;
+	pad = u8_get_bits(map_header->cmd_pad_len, RMNET_MAP_PAD_LEN_FMASK);
 	len = ntohs(map_header->pkt_len) - pad;
 
 	if (mux_id >= RMNET_MAX_LOGICAL_EP)
diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
index a30a7b405a11..a56209645c81 100644
--- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
+++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
@@ -40,13 +40,15 @@ enum rmnet_map_commands {
 };
 
 struct rmnet_map_header {
-	u8  cd_bit:1;
-	u8  reserved_bit:1;
-	u8  pad_len:6;
+	u8  cmd_pad_len;	/* RMNET_MAP_* */
 	u8  mux_id;
 	__be16 pkt_len;
 }  __aligned(1);
 
+#define RMNET_MAP_CMD_FMASK		GENMASK(0, 0)   /* 0: data; 1: cmd */
+#define RMNET_MAP_RESERVED_FMASK	GENMASK(1, 1)
+#define RMNET_MAP_PAD_LEN_FMASK		GENMASK(7, 2)
+
 struct rmnet_map_dl_csum_trailer {
 	u8  reserved1;
 	u8  valid:1;
diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
index 498f20ba1826..10d2d582a9ce 100644
--- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
+++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
@@ -13,6 +13,7 @@
  *
  */
 
+#include <linux/bitfield.h>
 #include <linux/netdevice.h>
 #include <linux/ip.h>
 #include <linux/ipv6.h>
@@ -301,7 +302,9 @@ struct rmnet_map_header *rmnet_map_add_map_header(struct sk_buff *skb,
 
 done:
 	map_header->pkt_len = htons(map_datalen + padding);
-	map_header->pad_len = padding & 0x3F;
+	/* This is a data packet, so cmd field is 0 */
+	map_header->cmd_pad_len =
+			u8_encode_bits(padding, RMNET_MAP_PAD_LEN_FMASK);
 
 	return map_header;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
