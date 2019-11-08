Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 409F7F3FA5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 06:20:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wj8vh8GmSz30VLM8J+dtcS2imbZvEofOfzxPApq4ecw=; b=LuVmcRAnLN0XMZ
	QL8mpuOYQPeGi9Rg39SXyQBfdA39U5MTOqyPcBE9XSJ+DY9SCkJ+YUP70ezuI9l6w3etw64vyFZ5y
	pRWCqsYr/Vn3wEDaNAaPYM1HBsnlQ9CPnPLSRsFTcDblzkdhw24hZm7hI6wN+O5b1dBwUZH7K90nC
	zS1fJJUu2TqhJsF+7mj8jo+x1qm2jefuKTbaOfk2QrZMONReZfcQbFouHHO1+RFY6chucoBUqLu8r
	5xsYmoiIUXxUId+gUE5iE2JSmWRk6KtSev7NlGoBy+Xr5LuJJOnLxmlgeP/p7weuhgOs/Sdeu3dyA
	6hxOHFy0r3rpwInGJbxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwhD-00032e-Jw; Fri, 08 Nov 2019 05:20:31 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwgn-00028p-H0
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 05:20:07 +0000
Received: by mail-pl1-x642.google.com with SMTP id l4so3239751plt.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 21:20:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yc0niyL+e0o1G++JHufjcorcLLXvUhYDXt59boslzgg=;
 b=VqXvYCt3yjpIemP9x5nAW9klS4OYDVtIurvAczrm8dcH4b8jG/vIFrq7HA1zhqdEn1
 WMmjWTT2tVk9wuQjqUzpDZlm/M8CCbwrETRX7+w+0nUluHW3CNl2B/iGn3Ja6NnEbsXp
 kf8vL/FOvPYedRq62dRG9jVGyG7wieYlyIv4oBqusl9akmvh0RKK6TKcIeooBUcOob/I
 H7lb4QLWxAzI8BaclZ2jWIpDuwDKY52OplmZwGyNALIK1a6EBhRcfKBfeCy2IvL3Xpao
 amyUwRxPbHN4UXXl8WWQKP/7RN3AW2p44AoRbPCEUf0riQEEJjiWwtQlnYHOykFdN9c8
 p44g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=yc0niyL+e0o1G++JHufjcorcLLXvUhYDXt59boslzgg=;
 b=c/LKTjuLkJ2FconOj+9AQS8N7PASKdoRi6vMCFaWqJ6GsGdxAhzlnd5BlOUMlyQnh/
 8naGGwrIirRpOpXGi9Pk8bruFRcq6OqOAumt6B/eAbiEV9FzCPEj7aS4ah+PhWWHNXk2
 /q5ipTMxz88f0FgW/qFTCgTa9QHj7oD/CZHrOFj8DILEZ+Q9YTd28GUGJQ5FkLH5dxGK
 fA2qMn9EJl8hfNaG4Ra/Ck+5aAUnSPJJJCW2ZT+knDXLMd3O/V+1nB9NNX/kvoyjMd+Q
 LA6SbXhAn51dgPkz4VZcSxnw+31mTm8dmWFYGkq7uvP2zihvnnXWKXBhMHE/uudSq0iZ
 UFsA==
X-Gm-Message-State: APjAAAV2HsejwQ+38cTF/1r2zmc2COyhP8hVr2JOAlO2Tb0Im3SFlzyb
 O40ccTO9RqIEKeCt2SxFUJU=
X-Google-Smtp-Source: APXvYqxc7+DDnJiPlXxQJe9LqipaDRCwapIGhvHz7o6az10ji38/hskICugffhdh+/IZ6mIRKsHrrg==
X-Received: by 2002:a17:90a:9741:: with SMTP id
 i1mr10898615pjw.41.1573190404659; 
 Thu, 07 Nov 2019 21:20:04 -0800 (PST)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id v19sm3798443pjr.14.2019.11.07.21.20.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 21:20:04 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: Rob Herring <robh+dt@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Jeremy Kerr <jk@ozlabs.org>
Subject: [PATCH v2 01/11] fsi: Add fsi-master class
Date: Fri,  8 Nov 2019 15:49:35 +1030
Message-Id: <20191108051945.7109-2-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191108051945.7109-1-joel@jms.id.au>
References: <20191108051945.7109-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_212005_624033_2EBCF7D3 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Alistar Popple <alistair@popple.id.au>,
 Eddie James <eajames@linux.ibm.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel@lists.infradead.org, linux-fsi@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jeremy Kerr <jk@ozlabs.org>

This change adds a device class for FSI masters, allowing access under
/sys/class/fsi-master/, and easier udev rules.

Signed-off-by: Jeremy Kerr <jk@ozlabs.org>
Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 drivers/fsi/fsi-core.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/fsi/fsi-core.c b/drivers/fsi/fsi-core.c
index 1f76740f33b6..0861f6097b33 100644
--- a/drivers/fsi/fsi-core.c
+++ b/drivers/fsi/fsi-core.c
@@ -1241,6 +1241,10 @@ static ssize_t master_break_store(struct device *dev,
 
 static DEVICE_ATTR(break, 0200, NULL, master_break_store);
 
+struct class fsi_master_class = {
+	.name = "fsi-master",
+};
+
 int fsi_master_register(struct fsi_master *master)
 {
 	int rc;
@@ -1249,6 +1253,7 @@ int fsi_master_register(struct fsi_master *master)
 	mutex_init(&master->scan_lock);
 	master->idx = ida_simple_get(&master_ida, 0, INT_MAX, GFP_KERNEL);
 	dev_set_name(&master->dev, "fsi%d", master->idx);
+	master->dev.class = &fsi_master_class;
 
 	rc = device_register(&master->dev);
 	if (rc) {
@@ -1350,8 +1355,15 @@ static int __init fsi_init(void)
 	rc = bus_register(&fsi_bus_type);
 	if (rc)
 		goto fail_bus;
+
+	rc = class_register(&fsi_master_class);
+	if (rc)
+		goto fail_class;
+
 	return 0;
 
+ fail_class:
+	bus_unregister(&fsi_bus_type);
  fail_bus:
 	unregister_chrdev_region(fsi_base_dev, FSI_CHAR_MAX_DEVICES);
 	return rc;
@@ -1360,6 +1372,7 @@ postcore_initcall(fsi_init);
 
 static void fsi_exit(void)
 {
+	class_unregister(&fsi_master_class);
 	bus_unregister(&fsi_bus_type);
 	unregister_chrdev_region(fsi_base_dev, FSI_CHAR_MAX_DEVICES);
 	ida_destroy(&fsi_minor_ida);
-- 
2.24.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
