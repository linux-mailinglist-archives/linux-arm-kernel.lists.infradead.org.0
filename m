Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC7B76380
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 12:28:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aQA554cnE07zewwS60IguwRH4F/F0ifVUtwmFZgwv7c=; b=X2Dh1I3TujEjI/
	vfcTTWdCU1rpeTbEmtlrehNPJN+QmlG/zqLXHsOCLK8/Q1TQKfDQaYGP9iK9ntP6116NZDFL9iCeu
	Ks4F2T+aJRzWVCEwgao8SY4UFXq4r2kHG4GF36kNLAOZ0+Y1nAHEEi4RrtyjXXXRRWMpI87bcMOHu
	qI1cyne6geBvf5QOYxD22ithmCt63uIMC3b9yldlsZMWrwYRV2alU0e3i82Ba2FIA873q5JCn7sX6
	vuLIyaPElnpvR9kr6Mf2SE6QrpmlqtlLFu2MNOurXlgqQkTZDcvYtcq4rvklnDzu5iZtzvsUM3C5s
	ooUZiTTXGvGyyufe4d8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqxSK-0004Zf-IW; Fri, 26 Jul 2019 10:28:08 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqxRx-0004Q9-NQ
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 10:27:47 +0000
Received: by mail-ed1-x544.google.com with SMTP id k8so52807758edr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 03:27:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rewoVtfouB0g/nXQoB/RM2R5vzQI4yMuwrUsg0cojFo=;
 b=g8OSiArKsqZUyCCRvOtz447BXqWLIh9TENdSd8soBDBDjAQP6kBC/Y76w9OQNAN7uz
 zhThUk4Hz5YWZi1BGjCD9kUPg94uaxS/LiUQtCTuD+W3GO8nyy/AkwTIypOZGrkn/ZKP
 CoYfUqQARRdDtUaux9UkD8IULax0ircXxFaMu7puylYmpUFF/rIqcRYIgNfZ4Qe3McR7
 xvl86H14llCjOu/smTrglGY+lgpx99qiJVKUhau8QuKtBiC+Ey+K/DpjE+8f8vBbMjV3
 7twoAb/xQJzOTT90xqWT9/bFfjdLDAIaCEydE3OXhjg1EDtKCLDTf3B6cDa8yB4q8dKB
 7fHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rewoVtfouB0g/nXQoB/RM2R5vzQI4yMuwrUsg0cojFo=;
 b=DXXWRu3XPrTVdhgt6WLDQUP7vhpSzLxRfXESlYjGtr6YvxoMk/WV96So/ml0vVZYOO
 wT/v60ylGilVRcIQUeBbpI1muBCNadxZaUFh7tO8mqF4MtJwiB5TdUesL93BL5Tssx/C
 ji6QszinT25IRmFdfWFPkoSL78x3jaCb+w+8gj55Wj0NW+5N7/p9TrxxCyhDB4hYY0QF
 hKHTJ5f3TbPhOOwqIiE+5IObuK/MCcC0IB17iv+sJbMJYeMeeJ/r7AGDq8CRy82T0Cvr
 LKkQnrqHqVnpipQBd9RHk/YRzfP8K5ZufDyt3nwp1x1rbZNLi0Sdhal9jMuTaj4awnLU
 JUsg==
X-Gm-Message-State: APjAAAX5quDLZWv9A89gpidYexYpadyzPBbP/YF3Mtjkqr3V3GBSZJ68
 4bTs0GTxhqOh7/CpYAXpwvU=
X-Google-Smtp-Source: APXvYqzHJhuMDDE9QF7E9JMSoVtDHfi8t0kysgpga1ZEPI+Hjwzo13gVjk020JOqtEC8/t8S217O2Q==
X-Received: by 2002:a17:906:bcd6:: with SMTP id
 lw22mr72674992ejb.68.1564136863962; 
 Fri, 26 Jul 2019 03:27:43 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id h10sm13307080edn.86.2019.07.26.03.27.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 03:27:43 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: "David S . Miller" <davem@davemloft.net>
Subject: [PATCH net-next 2/2] net: stmmac: Do not request stmmaceth clock
Date: Fri, 26 Jul 2019 12:27:41 +0200
Message-Id: <20190726102741.27872-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190726102741.27872-1-thierry.reding@gmail.com>
References: <20190726102741.27872-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_032745_762123_AC42CAB7 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, netdev@vger.kernel.org,
 Jon Hunter <jonathanh@nvidia.com>, Jose Abreu <joabreu@synopsys.com>,
 linux-tegra@vger.kernel.org, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

The stmmaceth clock is specified by the slave_bus and apb_pclk clocks in
the device tree bindings for snps,dwc-qos-ethernet-4.10 compatible nodes
of this IP.

The subdrivers for these bindings will be requesting the stmmac clock
correctly at a later point, so there is no need to request it here and
cause an error message to be printed to the kernel log.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 .../net/ethernet/stmicro/stmmac/stmmac_platform.c  | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
index 333b09564b88..7ad2bb90ceb1 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
@@ -521,13 +521,15 @@ stmmac_probe_config_dt(struct platform_device *pdev, const char **mac)
 	}
 
 	/* clock setup */
-	plat->stmmac_clk = devm_clk_get(&pdev->dev,
-					STMMAC_RESOURCE_NAME);
-	if (IS_ERR(plat->stmmac_clk)) {
-		dev_warn(&pdev->dev, "Cannot get CSR clock\n");
-		plat->stmmac_clk = NULL;
+	if (!of_device_is_compatible(np, "snps,dwc-qos-ethernet-4.10")) {
+		plat->stmmac_clk = devm_clk_get(&pdev->dev,
+						STMMAC_RESOURCE_NAME);
+		if (IS_ERR(plat->stmmac_clk)) {
+			dev_warn(&pdev->dev, "Cannot get CSR clock\n");
+			plat->stmmac_clk = NULL;
+		}
+		clk_prepare_enable(plat->stmmac_clk);
 	}
-	clk_prepare_enable(plat->stmmac_clk);
 
 	plat->pclk = devm_clk_get(&pdev->dev, "pclk");
 	if (IS_ERR(plat->pclk)) {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
