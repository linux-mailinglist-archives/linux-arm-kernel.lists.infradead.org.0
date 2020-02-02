Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 924CC14FD22
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 14:00:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ddLXP4mXBQcZpuVZSpaOiHxQT7wJEKnrT/wBXhhpBvc=; b=Tqt06dwf8XjiTz
	T8Kq+mHGDsLQM0q//d+Egihb4RGlJTUTiDhR6VpV5G/1id6qMWAspjzOYdGLGU3FVLdxANoncFPeT
	zDwnZihG08oKQFQluVqK1IaLu/yTPunYKEvVrdoaHLjdmOooPm5/bi3A2J1enCC7PzeSdePfzXDbb
	lABlOesvAIu1r+Av/8C0DMy7KZ5jw6KjwmGZ4CgPtuX5Reflh8oalChI7h4LVjpiZt4Zchhfr8rqd
	pwli1AGtwLjN+wQMjOIKOR+PlLirrGmG0IEKDyg56lFNq3D2BeNoA+Ghb5vxOSSLwUruwqMJSmi1f
	mAoB79rSjs3RlqcHL2Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyErI-0007od-Rq; Sun, 02 Feb 2020 13:00:16 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyEr9-0006fV-AB
 for linux-arm-kernel@lists.infradead.org; Sun, 02 Feb 2020 13:00:08 +0000
Received: by mail-yw1-xc44.google.com with SMTP id l22so10484596ywc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Feb 2020 05:00:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AH44IHY8LM9hNPEbRtsEm9RIhekLfcrQmhRGmajQBHY=;
 b=JgIz0s5wSKGBK+tfeB5/vDAeI091XJabpzldKR9UAgT7pUXlJhhRG5HCDBI5LeKfic
 Czkl7Js+nI6YwGu4UXoN9oPjZqLGLeDYTnn+m2bo3FGLo4OzdYElucGW886I+Rz3JdC9
 OX1yzKc/bUZyKyP3MdPowqOhhdcpiN+8WIHZ1l5quntT1INEmQ2oaeLEOBBMBegZbvbc
 jHlXkx4UL7Snn9psqzZa+EPnLs7z1hbAaU4xuxTWP0t9VgawcsH3vtNergQT5pFOER57
 aOmCkJpKdgjgN0JpMWCwHkid8uEPyhFBjusCkDfrShvbsvthHYTMKNbX33rnbe5f99g6
 qgUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AH44IHY8LM9hNPEbRtsEm9RIhekLfcrQmhRGmajQBHY=;
 b=CmO/BUIgvpD2uLC9+0Ptgnbng+8/3tYbPAqV7OGXbkQrPqFgtE4iTPibmCwsrkLJUf
 L3oi52owNCkFAsLVxb5N9zOae4QZrlH7UXC75nzFJKM8/W8mtc9TFs+JC78Ya4bsGXF1
 ScnkQN64XDl3pxHQ6fDrboN7APwS8BYNi8Z8CgQHnvQ2l1Xo4LBhC0LFVNW6Z+X6mrm6
 olmI2+DcHetwNhyXM4kOG2T9w2wfkKRb+QVyM7k8f/3a+4R114DGDG88Y5hGgH6TGM+M
 vNDlqBAYoH11VmtaCZRvkr0BHUptzL7CraeEd493hApOhrTGuCYfyE3R1iFTIPMDzMBB
 An1Q==
X-Gm-Message-State: APjAAAU0j+8HpQN5O0i6tEYH5UX24lGoYyhRnLKuoUMrU99j1WnG03Rw
 SZ9U5yYwlRJdXD0jWfzVQWM=
X-Google-Smtp-Source: APXvYqy+sjtTqD37PK/Ym1JLqM0bJO+tVP/hDjqdMipCl/DoBz8JAHptrKJ0YAzBNhEkhgjpLJA9RA==
X-Received: by 2002:a0d:d1c6:: with SMTP id
 t189mr14350608ywd.393.1580648401835; 
 Sun, 02 Feb 2020 05:00:01 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id m137sm7090013ywd.108.2020.02.02.05.00.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 05:00:01 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-spi@vger.kernel.org
Subject: [PATCH V2 1/5] spi: fspi: enable fspi on imx8qxp and imx8mm
Date: Sun,  2 Feb 2020 06:59:46 -0600
Message-Id: <20200202125950.1825013-1-aford173@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_050007_379387_37CAAAE3 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ashish Kumar <ashish.kumar@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Yogesh Gaur <yogeshgaur.83@gmail.com>, Mark Brown <broonie@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Han Xu <han.xu@nxp.com>,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Han Xu <han.xu@nxp.com>

Pull in this patch from NXP's upstream repo to
enable fspi on imx8qxp and imx8mm

Signed-off-by: Han Xu <han.xu@nxp.com>
Signed-off-by: Adam Ford <aford173@gmail.com>
---
V2: Reorder s-o-b lines to give credit in proper order.

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
