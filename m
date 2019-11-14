Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27CF4FC6AE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 13:55:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Km2fc0R8ddkZLtChEQPppy2RNSIv4ar9ffatCB7Ub2M=; b=DofwPVInKqv5o9
	kfcjDgydlJqROD70bjM5ThwflhRXW70uPrFzyNv44LGo+K7rgJM7+ANElUas290S3MCT0gmY32dY4
	U3ZRUl8N+Q+9IZWv4bQfMw+Afx6MBTdh2U3AoEu7cowpA+r8QIHxVYwK5UKpQGqJTryOJQ4eAq9Z1
	w0clTok/fhrAz158AVBjvalNNfV+oj7HDGsjtW/Ni+i1ixKe/J0b8oPMdPJnjMggNoQg01c/YweRE
	mIoOnkZ7HODXZJlG8v35k/T91b6kYhoIggwLseaTzpHTIyHKotwwHVw/qfIznrBXDMFnLoeIk1was
	8fhPrDrHau58TqAVyk8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVEf0-0004Dc-5W; Thu, 14 Nov 2019 12:55:42 +0000
Received: from mta-02.yadro.com ([89.207.88.252] helo=mta-01.yadro.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVEeJ-0002X1-9L
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 12:55:01 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-01.yadro.com (Postfix) with ESMTP id CA19F42E7D;
 Thu, 14 Nov 2019 12:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=yadro.com; h=
 content-type:content-type:content-transfer-encoding:mime-version
 :references:in-reply-to:x-mailer:message-id:date:date:subject
 :subject:from:from:received:received:received; s=mta-01; t=
 1573736096; x=1575550497; bh=dU4Qiqla3HKSYHl+Wvu4W3/EUd/15lXXOMG
 hZ+0TFuQ=; b=TYwELifC+V6L9QXxu43Q+9Yb+OUpSBpe54G2+CyEmgWgETwHWzf
 UXlGzzAs6uUbCl1/40s4dDmR9VX+FHGxDmXYAyB5NNIY7SPhQo+wKgKDg2BPfkmh
 lco3HU0GxT55/NUNuIZ3pCfXX49Dtz1HS9colU5+EsxcDCT1WZ2As1rQ=
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
 by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QNR538L5M_zS; Thu, 14 Nov 2019 15:54:56 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (t-exch-02.corp.yadro.com
 [172.17.10.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mta-01.yadro.com (Postfix) with ESMTPS id CE144411D9;
 Thu, 14 Nov 2019 15:54:56 +0300 (MSK)
Received: from localhost.dev.yadro.com (172.17.15.69) by
 T-EXCH-02.corp.yadro.com (172.17.10.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.669.32; Thu, 14 Nov 2019 15:54:54 +0300
From: Ivan Mikhaylov <i.mikhaylov@yadro.com>
To: 
Subject: [PATCH v2 2/2] mmc: sdhci-of-aspeed: add inversion signal presence
Date: Thu, 14 Nov 2019 15:54:35 +0300
Message-ID: <20191114125435.27756-3-i.mikhaylov@yadro.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191114125435.27756-1-i.mikhaylov@yadro.com>
References: <20191114125435.27756-1-i.mikhaylov@yadro.com>
MIME-Version: 1.0
X-Originating-IP: [172.17.15.69]
X-ClientProxiedBy: T-EXCH-01.corp.yadro.com (172.17.10.101) To
 T-EXCH-02.corp.yadro.com (172.17.10.102)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_045459_507717_DDCDEDCF 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, openbmc@lists.ozlabs.org,
 linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, Ivan Mikhaylov <i.mikhaylov@yadro.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Change the default .get_cd callback. Add inverted signal card detection
check.

Signed-off-by: Ivan Mikhaylov <i.mikhaylov@yadro.com>

diff --git a/drivers/mmc/host/sdhci-of-aspeed.c b/drivers/mmc/host/sdhci-of-aspeed.c
index 8962f6664381..186559ee8fcc 100644
--- a/drivers/mmc/host/sdhci-of-aspeed.c
+++ b/drivers/mmc/host/sdhci-of-aspeed.c
@@ -143,6 +143,19 @@ static inline int aspeed_sdhci_calculate_slot(struct aspeed_sdhci *dev,
 	return (delta / 0x100) - 1;
 }
 
+static int aspeed_get_cd(struct mmc_host *mmc)
+{
+	struct sdhci_host *host = mmc_priv(mmc);
+
+	int present = !!(sdhci_readl(host, SDHCI_PRESENT_STATE)
+			 & SDHCI_CARD_PRESENT);
+
+	if (mmc->caps2 & MMC_CAP2_CD_ACTIVE_HIGH)
+		present = !present;
+
+	return present;
+}
+
 static int aspeed_sdhci_probe(struct platform_device *pdev)
 {
 	struct sdhci_pltfm_host *pltfm_host;
@@ -183,6 +196,10 @@ static int aspeed_sdhci_probe(struct platform_device *pdev)
 		goto err_pltfm_free;
 	}
 
+	host->mmc_host_ops.get_cd = aspeed_get_cd;
+	if (of_property_read_bool(pdev->dev.of_node, "cd-inverted"))
+		dev_info(&pdev->dev, "aspeed: sdhci: presence signal inversion enabled\n");
+
 	ret = mmc_of_parse(host->mmc);
 	if (ret)
 		goto err_sdhci_add;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
