Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC03B34180
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 10:15:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Z62X3q2GuaEv3Z5LX7uhOyDTPR543wTlGORsH/bnCYA=; b=fo2Vsp8ailHTGXsdX9IwbSoBHR
	50cE39TKfHD8E3F1d1qNywYMvR1FzH9w3XfmoF4e0e0i5ozb2KMPHgDGG1yYYClnmyaqvv5KpSC4U
	SK2xLAP3cHhglNHVG34M5kAJzvnEA53Uk1Ibs7Al1DK6I9b4ol7fyHr4xXkZ4hvvpVpCJhZw3GWtv
	TlhtF0tXgTQ/4vmgy5YyAXVOlogoExND/zEGfiev5GEiFqJt2QMSy5j42q2WQOH3yOGpYzbfSO0J2
	c2hZoVkL/HkVlkv+PXHHdi3Ofl93amj/2Pm37JK05kQN/5MDsJIZT3JflVFg6AXnIQLR2TvBS2RAW
	SMD8jerA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY4bj-0002Q9-8M; Tue, 04 Jun 2019 08:15:47 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4b6-0000wG-FL
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 08:15:20 +0000
Received: by mail-pg1-x541.google.com with SMTP id 20so9908203pgr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 01:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=628ZQKD9jdSHtWmvRCzFbwR4o1BOUbgB+F8276Myxy8=;
 b=gzhVSfX/Bn6qb7Bn5lG6vK47YR/iVsd/HdMBg0jqihRl1oIgJUL0n2Rcr/GT6ZSNuc
 1aRUNkfNasPsc40XFopW34wVB0wEY9EGrsslh+r78Eawvrq0LxdAUUimuOx4t+msvwLO
 uBqkjXbfx5Mxq2ZNzGt1nrr5C31jEDWO0kJeY6FO2Wj6WlshAoCOuxW1W0CrPlnaO526
 4So3Zm816GJgnVCMXFd2e19o3Ri7YmIrdFWkj0M4eZv3qQDUzvU3oBm66fGUFJM2acQn
 My9WcvNPZLHe5Q0ufI3CEyUnhMO2419UK0hNaGZL5gajope7z52/G4Mpd9Wq0AWz0APz
 haGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=628ZQKD9jdSHtWmvRCzFbwR4o1BOUbgB+F8276Myxy8=;
 b=dHQlRxV/9V7ElOtNYUBH835vu+a8N3smvw4rtXNrstLCnAOM770U6sPmNsiDfiPR6e
 t3EF7WDzs2N6KN0ZJlWr88oW622ufcUlkTFng5VwkS7DcNTSRn2bXPsFeli3ZCb1P9fi
 rDijaKapQOirQADtU+AEjPO+J3diynI0YAy2mudPl5+BbPXpTwYVVXb6ANDw7EY84SfE
 k9+9WDpSaNrlNAmZ7D0Pbinz1MQVLUl8jOSTHNqIDNinoloMW+qB+zqIVCFzOhXXi2C5
 htZtGwmuBINosI1fd2XXeVPnpJN8HUoItEueTrddI/iZrxyCgGmBsUglEwEGC+EvN6WL
 18HA==
X-Gm-Message-State: APjAAAWJbQRX7V/euD/tK/dxx39EYFgc0Qts4GoPIIIvfmy9uOWdN16t
 5aHiQrgvwnE/xuZf6fP3dWKVdQ==
X-Google-Smtp-Source: APXvYqwpCoCmq59wFKEjIbjrTVby8p417ikbel/eUac3GvHTET9/FMzHRuPQWLns6Pqw0rSxaIT4AQ==
X-Received: by 2002:a17:90b:d83:: with SMTP id
 bg3mr21126762pjb.63.1559636107639; 
 Tue, 04 Jun 2019 01:15:07 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id j4sm14818804pgc.56.2019.06.04.01.15.02
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 04 Jun 2019 01:15:06 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: adrian.hunter@intel.com, ulf.hansson@linaro.org, zhang.lyra@gmail.com,
 orsonzhai@gmail.com, robh+dt@kernel.org, mark.rutland@arm.com,
 arnd@arndb.de, olof@lixom.net
Subject: [PATCH v2 4/9] mmc: sdhci-sprd: Implement the get_max_timeout_count()
 interface
Date: Tue,  4 Jun 2019 16:14:24 +0800
Message-Id: <37b15ac756f9fca7c1f9382deb57648890bb141c.1559635435.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1559635435.git.baolin.wang@linaro.org>
References: <cover.1559635435.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1559635435.git.baolin.wang@linaro.org>
References: <cover.1559635435.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_011508_871435_C58C42AB 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, baolin.wang@linaro.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Implement the get_max_timeout_count() interface to set the Spredtrum SD
host controller actual maximum timeout count.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
Acked-by: Adrian Hunter <adrian.hunter@intel.com>
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
