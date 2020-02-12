Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA59159E47
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 01:45:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dzN2FltOEQzl1gELDrGAx0RE+2iPiOcqQnBWlZ6/3Rw=; b=ZeA9UPxbnsm8kD
	oYtPTdaYdm8MCIS0hEcNZIfg4j7bqCe5qLcyX653y1rUpuFycpFGob1Zk3t8Oz8sapMw1mbjUYHxf
	zhl+lWn6TnYVUnzBX5p2lvXLVMCENBCGQxymDjC/taWIysHCqMZm/lXirqKZfCW7thdj0MED9RKVx
	V7ACmjz4gqOwiYRbglNKIIUa6qsOHVv+c82mfGL/VFZTCV/hw5iHwUtGLwNyiqbYqAn6RgEeOJX32
	7p9j3rWheQ62B9O3/BLCrPnzQoiVA+nS87MZ0XJ31zP5Pz780x1b7FRLwpzUTR8DUKN9PJ7pIfidr
	5VnnnyYJ3o06Et4eYwfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1g9t-0005eE-TB; Wed, 12 Feb 2020 00:45:41 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1g4r-0008KR-CT; Wed, 12 Feb 2020 00:40:31 +0000
Received: by mail-lf1-x141.google.com with SMTP id m30so263267lfp.8;
 Tue, 11 Feb 2020 16:40:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=brE3/g7u0N/gg2OgUxbSqylt9cNqdnoOIHKUd4Jqf/I=;
 b=aUPEiqJkISxLDvjpf3W2bPilp4oLV1bN0j7U/z/pSsTs8ADP3MhrmBZ9ZqhBLdktug
 oc5O/08eOSIqGfnJLCqBzkPj9k7pHITjd0WveqVhUx92RP4fP36iTF7SewsKAZbHo8eg
 1Rmq6GSA9P1kfN5jQ6VTjSIvgnfmVNOkM6BI0VqJn+I3sOqIMloRVorlSjOMxQpfibfF
 pzbuBM5fKGQsdrOlovubVn/nLSzXkpZ1oFL9BGEaLM2SY3BWJH3wpzH4GnVE7snPOkED
 R8WiRvn5ll2wkCPeGklOt+tv1I948ov7R1zvoia5vIftzHh25c57BrVVieqHhNwsHh77
 DYUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=brE3/g7u0N/gg2OgUxbSqylt9cNqdnoOIHKUd4Jqf/I=;
 b=SH6lmYNVSxRj+QkahHXiC3VsGEOU34/XuANJ1p9dGILYcf7Vvtw0C2fMZw5JYRncGB
 EIQfQo4hsLzWisw7r323YE9d/L64BWapkZ+13Vk0FgInmnt1t9tkbA7nFOffmhAtqZlL
 xBLIlUFZtddMHdc/+rfwUISA1QScoSapaGbMP8ROQ53LVWblgmpMmuBRSKe7wd6IBrkK
 T5MZFAegc5P9wee/93Dp9ihLy0r7dpH4m53dpnnxX3loFBDA9fXLPjEWZX9BFHianpW4
 gwWbxAqN/eDp0dIqpZFwDo3+wkfE0BmeUomWVSam5+LMQ5UC6RSFBWykoGSFpdxhnvWH
 1seQ==
X-Gm-Message-State: APjAAAXZlYcjxujA32N7egJRaW079UTlUJuJmoAe3PrWKbSyJHT0Yc0A
 afW1fbOdlx7oswvH5Vp0Z9Y=
X-Google-Smtp-Source: APXvYqywmdJL4ETEOowYVGw711/cu1ENWKG7wwEqkKKOXa2c0GrDEFSOpOtQ6O6KBhMLMU76YfQIFQ==
X-Received: by 2002:a19:740a:: with SMTP id v10mr5014210lfe.65.1581468025589; 
 Tue, 11 Feb 2020 16:40:25 -0800 (PST)
Received: from z50.gdansk-morena.vectranet.pl
 (109241122244.gdansk.vectranet.pl. [109.241.122.244])
 by smtp.gmail.com with ESMTPSA id e8sm3621935ljb.45.2020.02.11.16.40.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 16:40:25 -0800 (PST)
From: Janusz Krzysztofik <jmkrzyszt@gmail.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>
Subject: [RFC PATCH 10/14] mtd: rawnand: ams-delta: Add module device tables
Date: Wed, 12 Feb 2020 01:39:25 +0100
Message-Id: <20200212003929.6682-11-jmkrzyszt@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200212003929.6682-1-jmkrzyszt@gmail.com>
References: <20200212003929.6682-1-jmkrzyszt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_164029_447685_C5CDAACA 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jmkrzyszt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Tony Lindgren <tony@atomide.com>, Janusz Krzysztofik <jmkrzyszt@gmail.com>,
 linux-mtd@lists.infradead.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation for merging the driver with "gpio-nand", introduce
module device tables where new device models can be accommodated as
soon as respective support is added.

Signed-off-by: Janusz Krzysztofik <jmkrzyszt@gmail.com>
---
 drivers/mtd/nand/raw/ams-delta.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/mtd/nand/raw/ams-delta.c b/drivers/mtd/nand/raw/ams-delta.c
index 0c88e94e9b71..9857ce25debf 100644
--- a/drivers/mtd/nand/raw/ams-delta.c
+++ b/drivers/mtd/nand/raw/ams-delta.c
@@ -370,11 +370,29 @@ static int ams_delta_cleanup(struct platform_device *pdev)
 	return 0;
 }
 
+static const struct of_device_id gpio_nand_of_id_table[] = {
+	{
+		/* sentinel */
+	},
+};
+MODULE_DEVICE_TABLE(of, gpio_nand_of_id_table);
+
+static const struct platform_device_id gpio_nand_plat_id_table[] = {
+	{
+		.name	= "ams-delta-nand",
+	}, {
+		/* sentinel */
+	},
+};
+MODULE_DEVICE_TABLE(of, gpio_nand_plat_id_table);
+
 static struct platform_driver ams_delta_nand_driver = {
 	.probe		= ams_delta_init,
 	.remove		= ams_delta_cleanup,
+	.id_table	= gpio_nand_plat_id_table,
 	.driver		= {
 		.name	= "ams-delta-nand",
+		.of_match_table = of_match_ptr(gpio_nand_of_id_table),
 	},
 };
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
