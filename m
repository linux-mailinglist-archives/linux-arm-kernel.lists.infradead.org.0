Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F7E172FF0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 05:39:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pEZKyL4OV0qhxjM7gadJcEnvVWr6mzyhXrDmwLNf3ss=; b=b6jjOdksr5OoGg
	bma55vKdm6pxlYrcyEr6jB1EF7hE6HXbLSiCuyk2r6SBdOMelA499bqRN1ZRz9ay8bmWszTDXythy
	cR/1WbnkLdqGcfCwoskwg3IBSSeVykYVQbYP1Mui1Qflpaj/Hipa+ojWRq7ase53SuiV7lPRD2Sl2
	1pwfiE23y2zoPAHtqe9rlQDMP7FsV/kKxBSYxgUPEU7k3nvx6wsXsgEpmfC5ggQ16cNMyj13OlfJc
	xdrJBdIte6VdNnOrsB7BuReKyXyot16Xj9dGK+yZTIKXJmLAbAI/RITAk66h/tZ2MsAeB9CFo587V
	h7Y5p+Lb0Oob0QhlNZwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7XRE-0000uI-In; Fri, 28 Feb 2020 04:39:48 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7XQ4-0000Dm-NO; Fri, 28 Feb 2020 04:38:38 +0000
Received: by mail-pg1-x543.google.com with SMTP id 7so849786pgr.2;
 Thu, 27 Feb 2020 20:38:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QCI1h6XDepXvM9SY2yPFBOaTm7J4GLR1VLmmf1BO1BQ=;
 b=hgFIB8G5XahI8txUYsDG5MShh+0AatjMli8EcASbn9w8027Uc/WNZUIeppsDE5nxwu
 8k1V9RFPmVegaSjuOx5NqPNXyhYFevqXge3mJywpLSUkweXuhEEPympdpxPUfv4+hb7M
 yVr3nweqvyatKHlLAGD5cGjE6180bkWLkRKuZ8d+BlAN7LXt6IsJ7ZOMRZy65LpEx7Ui
 S718KkrhH+sJwpIEeL74ndAs5kA5oN9ZUNx2dNeEdTEWXtc6ryrHznrwd0AtPIkTM4Sl
 YduGSO7MjAqAtPPPGBwrs4jG57l+x4oS+9uKRGtDuTu/gKF8UiMV8AVR31WyIdX3Axb3
 SM8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QCI1h6XDepXvM9SY2yPFBOaTm7J4GLR1VLmmf1BO1BQ=;
 b=Lqt4KDgwMMqQbkshgAsAW0b7uMoKv7JPbmXI8LDsrHohdN8pVIdqhy44SdHNvl+E/t
 fO2jC2Dg4HD8qkiCJ/lVmF4Lo4Fpx2MqO8geoLwlDbP2pYjHc9i6mq0uP9fiTclJ8Q7x
 9YbxrmzXpE6WKdRM7rO7VMKACuosc4GNnpSpVUDm4xxEBJ+Ebkn2DuahyLyT8eAUhJb9
 1byGKailet3g6//KNEfnr8DKq5U9MJp6GSbKXQ56hiFRgCv6Ir7w4KC5aFowJ3nmotWL
 dGdFKwWKhO5R5B5twgs3dX4rGpWJSQrPSpD89hy5ntVS+iwfE/gZ9Zh1LYkX73XlV/TA
 g+WA==
X-Gm-Message-State: APjAAAVej5dtX++V04Q392hfwpOz3MRaYj7iGpg5Qp4WHm6W1sLFSmb1
 +T88kooniK2B3OU8YRWMThss1apb3zSe9JxC
X-Google-Smtp-Source: APXvYqyZ42VI70e6J50zsTaVBDtxBfufPRxVENg+DF+2e5lxd6dM8CgG2DAIqrDLFaRgxCHGRfp6tQ==
X-Received: by 2002:a62:7681:: with SMTP id r123mr2516296pfc.169.1582864715674; 
 Thu, 27 Feb 2020 20:38:35 -0800 (PST)
Received: from localhost.localdomain ([240e:379:962:6595:7b84:9990:1a82:371c])
 by smtp.gmail.com with ESMTPSA id
 196sm9069047pfy.86.2020.02.27.20.38.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 20:38:35 -0800 (PST)
From: Chuanhong Guo <gch981213@gmail.com>
To: linux-mediatek@lists.infradead.org, linux-spi@vger.kernel.org,
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v2 1/4] spi: make spi-max-frequency optional
Date: Fri, 28 Feb 2020 12:36:33 +0800
Message-Id: <20200228043636.559915-2-gch981213@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200228043636.559915-1-gch981213@gmail.com>
References: <20200228043636.559915-1-gch981213@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_203836_815683_7F45BBA4 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Mark Brown <broonie@kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Chuanhong Guo <gch981213@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We only need a spi-max-frequency when we specifically request a
spi frequency lower than the max speed of spi host.
This property is already documented as optional property and current
host drivers are implemented to operate at highest speed possible
when spi->max_speed_hz is 0.
This patch makes spi-max-frequency an optional property so that
we could just omit it to use max controller speed.

Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---
Change since v1:
 new commit

 drivers/spi/spi.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 38b4c78df506..c0c55dc79972 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -1955,13 +1955,8 @@ static int of_spi_parse_dt(struct spi_controller *ctlr, struct spi_device *spi,
 		spi->mode |= SPI_CS_HIGH;
 
 	/* Device speed */
-	rc = of_property_read_u32(nc, "spi-max-frequency", &value);
-	if (rc) {
-		dev_err(&ctlr->dev,
-			"%pOF has no valid 'spi-max-frequency' property (%d)\n", nc, rc);
-		return rc;
-	}
-	spi->max_speed_hz = value;
+	if (!of_property_read_u32(nc, "spi-max-frequency", &value))
+		spi->max_speed_hz = value;
 
 	return 0;
 }
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
