Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1D31F8510
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 22:17:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=pUVTrcjh4sRSreRSDMjAEmrN+DX+uKSB6PzNu9mX5ns=; b=Ggc
	bKk+5R7tC2oJ2FJmvCPqr71UwUhgDP/LztIaXSB+zUoVMTNadNt+p6jRt8sf6oRado05+7DlzVvSy
	GtQdi7sVyHgQ4ODLjaZdoLONHnco3XM9OnQdhy4ZO1LfaJ74eeR8JT0FhXqJApxK1SWoGrhav0C2g
	RrsGXFngXrrBr1/OZObwjwaOjkhY41oOgmgTqL5j6slEPQhrHdjWFJLAeMovllCDMGn7YbydjOPA6
	eCa+xqf6ooSyN69CWIsOTZnViPpi9Yq3JdNeEYWA1484TY8yx4GqZCqFFVta4jv0LzI6k3WupkN3a
	grwSGT7dPBEh2k7JXuUIWLT5SHm+/pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkCaa-0006Ev-7z; Sat, 13 Jun 2020 20:17:16 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkCaS-0006EW-NE
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 20:17:10 +0000
Received: by mail-qt1-x844.google.com with SMTP id j32so9747875qte.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 13:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=XvmodwFRSbxZ4SI7zIxONP0m2KmZ4cn7dUMYubaK5Ks=;
 b=TVtRDFFMNSw/l66ad19EjvoamliFx2a/IbcJQJllefvOFy6pOlBriThoJJMflyHn9r
 mMfY2TQunbbGvbg5mEvBJGkEX/qtcUqXJjkDx++ZxZgiOhZz5j1wJHoHBQ1LIaINBS16
 0WL4P9pN8Z1PexylK67mot7qXfFlTiHieZ96xUVBFxBWmlpHob9UgvAnei0Ar5u4sMtL
 ME2bQgH5o/RbrXViwgvrOhH4loFcfg2NEqYPo0DYsFu38uEBKBr//Jzu2EY/uMFAXTpA
 QYN2iOcVgDRuCs47X+Id4L8AAb3/F9DyZ7m7GaNO45gPGeCaXgtkosoQnMclldGinoZk
 GDgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=XvmodwFRSbxZ4SI7zIxONP0m2KmZ4cn7dUMYubaK5Ks=;
 b=JCi2m1S9qD2vM7Zq4ubk3WznM5lcvx1s3wy+UoZZUAkPlhIqcGX0gCGPbvDuthE7BL
 lxyk1cvhu2jqxAHCie3EOuo+1pxj0DoN547mqm9F/kZUXx7VGASPOGtLoK7aJahh1kzI
 m22o4dkl9op6JgrQVSqAkuE3CdFjfwXWMYHk7ZJj00o4A0wQcWqD6LL5ll0Lf8/JB7q+
 E8P5w2DkVdsUB6oV8BZrC02G37gJzY9WmOzYiFNg+DtISUQw0gZF2j90kBzXmHCb+c7L
 27RzR7NIoq4etCwaVIbXYnVEzDMva48R+OIU3G6aMAQW3qiULpKo+qOkQrFGTNWaVnvn
 Qlug==
X-Gm-Message-State: AOAM530d+PWxI9Kip6m+K7U2V/cSJmHjWXSbGbYDCYKeDKFNgsrUSqKp
 qHHacCcuX1tkSant1Z4p72U=
X-Google-Smtp-Source: ABdhPJwSVNAUudjU7V0EJt0q1PtzNAfLsF+rab1TmlO6E01e8qp0NXHIRvbCZ/1ah1drJ+1VTtPW4Q==
X-Received: by 2002:ac8:4790:: with SMTP id k16mr9181655qtq.362.1592079427023; 
 Sat, 13 Jun 2020 13:17:07 -0700 (PDT)
Received: from localhost.localdomain ([72.53.229.195])
 by smtp.gmail.com with ESMTPSA id n25sm6969264qkk.76.2020.06.13.13.17.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Jun 2020 13:17:06 -0700 (PDT)
