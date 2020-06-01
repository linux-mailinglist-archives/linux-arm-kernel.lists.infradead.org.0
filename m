Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64DA71EA8C3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 19:56:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ETCh42pDHt8GPHKZNO/CnuafUG4FdQoQiJm4TUUISmk=; b=JerT3ILH63YVsl
	O4bnWLQhXxvebOFKyF5d13OcTffsGNiZhxBA4ppYVFmwuWifxAnP/moy1SUUkXEayiRDH0mXeDrTj
	lOZXG4D8M5rr57t4sG6FOvpIvYFGPbxm8evJCIyAgY0NjRCQoF3wPaiIKT6DKzDs0XdcC5wxLPQ1B
	N5nmag4GfgrzoPsnIAlVCLWysAA/OZCD8H6oz91MSMJfcunab7D0iCZr2UcOxk1oYo6zyPq7dbAzF
	kAWPJN2b69fuNj/7JC/kAInSOrAzVitda0UBxxMriomTaAXMHY2BPEj0L6ltCtemKr4U6EGRqPSsQ
	OjfG3Ft9JHOfwMrf992A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfofs-0004xN-Oy; Mon, 01 Jun 2020 17:56:36 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfofF-0004SE-TN
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 17:55:59 +0000
Received: by mail-pl1-x641.google.com with SMTP id y17so247488plb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 10:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aiaQOah0tkVij5o2XB19f+57g9nxyi9Dr0rKn4GNNWo=;
 b=JAL0xv+J0eDQvIWE9P08dNSkHM11snhLNWBIKigP5OWrAyaQOl2aH7kIY4OQZ65Itw
 txVqAp3KExHzk+qIz30vM58NovUzH03bOLTvfdSdeZlodE/khP02rrMkEZV/eLl56XP0
 1NmD1KVXjuzjkrg/5zNfF9BUTz9vJVkkIJcRJ5XVGjMtsm7XbrBbP/3YKn+m3N++ZtM3
 6yuvhHwsQm8LyueSGhn9P6nyA9bjiWn+eLsYNJUy7rGTqTRKPZ2zV+RMt02baecdKX9m
 KJtzqPdFRzaB/xlrbKEl8YVhHRy1h+XuYLzDOLBNycDzgSiN/BJE7J8TWnyJCGWzuX7p
 TIkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aiaQOah0tkVij5o2XB19f+57g9nxyi9Dr0rKn4GNNWo=;
 b=cWJz1wID6bMUh6X1lWZA/qEBe3fS4Qz6W1RSvBo6xmcfIQ6Q74qbCDsal1xdLjgk/B
 iwNKyIAdRA9Hpeu54w6WjOsqPkRDlhpuFw7BnMNROVCF+w6yINh2iTjvGMl//WcgZbG3
 KQbp5B2yg6o9O6k2c+59iF/r2Q6cJRoy751YO109FJy9/6WD51LADlW3h3CuBaZ1dBaJ
 rCWs3gub+x7s3/sCxbab0E+0eN9ddmckafAuBW6BvQ9+Ju2M7dhE6asEtBb9edb85Fcf
 wSU2lj05imruhSd92tCUZkEaRxiNNraycyJ7iQomi/B0NL8cOJtkoTbThJCWrp6U+qxa
 D0bA==
X-Gm-Message-State: AOAM532KJ4Ojrth6ZYakGabdJExtbt1S/1fs89IkFBQecsGTeXuU2Wqw
 Uutgkw408/cgZD00CsU7JAaZoA==
X-Google-Smtp-Source: ABdhPJwCeQOCr89X+QwuX83o1+B8wMZb1kqOYTtx1WnyqkdzZeWW1Be4A4m7ZXhsCX7hyj9yIQeS8w==
X-Received: by 2002:a17:90a:6706:: with SMTP id n6mr621042pjj.13.1591034155457; 
 Mon, 01 Jun 2020 10:55:55 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id p7sm64771pfq.184.2020.06.01.10.55.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 10:55:55 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: bjorn.andersson@linaro.org, ohad@wizery.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: [PATCH v4 01/11] remoteproc: stm32: Decouple rproc from memory
 translation
Date: Mon,  1 Jun 2020 11:55:42 -0600
Message-Id: <20200601175552.22286-2-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200601175552.22286-1-mathieu.poirier@linaro.org>
References: <20200601175552.22286-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_105557_939678_16AC4E0F 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

Remove the remote processor from the process of parsing the memory
ranges since there is no correlation between them.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Loic Pallardy <loic.pallardy@st.com>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/remoteproc/stm32_rproc.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index f45b8d597da0..a80733fb08e7 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -127,10 +127,10 @@ static int stm32_rproc_mem_release(struct rproc *rproc,
 	return 0;
 }
 
-static int stm32_rproc_of_memory_translations(struct rproc *rproc)
+static int stm32_rproc_of_memory_translations(struct platform_device *pdev,
+					      struct stm32_rproc *ddata)
 {
-	struct device *parent, *dev = rproc->dev.parent;
-	struct stm32_rproc *ddata = rproc->priv;
+	struct device *parent, *dev = &pdev->dev;
 	struct device_node *np;
 	struct stm32_rproc_mem *p_mems;
 	struct stm32_rproc_mem_ranges *mem_range;
@@ -606,7 +606,7 @@ static int stm32_rproc_parse_dt(struct platform_device *pdev)
 
 	rproc->auto_boot = of_property_read_bool(np, "st,auto-boot");
 
-	return stm32_rproc_of_memory_translations(rproc);
+	return stm32_rproc_of_memory_translations(pdev, ddata);
 }
 
 static int stm32_rproc_probe(struct platform_device *pdev)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
