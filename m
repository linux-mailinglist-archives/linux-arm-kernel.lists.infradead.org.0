Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B83F5238F5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 15:55:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HPuZ5JW7tJGHjjwlQJ32iNR/F65epZUGtaTGvuQM5As=; b=gVDksUzwECYSGs
	RfgOnh0EQxfuasj+N53vVdjXwoLWvDSuh7vgOicqrqq02rR2qGV+JksCo8orsr7rCEAEPFjhJwIMu
	7XIpp7Icatoocnht8zgA68I9ck3BOo93im49oPEWI8s5g3ygK+83QhkJswFInbafkLZJDUBXySnGt
	Uru9L6LWjx2XzHLqtC5deammyXR6jIUopjCoBpdlDXtdhIa7ohZdz7nnJQ1CUxj4RXRlNv3QieCnu
	h8ovI4vlV7pkLO92yBCUkY1KGjgh1Ao0xm2QGLb5RYhdGWGXNA2riFDkZQMxjHV75gPpuipjiW25s
	fX3/05mU0yN2djuBaD9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSilT-0006ru-G2; Mon, 20 May 2019 13:55:43 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSijy-0003zH-SQ
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 13:54:19 +0000
Received: by mail-io1-xd43.google.com with SMTP id e19so11098267iob.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 06:54:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qTfgXH2ZXOT0rZW+kdJ3acNhah3zg+9vblvPOMdBQ14=;
 b=v3cHBs+JVLGbaW7f+X68Q7SNESSu2ea1qt0XE5rwqRRjB1H+pvrtWDxfUH0AEFsQJq
 +l0yHFwkErTYtnhtH/d87kocoecxvwNEuzEn3ZgwG54OEKQbv0vupQIsVRPhY7yvwsrg
 Wepwos5OEehfTrvI6BJ3/HL98x9ItLBsiW4ABMW4s6cvh29x/nQal4rB5atykq3D+fXq
 o2pcQA2VJz1bqrOD16+M33W2hVMyjFGHKcFIAqkJWBAVwu8iMyTEbfFoqlPUfckbLVWB
 VNrr2RSoVbQp421gKP4231PwDa78wGcYfQJlvT3qi89msxZU19CRvpv0TxKB6B20v7/K
 HE1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qTfgXH2ZXOT0rZW+kdJ3acNhah3zg+9vblvPOMdBQ14=;
 b=PsQgltwEMlVX89W0KT3lksj0zeGtv6EE3BVrNDPHb3pue4Ktyx/eJEqh/1Lvv7YwbA
 M+egT8vyvvcy6NiWigIajYzslwIVh24mPcASgV2/ytQqn/bp6UF6hrHwa8nHXks/cwFq
 gIUgUsOoUclBCz9xlS75eJTvwuT1IZiy+by7iuDgdQXcBKjwLv+z9UaV/c3YwHI7wULT
 bTn7hryhDddaYPorn6zr+mPqIXrsdmd5T8CFdCabscGIEREkVUikHoVFmU2Wr265NP2h
 Atrghc5eY6LksAVyF6umd03yaUsMi+nIh2g0/hI+Yae9K+AnN/7Bj+pxnjkoM4ynOAmY
 sRJg==
X-Gm-Message-State: APjAAAUpItqUS7nQ/zdqrMgWgOybEHJeHg3VeXRFOOZZaT46zMFY8aB6
 cR726D69b30y1BorEDmQZzSG+g==
X-Google-Smtp-Source: APXvYqw+Dh6IdcQx6woJU//JReMZ8LVIygVjAfQCtJfQq3P/b8mcrruZxt3mXsn8gRe41T3YpWrDpA==
X-Received: by 2002:a05:6602:2049:: with SMTP id
 z9mr14847619iod.46.1558360450147; 
 Mon, 20 May 2019 06:54:10 -0700 (PDT)
