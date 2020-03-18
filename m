Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A9018A329
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 20:29:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gDVQ2LsOeo7OmMGsT1b07DGlSwFMskwxX7i2rSFZ+2A=; b=a5Y/OCB2ktkGCMP8e1b1ZtCDbG
	31oTzpJjR3i/mtkMIRg9Em62g80fCqAiL0suYuJZ7YjnuE845X79pjvFoEHHMQWnOJPZ8Bc+iGDYF
	Yn6MbzUVOcPS/g8P93WI0ChxtUOB8g1zXtoR7KQ55k9hDr+uoTeQprN8nZpdvXNuUO84L8htH1H2w
	YK00iug95YNTxlhB+0FULPRE3YvWWy/eJ93JW7N+1hF3LRHOfbSTSeQo6MIKz7zY3nZVbFAEp9Uzv
	VmJG33ZiElFniGvPCjPjP4ATWOUauRKh5SrZ0vafp8hWAXh5wjxAjKJtRk+/u3dF1yQLAGvEM62lh
	xSjVT3vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEeNY-00004y-G2; Wed, 18 Mar 2020 19:29:24 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEeNL-0008RZ-Hg; Wed, 18 Mar 2020 19:29:12 +0000
Received: by mail-wr1-x441.google.com with SMTP id w16so15532338wrv.13;
 Wed, 18 Mar 2020 12:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=24spxwKs6/lu06D14Gb2r20D9msuLPFYXhBKgOUGLVY=;
 b=e/RATo9W4dh73ey1VeO1DFTpBsoaeBO/sb3+wu9I5BZ4DnG6xs/Fzvnqv2+wU6o+bK
 CB5yNr5Vt+FtbsHgYSE80t+Txf8NJPHdqDgPHfxh0bXiU+wgCkJrpmm/s87WIG0TWiK6
 zOamz7BEEoj4xtqAFGCOFl48gQXf49BoXuyZiaP71lJH8bfxd3FfjAbInUrV4LILb23p
 o/uv5iv2aS1FePjcgLw4sIER9Ek+zIVXvcGamxqobtmqU90tdvFFokcSBeG+3i2U1i47
 MKPY+6bvDkp9oAvYPOo4a5NmX2JMV4Tc/oIg0R77XkWocS63V3xq8RhVEjjnYSIUtX6s
 gB0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=24spxwKs6/lu06D14Gb2r20D9msuLPFYXhBKgOUGLVY=;
 b=DCYHovyVCwzIWHMn2nRGDrUEiVmPZfUu90mM177e0MpiX643j5dvHycwsRLMxsGjPx
 pEDIOYmHKSX0tMeV8cFIE71QEjFTG0YFGp30W/A1Y6MrK4SR4J2ueueQGIr4QcvAveiS
 sAmCd3ZJQF14rDiqhb/mMwB5c7/8zVsqPIYx+XgnXYuHcdTo3/XImONpjWiyGzukqZ2f
 Cyc2/UaKuZB/da70eahXF7NuvRb9F+HKcBx6IgYrk4fTLQ8VV97GgS38KohCoGMDFwHp
 oHDi2xbwBpmN26aYF+aJsL0PrT6WF/fI9NCYGvC5ggAVOYxrESVhe5CB4dj+OlnCBW6z
 JcEA==
X-Gm-Message-State: ANhLgQ2kjvSHoFu+VHlZWxv0KBZIobp7OtpRVBpapNdkvJdHysaq/QoU
 4WXC+eDtwRai9iFiHnmyRGl359Tq
X-Google-Smtp-Source: ADFU+vuJAKgOP6N0WJCkC/0D+fPS5480Ytml+vLa/YcsAurBD7mGJpj/3MStcWaMC+osRkDc+h/ZnA==
X-Received: by 2002:adf:9b96:: with SMTP id d22mr7727492wrc.249.1584559749269; 
 Wed, 18 Mar 2020 12:29:09 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id s131sm5333728wmf.35.2020.03.18.12.29.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Mar 2020 12:29:08 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: kishon@ti.com
Subject: [RFC PATCH 2/2] phy: phy-rockchip-inno-usb2: remove support for
 rockchip, rk3366-usb2phy
Date: Wed, 18 Mar 2020 20:29:01 +0100
Message-Id: <20200318192901.5023-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200318192901.5023-1-jbx6244@gmail.com>
References: <20200318192901.5023-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_122911_596446_7FDF4DC5 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

'phy-rockchip-inno-usb2.txt' is updated to yaml, whereby
the compatible string 'rockchip,rk3366-usb2phy' was removed,
because it's not in use by a dts file, so remove support
in the code as well.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 20 --------------------
 1 file changed, 20 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 680cc0c88..dcdb5589b 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -1299,25 +1299,6 @@ static const struct rockchip_usb2phy_cfg rk3328_phy_cfgs[] = {
 	{ /* sentinel */ }
 };
 
-static const struct rockchip_usb2phy_cfg rk3366_phy_cfgs[] = {
-	{
-		.reg = 0x700,
-		.num_ports	= 2,
-		.clkout_ctl	= { 0x0724, 15, 15, 1, 0 },
-		.port_cfgs	= {
-			[USB2PHY_PORT_HOST] = {
-				.phy_sus	= { 0x0728, 15, 0, 0, 0x1d1 },
-				.ls_det_en	= { 0x0680, 4, 4, 0, 1 },
-				.ls_det_st	= { 0x0690, 4, 4, 0, 1 },
-				.ls_det_clr	= { 0x06a0, 4, 4, 0, 1 },
-				.utmi_ls	= { 0x049c, 14, 13, 0, 1 },
-				.utmi_hstdet	= { 0x049c, 12, 12, 0, 1 }
-			}
-		},
-	},
-	{ /* sentinel */ }
-};
-
 static const struct rockchip_usb2phy_cfg rk3399_phy_cfgs[] = {
 	{
 		.reg		= 0xe450,
@@ -1426,7 +1407,6 @@ static const struct of_device_id rockchip_usb2phy_dt_match[] = {
 	{ .compatible = "rockchip,px30-usb2phy", .data = &rk3328_phy_cfgs },
 	{ .compatible = "rockchip,rk3228-usb2phy", .data = &rk3228_phy_cfgs },
 	{ .compatible = "rockchip,rk3328-usb2phy", .data = &rk3328_phy_cfgs },
-	{ .compatible = "rockchip,rk3366-usb2phy", .data = &rk3366_phy_cfgs },
 	{ .compatible = "rockchip,rk3399-usb2phy", .data = &rk3399_phy_cfgs },
 	{ .compatible = "rockchip,rv1108-usb2phy", .data = &rv1108_phy_cfgs },
 	{}
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
