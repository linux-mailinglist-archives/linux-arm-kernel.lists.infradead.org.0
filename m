Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 388FA149AF0
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Jan 2020 15:09:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ioliN4/SFxXHh/3AiOo5cMZjig8y0qann+ZTzgCjubw=; b=LvzMhxGQaIFC4b
	2JX/SkMiVAaUae8F4gAeb3BnliZ/btAmjQY6lVhZyfyfzu/NYYF4Sz+3eCeGkmtbUjEhI+94UOfAC
	iByF+u+x3qBATsdHj4JJiYSes2qeKvl0cUbFgMIdiyY2amFVmVYjrYsT/0c76ZiYxgKDl5XkFlszq
	AZ5R0AltQx9UxN7BhTBTas4Nu703xpXZWkCgiijw/drn8stOGeQqN8XtfVgusCN3goGpWhbkbO4AR
	3gkjDy2lunt42Fz4EhaMkItSsUycAvRr3KZHdSow1i38ltcvYJ6oVZ0iyW/NWJUCnykTiHGOKBU8v
	pjURD2i7TPJtthzTfTeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivibj-000165-Jc; Sun, 26 Jan 2020 14:09:47 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivibU-00014z-Jg
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Jan 2020 14:09:34 +0000
Received: by mail-yw1-xc44.google.com with SMTP id i190so3495660ywc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Jan 2020 06:09:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AIBXGruVtXLWGDKFA1TCcvHJQqqB8GBIh9kNTOb/fuk=;
 b=Mk4oCwNGg6HxZOtQSZFkfJHL9c2GyiV2XZSrCjIZLjVPjFswi+0SA3YyY735R1464d
 GdbjNQpbIy74Y7/IXA+Zxf1q761kzZujmIa9tQOA9zWjNBXcXlp4aoTi2RjczfRToK7j
 g7xN+PI9jYpjf27CWaDNgToDXfzJ0/fTnu0wC8ZjWfvaX5pl6isPQ+xlQz18JttWgltn
 15X8obeoJYk10blNGh+jlccabPGO06rOfqIXQdieCaOmLN3RfczNKpsSYOE2S+Q0oopx
 Hi/OOdbuNjJCajIGkP9AF1xHcjRZ2yB8MrN/WWwDf+7q3pTM54XQf89HTIufhSiYPRkU
 o4UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AIBXGruVtXLWGDKFA1TCcvHJQqqB8GBIh9kNTOb/fuk=;
 b=YJi0G+H8NPTw3OOwUVjLMY1oQCuWiAcF9KMylDJKx4oAU8iDvH6R9DWEvkJeqr9Z5g
 K4WPPvDehpFkRFMLra2dDNoY2jAM0icVGJpD9QHnJaBY8dj8zPyTVEhm4vvZijxkK1UJ
 j/1uXRtjHZcV0sNqQTlXdaqVrgZpWOeqaIVoY88XlPwaBtNSnBExDRHnyLaMCzjIaUy+
 XBVolBzHlxHndTGtL3eo8dtTtBbPi6KK09wrvgIwfl6ksspPMtKQ42rJXTM5OnJ+5bdb
 JH5E+Pr8IidnSvaWFHBD5cnMB5yz6snTIsmKklUMOQsNlxeYKhGw9uukMiac6mRL9kws
 0d/A==
X-Gm-Message-State: APjAAAX9m0uWG7hsJ1n/zjMfKuMmU6Ox16ZqZOLQehQmnaHkLAPV/URy
 JpR1Ibuje6pNeMZBI/VPWHo=
X-Google-Smtp-Source: APXvYqzDzxEFyqha9UjT6YyU/ysiOH2LW1TWq1QPbgfRd5yEbDaYb4T5n+BpcGks0XD8Em3+6O8+YQ==
X-Received: by 2002:a0d:ccd2:: with SMTP id o201mr8773523ywd.492.1580047770669; 
 Sun, 26 Jan 2020 06:09:30 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id a12sm5237214ywa.95.2020.01.26.06.09.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Jan 2020 06:09:30 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-spi@vger.kernel.org
Subject: [PATCH 1/5] spi: fspi: enable fspi on imx8qxp and imx8mm
Date: Sun, 26 Jan 2020 08:09:08 -0600
Message-Id: <20200126140913.2139260-1-aford173@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_060932_674674_DDB9EBC8 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ashish Kumar <ashish.kumar@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Yogesh Gaur <yogeshgaur.83@gmail.com>, Mark Brown <broonie@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, han.xu@nxp.com,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Han Xu <han.xu@nxp.com>

Pull in this patch from NXP's upstream repo to
enable fspi on imx8qxp and imx8mm

Signed-off-by: Adam Ford <aford173@gmail.com>
Signed-off-by: Han Xu <han.xu@nxp.com>

diff --git a/drivers/spi/spi-nxp-fspi.c b/drivers/spi/spi-nxp-fspi.c
index 8c5084a3a617..00c7899428a1 100644
--- a/drivers/spi/spi-nxp-fspi.c
+++ b/drivers/spi/spi-nxp-fspi.c
@@ -324,6 +324,22 @@ static const struct nxp_fspi_devtype_data lx2160a_data = {
 	.little_endian = true,  /* little-endian    */
 };
 
+static const struct nxp_fspi_devtype_data imx8mm_data = {
+	.rxfifo = SZ_512,       /* (64  * 64 bits)  */
+	.txfifo = SZ_1K,        /* (128 * 64 bits)  */
+	.ahb_buf_size = SZ_2K,  /* (256 * 64 bits)  */
+	.quirks = 0,
+	.little_endian = true,  /* little-endian    */
+};
+
+static const struct nxp_fspi_devtype_data imx8qxp_data = {
+	.rxfifo = SZ_512,       /* (64  * 64 bits)  */
+	.txfifo = SZ_1K,        /* (128 * 64 bits)  */
+	.ahb_buf_size = SZ_2K,  /* (256 * 64 bits)  */
+	.quirks = 0,
+	.little_endian = true,  /* little-endian    */
+};
+
 struct nxp_fspi {
 	void __iomem *iobase;
 	void __iomem *ahb_addr;
@@ -1076,6 +1092,8 @@ static int nxp_fspi_resume(struct device *dev)
 
 static const struct of_device_id nxp_fspi_dt_ids[] = {
 	{ .compatible = "nxp,lx2160a-fspi", .data = (void *)&lx2160a_data, },
+	{ .compatible = "nxp,imx8mm-fspi", .data = (void *)&imx8mm_data, },
+	{ .compatible = "nxp,imx8qxp-fspi", .data = (void *)&imx8qxp_data, },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, nxp_fspi_dt_ids);
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
