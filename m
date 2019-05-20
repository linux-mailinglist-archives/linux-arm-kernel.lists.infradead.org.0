Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53266238D7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 15:54:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZqB/gJesjxIob9zDhnjnnAA/RgcUo9tshITGldkWdMM=; b=T/zt8y9haqeG7Z
	gdupq1SZ7H07f6KA0VuHxO6JvUdhqJbCrVsINYSctrBPWc26MyleEjpxOT3LcRpT8DYh2P6cdy3D/
	t5vtiP1Z5Qzlb9NfFutnZSFN74ZUeMwueQ1V0jyy8ZOR/UNYV/2nYvkF0hGhGaXUblJ32ox3TxGvC
	wYXKrtvDpP0MljCeLFkf5qrdkzHldjNiZZfLptsvgUZthmOhvNf/pEKdwaizISSlHYA4vofU18+Gb
	6llPAqKzsnQlbt3R1dZH2TNL2oIch0ZfWLu0IigakhEL+t7IDlFX6DZZ2t3Mn/y1jR1Wam+ZKKjY4
	HBvD96o2MtCpn4RwgOPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSikY-0004W9-Ee; Mon, 20 May 2019 13:54:46 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSijv-0003tz-7G
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 13:54:09 +0000
Received: by mail-io1-xd41.google.com with SMTP id m7so11072411ioa.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 06:54:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R+Jpk+XthHVG0qFI+gAyJW+786CYrgpLqGw1dG639sc=;
 b=kUlwrKA6Jg9T6clWLPJgeGUuaE9PZk89mqOd9MnvQdrLTvEBvGPK+iniaIoOUfuyIn
 QXoEpsQP3UrMYBN3jNm4JMiGQwiLHjLiNqoSubqfzcWS9J3nMo+Hq8ev5PXyG69DjXHV
 fcIxJ3nHRXB+WfFuhNsCaJL9aSPf0Y5+wQgDHH6x1REzX40cC8jtntFcuHXQBst6HXIF
 VDgfxkjCCr4/AKfVplJelzBYtiIe0RoYpR9mfu99YYKNYe5yJMuUIkEaZC6dft8Z3as9
 urvLde/3DeJRDV2EZz67QkJ6chBk0YkJGVMrr0UIEB3gNKwPmIuzAloPUTyWXsOgD/2k
 U3qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R+Jpk+XthHVG0qFI+gAyJW+786CYrgpLqGw1dG639sc=;
 b=mGs3X0ey4WjLQ7RezBoR1pkWHVRF2UjEIcQedcJJqccFWmKvU2rLCD/BEz79AwTI62
 v3hr8HChjtY2EqTEseiCfsZ/ZTVTUNmqzGhpcFN6smLCaHxLP/zk9Txmi2t9mF2Rl3Q5
 6WmXbMA56Ldxe882A0K8WFJILIpJgWlMN2KhtPfOGdvqXm/kzfrXQ9Ikwv2emI5A1Dxt
 hniw/nbe1sweu/WctFPlJ0JJ8cgjbk2CnFASvKawf2vk4nSuOh8RQppIjEgOcTCultG1
 WoaUgJjLGme13s8+7m3Hw8NsgePv82VZE5i96YEBViIBp5ndLRD4uA3uyVeqzCKusfsd
 bqAg==
X-Gm-Message-State: APjAAAU2p1jyWaCu7S0hPAUFhjqurAE/66iUp2EZNVlg/EmD3NAgGbu2
 QAQbaIqzMbOsD+sgclFmuUu/Xw==
X-Google-Smtp-Source: APXvYqwdkj2XNTZy7A/BcMrnQZOHJaq1jEZ10NGzfy1RdztnJ5TzENVJ8ePAl4JCjYVq+ttbEYBKKA==
X-Received: by 2002:a5e:a71a:: with SMTP id b26mr12962200iod.95.1558360446575; 
 Mon, 20 May 2019 06:54:06 -0700 (PDT)
Received: from localhost.localdomain (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.gmail.com with ESMTPSA id n17sm6581185ioa.0.2019.05.20.06.54.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 06:54:06 -0700 (PDT)
From: Alex Elder <elder@linaro.org>
To: arnd@arndb.de, subashab@codeaurora.org, david.brown@linaro.org,
 agross@kernel.org, davem@davemloft.net
Subject: [PATCH 5/8] net: qualcomm: rmnet: don't use C bit-fields in rmnet
 checksum trailer
Date: Mon, 20 May 2019 08:53:51 -0500
Message-Id: <20190520135354.18628-6-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520135354.18628-1-elder@linaro.org>
References: <20190520135354.18628-1-elder@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_065407_410636_68CA0A1B 
X-CRM114-Status: GOOD (  12.09  )
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

Replace the use of C bit-fields in the rmnet_map_dl_csum_trailer
structure with a single integral field, using field masks to
encode or get at sub-field values.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h      | 6 ++++--
 drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c | 2 +-
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
index f3231c26badd..fb1cdb4ec41f 100644
--- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
+++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
@@ -51,13 +51,15 @@ struct rmnet_map_header {
 
 struct rmnet_map_dl_csum_trailer {
 	u8  reserved1;
-	u8  valid:1;
-	u8  reserved2:7;
+	u8  flags;		/* RMNET_MAP_DL_* */
 	u16 csum_start_offset;
 	u16 csum_length;
 	__be16 csum_value;
 } __aligned(1);
 
+#define RMNET_MAP_DL_CSUM_VALID_FMASK	GENMASK(0, 0)
+#define RMNET_MAP_DL_RESERVED_FMASK	GENMASK(7, 1)
+
 struct rmnet_map_ul_csum_header {
 	__be16 csum_start_offset;
 	__be16 csum_info;	/* RMNET_MAP_UL_* */
diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
index 72b64114505a..a95111cdcd29 100644
--- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
+++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
@@ -362,7 +362,7 @@ int rmnet_map_checksum_downlink_packet(struct sk_buff *skb, u16 len)
 
 	csum_trailer = (struct rmnet_map_dl_csum_trailer *)(skb->data + len);
 
-	if (!csum_trailer->valid) {
+	if (!u8_get_bits(csum_trailer->flags, RMNET_MAP_DL_CSUM_VALID_FMASK)) {
 		priv->stats.csum_valid_unset++;
 		return -EINVAL;
 	}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
