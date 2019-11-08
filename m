Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 936B3F3FB1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 06:21:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4dT0RsWu5ng3ylKVn4tmPyVFZkR/rFYRBaqP4dd0UHY=; b=tDVoJqwVxkbmJ2
	a385OtodAvK63AqDf95NBQUrp9FYN/vmo8xALZPrszE0G55igHZ/R2sK1B4zxcTAz5hr3bmrGKh4n
	1xu5lXyljbEBxuadAV5nvBL7E/CkWbSc3S/cvXGbJi8qwC6/THx408V5YqZC3Zxw3GvEG16/+T5VW
	SH5/sSL5nMI7P+vQKF8ONfdonST7CqN+K9PDO5cZXiUYB9TzZC09aFBhxu/uI3sNf6HsgXUnY5xzm
	fc6ORWFhXrzOR85Mis5FcqxN0Pjji25RtfNxz8IYnVM1DrllNFaPglwdy2feRzSmJUmDpwS/PrXvs
	jn/8tMHVx7W9uTWwiGYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwhY-0003OT-5C; Fri, 08 Nov 2019 05:20:52 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwgu-0002m0-1q
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 05:20:13 +0000
Received: by mail-pl1-x642.google.com with SMTP id k7so3285716pll.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 21:20:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VminkHZjPJEfcePoxrblVvTvuZD1weWd1AQS3sguLYY=;
 b=F4Uy3yD+3BM4e+yIRyLCZ6rTAtOy0OQPlCK/2TUXc4gKNGRYxG2Mt1jMMXy4po+n0s
 4hkPi1wqrR3vk8JWcA9cWgkd7Wmsv2NzhYyKsbAYQeUzbDVoqA5gloJY9E+R/tT5PSSc
 GeZzJmm4sfUzbDZcexDaZsru6xBlLuZPo7T16Z06TRBKx3mhnbjoROjGxkfvj6NWqZO3
 hqIDpRJEQMO8cGXgVWL95wU9Ow3Gfr9ZGtzeT/rdTNAfpYd58csKrfjWoITfQYxABx9l
 SqhYsoIJ9V0JURmQdQGQXRm8mjpQ1XVR2JYFONopnXHaHECrnSKBgvQulzJnF8CcHSeW
 84bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=VminkHZjPJEfcePoxrblVvTvuZD1weWd1AQS3sguLYY=;
 b=aecmS4W8scVnRyAO03e52TMuQPfhuHgnaaqJxCDPElabdJKLfiy7clGXBqbVeYaXRr
 S9czgQxFOKLLaDdJQ1HUT5sfyE254qKVssomMNgbC6QhwCyd8gUWktv1ZT8LkfCuvQmV
 fdNcN08x9xLElEDGg5DTBxLe8BJPmWQFkQIs2gsvAQRGL8u/osMC7yLashmh0G6a3fUC
 wuJhrO+9s7zssRxe1yE1xSNFeHcJHsqj5Qfmi1KV21l0krG/PCplpo5M9OYRwA9LNV/Q
 B3PgJhSDhKXC5t8sKZ+pVb01yvn2wAltPXfrn+aJvIyQxBGz9dI57ZOX1hhb3LmkAXEQ
 z10Q==
X-Gm-Message-State: APjAAAX3v+Q1zP1ojrtJhpGl2A7hUB2TFbwYV5E1Gdz0hlaHxMECO5r9
 x4xYh4bjxjTUQUacRV1x18A=
X-Google-Smtp-Source: APXvYqzk0ra5T3owJQ1Q9jaItHfMMjYMbyQPOGakYEt8GcLGEu417ZLj3vsIs20HPLE54o4W8y49+Q==
X-Received: by 2002:a17:90a:c68f:: with SMTP id
 n15mr3170444pjt.20.1573190409931; 
 Thu, 07 Nov 2019 21:20:09 -0800 (PST)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id v19sm3798443pjr.14.2019.11.07.21.20.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 21:20:09 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: Rob Herring <robh+dt@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Jeremy Kerr <jk@ozlabs.org>
Subject: [PATCH v2 02/11] fsi: Move master attributes to fsi-master class
Date: Fri,  8 Nov 2019 15:49:36 +1030
Message-Id: <20191108051945.7109-3-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191108051945.7109-1-joel@jms.id.au>
References: <20191108051945.7109-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_212012_206623_E0555B8A 
X-CRM114-Status: GOOD (  12.05  )
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

Populate fsi_master_class->dev_attrs with the existing attribute
definitions, so we don't need to explicitly register.

Signed-off-by: Jeremy Kerr <jk@ozlabs.org>
Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 drivers/fsi/fsi-core.c | 23 +++++++++--------------
 1 file changed, 9 insertions(+), 14 deletions(-)

diff --git a/drivers/fsi/fsi-core.c b/drivers/fsi/fsi-core.c
index 0861f6097b33..c773c65a5058 100644
--- a/drivers/fsi/fsi-core.c
+++ b/drivers/fsi/fsi-core.c
@@ -1241,8 +1241,17 @@ static ssize_t master_break_store(struct device *dev,
 
 static DEVICE_ATTR(break, 0200, NULL, master_break_store);
 
+static struct attribute *master_attrs[] = {
+	&dev_attr_break.attr,
+	&dev_attr_rescan.attr,
+	NULL
+};
+
+ATTRIBUTE_GROUPS(master);
+
 struct class fsi_master_class = {
 	.name = "fsi-master",
+	.dev_groups = master_groups,
 };
 
 int fsi_master_register(struct fsi_master *master)
@@ -1261,20 +1270,6 @@ int fsi_master_register(struct fsi_master *master)
 		return rc;
 	}
 
-	rc = device_create_file(&master->dev, &dev_attr_rescan);
-	if (rc) {
-		device_del(&master->dev);
-		ida_simple_remove(&master_ida, master->idx);
-		return rc;
-	}
-
-	rc = device_create_file(&master->dev, &dev_attr_break);
-	if (rc) {
-		device_del(&master->dev);
-		ida_simple_remove(&master_ida, master->idx);
-		return rc;
-	}
-
 	np = dev_of_node(&master->dev);
 	if (!of_property_read_bool(np, "no-scan-on-init")) {
 		mutex_lock(&master->scan_lock);
-- 
2.24.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
