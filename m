Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 596AB1364DF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 02:35:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rGubHHdh97IR34CV9yNdgbJhOT6hP/CHf8ZDaaJZh30=; b=TQkYrJtHIBVHiGEKYW2VKP7iZr
	WRQP90lKwhNrfcKdJ0qHSnUgoW0KnWqkpVIE8WWnHu0afIDxAffJrXHr1qkqdHQTpYELbsjlGDGwa
	Gm0wsZlRgu1/eo3314mHVldvmSlU6VeWJZO1RWusXiJclt/pV5TtR1qoPotJ4VBo1xf02vcQDO3AG
	Pp8FYn2qoo4zNMyx/58b2xpafn62f9uvuyWQn7QAMtvNcNboGoOqqD9wRwpO0vo8C2ryuwzF6Sn8k
	QAtyK/YpbGq+9n8xEZMW8/MKgmYXYjJ9WGJfljkbrXyOrcYno2H1Uj0Xmb3EHySXyFGvds92NilER
	wibYkDVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipjCn-0005P9-B6; Fri, 10 Jan 2020 01:35:17 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipjCW-0005Cx-5Q
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 01:35:01 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 633E31A14AB;
 Fri, 10 Jan 2020 02:34:58 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 720651A0B97;
 Fri, 10 Jan 2020 02:34:47 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 6AA27402C1;
 Fri, 10 Jan 2020 09:34:34 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: aisheng.dong@nxp.com, festevam@gmail.com, shawnguo@kernel.org,
 stefan@agner.ch, kernel@pengutronix.de, linus.walleij@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, s.hauer@pengutronix.de,
 catalin.marinas@arm.com, will@kernel.org, abel.vesa@nxp.com,
 bjorn.andersson@linaro.org, olof@lixom.net, maxime@cerno.tech,
 leonard.crestez@nxp.com, dinguyen@kernel.org,
 marcin.juszkiewicz@linaro.org, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V6 3/3] arm64: defconfig: Select CONFIG_PINCTRL_IMX8MP by
 default
Date: Fri, 10 Jan 2020 09:30:44 +0800
Message-Id: <1578619844-22926-3-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578619844-22926-1-git-send-email-Anson.Huang@nxp.com>
References: <1578619844-22926-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_173500_345228_4EFD43EE 
X-CRM114-Status: UNSURE (   6.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Enable CONFIG_PINCTRL_IMX8MP by default to support i.MX8MP
pinctrl driver.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
---
No changes.
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index fdbc2cd..635de88 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -402,6 +402,7 @@ CONFIG_PINCTRL_SINGLE=y
 CONFIG_PINCTRL_MAX77620=y
 CONFIG_PINCTRL_IMX8MM=y
 CONFIG_PINCTRL_IMX8MN=y
+CONFIG_PINCTRL_IMX8MP=y
 CONFIG_PINCTRL_IMX8MQ=y
 CONFIG_PINCTRL_IMX8QXP=y
 CONFIG_PINCTRL_IPQ8074=y
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
