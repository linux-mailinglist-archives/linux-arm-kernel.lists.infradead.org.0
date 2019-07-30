Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5107A725
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 13:38:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6IAhoWQeg4scQmXEnI3SZ1N2k/Tz7xuT3MFUJ91DpOQ=; b=EPbnFX/yuoZrMi
	6mvqlFBzMlA8/Jel8VErbTr+gBgNKYEr9/0hFTzztlCkYhRSwx/a+9BN1/zFQMpEqP3yn7OlFcSiv
	qJWsY3G7URC0DExF64eTeBkv4lbnm0FXVcg79ka3k+alsAGOjxA173MkcUXseiml1l1jn1iBzqb1x
	xV3ffqyroDWomzkRKh+vW1cHIRUQSQVy7+D0js6MoriRizfHKc5xFH3tG8YGQgSyqhl34NRwvNrOR
	4hHy2cWmo5f1GIJCXNrBR8Qs03aCXICVXAoarlloq0gmt6r6aM9iULjJgHK0J4ROjlT3qFxs5Ws8a
	D8eYe6BAIbY32reC3qNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsQSr-0003Cp-5C; Tue, 30 Jul 2019 11:38:45 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsQSc-0002zS-DV
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 11:38:31 +0000
Received: by mail-wr1-x442.google.com with SMTP id z1so65364438wru.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 04:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fNgx7LSZsCgbXKdsyr24bMY9+rQUrrZFZQRC4AZtF9c=;
 b=UzuA4+3dWD5gJ/bdWkmp+oOn2TquUqRLyhTvpv71pz7iZ2sw04Dfi/dVMU4rPFxtYF
 zcafGzR25HcoGTuB2y6cMFwz1ybVu1AguN6miO5wUzRZ7j7sRtem7g6Q6+auwoAhpzVz
 qCzhMOWs34dfxcAg2dx64MnMRAdLen7WE1g38sa22lJRwwiHHlk7KZ35yq1lrK5aWI66
 l1c7ytZfhr5kiQrJ8s/w/amYJf5nkGFW5IYYdh5xMogGWyEQQ3KamGRmD/GrgzgrvAJ2
 52WnysO1TMySTSb5Z3nGjpIdG+YdE/b+LxWVdczZ9H9YUb4eM9+Gk9uN7YCn/zx3Uq+y
 M0XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fNgx7LSZsCgbXKdsyr24bMY9+rQUrrZFZQRC4AZtF9c=;
 b=po6pIv6C76MtlJPIYiVjGUlr/vZ6rPRJPz/W4YIeT8yiPuOBmKSimltExSKG7WnxVJ
 1FEeGZyPBNXLIwrr6E85ORqoua1DnIyDtUrAI92nejdP5cPPCVaHjnLj9aYsrRU3frk+
 mS4he7KKHvnbTmdlUNpJY/qb9kt0ZQF6M0ButqhrkgLWT5Yfj+H9VSoGXM4PG6CLHtl2
 TG34XIMqwWer7Iikx6A7X97JGtULRiP1YXyOnUYBBjTaTfnoTSDvkxn09u5ZexuWCXZE
 LAvwINPa+2sPYuFUejOLtG8Eu3xKvSUS2kzrXbpvgd5917+ZDc+fGqQjoN1ERuKvUL0W
 +QtA==
X-Gm-Message-State: APjAAAVTCMmILC8EJqyAL2p4bgDLBX8EoJuSZs1uh1j+loCIJfJeUtxJ
 tEcuG4rXG1P1IcQfcgbVnzM=
X-Google-Smtp-Source: APXvYqyrOWXJtJJE/Z8rh0NjaFzqXq9A4xuhHNIQKEOvXvJTncEPAOI8h6PfJJZs4V3dUopUN741Pg==
X-Received: by 2002:adf:f646:: with SMTP id x6mr134917936wrp.18.1564486707429; 
 Tue, 30 Jul 2019 04:38:27 -0700 (PDT)
Received: from debian-brgl.home ([2a01:cb1d:af:5b00:e921:c4e4:a1d5:45d1])
 by smtp.gmail.com with ESMTPSA id r11sm99600810wre.14.2019.07.30.04.38.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 30 Jul 2019 04:38:26 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 "David S . Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Subject: [PATCH] net: stmmac: Use netif_tx_napi_add() for TX polling function
Date: Tue, 30 Jul 2019 13:38:14 +0200
Message-Id: <20190730113814.13825-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_043830_509096_89FFD614 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Frode Isaksen <fisaksen@baylibre.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Frode Isaksen <fisaksen@baylibre.com>

This variant of netif_napi_add() should be used from drivers
using NAPI to exclusively poll a TX queue.

Signed-off-by: Frode Isaksen <fisaksen@baylibre.com>
Tested-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index 98b1a5c6d537..390dad5b9819 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -4313,8 +4313,9 @@ int stmmac_dvr_probe(struct device *device,
 				       NAPI_POLL_WEIGHT);
 		}
 		if (queue < priv->plat->tx_queues_to_use) {
-			netif_napi_add(ndev, &ch->tx_napi, stmmac_napi_poll_tx,
-				       NAPI_POLL_WEIGHT);
+			netif_tx_napi_add(ndev, &ch->tx_napi,
+					  stmmac_napi_poll_tx,
+					  NAPI_POLL_WEIGHT);
 		}
 	}
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
