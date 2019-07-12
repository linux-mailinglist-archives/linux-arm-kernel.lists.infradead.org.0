Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0565D67602
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 22:43:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ERlvZVkfw4Lwvl2dDS4ZFbtcDGOaNYY1iF9LF4Mnf7k=; b=RQ/
	w3ftDfIXFiRibcVGrx6k7oD2Yjl8rtJNpNjdvmRrialLXBr7EwhDMxQ0x7EDY+LxqsjvxJlfWroix
	sAhY5HTWMedrdEyoIwbsnkZd55CLnLM/mRM2+QYjMvj63NaXkqEMlebrJlXP4ViICRGQ2WnoWl/bP
	Illlnr5VFEAxsK0PL0uN9oNTR5vn7TLsv7r/lGr0uvqnNTNrHbaSF57fJBQ0xnYUGQfrxa9aQrbff
	sZS5bxJj1uI+G5kHPWtu8tn4n26z5EavUbiInx+F1UUVxcNjrAf4aYblZkhdFkeYok0xo4jfl5sG8
	U6HMZIaOtiiEbbVeYYP+uD47WGLaM/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hm2OG-00064D-3Z; Fri, 12 Jul 2019 20:43:36 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hm2O4-00062y-EW
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 20:43:25 +0000
Received: by mail-io1-xd42.google.com with SMTP id g20so23201160ioc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 13:43:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=0YO9X8JrVMhxS3C8ry3P1NpNE6uCJVJpb/vpFCRQayg=;
 b=YFsPT/CbCO1LYM1qhpMoKr6yhOs70HOyZxWiAG04T809bxgw3U/rSVm6+OJCWo3/cW
 Nu8hPOb34VukBWTpMKr3Mg4MG2b48byWj4eT6FSODq0k3+HJnV/YX3oDjoaAMnPdvcs0
 PW+Iiq/XxaJHg0n5CZbLmrhMYGel/fLkar8lRQiWprQlMZnpnoAN6VU3FRxAuM2yNYIZ
 X74+KB5GrKTBV1HI3OWGXUsirgVu+flnGc4YnMZZTCFd+U6nIkwedcf08xS0TSS1eB13
 5BSmF77HrzE/1Bq+SVi5h3Iqw0qViCMn/JsnWiQwhgr7fdTCc+nPbVbqFYrtnWnZ2Up/
 an1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=0YO9X8JrVMhxS3C8ry3P1NpNE6uCJVJpb/vpFCRQayg=;
 b=jWfOUUHFF7c9k5p4sPSVyD9XLjArQfx27UgcLJHPDBYHYxUD492PPsYhkfSLEhOaZh
 tVqd+x6bPP4xsY8JnPHX6LLjK5DcC2U9qPFVSPYDSy7uVZb7fjJWJviPU+ThlDZeLajd
 b5dDcJhx2tpA5+OVdK7Bana1S3WmpYfC8e2GlfA1Pgq7xR0UxbWzqgb3Xff24qEyazYs
 H+T1OyY1xaIfMHTU1gl2R0ba88HTuVVTY399+6SQhSLXbDvHmWj25Enr3dcEG7J4L8Fw
 LY0QjqvzNNjInoxDYDj0xF8v9O2vTUqE95Hs+73/04aU+m4pmjK2mb2dlFA9kFm5UDkR
 xvOg==
X-Gm-Message-State: APjAAAXJCdEqFCbDDEyWMCl6e+OmCThhsemtECuNS6q1J2HaSVivWKvL
 IIO0Fk2IXOCENFveXgQtpMk=
X-Google-Smtp-Source: APXvYqxL6GxakGiydUYH7NlDpEoU/Uu55hmMkr19MRFB1ktpzJaP36AAZU5i0ateJw4T+t+kQFk8tg==
X-Received: by 2002:a5d:8702:: with SMTP id u2mr13323425iom.228.1562964201758; 
 Fri, 12 Jul 2019 13:43:21 -0700 (PDT)
Received: from localhost.localdomain ([198.52.185.227])
 by smtp.gmail.com with ESMTPSA id l14sm9725013iob.1.2019.07.12.13.43.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 12 Jul 2019 13:43:21 -0700 (PDT)
From: Sven Van Asbroeck <thesven73@gmail.com>
X-Google-Original-From: Sven Van Asbroeck <TheSven73@gmail.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 1/2] bus: imx-weim: optionally enable burst clock mode
Date: Fri, 12 Jul 2019 16:43:15 -0400
Message-Id: <20190712204316.16783-1-TheSven73@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_134324_509983_C522CFFF 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thesven73[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (thesven73[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To enable burst clock mode, add the fsl,burst-clk-enable
property to the weim bus's devicetree node.

Example:
weim: weim@21b8000 {
	compatible = "fsl,imx6q-weim";
	reg = <0x021b8000 0x4000>;
	clocks = <&clks 196>;
	#address-cells = <2>;
	#size-cells = <1>;
	ranges = <0 0 0x08000000 0x08000000>;
	fsl,weim-cs-gpr = <&gpr>;
	fsl,burst-clk-enable;

	client-device@0,0 {
		compatible = "something";
		reg = <0 0 0x02000000>;
		#address-cells = <1>;
		#size-cells = <1>;
		bank-width = <2>;
		fsl,weim-cs-timing = <0x00620081 0x00000001 0x1c022000
				0x0000c000 0x1404a38e 0x00000000>;
	};
};

Signed-off-by: Sven Van Asbroeck <TheSven73@gmail.com>
---
 drivers/bus/imx-weim.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/bus/imx-weim.c b/drivers/bus/imx-weim.c
index db74334ca5ef..cb7d5504a22a 100644
--- a/drivers/bus/imx-weim.c
+++ b/drivers/bus/imx-weim.c
@@ -19,6 +19,8 @@ struct imx_weim_devtype {
 	unsigned int	cs_count;
 	unsigned int	cs_regs_count;
 	unsigned int	cs_stride;
+	unsigned int	wcr_offset;
+	unsigned int	wcr_bcm;
 };
 
 static const struct imx_weim_devtype imx1_weim_devtype = {
@@ -37,6 +39,8 @@ static const struct imx_weim_devtype imx50_weim_devtype = {
 	.cs_count	= 4,
 	.cs_regs_count	= 6,
 	.cs_stride	= 0x18,
+	.wcr_offset	= 0x90,
+	.wcr_bcm	= BIT(0),
 };
 
 static const struct imx_weim_devtype imx51_weim_devtype = {
@@ -192,6 +196,7 @@ static int __init weim_parse_dt(struct platform_device *pdev,
 	struct device_node *child;
 	int ret, have_child = 0;
 	struct cs_timing_state ts = {};
+	u32 reg;
 
 	if (devtype == &imx50_weim_devtype) {
 		ret = imx_weim_gpr_setup(pdev);
@@ -199,6 +204,17 @@ static int __init weim_parse_dt(struct platform_device *pdev,
 			return ret;
 	}
 
+	if (of_property_read_bool(pdev->dev.of_node, "fsl,burst-clk-enable")) {
+		if (devtype->wcr_bcm) {
+			reg = readl(base + devtype->wcr_offset);
+			writel(reg | devtype->wcr_bcm,
+				base + devtype->wcr_offset);
+		} else {
+			dev_err(&pdev->dev, "burst clk mode not supported.\n");
+			return -EINVAL;
+		}
+	}
+
 	for_each_available_child_of_node(pdev->dev.of_node, child) {
 		ret = weim_timing_setup(&pdev->dev, child, base, devtype, &ts);
 		if (ret)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
