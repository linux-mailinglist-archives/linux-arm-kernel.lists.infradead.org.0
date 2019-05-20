Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9851C238EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 15:54:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ik9pS3n1gdCY9SpQ//Wui5W8PaVZxG4xfgN3ov5pRCM=; b=MV+NxuN7tnNTj+
	oRpKax645Mhu8U1DMO8w+3GYkcB57z/93R0CKMnehvYXqUZy0+DDkhl4ty7/GLVbC03asNuhLv/ir
	BQsg9Wt99md+pgv0nf6lDpmjW2mJgcCDMiesSqkvLemxpotujlRBGTA8lcJS44jcQOOGJEWmu2Oy4
	LoBuYHlUvEkPcz3oNhta0pTaMaVryV0/ZxVQGwmRJfM1jk+z9dEhHXBJZqWIDcG9ibAIwN538TSzw
	i31LBNBOq1ls6WRecNVpBy1HvZo+daLfTELX9VjZIyEzrw5jFbLExFqnVV2AX/Dt69vaEN3iyi85I
	XX0BOan83+51cEQfdoaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSiki-0004ki-Dt; Mon, 20 May 2019 13:54:56 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSijw-0003vc-D4
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 13:54:12 +0000
Received: by mail-io1-xd44.google.com with SMTP id m7so11072451ioa.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 06:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8sgAB/AGyzpe5i8kq4OdwdrKx4EqLUnBgzPsX6Zqbyw=;
 b=rDEMXB3Un6MgiWh4ksumjEEVa9RIeGcQ/D2s4tFLbqN9nlrSYnXOr0yEDoAaR6V1vM
 ATjGLvuaFBu76A2xSWr5+ppw+kVHhrHlJzKuxeKCLTWMT34QA972duz6cj+vLBUWrMmJ
 2LeR+I+G4795y9S5c68S3ARzybp2HwFrCYHI+HOBjCoUiL4JBuYU55F45fA684s4D5HO
 /H0qJ9zEqZzr4I1ekSrP/P0cnZ9y6L/stZ7RJ5F5KDqlEeK+TIQYwl8dTfHFAD3WBp3V
 219aMx8wPPLNjFsSMEM8sP2adx7BDPZu9YQYcAs0qgJU3ZB8Al+zCS0GB2VHxf6hiSLX
 3dfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8sgAB/AGyzpe5i8kq4OdwdrKx4EqLUnBgzPsX6Zqbyw=;
 b=UdvTcgO5v0V0Mdsx/s0DczbGGCDeZD4Nzxm9rkRAo9t3Rjn6OovqaZY3iaBSvoPv9r
 rak7l7Ru9vTmpt+VJLRHs6F0NAtVZVRxqVPsA63vghaOLNE8Cok2FyWwbKlgOihuDLfO
 pdSgfxoeE9AI/WuCO+PIPoe7adjhK4xU5aWNIUdYnCoPfn3PS1pW3Sg+18LcORMJ10DS
 3PV4Wrl4R8g6A5ZeDU5EGT9Vh18XihIcGd71AbHQRo4wm/1t4DNBi4IZPdfhWhRWA+ZW
 rOAmhEdkLqzE6hRuoKoyKUvVV5tSVG/YYHrpHpMoKEbQGUT8zlpF/NY4k8zyEWC53ugz
 9DXA==
X-Gm-Message-State: APjAAAVjgVGJ7XwR38vDzjrSJvLTqdFRhQJTsptRQFRIiCv8CrJlDN1n
 80VlxfvC0oH+AJCAoPn6kd/BzCgRJHw=
X-Google-Smtp-Source: APXvYqzKN0iv4h6jWKvTTCl0uadYJCIgkU2OoTryl4K5KV0aAamgJ1/b6G2rx2mupUMzWjojbh7wxA==
X-Received: by 2002:a6b:c411:: with SMTP id y17mr8433515ioa.265.1558360447762; 
 Mon, 20 May 2019 06:54:07 -0700 (PDT)
Received: from localhost.localdomain (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.gmail.com with ESMTPSA id n17sm6581185ioa.0.2019.05.20.06.54.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 06:54:07 -0700 (PDT)
From: Alex Elder <elder@linaro.org>
To: arnd@arndb.de, subashab@codeaurora.org, david.brown@linaro.org,
 agross@kernel.org, davem@davemloft.net
Subject: [PATCH 6/8] net: qualcomm: rmnet: get rid of a variable in
 rmnet_map_ipv4_ul_csum_header()
Date: Mon, 20 May 2019 08:53:52 -0500
Message-Id: <20190520135354.18628-7-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520135354.18628-1-elder@linaro.org>
References: <20190520135354.18628-1-elder@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_065408_646512_ABB39EFB 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
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

The value passed as an argument to rmnet_map_ipv4_ul_csum_header()
is always an IPv4 header.  Just have the type of the argument
reflect that rather than obscuring that with a void pointer.  Rename
it to be consistent with rmnet_map_ipv6_ul_csum_header().

Signed-off-by: Alex Elder <elder@linaro.org>
---
 drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
index a95111cdcd29..61b7dbab2056 100644
--- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
+++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
@@ -203,26 +203,25 @@ static void rmnet_map_complement_ipv4_txporthdr_csum_field(void *iphdr)
 }
 
 static void
-rmnet_map_ipv4_ul_csum_header(void *iphdr,
+rmnet_map_ipv4_ul_csum_header(struct iphdr *ip4hdr,
 			      struct rmnet_map_ul_csum_header *ul_header,
 			      struct sk_buff *skb)
 {
-	struct iphdr *ip4h = iphdr;
 	u16 offset;
 	u16 val;
 
-	offset = skb_transport_header(skb) - (unsigned char *)iphdr;
+	offset = skb_transport_header(skb) - (unsigned char *)ip4hdr;
 	ul_header->csum_start_offset = htons(offset);
 
 	val = u16_encode_bits(skb->csum_offset, RMNET_MAP_UL_CSUM_INSERT_FMASK);
 	val |= RMNET_MAP_UL_CSUM_ENABLED_FMASK;
-	if (ip4h->protocol == IPPROTO_UDP)
+	if (ip4hdr->protocol == IPPROTO_UDP)
 		val |= RMNET_MAP_UL_CSUM_UDP_FMASK;
 	ul_header->csum_info = htons(val);
 
 	skb->ip_summed = CHECKSUM_NONE;
 
-	rmnet_map_complement_ipv4_txporthdr_csum_field(iphdr);
+	rmnet_map_complement_ipv4_txporthdr_csum_field(ip4hdr);
 }
 
 #if IS_ENABLED(CONFIG_IPV6)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
