Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1321D8398
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 20:06:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JBd6210+vAT0w8w0qPsD1d5vB6ti0m2KcHiobZ0L2NE=; b=HBmIKqfo1Grf9f
	xs3d+rZJzBd0uFCLKwuWroFwp2VWMjM5+pqZzm2/M36jRx0D5SSwTBcX8MV6Bdf1YqP57DpvcUvcZ
	gJJP3TKBlQjGnd9fyXyauTh51mh4f7+ZAsuyCsl6Lf1LZjm1HFOP8Jj0iXxuxonCkzDpn/O8bKPW9
	88I9WlZHSCkom0/xDg7txwfkMv4O2rx9h4GPP8RsGU1ASMs9MZGGH2e9Q50g6UM24nGkoi3vn4w40
	0lqEM1Du+/lQdbHj/rxmU2vAzG6iIiQ5MwZpK3CDpoZA1bQ7oxP5BLz+f3VtkrvovJcNI4aO/qovZ
	PWWLplXsq3/mfsNEGXGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jak9f-0008D6-2p; Mon, 18 May 2020 18:06:23 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jak6H-0003KO-Vv
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 18:02:55 +0000
Received: by mail-pj1-x1044.google.com with SMTP id 5so193993pjd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 11:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zSWw0gTwrFNJ59zKX4DfJwQn4PCUoycy0XTqgN8fJFM=;
 b=Nz5YNmpWZCQY875rygR0fAZ5Z9aZH62HUXpwYnD2NorcXK9H8GWjppkBr20PUNChwe
 E9fuM2aj6A1MGE1JCD+mFGcX0FKC6OKVRAwC6tjIut2shX1lFrvWRBwLFkpi3bNH6R7C
 ylQnk8fm+3womwW1H9BtWqv9mW8h/DWkemivfXQOidP5r8deMnUGOGqpLgAu2dUnA07z
 BQqtY0PtR57UHzKxZJcDSCD1TNtFRE+EP8EFtbF59TLmADxC72zwvgwyBIhR3zfEkc+Y
 ksc2/+FaC0aBKYGDFVwFHe9s4y0VI843sUyPJMW2voO1/9Ol/9sMu2jWO/zcWswJhro4
 b7wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zSWw0gTwrFNJ59zKX4DfJwQn4PCUoycy0XTqgN8fJFM=;
 b=q5+MFhD/W0ze70yBRoUIOv/klZ3ZqLN69S3Si9JUixb2zAbSMMJm9PngjHa3e0eaJE
 MORps96Aogh46OdPb0J2EDHEz3L/G6pPqivY4GnB+zlN7OJppmtiJ44Sk2/4ojfLxkbZ
 UNdQturBaWEoAbIzhxycpE6DhCvpF4BoCjS52ByQbat6k+k3FM5JPl1GaLwoprqXtnZI
 tcJLwVnGEP0RjSA6iPvgWDvzB9lvCFVWyuCe31kRY4e8FYxaUy9eruadOIvqyaSVRKQQ
 UGBz6DaU84RKKxiGSNZR12ri2Mg2ZsEKQ7aDxK61ueqLuFkQW/IVHX1dNeZmxOUAuoWe
 xtrw==
X-Gm-Message-State: AOAM531a6Gw6Z/LbzEvLxbdK5uTZ98tNqMprPeyVxAvY/1tYKyiBHndv
 oINSOiG0uMgeWY5fu9mPi39UOg==
X-Google-Smtp-Source: ABdhPJxDqY+d4L13ODH8cQWmTyLct9X4HK5O/YLbr0oY5HyMRZWrCq5SPEHBzzG+ibxPB0McFFgHSA==
X-Received: by 2002:a17:90a:49c5:: with SMTP id l5mr611214pjm.73.1589824973138; 
 Mon, 18 May 2020 11:02:53 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id v3sm9212314pfv.186.2020.05.18.11.02.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 11:02:52 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 09/23] coresight: etm4x: Replace ETM PIDs with UCI IDs for
 Kryo385
Date: Mon, 18 May 2020 12:02:28 -0600
Message-Id: <20200518180242.7916-10-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200518180242.7916-1-mathieu.poirier@linaro.org>
References: <20200518180242.7916-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_110254_097180_3AEDE04C 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>

Replace the AMBA ETM PIDs with UCI IDs to avoid future
conflicts when adding the CTI support for QCOM Kryo385
CPU cores.

Fixes: 17b4add0d4e0 ("coresight: etm4x: Add ETM PIDs for SDM845 and MSM8996")
Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-etm4x.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index 4fb4874981e1..94c5f204998e 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -1554,8 +1554,8 @@ static const struct amba_id etm4_ids[] = {
 	CS_AMBA_UCI_ID(0x000bb9da, uci_id_etm4),/* Cortex-A35 */
 	CS_AMBA_UCI_ID(0x000f0205, uci_id_etm4),/* Qualcomm Kryo */
 	CS_AMBA_UCI_ID(0x000f0211, uci_id_etm4),/* Qualcomm Kryo */
-	CS_AMBA_ID(0x000bb802),			/* Qualcomm Kryo 385 Cortex-A55 */
-	CS_AMBA_ID(0x000bb803),			/* Qualcomm Kryo 385 Cortex-A75 */
+	CS_AMBA_UCI_ID(0x000bb802, uci_id_etm4),/* Qualcomm Kryo 385 Cortex-A55 */
+	CS_AMBA_UCI_ID(0x000bb803, uci_id_etm4),/* Qualcomm Kryo 385 Cortex-A75 */
 	CS_AMBA_UCI_ID(0x000bb805, uci_id_etm4),/* Qualcomm Kryo 4XX Cortex-A55 */
 	CS_AMBA_UCI_ID(0x000bb804, uci_id_etm4),/* Qualcomm Kryo 4XX Cortex-A76 */
 	CS_AMBA_UCI_ID(0x000cc0af, uci_id_etm4),/* Marvell ThunderX2 */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
