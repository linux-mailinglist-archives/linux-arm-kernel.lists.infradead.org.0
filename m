Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E66B199E37
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 20:39:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OyljqWOpdex6nCb6GltSbVka8gWY61Ue/lVn5aTIIl4=; b=VEq0FLZPM/Msq1
	8JI8rmSSeLTKdANcbF0nHxTftA1kZivdmY4+ygQADQurml8CaLopRvCKqX5JYGj+JNLBtwbXSvSKr
	DnrrDzzQu02UjQknWH0FmpGfNX++EYYKw5z1ouHm+rQ8PHRJGjZhAw/8Pulvbj5p5GEiZsz3YoUCn
	f2GUa+sqyYPEwhocOYPuTrYIXE9R6ZUgS5qgbq099xytel7HPEhNNR6F3lMNPs1U7Ll3XNtYxnkYY
	7XF1yfr6FChA+UO0fDXyaBQbLtrCwcYPi5yiRzegrEAr2xOFoYRov+Qk518mfrsrLgMFQ0SSKu8MW
	yUM0b4QydEbWmE1yqbDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJLnU-000846-T8; Tue, 31 Mar 2020 18:39:36 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJLms-0007dF-5Q
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 18:38:59 +0000
Received: by mail-lf1-x143.google.com with SMTP id u15so9106050lfi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 11:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KW3Lbde0NrLlMFOPBVL9VFr/xqlRRv5C9s8T2uV/EC8=;
 b=YAzpmToCHjPKwhVBcWenpASCnFKvzdesYgGqqYMRCP6llJmlm7Y0lj5BXG7cxcVRIl
 1fQhsBHrIpdVSutqQJVbpCEti0sA06lsT2dwQTcMRT/nIwMMC4O94hZhauz+WI9GJO6p
 12WAtAAApshg2SASKYHsA3S/db71nblcaq3R52IYHCxiGj7rIDzrt1M+tKgLtq7iTSFU
 aODeaHftNj89LL0xeI0W+Hei2+iJIAT2joCgO2P38SQDfWP6+Ktk5uEgbg+CJVvx4E49
 ZrGqhnUVONAeEWgjWrVaZ3BhXiqrh+R/IFaUyAlqH2Zjkgh2qY9Z0AkIAL6AblS6MrhU
 Y3sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KW3Lbde0NrLlMFOPBVL9VFr/xqlRRv5C9s8T2uV/EC8=;
 b=XmQJe2FypQH0PsbWspXLi55YqZp9N0rvsC/sCmOsxu4OfT4abpWtALGuV61izRNH//
 Tgr0O4dI1GdmWIhEd4nSeNJj8uszLr4UqZo4rNzpX5IRUCUwHyxtSn3Dus5ZpUY+62kg
 pj45enGQPTXtV7NNbVQGM3cO+hmWEbv0JqIlez6hknVUDfAWxcU/1c5tni4rWAadBxBD
 iUnuO19T06VFmW83ng3frqPcINITGi05Wf2rWh9jsKNvPOW6sSbPX2jjXV2y0isbgziS
 bRG3sxzmkbi+WVuXk+d7Lrg5e4JzdihwiN63S3TTi8Y2N6nRcImOnBO7IRvQMRf+P+e/
 z/cQ==
X-Gm-Message-State: AGi0PuY5kT/CvNqFVw0wyF1RW/g0vxDeuCAv/sgaKG5Lmq14N40lLC2K
 Gf3dWCQEWbpBtf6Rj9/w1BYuhg==
X-Google-Smtp-Source: APiQypJ8E6I5iZxeoPH0TWIB8ALP7NCLvCUGTgJRpQtCJG/xvf6AdHVA3ceds7R25cl2FPBp6aBIHA==
X-Received: by 2002:a05:6512:3091:: with SMTP id
 z17mr12711035lfd.42.1585679932325; 
 Tue, 31 Mar 2020 11:38:52 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id b28sm10331849ljp.90.2020.03.31.11.38.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 11:38:51 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] amba: Initialize dma_parms for amba devices
Date: Tue, 31 Mar 2020 20:38:44 +0200
Message-Id: <20200331183844.30488-3-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200331183844.30488-1-ulf.hansson@linaro.org>
References: <20200331183844.30488-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_113858_218280_64BF2019 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Haibo Chen <haibo.chen@nxp.com>, Vinod Koul <vkoul@kernel.org>,
 linux-arm-kernel@lists.infradead.org, dmaengine@vger.kernel.org,
 stable@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, Ludovic Barre <ludovic.barre@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It's currently the amba driver's responsibility to initialize the pointer,
dma_parms, for its corresponding struct device. The benefit with this
approach allows us to avoid the initialization and to not waste memory for
the struct device_dma_parameters, as this can be decided on a case by case
basis.

However, it has turned out that this approach is not very practical. Not
only does it lead to open coding, but also to real errors. In principle
callers of dma_set_max_seg_size() doesn't check the error code, but just
assumes it succeeds.

For these reasons, let's do the initialization from the common amba bus at
the device registration point. This also follows the way the PCI devices
are being managed, see pci_device_add().

Suggested-by: Christoph Hellwig <hch@lst.de>
Cc: Russell King <linux@armlinux.org.uk>
Cc: <stable@vger.kernel.org>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes in v2:
	- Move initialization to amba_device_initialize() to be more consistent
	with how we manage platform devices.

---
 drivers/amba/bus.c       | 1 +
 include/linux/amba/bus.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
index fe1523664816..8558b629880b 100644
--- a/drivers/amba/bus.c
+++ b/drivers/amba/bus.c
@@ -645,6 +645,7 @@ static void amba_device_initialize(struct amba_device *dev, const char *name)
 	dev->dev.release = amba_device_release;
 	dev->dev.bus = &amba_bustype;
 	dev->dev.dma_mask = &dev->dev.coherent_dma_mask;
+	dev->dev.dma_parms = &dev->dma_parms;
 	dev->res.name = dev_name(&dev->dev);
 }
 
diff --git a/include/linux/amba/bus.h b/include/linux/amba/bus.h
index 26f0ecf401ea..0bbfd647f5c6 100644
--- a/include/linux/amba/bus.h
+++ b/include/linux/amba/bus.h
@@ -65,6 +65,7 @@ struct amba_device {
 	struct device		dev;
 	struct resource		res;
 	struct clk		*pclk;
+	struct device_dma_parameters dma_parms;
 	unsigned int		periphid;
 	unsigned int		cid;
 	struct amba_cs_uci_id	uci;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
