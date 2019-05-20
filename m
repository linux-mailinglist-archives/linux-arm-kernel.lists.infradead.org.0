Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD142310F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 12:13:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7RJTYpw0itxcXdRN41NCPCU+86qjPshgxXe3H2Cn+jk=; b=uWPY74Cj+6YNIphwMxkl2fqY45
	uV1FSvw1nyqQ+mlWU7Ph40BNNfxbWgcetjTGF5T/5aV1J9FTGdBDFxkn0eBifgPiJsGma9vXT0lBv
	P8sLdbnXwvA/HR6z0pG5xZfUaSJbQeXHCMkgNHO0fbvAbK3aK1GJLY0bUsbtds7JntIQ+3cIv/4HU
	+kqANm7m6AFvsihl1VDjaIabavJW1+NeR5+LDDHsazalqJaugXmaNAOIlqNR9nT5r/VAk4v6xZb8/
	Lq9Z/+yc+0kZ9JTeZ3A7R0i5R/X2GDxPJO9WpKO9YlCIwjc1lKi2a8+aBLefXBbqVjCjE7Dpwngxo
	RH5K03kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSfII-0004n6-IE; Mon, 20 May 2019 10:13:22 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSfHe-00040S-SZ
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 10:12:50 +0000
Received: by mail-pl1-x642.google.com with SMTP id g9so6499043plm.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 03:12:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=eMFBxEvVv73muoLZwkqzMu7EIBYQwUE2J5IELje2f28=;
 b=yhDed4i3RBqLUdnBe0hSuSFflewfmbhjRUNIe2b4fdBam6M4LQXIcG30ecgTYWvlC+
 9dU9LfmgcnAP8zsReUaDsEr5Xkmyy+W+pifErnX2xqlkaoUVT84a6aehb3b8pawL92iR
 tQ54TONm22Ktua4YOvnugQXU4KlKB/1aAcPyvWXSuSW64HljYJCqgd1DWuOatqdmXFRj
 6fwiys1x5GW60TDPFElDeyOzqvrhUcpcfeidDVdlaDIaMX7F8nJhoUWFquwJiMN01rG0
 u66gGoyroNQY7cRQKDV72UuHYZm6w3oFXuDHMj6WbC0ofrey3hgNjnN5j00zbksct8+W
 nhvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=eMFBxEvVv73muoLZwkqzMu7EIBYQwUE2J5IELje2f28=;
 b=YWd3n86OnwvrCHsm4/B3X+td7jLpxQXewpWEHTOEQMxsftE2cLWjWZm3+t0Y57c1FG
 W3dZSSmtwmILFUqJvKXZDlMtkb11t0MzN5jyWO47nsUEH5Mz4H/HpuYC6+dKJLZGMPD4
 gqfWYdqSxl/nqsB1+58canOcQJL5N0Q1AVR6AYjewZwKZYRsKkNJwo/TYXmQ4HEu2SFV
 EfgcsnbVhJ6WhWrMEHtLjEuqZzs+N+W8CL17au4ayixwh7z4c+zvBlNrfRNXS8nWxcoJ
 boGh9oW0Zov3KNbgN/TKtccznkd2LIdFmBMuonuNDG0AV8sP1jcfiOSaQMinbPV/M7ng
 WDog==
X-Gm-Message-State: APjAAAWqiH9Z0Wf0py6Z0Xp0nicA6Ow0+6jhRwV0bzGg47HAjqkZdhTq
 up0X/LIgaw2f9JoUdgEWZoB7Dp7yJ1zXng==
X-Google-Smtp-Source: APXvYqyagoopJB9p1BnqQ6YN0ozqRnIvUdoq5+OupDz9YCTaL4q6kZYz7+VmAylRGHVAI+KKkgG4KA==
X-Received: by 2002:a17:902:6ac6:: with SMTP id
 i6mr75225533plt.336.1558347160980; 
 Mon, 20 May 2019 03:12:40 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.102])
 by smtp.gmail.com with ESMTPSA id b3sm30098127pfr.146.2019.05.20.03.12.36
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 03:12:40 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: adrian.hunter@intel.com, ulf.hansson@linaro.org, zhang.lyra@gmail.com,
 orsonzhai@gmail.com, robh+dt@kernel.org, mark.rutland@arm.com,
 arnd@arndb.de, olof@lixom.net
Subject: [PATCH 4/9] mmc: sdhci-sprd: Implement the get_max_timeout_count()
 interface
Date: Mon, 20 May 2019 18:11:57 +0800
Message-Id: <ae6e23d4de6bb25cd697412f1402036d5ecc9843.1558346019.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1558346019.git.baolin.wang@linaro.org>
References: <cover.1558346019.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1558346019.git.baolin.wang@linaro.org>
References: <cover.1558346019.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_031243_597836_2DE77AA4 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
Cc: devicetree@vger.kernel.org, vincent.guittot@linaro.org,
 baolin.wang@linaro.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Implement the get_max_timeout_count() interface to set the Spredtrum SD
host controller actual maximum timeout count.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
 drivers/mmc/host/sdhci-sprd.c |    7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/mmc/host/sdhci-sprd.c b/drivers/mmc/host/sdhci-sprd.c
index 31ba7d6..d91281d 100644
--- a/drivers/mmc/host/sdhci-sprd.c
+++ b/drivers/mmc/host/sdhci-sprd.c
@@ -285,6 +285,12 @@ static void sdhci_sprd_hw_reset(struct sdhci_host *host)
 	usleep_range(300, 500);
 }
 
+static unsigned int sdhci_sprd_get_max_timeout_count(struct sdhci_host *host)
+{
+	/* The Spredtrum controller actual maximum timeout count is 1 << 31 */
+	return 1 << 31;
+}
+
 static struct sdhci_ops sdhci_sprd_ops = {
 	.read_l = sdhci_sprd_readl,
 	.write_l = sdhci_sprd_writel,
@@ -296,6 +302,7 @@ static void sdhci_sprd_hw_reset(struct sdhci_host *host)
 	.reset = sdhci_reset,
 	.set_uhs_signaling = sdhci_sprd_set_uhs_signaling,
 	.hw_reset = sdhci_sprd_hw_reset,
+	.get_max_timeout_count = sdhci_sprd_get_max_timeout_count,
 };
 
 static void sdhci_sprd_request(struct mmc_host *mmc, struct mmc_request *mrq)
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
