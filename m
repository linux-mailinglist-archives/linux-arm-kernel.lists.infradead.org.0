Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9340238F4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 15:55:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xqcus8F85FtgcVBy+wHBeQNf6vIRD9fdRxiDdKKYuCk=; b=qYSonSKdrLKnIa
	n1EymmSiyohV0X+eRyvADHACYENYoeqLRZrO/MdlbHNq5CU4z22hqhh8xMiSl93r9bfGfb2Px/QDZ
	o21hcSIUHRKex9sjP1yGhIGPsLnEigZRj1aK9vx8jZC1WSDCMphWtn8mvwZfiEEroy5JE3mRMcEQb
	rlWusQV9ySXvTcuql7+CQQvmbx131P1uwGAzH5u9cPjnt3CLzf9/0YjyyqiogjMbFlp05ecTWPX42
	elC2UvwPykjjeBS/kUU67dB5L2Apof1eI5uLTqEzi/9l18eXhvUAb0bvM8cNYibm7E2i0Ka+relCX
	OxB7IHrDVDCJI/kCuxDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSilJ-0006d7-6i; Mon, 20 May 2019 13:55:33 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSijx-0003tf-Vl
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 13:54:18 +0000
Received: by mail-io1-xd43.google.com with SMTP id a17so11064285iot.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 06:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XZw+WK9Ep7KnMxZda1w63yeDixvAfUhz3fm/WPmj3DA=;
 b=S4enJUEKqFT864sg1x+pjeXgA0rFex1SjESZsKd844hf6PlYJ/lInrfNmqEOqguWGV
 v/sA7bU/54p49Ul0mvtJoPCOE4RERlcCeEBgAqc6ixOlHzs9JxA3+4UmpSrMF15qrVL5
 6XXbFTmgqIj+AIG2gMq/b85nHyGwQmD7fjftL9zhgNLDHE2/2RNMbuNJF7lg+nfa+HBP
 10QEAwZN8k1AujAVFImb8YygjOKw2R+LlOE/RaKW8s5jIF9udsX2bzYc/O82HtUZr9ru
 NeLcGUtoPpNTkEHUelSE+L8Cms+GBrnjrD0zj6HCa/uvbBIzG64241jGNG22J3CqfMc9
 U4KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XZw+WK9Ep7KnMxZda1w63yeDixvAfUhz3fm/WPmj3DA=;
 b=qv6CVKzQbLj7UxxFJXzTm2TFZ8S5U4VTdbYZPHqgdIuzNH8a0RlsTRYdG/eGJtGb1q
 Xydlrp5jzxibtpiTahVY5ayrmqDDWT6v7D6TmVujLoKdk7TimxljyeWN/uYwjYb1nLXW
 mLvislw8FNkYCHpVNyy/7D19ajDOzOrf41nundjUCOiZ1mML3C0pZ5gszWAdHIYg9gRv
 Qz4JkGJ+HyIypUwpYErQTKRcpd3ZFHzIGgN3F3tcVQPlF9skUkXHZRb1tBk6bEVBc9os
 pm3RWW0wrxyMosGtagPoWRj8hXx8AmNESPLBam8vDHrUGeFzDeEWOJ77ZEheoCMugZjM
 /REA==
X-Gm-Message-State: APjAAAURZFNlaFSr27Ybdi2bUUkN1tx77FZie4OV5P/BHDgelGHlIh35
 SBD3mMnsqUs5vOUP3gWVzUDOiQ==
X-Google-Smtp-Source: APXvYqxCHlSs84ZzkHPl2hQvL7JJVuT2q6BWjhQZwpjY6kjaOTDJrZOENVfuvB4EKMKbt3+cK9F+QQ==
X-Received: by 2002:a05:6602:4e:: with SMTP id
 z14mr14015532ioz.93.1558360445436; 
 Mon, 20 May 2019 06:54:05 -0700 (PDT)
