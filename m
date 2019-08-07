Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC4C84330
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 06:14:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gIFVyDiWAth7lxeOVOCIJlC5SbKJWt2vh2EpgKVnxx8=; b=n2A4fBtG5pGXeQJgBICbIQAA1P
	nKyHvi3zgSXslDm6rk02WP7l9y8fAtabGebGy+KjKBCdKLf2mJ5HN3TkEt5lTDeiuopUXl2rKb80X
	UQKmOUANX7SqUJgkxAyY2XTQZrGSzwTnEVmAgcpst6UytN41NlJKpwCTeF9jwd/NBV4QIweuQhYl6
	UrYTqI/pb1iHiKOvhLs3AjDMZil53ZWdw2286bEax0L92p1dLcYsqFZPSkmv2kpZLs5OokS2ocayG
	qqMrh21D3PHJwGX15suioSHCdU/eG4KLNn4Ya0fI16g9nHBzHUHdWRJKhqbhWLvNnjCuJr7AID2Z7
	//5ZmAig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvDKm-0000bU-Jm; Wed, 07 Aug 2019 04:13:56 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvDK0-0008Ld-NZ
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 04:13:10 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 889E31A06FE;
 Wed,  7 Aug 2019 06:13:07 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 13A041A06E9;
 Wed,  7 Aug 2019 06:13:02 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 0D296402E6;
 Wed,  7 Aug 2019 12:12:54 +0800 (SGT)
From: fugang.duan@nxp.com
To: srinivas.kandagatla@linaro.org
Subject: [PATCH nvmem v2 2/2] dt-bindings: fsl: scu: add new compatible string
 for ocotp
Date: Wed,  7 Aug 2019 12:03:20 +0800
Message-Id: <20190807040320.1760-3-fugang.duan@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20190807040320.1760-1-fugang.duan@nxp.com>
References: <20190807040320.1760-1-fugang.duan@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_211308_920156_8C6171D5 
X-CRM114-Status: UNSURE (   6.40  )
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
Cc: mark.rutland@arm.com, robh@kernel.org, festevam@gmail.com,
 fugang.duan@nxp.com, devicetree@vger.kernel.org, gregkh@linuxfoundation.org,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, kernel@pengutronix.de,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Fugang Duan <fugang.duan@nxp.com>

Add new compatible string "fsl,imx8qm-scu-ocotp" into binding
doc  for i.MX8 SCU OCOTP driver.

Signed-off-by: Fugang Duan <fugang.duan@nxp.com>
---
 Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
index a575e42..c149fad 100644
--- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
+++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
@@ -136,7 +136,9 @@ Required properties:
 OCOTP bindings based on SCU Message Protocol
 ------------------------------------------------------------
 Required properties:
-- compatible:		Should be "fsl,imx8qxp-scu-ocotp"
+- compatible:		Should be one of:
+			"fsl,imx8qm-scu-ocotp",
+			"fsl,imx8qxp-scu-ocotp".
 - #address-cells:	Must be 1. Contains byte index
 - #size-cells:		Must be 1. Contains byte length
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
