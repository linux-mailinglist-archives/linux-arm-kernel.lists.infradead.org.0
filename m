Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE38915231
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 19:02:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Pwax0iJSaeuWsYaHnhNybyZkkxY/cuVPrXcy3Bwbitg=; b=b59DixMT+lRX65s57DtvTvtyRA
	E8/1vvztk7gTWjXcZ02FHfkQWGSGHVSMdupT5CsLlZwKf37iHNHjyMtIBDJHYw052oQRx0+aykxMc
	+h1jw7BZgGyUALCqimbCT+6/h5HIGpEo7pL5CCLC/rduuCY7dAZnIqo5deIR94bbwBQNveW+uzpvu
	xp2ebI2qWZqCR2xkXpYIl1sYhF7F+x7IiY6DVhTuAqx3RRDqJehLDTW9jFWXuoebNaLIXdfm0F4Do
	pejRbJ1+M8Z9D/SVOl1Qa67P6/KvIpB8XUMLdclih+6rGPflgUtVYmPz79sjJhs0N6U8R9vqoFKjT
	+Ct3c5OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNh05-0007O0-A8; Mon, 06 May 2019 17:02:01 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgzi-00074F-QF
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 17:01:42 +0000
Received: by mail-pf1-x441.google.com with SMTP id b3so7099618pfd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 10:01:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8NEZr+lKEciEtlqvodjs9s9WnuQgHUyLTCz6jchZs+U=;
 b=I8H0Zyd/6abn7dp3fZUDD5BAADvTaLKVYQyECZWLsA+qoSdkJoPxMGWvXMYSmE+/5G
 HzeDykXqLtteyK90RTj5aDi0qjBFqibsa+GjQowv7CvI4t4HoQ0B+whnCgg6mnRxPAmq
 rvEHs/YNkC5QnX8Er4iEBGvy+hpKN/5FlJYqk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8NEZr+lKEciEtlqvodjs9s9WnuQgHUyLTCz6jchZs+U=;
 b=jKuLIcUgx/MWbj/HhvwEuesld50J8Xe97qzFmmRIaeqcaHG/zYRsO0tBwSELKg1zIL
 Nk6h8GRZypEFtFrp28U37c2V8tYLouvDt5IxtGKkIc6kBsjkT/RYd9rx7NaX4VJGlo6R
 FfxilS1FiyR+Or9+nWhjVpF0TnF4s2LeSu4XU/XDk+pW4yzikZD3K1kx5CpjBNk6ebrO
 KWulhpm43Hkm6SdibZCxGpL058f/QzRtnK2pMSr2TNAI39Ku85VBKGy+jtj0p+zIqlIw
 4FJ5MVrvMs+AGioScykbEgD2vHZ4EUOnfDQlKBVbmkaoW0Mvfwmrc+e0gDHr14KnWNA9
 5rJw==
X-Gm-Message-State: APjAAAXHkBRn5ZZm3HBWBDLixCFJqJQaWzb2q3ESyEmcwjXlBdwGIZST
 f/UniNjaOWIGVD+00EMA5rFaSg==
X-Google-Smtp-Source: APXvYqyWFjkQJYyagZNhe7lr3N8EEii7ANc4xZeB7K2J92cARdpf2QgOrjQVLq3JRa2QaZrvfBcu2Q==
X-Received: by 2002:a63:165f:: with SMTP id 31mr33584426pgw.321.1557162098028; 
 Mon, 06 May 2019 10:01:38 -0700 (PDT)
Received: from lbrmn-lnxub113.broadcom.net ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id l23sm4555644pgh.68.2019.05.06.10.01.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 10:01:37 -0700 (PDT)
From: Scott Branden <scott.branden@broadcom.com>
To: Adrian Hunter <adrian.hunter@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH 2/2] mmc: sdhci-iproc: Set NO_HISPD bit to fix HS50 data hold
 time problem
Date: Mon,  6 May 2019 10:01:15 -0700
Message-Id: <20190506170115.10840-3-scott.branden@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190506170115.10840-1-scott.branden@broadcom.com>
References: <20190506170115.10840-1-scott.branden@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_100139_169946_09648911 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Scott Branden <scott.branden@broadcom.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Trac Hoang <trac.hoang@broadcom.com>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Trac Hoang <trac.hoang@broadcom.com>

The iproc host eMMC/SD controller hold time does not meet the
specification in the HS50 mode.  This problem can be mitigated
by disabling the HISPD bit; thus forcing the controller output
data to be driven on the falling clock edges rather than the
rising clock edges.

Fixes: f5f968f2371c ("mmc: sdhci-iproc: suppress spurious interrupt with Multiblock read")
Signed-off-by: Trac Hoang <trac.hoang@broadcom.com>
Signed-off-by: Scott Branden <scott.branden@broadcom.com>
---
 drivers/mmc/host/sdhci-iproc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/sdhci-iproc.c b/drivers/mmc/host/sdhci-iproc.c
index 9d4071c41c94..2feb4ef32035 100644
--- a/drivers/mmc/host/sdhci-iproc.c
+++ b/drivers/mmc/host/sdhci-iproc.c
@@ -220,7 +220,8 @@ static const struct sdhci_iproc_data iproc_cygnus_data = {
 
 static const struct sdhci_pltfm_data sdhci_iproc_pltfm_data = {
 	.quirks = SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK |
-		  SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12,
+		  SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12 |
+		  SDHCI_QUIRK_NO_HISPD_BIT,
 	.quirks2 = SDHCI_QUIRK2_ACMD23_BROKEN,
 	.ops = &sdhci_iproc_ops,
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
