Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D32D83FF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 00:47:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=p1gYSut2ce3FiyX0797J2WZf3213StBE3RZR9mv5zJo=; b=F/+O+yiJBSGawLFMk9Vj7EYCXT
	sAHVcyt0mslGxlpOwnGaehXTOey/Xb/Ephavs2LWyVColUzJKrzqk1ViKmiMomPAXhgt1dHYv/4jb
	mVm2sWjRtIgSIb4zMMoH7Bd6p2R+NJM2qKwvSPgyzFck+OOVVgqRBlbqZHRLhXbX5KYDikj4JJVRc
	V7J2BVHKfoA15ryXW74kKFu3jIfFl3GRtzRVuh1qQpM9rO6yZ5ipGRkSVDLkCX6DxUJnbx9pC2nO2
	vEb0H0NcbgW0+nTLvdt6ehXr7/C/XGNHo4gC0kg4fFaX8UXn/vZGMOpA5eCaI7LdIanW9WT34m05w
	XkINjM3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKVbQ-0004vZ-M1; Tue, 15 Oct 2019 22:47:40 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKVaO-0004BI-Tb
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 22:46:39 +0000
Received: by mail-pg1-x542.google.com with SMTP id i76so13036813pgc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 15:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=4jPbEpStvoUmUf7XK4zyw0nvt3WHJ3xzkcs9laO4hG8=;
 b=aj0nzXQuZcm5i5mM8hTJD3NkWTCcm+OlCa1ywD83GOYTxBrzgCF7KDf4QkLJsSTGYK
 +5Booo2zMkyajvtr3STAXfw2eAfgOyoq+2hD7onuTQduuaQDFCI5naZfz3lO6H+O3bTv
 0wq5kUq5L3tICbQDiYPASCPgPE6OlfTJvUKE8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=4jPbEpStvoUmUf7XK4zyw0nvt3WHJ3xzkcs9laO4hG8=;
 b=cKnN7CMv7gE67IuEwdmq7lIxTW+C9gtvIbRKQK83i4puGTOoLHyyEut/9srTYykPrJ
 R9gvypCkjpF4f2d0BcPMhXom+pVBfSrvpwdCEcAw8qW426sVxim5Zkhyb1zl0hmHAvY5
 M+8umJyhNHzBrSGwrCVsl+FHnLC3gX0Fj28ROAWm01Uqx+TMhGAdaV3ZMlkViddsXqtc
 CJljG7ZV7jrlnOIWc4+uF9JlVghuqmBN+c+ColRWLfqC8utVYPyiOjFbE644pT6G2nnd
 KTGIzdHqL9+pZ4frtFB+UgtXbatN6yL0NtQJ7H6o8j6Mm/dR/S/Xk2T8bExQuU+Up2gO
 wkXQ==
X-Gm-Message-State: APjAAAX00XXPxp5wfI01vQaVMUJGdQEPkQpj2hqsRc0JzU6qnD3msDA5
 kR3i/iCkh16PTWJtCUKylMjing==
X-Google-Smtp-Source: APXvYqz7J6nIBGHsc/tXWOzElPmlb8C4f2Qk4gnUSI7DZwt+tiNmtzDwY843yJy/A7Ju6KrAX9rXMg==
X-Received: by 2002:a63:dd11:: with SMTP id t17mr4184483pgg.242.1571179595974; 
 Tue, 15 Oct 2019 15:46:35 -0700 (PDT)
Received: from lbrmn-mmayer.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id e127sm23019837pfe.37.2019.10.15.15.46.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 15:46:35 -0700 (PDT)
From: Markus Mayer <mmayer@broadcom.com>
To: Brian Norris <computersforpeace@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Gregory Fong <gregory.0xf0@gmail.com>
Subject: [PATCH 5/8] memory: brcmstb: dpfe: pass *priv as argument to
 brcmstb_dpfe_download_firmware()
Date: Tue, 15 Oct 2019 15:45:10 -0700
Message-Id: <20191015224513.16969-6-mmayer@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015224513.16969-1-mmayer@broadcom.com>
References: <20191015224513.16969-1-mmayer@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_154637_007427_3364AD6D 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Broadcom Kernel List <bcm-kernel-feedback-list@broadcom.com>,
 ARM Kernel List <linux-arm-kernel@lists.infradead.org>,
 Markus Mayer <mmayer@broadcom.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rather than passing a (struct platform_device *) to
brcmstb_dpfe_download_firmware(), we pass a (struct private_data *).
This is the more sensible thing to do.

Signed-off-by: Markus Mayer <mmayer@broadcom.com>
---
 drivers/memory/brcmstb_dpfe.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/memory/brcmstb_dpfe.c b/drivers/memory/brcmstb_dpfe.c
index 3b61e7108912..f905a0076db7 100644
--- a/drivers/memory/brcmstb_dpfe.c
+++ b/drivers/memory/brcmstb_dpfe.c
@@ -582,21 +582,18 @@ static int __write_firmware(u32 __iomem *mem, const u32 *fw,
 	return 0;
 }
 
-static int brcmstb_dpfe_download_firmware(struct platform_device *pdev)
+static int brcmstb_dpfe_download_firmware(struct brcmstb_dpfe_priv *priv)
 {
 	const struct dpfe_firmware_header *header;
 	unsigned int dmem_size, imem_size;
-	struct device *dev = &pdev->dev;
+	struct device *dev = priv->dev;
 	bool is_big_endian = false;
-	struct brcmstb_dpfe_priv *priv;
 	const struct firmware *fw;
 	const u32 *dmem, *imem;
 	struct init_data init;
 	const void *fw_blob;
 	int ret;
 
-	priv = platform_get_drvdata(pdev);
-
 	/*
 	 * Skip downloading the firmware if the DCPU is already running and
 	 * responding to commands.
@@ -811,7 +808,9 @@ static ssize_t show_dram(struct device *dev, struct device_attribute *devattr,
 
 static int brcmstb_dpfe_resume(struct platform_device *pdev)
 {
-	return brcmstb_dpfe_download_firmware(pdev);
+	struct brcmstb_dpfe_priv *priv = platform_get_drvdata(pdev);
+
+	return brcmstb_dpfe_download_firmware(priv);
 }
 
 static int brcmstb_dpfe_probe(struct platform_device *pdev)
@@ -861,7 +860,7 @@ static int brcmstb_dpfe_probe(struct platform_device *pdev)
 		return -ENOENT;
 	}
 
-	ret = brcmstb_dpfe_download_firmware(pdev);
+	ret = brcmstb_dpfe_download_firmware(priv);
 	if (ret) {
 		dev_err(dev, "Couldn't download firmware -- %d\n", ret);
 		return ret;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