Received: from localhost.localdomain (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.gmail.com with ESMTPSA id n17sm6581185ioa.0.2019.05.20.06.54.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 06:54:09 -0700 (PDT)
From: Alex Elder <elder@linaro.org>
To: arnd@arndb.de, subashab@codeaurora.org, david.brown@linaro.org,
 agross@kernel.org, davem@davemloft.net
Subject: [PATCH 8/8] net: introduce "include/linux/if_rmnet.h"
Date: Mon, 20 May 2019 08:53:54 -0500
Message-Id: <20190520135354.18628-9-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520135354.18628-1-elder@linaro.org>
References: <20190520135354.18628-1-elder@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_065411_489906_892A2988 
X-CRM114-Status: GOOD (  15.04  )
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

The IPA driver requires some (but not all) symbols defined in
"drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h".  Create a new
public header file "include/linux/if_rmnet.h" and move the needed
definitions there.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 .../ethernet/qualcomm/rmnet/rmnet_handlers.c  |  1 +
 .../net/ethernet/qualcomm/rmnet/rmnet_map.h   | 31 -------------
 .../qualcomm/rmnet/rmnet_map_command.c        |  1 +
 .../ethernet/qualcomm/rmnet/rmnet_map_data.c  |  1 +
 .../net/ethernet/qualcomm/rmnet/rmnet_vnd.c   |  1 +
 include/linux/if_rmnet.h                      | 45 +++++++++++++++++++
 6 files changed, 49 insertions(+), 31 deletions(-)
 create mode 100644 include/linux/if_rmnet.h

diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_handlers.c b/drivers/net/ethernet/qualcomm/rmnet/rmnet_handlers.c
index 5fff6c78ecd5..8e00e14f4ac9 100644
--- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_handlers.c
+++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_handlers.c
@@ -18,6 +18,7 @@
 #include <linux/netdev_features.h>
 #include <linux/if_arp.h>
 #include <net/sock.h>
+#include <linux/if_rmnet.h>
 #include "rmnet_private.h"
 #include "rmnet_config.h"
 #include "rmnet_vnd.h"
diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
index 775b98d34e94..d101cabb04c3 100644
--- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
+++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
@@ -39,37 +39,6 @@ enum rmnet_map_commands {
 	RMNET_MAP_COMMAND_ENUM_LENGTH
 };
 
-struct rmnet_map_header {
-	u8  cmd_pad_len;	/* RMNET_MAP_* */
-	u8  mux_id;
-	__be16 pkt_len;
-}  __aligned(1);
-
-#define RMNET_MAP_CMD_FMASK		GENMASK(0, 0)   /* 0: data; 1: cmd */
-#define RMNET_MAP_RESERVED_FMASK	GENMASK(1, 1)
-#define RMNET_MAP_PAD_LEN_FMASK		GENMASK(7, 2)
-
-struct rmnet_map_dl_csum_trailer {
-	u8  reserved1;
-	u8  flags;		/* RMNET_MAP_DL_* */
-	__be16 csum_start_offset;
-	__be16 csum_length;
-	__be16 csum_value;
-} __aligned(1);
-
-#define RMNET_MAP_DL_CSUM_VALID_FMASK	GENMASK(0, 0)
-#define RMNET_MAP_DL_RESERVED_FMASK	GENMASK(7, 1)
-
-struct rmnet_map_ul_csum_header {
-	__be16 csum_start_offset;
-	__be16 csum_info;	/* RMNET_MAP_UL_* */
-} __aligned(1);
-
-/* NOTE:  These field masks are defined in CPU byte order */
-#define RMNET_MAP_UL_CSUM_INSERT_FMASK	GENMASK(13, 0)
-#define RMNET_MAP_UL_CSUM_UDP_FMASK	GENMASK(14, 14)   /* 0: IP; 1: UDP */
-#define RMNET_MAP_UL_CSUM_ENABLED_FMASK	GENMASK(15, 15)
-
 #define RMNET_MAP_COMMAND_REQUEST     0
 #define RMNET_MAP_COMMAND_ACK         1
 #define RMNET_MAP_COMMAND_UNSUPPORTED 2
diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_command.c b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_command.c
index f675f47c3495..6832c5939cae 100644
--- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_command.c
+++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_command.c
@@ -11,6 +11,7 @@
  */
 
 #include <linux/netdevice.h>
+#include <linux/if_rmnet.h>
 #include "rmnet_config.h"
 #include "rmnet_map.h"
 #include "rmnet_private.h"
diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
index 61b7dbab2056..370aee7402e0 100644
--- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
+++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
@@ -18,6 +18,7 @@
 #include <linux/ip.h>
 #include <linux/ipv6.h>
 #include <net/ip6_checksum.h>
+#include <linux/if_rmnet.h>
 #include "rmnet_config.h"
 #include "rmnet_map.h"
 #include "rmnet_private.h"
diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_vnd.c b/drivers/net/ethernet/qualcomm/rmnet/rmnet_vnd.c
index d11c16aeb19a..6b39d4d8e523 100644
--- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_vnd.c
+++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_vnd.c
@@ -17,6 +17,7 @@
 #include <linux/etherdevice.h>
 #include <linux/if_arp.h>
 #include <net/pkt_sched.h>
+#include <linux/if_rmnet.h>
 #include "rmnet_config.h"
 #include "rmnet_handlers.h"
 #include "rmnet_private.h"
diff --git a/include/linux/if_rmnet.h b/include/linux/if_rmnet.h
new file mode 100644
index 000000000000..ae60472ecc79
--- /dev/null
+++ b/include/linux/if_rmnet.h
@@ -0,0 +1,45 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+/* Copyright (c) 2013-2018, The Linux Foundation. All rights reserved.
+ * Copyright (C) 2019 Linaro Ltd.
+ */
+#ifndef _LINUX_IF_RMNET_H_
+#define _LINUX_IF_RMNET_H_
+
+#include <linux/types.h>
+
+/* Header structure that precedes packets in ETH_P_MAP protocol */
+struct rmnet_map_header {
+	u8  cmd_pad_len;	/* RMNET_MAP_* */
+	u8  mux_id;
+	__be16 pkt_len;
+}  __aligned(1);
+
+#define RMNET_MAP_CMD_FMASK		GENMASK(0, 0)   /* 0: data; 1: cmd */
+#define RMNET_MAP_RESERVED_FMASK	GENMASK(1, 1)
+#define RMNET_MAP_PAD_LEN_FMASK		GENMASK(7, 2)
+
+/* Checksum offload metadata header for outbound packets*/
+struct rmnet_map_ul_csum_header {
+	__be16 csum_start_offset;
+	__be16 csum_info;	/* RMNET_MAP_UL_* */
+} __aligned(1);
+
+/* NOTE:  These field masks are defined in CPU byte order */
+#define RMNET_MAP_UL_CSUM_INSERT_FMASK	GENMASK(13, 0)
+#define RMNET_MAP_UL_CSUM_UDP_FMASK	GENMASK(14, 14)   /* 0: IP; 1: UDP */
+#define RMNET_MAP_UL_CSUM_ENABLED_FMASK	GENMASK(15, 15)
+
+/* Checksum offload metadata trailer for inbound packets */
+struct rmnet_map_dl_csum_trailer {
+	u8  reserved1;
+	u8  flags;		/* RMNET_MAP_DL_* */
+	__be16 csum_start_offset;
+	__be16 csum_length;
+	__be16 csum_value;
+} __aligned(1);
+
+#define RMNET_MAP_DL_CSUM_VALID_FMASK	GENMASK(0, 0)
+#define RMNET_MAP_DL_RESERVED_FMASK	GENMASK(7, 1)
+
+#endif /* _LINUX_IF_RMNET_H_ */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