From: Sven Van Asbroeck <thesven73@gmail.com>
X-Google-Original-From: Sven Van Asbroeck <TheSven73@gmail.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v1] ARM: imx6plus: enable internal routing of clk_enet_ref
 where possible
Date: Sat, 13 Jun 2020 16:17:03 -0400
Message-Id: <20200613201703.16788-1-TheSven73@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_131708_772770_2FB8CA6A 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thesven73[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [thesven73[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On imx6, the ethernet reference clock (clk_enet_ref) can be generated
by either the imx6, or an external source (e.g. an oscillator or the
PHY). When generated by the imx6, the clock source (from ANATOP)
must be routed to the input of clk_enet_ref via two pads on the SoC,
typically via a dedicated track on the PCB.

On an imx6 plus however, there is a new setting which enables this
clock to be routed internally on the SoC, from its ANATOP clock
source, straight to clk_enet_ref, without having to go through
the SoC pads.

Board designs where the clock is generated by the imx6 should not
be affected by routing the clock internally. Therefore on a plus,
we can enable internal routing by default.

To: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Sven Van Asbroeck <TheSven73@gmail.com>
---
 arch/arm/mach-imx/mach-imx6q.c              | 18 ++++++++++++++++++
 include/linux/mfd/syscon/imx6q-iomuxc-gpr.h |  1 +
 2 files changed, 19 insertions(+)

Tree: next-20200613

diff --git a/arch/arm/mach-imx/mach-imx6q.c b/arch/arm/mach-imx/mach-imx6q.c
index 85c084a716ab..4d22567bb650 100644
--- a/arch/arm/mach-imx/mach-imx6q.c
+++ b/arch/arm/mach-imx/mach-imx6q.c
@@ -203,6 +203,24 @@ static void __init imx6q_1588_init(void)
 	else
 		pr_err("failed to find fsl,imx6q-iomuxc-gpr regmap\n");
 
+	/*
+	 * On imx6 plus, enet_ref from ANATOP/CCM can be internally routed to
+	 * be the PTP clock source, instead of having to be routed through
+	 * pads.
+	 * Board designs which route the ANATOP/CCM clock through pads are
+	 * unaffected when routing happens internally. So on these designs,
+	 * route internally by default.
+	 */
+	if (clksel == IMX6Q_GPR1_ENET_CLK_SEL_ANATOP && cpu_is_imx6q() &&
+			imx_get_soc_revision() >= IMX_CHIP_REVISION_2_0) {
+		if (!IS_ERR(gpr))
+			regmap_update_bits(gpr, IOMUXC_GPR5,
+					IMX6Q_GPR5_ENET_TXCLK_SEL,
+					IMX6Q_GPR5_ENET_TXCLK_SEL);
+		else
+			pr_err("failed to find fsl,imx6q-iomuxc-gpr regmap\n");
+		}
+
 	clk_put(enet_ref);
 put_ptp_clk:
 	clk_put(ptp_clk);
diff --git a/include/linux/mfd/syscon/imx6q-iomuxc-gpr.h b/include/linux/mfd/syscon/imx6q-iomuxc-gpr.h
index d4b5e527a7a3..eb65d48da0df 100644
--- a/include/linux/mfd/syscon/imx6q-iomuxc-gpr.h
+++ b/include/linux/mfd/syscon/imx6q-iomuxc-gpr.h
@@ -240,6 +240,7 @@
 #define IMX6Q_GPR4_IPU_RD_CACHE_CTL		BIT(0)
 
 #define IMX6Q_GPR5_L2_CLK_STOP			BIT(8)
+#define IMX6Q_GPR5_ENET_TXCLK_SEL		BIT(9)
 #define IMX6Q_GPR5_SATA_SW_PD			BIT(10)
 #define IMX6Q_GPR5_SATA_SW_RST			BIT(11)
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
