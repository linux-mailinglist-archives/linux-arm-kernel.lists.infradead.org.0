Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2CD04BFB1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:34:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=T0iRhbSwxffPqHiTWCgZdQeA34riDlP1IWk43PVncfY=; b=D5s4jaymxcfkLPImstoefqFLoF
	+TWuW2pbeLNL1aSw3sy3oKbx9zSYGP1WeXIehFjrdLUnX4uK46fxFef7d0xS7hx2q+KJVT/oq82Bo
	Gywdo38tDDPAlB3/idltcpio5EaI0bQtrCOe03xTdBOQYMZ/DR+alNElN9oihW48/A73ZqUgOifWu
	ZrslwW16bjKzNbC50Zzmnq5OtV+zIIBn5T+dK0skDmaUgWRuweue5Yu3LxYfiLeP19vvcOKblJvBs
	FiIdDORbB6AZEhgmz9qmctZ2zOtY2KltQjSx9EOySDEmtjIGDA/QfLjRFoT0bfbR69DIjogZZbsMd
	9eOkMBGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeT7-0002Ut-Rq; Wed, 19 Jun 2019 17:33:57 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePK-00079Q-Ej
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:04 +0000
Received: by mail-pl1-x643.google.com with SMTP id bi6so78541plb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Wz7fvVs2eik72LBKTLRReCkmyi964JSVLfODR2C9W48=;
 b=MKsGjOMowuaChmnzliPs4i1ecoFGnYFNTf2NI96TPsKQKJBP9pv7HN6iQ021021jea
 GZHneNSCNxXk5SJkiI8MJJp6FMGQZagbxgAyDTkM2C6ohyIqnlk3f+5GGoSPK752mhC9
 FMfVTP303t4wvWIwMEmeT8NBHI6+wgxr6UDCGpaKN6l5h/UN/XvUE1nS2AcQVLIX2T2b
 MWS1tYnw9HDM8NeM1K0Z/vsCDz7Y+aLeuZpEPv9bMwT/rlhz6HhgsAaSgCpF9niUFXse
 hBXPwoiAJMPLGM2mzdzHWiwYpgZrl6oRDwRXbVxMoz6OOJh+gw5qyqM38mRpb04bcDt9
 GlrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Wz7fvVs2eik72LBKTLRReCkmyi964JSVLfODR2C9W48=;
 b=T7PiDhkCkPt6VEfvHMkXC+eyDuJILv3ocld5xaeUyuKV+YLNV1pV3ebNwtUcOmpxH3
 X2qnHWla0acaeL7DuhCsQRWAoeKw6cwPoph9M6KeUoUpDGFlP3prSCx8rTeEzm038b0q
 cxXwy4Sbx9gNteFdb6cM8j0PrZ9KaE+F6L1sDsrAAn2cOnk3tqPVMErd+Eo0mGj43vy6
 +4UBxRS24X0TaTT47iwiAZgTM1FK+1txw5XmmH9AWYUfs2IcVde7TQyAl6He/Dd1MBfM
 ljB631gID3eGsJl4+/TGyQas41FWQqaU1soLwvC8EmdpchsiEepFFOyOkkHD6YWTvchA
 EhNQ==
X-Gm-Message-State: APjAAAXoRPa1JI/dHNQJX/+UTDFKtN2qMs3US6mNa4s523jKpireV2fU
 cUQxJmbBCR+Ct5Rscrg3LdXo5jhX+atxqA==
X-Google-Smtp-Source: APXvYqxDOwDPDA3uyuH+oOerLNz/t3C0T7PgregQAEAYKbamJ8hvmeyBcV2P71FDKYRorsGHyFTZeg==
X-Received: by 2002:a17:902:e105:: with SMTP id
 cc5mr101508087plb.320.1560965401020; 
 Wed, 19 Jun 2019 10:30:01 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.30.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:30:00 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 10/45] coresight: tpiu: Clean up device specific data
Date: Wed, 19 Jun 2019 11:29:14 -0600
Message-Id: <20190619172949.4522-11-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103002_696191_3776B0BA 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

Switch to using the coresight device instead of the parent
amba device.

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-tpiu.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tpiu.c b/drivers/hwtracing/coresight/coresight-tpiu.c
index 63d9af31f57f..4dd3e7f63050 100644
--- a/drivers/hwtracing/coresight/coresight-tpiu.c
+++ b/drivers/hwtracing/coresight/coresight-tpiu.c
@@ -49,13 +49,11 @@
 
 /**
  * @base:	memory mapped base address for this component.
- * @dev:	the device entity associated to this component.
  * @atclk:	optional clock for the core parts of the TPIU.
  * @csdev:	component vitals needed by the framework.
  */
 struct tpiu_drvdata {
 	void __iomem		*base;
-	struct device		*dev;
 	struct clk		*atclk;
 	struct coresight_device	*csdev;
 };
@@ -75,7 +73,7 @@ static int tpiu_enable(struct coresight_device *csdev, u32 mode, void *__unused)
 
 	tpiu_enable_hw(drvdata);
 	atomic_inc(csdev->refcnt);
-	dev_dbg(drvdata->dev, "TPIU enabled\n");
+	dev_dbg(&csdev->dev, "TPIU enabled\n");
 	return 0;
 }
 
@@ -104,7 +102,7 @@ static int tpiu_disable(struct coresight_device *csdev)
 
 	tpiu_disable_hw(drvdata);
 
-	dev_dbg(drvdata->dev, "TPIU disabled\n");
+	dev_dbg(&csdev->dev, "TPIU disabled\n");
 	return 0;
 }
 
@@ -139,7 +137,6 @@ static int tpiu_probe(struct amba_device *adev, const struct amba_id *id)
 	if (!drvdata)
 		return -ENOMEM;
 
-	drvdata->dev = &adev->dev;
 	drvdata->atclk = devm_clk_get(&adev->dev, "atclk"); /* optional */
 	if (!IS_ERR(drvdata->atclk)) {
 		ret = clk_prepare_enable(drvdata->atclk);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
