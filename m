Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB36D83FD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 00:47:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8OJ2che9hinElWptnBrbT9p7Otuk0e7R/MjHT3wj9OI=; b=PNp3NadTv42K4lHCXauxq5OVda
	lPIbTmdvhkcpZfz4ZhfsZlperiAI+iv5g1p7jaQvzOBAO05WmA578c14oac8jBFTPtdGgqXqtoMui
	1OvM6cjJ2AcGsOkmoCtcDOT+LSvViQQPjPgxA/rrBY258CJbuEk7YqsD7iBQPvKkpBqkMquGDx91f
	sJx2Z7J+LXOA6t9MHTcg8VSyExSOZz998iTylNDwfiCIzYOb+wYimGgXJE43ol3G8b8E11nza2/Wd
	n/8b8/U8oX7au5l23UGxi8GLfdYvqsA2GiI8Ur9K8S7yAFR6a0+MXepbRxYwFrQtLiGjQDK6HNNOl
	MzG1x2BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKVb9-0004hW-Re; Tue, 15 Oct 2019 22:47:23 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKVaF-000443-4p
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 22:46:28 +0000
Received: by mail-pg1-x542.google.com with SMTP id p30so13033258pgl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 15:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jXQ75x3Ps6GKpsIMo1SWrSaRFPmKSk32GCzqs7+6pe0=;
 b=P/6kQXWlOVCud1voSqRWZ+Q/FLISCfhEcnxzA1kQKJBuCMXO3i9Zrl9aEwLxWdOHrn
 Hy78y71wBm+lQ0ztuVByjQajuH31n26CRI2gvQ6nSd4xxj1K+YfMvD8pQkdMpkv2Y+Su
 WIYo5QbTuLi3r74m3PriwuqO/9pxcshaHFHV4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jXQ75x3Ps6GKpsIMo1SWrSaRFPmKSk32GCzqs7+6pe0=;
 b=hyadQo9dl3OzJckg2iaKngNYEfwSJzEwEAsKLlDOpWDyJV4NFHEjZ8+AMsUUYL4RO9
 IyV5RsBC1/5mYAuk+tndylBT31vhIw7vsLPhM74fLEA+CC7cvHTld95suGvJx9oWBf8s
 2xF8mwTyDodYe1td7v2jL7FYatqJEdLL/4lXVCy5soNBm4mh+xke+QHEdLlfhnDgx6m/
 29n8GEL0Rtx5VNESsYyo0VawOhmxM6OvIvW+0Azc0toaBzu1ZJlBrRIoYQn5PenW1fDN
 maoK2kWQbh9Pl2kOeNAYxl6QD/YDh3/daOWCwjGDagMdzw8aWAvL4S1q53MrxDbqHxUF
 oZpA==
X-Gm-Message-State: APjAAAXmufre9CM8Q2rGSZRamth+JcrlNZib26EW712o2XlhMUCPsxzJ
 d0PYRTX28wRLyN0BBPp6Zjk+0g==
X-Google-Smtp-Source: APXvYqz6KU+gZooUfpIuIvHLXB5oT6CJz5gH5+PNxONK8L4zbzs3zv6sB2RgKCXackqTvUGhM5Mpkg==
X-Received: by 2002:a63:2f84:: with SMTP id
 v126mr40879644pgv.100.1571179586096; 
 Tue, 15 Oct 2019 15:46:26 -0700 (PDT)
Received: from lbrmn-mmayer.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id e127sm23019837pfe.37.2019.10.15.15.46.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 15:46:25 -0700 (PDT)
From: Markus Mayer <mmayer@broadcom.com>
To: Brian Norris <computersforpeace@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Gregory Fong <gregory.0xf0@gmail.com>
Subject: [PATCH 4/8] memory: brcmstb: dpfe: move init_data into
 brcmstb_dpfe_download_firmware()
Date: Tue, 15 Oct 2019 15:45:09 -0700
Message-Id: <20191015224513.16969-5-mmayer@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015224513.16969-1-mmayer@broadcom.com>
References: <20191015224513.16969-1-mmayer@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_154627_258490_AE1D863A 
X-CRM114-Status: GOOD (  14.37  )
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

Rather than declaring our init_data in several places and passing it as
parameter into brcmstb_dpfe_download_firmware(), we declare it inside
brcmstb_dpfe_download_firmware() instead.

Signed-off-by: Markus Mayer <mmayer@broadcom.com>
---
 drivers/memory/brcmstb_dpfe.c | 21 +++++++++------------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/memory/brcmstb_dpfe.c b/drivers/memory/brcmstb_dpfe.c
index c10c24a76729..3b61e7108912 100644
--- a/drivers/memory/brcmstb_dpfe.c
+++ b/drivers/memory/brcmstb_dpfe.c
@@ -582,8 +582,7 @@ static int __write_firmware(u32 __iomem *mem, const u32 *fw,
 	return 0;
 }
 
-static int brcmstb_dpfe_download_firmware(struct platform_device *pdev,
-					  struct init_data *init)
+static int brcmstb_dpfe_download_firmware(struct platform_device *pdev)
 {
 	const struct dpfe_firmware_header *header;
 	unsigned int dmem_size, imem_size;
@@ -592,6 +591,7 @@ static int brcmstb_dpfe_download_firmware(struct platform_device *pdev,
 	struct brcmstb_dpfe_priv *priv;
 	const struct firmware *fw;
 	const u32 *dmem, *imem;
+	struct init_data init;
 	const void *fw_blob;
 	int ret;
 
@@ -622,15 +622,15 @@ static int brcmstb_dpfe_download_firmware(struct platform_device *pdev,
 	if (ret)
 		return ret;
 
-	ret = __verify_firmware(init, fw);
+	ret = __verify_firmware(&init, fw);
 	if (ret)
 		return -EFAULT;
 
 	__disable_dcpu(priv);
 
-	is_big_endian = init->is_big_endian;
-	dmem_size = init->dmem_len;
-	imem_size = init->imem_len;
+	is_big_endian = init.is_big_endian;
+	dmem_size = init.dmem_len;
+	imem_size = init.imem_len;
 
 	/* At the beginning of the firmware blob is a header. */
 	header = (struct dpfe_firmware_header *)fw->data;
@@ -648,7 +648,7 @@ static int brcmstb_dpfe_download_firmware(struct platform_device *pdev,
 	if (ret)
 		return ret;
 
-	ret = __verify_fw_checksum(init, priv, header, init->chksum);
+	ret = __verify_fw_checksum(&init, priv, header, init.chksum);
 	if (ret)
 		return ret;
 
@@ -811,16 +811,13 @@ static ssize_t show_dram(struct device *dev, struct device_attribute *devattr,
 
 static int brcmstb_dpfe_resume(struct platform_device *pdev)
 {
-	struct init_data init;
-
-	return brcmstb_dpfe_download_firmware(pdev, &init);
+	return brcmstb_dpfe_download_firmware(pdev);
 }
 
 static int brcmstb_dpfe_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct brcmstb_dpfe_priv *priv;
-	struct init_data init;
 	struct resource *res;
 	int ret;
 
@@ -864,7 +861,7 @@ static int brcmstb_dpfe_probe(struct platform_device *pdev)
 		return -ENOENT;
 	}
 
-	ret = brcmstb_dpfe_download_firmware(pdev, &init);
+	ret = brcmstb_dpfe_download_firmware(pdev);
 	if (ret) {
 		dev_err(dev, "Couldn't download firmware -- %d\n", ret);
 		return ret;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
