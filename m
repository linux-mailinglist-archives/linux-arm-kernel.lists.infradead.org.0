Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E71591608DF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 04:27:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Se5t5YNOm0M1IVg4Jew6ovhthjsRov9fm5eWHb57IN4=; b=X9UXCoxNsXJ/VT1wRZc89TgMc3
	KhoTTS1Dd/WaLQff0Spysz1G8ylXmdkVI0wIwkio7XW1Eu4LLjhHkF9kr3QPvTqURblo+Pd+RolCM
	liA2RXGMgSdDkWhJ+zQ8q+7zroiZgBBH2IrF/1vKrsm11mxuVVyIsnQIpvRPRT5dISJhRMhcWFJbW
	Ep5e78hMyAX28MXLMSME6Oh5vxrU+Jz5v+qYMuhCkmBj+JV3Y+xLaGtPpbucuLrYZHICDeiXLWTnt
	DG0tuT02AomMbTZJUOmVVOwx2bMZlZryDtGyBx4FlpWOXby90EYl1FY0qmtM8y+9u5Ehdf/PLz9J9
	ldY8ZIFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3X3z-0007xd-SO; Mon, 17 Feb 2020 03:27:16 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3X3P-0007UV-Ig
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 03:26:41 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 61CEA1A1F30;
 Mon, 17 Feb 2020 04:26:38 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9D2761A1F34;
 Mon, 17 Feb 2020 04:26:28 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 5F0E4402DD;
 Mon, 17 Feb 2020 11:26:17 +0800 (SGT)
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de
Subject: [PATCH 3/7] bindings: clock: imx8qxp: add "fsl,
 imx8qxp-lpcg-cm40" compatible string
Date: Mon, 17 Feb 2020 11:19:17 +0800
Message-Id: <1581909561-12058-4-git-send-email-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581909561-12058-1-git-send-email-qiangqing.zhang@nxp.com>
References: <1581909561-12058-1-git-send-email-qiangqing.zhang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_192639_749049_95061F20 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org, peng.fan@nxp.com,
 fugang.duan@nxp.com, Anson.Huang@nxp.com, festevam@gmail.com,
 linux-kernel@vger.kernel.org, Joakim Zhang <qiangqing.zhang@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 daniel.baluta@nxp.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add "fsl,imx8qxp-lpcg-cm40" compatible string.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt b/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt
index 965cfa42e025..dcb9208a0e02 100644
--- a/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt
+++ b/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt
@@ -21,6 +21,7 @@ Required properties:
 		  "fsl,imx8qxp-lpcg-img",
 		  "fsl,imx8qxp-lpcg-lsio",
 		  "fsl,imx8qxp-lpcg-vpu"
+		  "fsl,imx8qxp-lpcg-cm40"
 - reg:		Address and length of the register set
 - #clock-cells:	Should be <1>
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
