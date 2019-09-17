Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87508B45EE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 05:15:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nCvkRqHq63ob8ItKEt/8ZmMfgAD7v16sn7llXK+APHM=; b=bQIFCwXgKSdAzpC8tlPA7VXsxq
	0wy+JChqJ2VgAw9uLJFHQjEU+PJRw6aiJ5IWs8g4qkShC2JnMEJmuuHBd5JBwJBM4yLx2TH2sa7dq
	9wzVtB6H9C0aQiNnzsayqc1jCxTvPTweAfVuzT70ZreQ53FLq4bJCbKCrrOElhCv2MDRPO8SM/vlZ
	RHBbceFHmcG86p/EqT234nwBvsY7LPvq97XGUiP8n0G8HLWWym6HV1FbfQ2S6QBxoXgDpP4Tuj3ts
	9Dgvh1CpeyrWz0vaD9K7s0s8m8e8gcR9VXlK5EC+EMPIzHoc09aiWcZrV/Kg6k+qH81iQHr/pR/84
	p747z5+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA3xk-0007PL-Ex; Tue, 17 Sep 2019 03:15:32 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA3wT-00058q-MD
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 03:14:15 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 1B5B71A061D;
 Tue, 17 Sep 2019 05:14:12 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 249851A0029;
 Tue, 17 Sep 2019 05:13:51 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id C53FB402CA;
 Tue, 17 Sep 2019 11:13:36 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 catalin.marinas@arm.com, will@kernel.org, dmitry.torokhov@gmail.com,
 aisheng.dong@nxp.com, ulf.hansson@linaro.org, fugang.duan@nxp.com,
 peng.fan@nxp.com, leonard.crestez@nxp.com, daniel.baluta@nxp.com,
 olof@lixom.net, mripard@kernel.org, arnd@arndb.de,
 jagan@amarulasolutions.com, dinguyen@kernel.org,
 bjorn.andersson@linaro.org, marcin.juszkiewicz@linaro.org,
 andriy.shevchenko@linux.intel.com, yuehaibing@huawei.com,
 cw00.choi@samsung.com, enric.balletbo@collabora.com,
 m.felsch@pengutronix.de, ping.bai@nxp.com, ronald@innovation.ch,
 stefan@agner.ch, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-input@vger.kernel.org
Subject: [PATCH RESEND V5 5/5] arm64: defconfig: Enable
 CONFIG_KEYBOARD_IMX_SC_KEY as module
Date: Tue, 17 Sep 2019 11:12:19 +0800
Message-Id: <1568689939-8871-5-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568689939-8871-1-git-send-email-Anson.Huang@nxp.com>
References: <1568689939-8871-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_201414_061853_FEF22680 
X-CRM114-Status: UNSURE (   6.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

Select CONFIG_KEYBOARD_IMX_SC_KEY as module by default to
support i.MX8QXP scu key driver.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No changes.
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 0a70e10..9c83014 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -314,6 +314,7 @@ CONFIG_INPUT_EVDEV=y
 CONFIG_KEYBOARD_ADC=m
 CONFIG_KEYBOARD_GPIO=y
 CONFIG_KEYBOARD_SNVS_PWRKEY=m
+CONFIG_KEYBOARD_IMX_SC_KEY=m
 CONFIG_KEYBOARD_CROS_EC=y
 CONFIG_INPUT_TOUCHSCREEN=y
 CONFIG_TOUCHSCREEN_ATMEL_MXT=m
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
