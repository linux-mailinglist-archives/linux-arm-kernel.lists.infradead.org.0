Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 347FA1EA8C5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 19:57:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+hlXn1200TGBiF1cKoyqo1W95iIOVZHubR4fsiDyVXQ=; b=ZHgJgqCDy7Qm9a
	OmofB6YCISpyYTq+J1ScQNB0ELaZQlMwAzPZb3t71URl7Pmzlea66G/jSBnk9N6scvyebT6ysaaNe
	I2NtoBwQYf/qPGejxqEEY/qoiUBDYUveTu7DJhTKl2cYyuF+3g17JcC2aIk20E2XoZwm4a7Mgln70
	p07VhTs9DedA+J2dbvx4D22OqQp7/Ab1QE3TSg2WcfHmAxcIENRSSHSpwfOqyTCeor9sXaFhqscCs
	TX3u3sHq67Ib+/KlM+LilMaBVfuN0EsAU+iqOGShdO2Fm+wYd/SL70NMG9NRU4qF6VHnRbeEJ/3kW
	iJe+q5VHt7tDGR1CONIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfogJ-0005P2-Se; Mon, 01 Jun 2020 17:57:03 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfofI-0004Ta-I3
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 17:56:01 +0000
Received: by mail-pg1-x541.google.com with SMTP id o6so3852019pgh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 10:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=i5BZPTZAmXxklJpoMRb5vD0GYMFXpjrq4/dihvCieGA=;
 b=oGDezAuwIcD3h/JVFiFkScpwzDR7DBlQ3K82qjR89+nwgkSaq0E5YppwnXKytVSlas
 dl/hRrPjMDN0njFWBVSKAVG8aR6rmRXgaxqwVvmhmdk2DKf6XYFQIaf9Eavl3reRURgG
 4VEQIvfKLORMIIs35V5Mm8PL7qzFCVvr+tQ1uxZG6vBedJTKCkDSH6rRJC6hMMaRqZEO
 Y1YAuNKI1gQ3YObz3ty3IXa5OyI1bnIprq3f84lh9LlQnL03m3dce8SwO14bW/NuHYM3
 5FXETrADg+UOjJ5EoctZZ4Ix7VbLhchbCdEu3YuYtK8CejO9iOCwSu3PY5LVK5LaBEhj
 yPkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=i5BZPTZAmXxklJpoMRb5vD0GYMFXpjrq4/dihvCieGA=;
 b=F4X7iOlOcdct4a3uKt+bmIth9kH6hyG70sCmVLdOd2cCEDGXUcsIj7p4JQ7kecczux
 yfDVXR1c7UMaqiPR78VbETBecKB1SGcv3ErE7DmYno/t8GlV1v8Cg72c/BRZemPRrRh5
 8a4fDtO2PhthP5rMdD/kWwKhpIvhTMd9/0VNC2U3ohTGApVJQPp/1WPtrlEE0HTzjP2p
 fcGCFbHAskayBuc3/LnlooDzb3J/bLzEhRa5E7IiogmFZMwXjsIxkf7z0ZKdJfIP2fhZ
 FbHUnT3sJSf8vyMptO3XrWKQXw3nOUfScyOHtB2v9Yo752q48eXFGKXF8yRAWFeqbR7R
 YTlg==
X-Gm-Message-State: AOAM5333ILU+FBKsxXvzCey/nVDkxwiHcunmlKuqQapwznM0gxwVi1OY
 Vw9pfDn0fKxzfELIlDawhYKmEA==
X-Google-Smtp-Source: ABdhPJxrhPzy4O3NyPsLmeg5/fP9w0+e83//FkVHlGYJSYKm29+DOBd/ogwZCnOjBob1eTm4pfRdqw==
X-Received: by 2002:a63:3c11:: with SMTP id j17mr20781628pga.70.1591034160056; 
 Mon, 01 Jun 2020 10:56:00 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id p7sm64771pfq.184.2020.06.01.10.55.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 10:55:59 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: bjorn.andersson@linaro.org, ohad@wizery.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: [PATCH v4 04/11] remoteproc: stm32: Remove memory translation from DT
 parsing
Date: Mon,  1 Jun 2020 11:55:45 -0600
Message-Id: <20200601175552.22286-5-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200601175552.22286-1-mathieu.poirier@linaro.org>
References: <20200601175552.22286-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_105600_610528_E26C4AE0 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: loic.pallardy@st.com, arnaud.pouliquen@st.com,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Other than one has to be done after the other, there is no correlation
between memory translation and DT parsing.  As such move function
stm32_rproc_of_memory_translations() to stm32_rproc_probe() so that
stm32_rproc_parse_dt() can be extended to look for attach bindings
in a clean way.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Loic Pallardy <loic.pallardy@st.com>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/remoteproc/stm32_rproc.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index 1e512ddf2591..3e3b199a02c1 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -606,7 +606,7 @@ static int stm32_rproc_parse_dt(struct platform_device *pdev,
 
 	*auto_boot = of_property_read_bool(np, "st,auto-boot");
 
-	return stm32_rproc_of_memory_translations(pdev, ddata);
+	return 0;
 }
 
 static int stm32_rproc_probe(struct platform_device *pdev)
@@ -633,6 +633,10 @@ static int stm32_rproc_probe(struct platform_device *pdev)
 	if (ret)
 		goto free_rproc;
 
+	ret = stm32_rproc_of_memory_translations(pdev, ddata);
+	if (ret)
+		goto free_rproc;
+
 	rproc->has_iommu = false;
 	ddata->workqueue = create_workqueue(dev_name(dev));
 	if (!ddata->workqueue) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
