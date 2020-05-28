Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22FF91E549C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 05:23:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zgI8ihgY6dkTjrO/8vpwmnt3ZeDlJiVMVY1RFLrAHRs=; b=d1n
	6PU5L+m8chpBGtqdUaRwmWgZA5EDVRtqFUr/nVF3iu5D+whCjM7s2mHX8h6aVhaHE0Hqls6/+cEm6
	hOyoW8TyTaWu7WtYZnSZ+uVSJWEYD9DFUcu3MNMvQKSF85gNo7fgO0BmDg+FBgBVD+gGXKIuXQUzD
	DSDdAgRQnf/3KglzlbYHJiLOLGBXLUfpRRaMu6QFfTWyVpoRE5nNdIcXPwkbm1kigbteFrtpmQ8Ky
	kym/P3I8yDYBAp2T9kSgNsNw9zRmFgarItxKkGFI9UGeCswIqx3lfJuPM+ktQIs6qvu4cVNxiTM7Z
	WNYwzQvaml+HcyDB3vVOv7uDmcsEsnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je98j-0005hk-R2; Thu, 28 May 2020 03:23:29 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je98X-0005ff-45
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 03:23:18 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 15CC51A0B98;
 Thu, 28 May 2020 05:23:09 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D609B1A0A5E;
 Thu, 28 May 2020 05:23:00 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id ADB9440280;
 Thu, 28 May 2020 11:22:50 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, daniel.baluta@nxp.com,
 leonard.crestez@nxp.com, peng.fan@nxp.com, aford173@gmail.com,
 jun.li@nxp.com, shengjiu.wang@nxp.com, horia.geanta@nxp.com,
 aisheng.dong@nxp.com, fugang.duan@nxp.com, agx@sigxcpu.org,
 l.stach@pengutronix.de, andrew.smirnov@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] Change i.MX/MXS SoCs ocotp/iim node name to efuse
Date: Thu, 28 May 2020 11:12:46 +0800
Message-Id: <1590635570-8541-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_202317_302237_1B0F42FB 
X-CRM114-Status: UNSURE (   4.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the nvmem yaml schema, it requires the nodename to be one of
"eeprom|efuse|nvram", so need to change all i.MX/MXS SoCs ocotp/iim node
name to efuse:

MXS platforms: i.MX23/28;
i.MX platforms with IIM: i.MX25/27/31/35/51/53.
i.MX ARMv7 platforms with OCOTP: i.MX6QDL/6SL/6SX/6SLL/6UL/7S/7ULP.
i.MX ARMv8 platforms with OCOTP: i.MX8MQ/8MM/8MN/8MP.

Anson Huang (4):
  ARM: dts: imx: change ocotp node name on i.MX6/7 SoCs
  arm64: dts: imx8m: change ocotp node name on i.MX8M SoCs
  ARM: dts: imx: change ocotp node name on MXS SoCs
  ARM: dts: imx: change iim node name on i.MX SoCs

 arch/arm/boot/dts/imx23.dtsi              | 2 +-
 arch/arm/boot/dts/imx25.dtsi              | 2 +-
 arch/arm/boot/dts/imx27.dtsi              | 2 +-
 arch/arm/boot/dts/imx28.dtsi              | 2 +-
 arch/arm/boot/dts/imx31.dtsi              | 2 +-
 arch/arm/boot/dts/imx35.dtsi              | 2 +-
 arch/arm/boot/dts/imx51.dtsi              | 2 +-
 arch/arm/boot/dts/imx53.dtsi              | 2 +-
 arch/arm/boot/dts/imx6qdl.dtsi            | 2 +-
 arch/arm/boot/dts/imx6sl.dtsi             | 2 +-
 arch/arm/boot/dts/imx6sll.dtsi            | 2 +-
 arch/arm/boot/dts/imx6sx.dtsi             | 2 +-
 arch/arm/boot/dts/imx6ul.dtsi             | 2 +-
 arch/arm/boot/dts/imx7s.dtsi              | 2 +-
 arch/arm/boot/dts/imx7ulp.dtsi            | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 2 +-
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 2 +-
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 2 +-
 19 files changed, 19 insertions(+), 19 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