Received: from localhost.localdomain (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.gmail.com with ESMTPSA id n17sm6581185ioa.0.2019.05.20.06.54.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 06:54:04 -0700 (PDT)
From: Alex Elder <elder@linaro.org>
To: arnd@arndb.de, subashab@codeaurora.org, david.brown@linaro.org,
 agross@kernel.org, davem@davemloft.net
Subject: [PATCH 4/8] net: qualcomm: rmnet: don't use C bit-fields in rmnet
 checksum header
Date: Mon, 20 May 2019 08:53:50 -0500
Message-Id: <20190520135354.18628-5-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520135354.18628-1-elder@linaro.org>
References: <20190520135354.18628-1-elder@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_065410_401803_3847CBF2 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
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

Replace the use of C bit-fields in the rmnet_map_ul_csum_header
structure with a single integral structure member, and use field
masks to encode or get values within that member.

Note that the previous C bit-fields were defined with CPU local
endianness.  Their values were computed and then forecfully converted
to network byte order in rmnet_map_ipv4_ul_csum_header().  Simplify
that function, and properly define the new csum_info member as a big
endian value.

Make similar simplifications in rmnet_map_ipv6_ul_csum_header().

Signed-off-by: Alex Elder <elder@linaro.org>
---
 .../net/ethernet/qualcomm/rmnet/rmnet_map.h   |  9 ++--
 .../ethernet/qualcomm/rmnet/rmnet_map_data.c  | 50 ++++++++-----------
 2 files changed, 26 insertions(+), 33 deletions(-)

diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
index a56209645c81..f3231c26badd 100644
--- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
+++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
@@ -60,11 +60,14 @@ struct rmnet_map_dl_csum_trailer {
 
 struct rmnet_map_ul_csum_header {
 	__be16 csum_start_offset;
-	u16 csum_insert_offset:14;
-	u16 udp_ip4_ind:1;
-	u16 csum_enabled:1;
+	__be16 csum_info;	/* RMNET_MAP_UL_* */
 } __aligned(1);
 
+/* NOTE:  These field masks are defined in CPU byte order */
+#define RMNET_MAP_UL_CSUM_INSERT_FMASK	GENMASK(13, 0)
+#define RMNET_MAP_UL_CSUM_UDP_FMASK	GENMASK(14, 14)   /* 0: IP; 1: UDP */
+#define RMNET_MAP_UL_CSUM_ENABLED_FMASK	GENMASK(15, 15)
+
 #define RMNET_MAP_COMMAND_REQUEST     0
 #define RMNET_MAP_COMMAND_ACK         1
 #define RMNET_MAP_COMMAND_UNSUPPORTED 2
diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
index 10d2d582a9ce..72b64114505a 100644
--- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
+++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
@@ -207,22 +207,18 @@ rmnet_map_ipv4_ul_csum_header(void *iphdr,
 			      struct rmnet_map_ul_csum_header *ul_header,
 			      struct sk_buff *skb)
 {
-	struct iphdr *ip4h = (struct iphdr *)iphdr;
-	__be16 *hdr = (__be16 *)ul_header, offset;
+	struct iphdr *ip4h = iphdr;
+	u16 offset;
+	u16 val;
 
-	offset = htons((__force u16)(skb_transport_header(skb) -
-				     (unsigned char *)iphdr));
-	ul_header->csum_start_offset = offset;
-	ul_header->csum_insert_offset = skb->csum_offset;
-	ul_header->csum_enabled = 1;
+	offset = skb_transport_header(skb) - (unsigned char *)iphdr;
+	ul_header->csum_start_offset = htons(offset);
+
+	val = u16_encode_bits(skb->csum_offset, RMNET_MAP_UL_CSUM_INSERT_FMASK);
+	val |= RMNET_MAP_UL_CSUM_ENABLED_FMASK;
 	if (ip4h->protocol == IPPROTO_UDP)
-		ul_header->udp_ip4_ind = 1;
-	else
-		ul_header->udp_ip4_ind = 0;
-
-	/* Changing remaining fields to network order */
-	hdr++;
-	*hdr = htons((__force u16)*hdr);
+		val |= RMNET_MAP_UL_CSUM_UDP_FMASK;
+	ul_header->csum_info = htons(val);
 
 	skb->ip_summed = CHECKSUM_NONE;
 
@@ -249,18 +245,16 @@ rmnet_map_ipv6_ul_csum_header(void *ip6hdr,
 			      struct rmnet_map_ul_csum_header *ul_header,
 			      struct sk_buff *skb)
 {
-	__be16 *hdr = (__be16 *)ul_header, offset;
+	u16 offset;
+	u16 val;
 
-	offset = htons((__force u16)(skb_transport_header(skb) -
-				     (unsigned char *)ip6hdr));
-	ul_header->csum_start_offset = offset;
-	ul_header->csum_insert_offset = skb->csum_offset;
-	ul_header->csum_enabled = 1;
-	ul_header->udp_ip4_ind = 0;
+	offset = skb_transport_header(skb) - (unsigned char *)ip6hdr;
+	ul_header->csum_start_offset = htons(offset);
 
-	/* Changing remaining fields to network order */
-	hdr++;
-	*hdr = htons((__force u16)*hdr);
+	val = u16_encode_bits(skb->csum_offset, RMNET_MAP_UL_CSUM_INSERT_FMASK);
+	val |= RMNET_MAP_UL_CSUM_ENABLED_FMASK;
+	/* Not UDP, so that field is 0 */
+	ul_header->csum_info = htons(val);
 
 	skb->ip_summed = CHECKSUM_NONE;
 
@@ -400,8 +394,7 @@ void rmnet_map_checksum_uplink_packet(struct sk_buff *skb,
 	struct rmnet_map_ul_csum_header *ul_header;
 	void *iphdr;
 
-	ul_header = (struct rmnet_map_ul_csum_header *)
-		    skb_push(skb, sizeof(struct rmnet_map_ul_csum_header));
+	ul_header = skb_push(skb, sizeof(*ul_header));
 
 	if (unlikely(!(orig_dev->features &
 		     (NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM))))
@@ -428,10 +421,7 @@ void rmnet_map_checksum_uplink_packet(struct sk_buff *skb,
 	}
 
 sw_csum:
-	ul_header->csum_start_offset = 0;
-	ul_header->csum_insert_offset = 0;
-	ul_header->csum_enabled = 0;
-	ul_header->udp_ip4_ind = 0;
+	memset(ul_header, 0, sizeof(*ul_header));
 
 	priv->stats.csum_sw++;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
