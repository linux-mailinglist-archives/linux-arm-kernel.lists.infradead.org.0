Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6079458CE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 11:35:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UXNV6h8NGHTvPqJLH1xIOeGx2TBChiRZeJnkLA6+qdE=; b=kxqHAtF9Y8Ppg5jYyDPlee2Aue
	fOOhvFopGDZZ1rVUXYJcVek7JTV+u6OMWWkaOzMOkNxJaH5f3i3mSNMiBk9CeiIydQ3kZ03O77QST
	an6/j1hlxcajILfmk975EwRiivS7d532xk3vSvOonupHgKZOAr1/d0Sq0i+NMteELqZmi9sY38R9Y
	Dig73FgwwRXnX7Y0Z6eOfgdQxKHTVcfXhsP0hw21meFNpTi6J3YR2ECS/L4hUxoEVgSyYl3Csr5uY
	VGYS1wmdEFs1CslqZfndBzMSWEBkSvBVNAJW0Xj6sP2KUJX+KTYjd12Nq4GBHnPPsiTKS6Ka237Dl
	M6+s44rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbicK-0007RI-Ju; Fri, 14 Jun 2019 09:35:28 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbib2-00057H-5F
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 09:34:09 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id F38CE200E50;
 Fri, 14 Jun 2019 11:34:06 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id AB2D5200E60;
 Fri, 14 Jun 2019 11:34:01 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id BDAA34031B;
 Fri, 14 Jun 2019 17:33:54 +0800 (SGT)
From: Peter Chen <peter.chen@nxp.com>
To: balbi@kernel.org,
	shawnguo@kernel.org
Subject: [PATCH v4 4/8] doc: dt-binding: usbmisc-imx: add compatible string
 for imx7ulp
Date: Fri, 14 Jun 2019 17:35:40 +0800
Message-Id: <20190614093544.11730-5-peter.chen@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190614093544.11730-1-peter.chen@nxp.com>
References: <20190614093544.11730-1-peter.chen@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_023408_345500_08E880AD 
X-CRM114-Status: UNSURE (   6.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org,
 Peter Chen <peter.chen@nxp.com>, linux-usb@vger.kernel.org,
 chunfeng.yun@mediatek.com, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, fabio.estevam@nxp.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add compatible string for imx7ulp

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Peter Chen <peter.chen@nxp.com>
---
 Documentation/devicetree/bindings/usb/usbmisc-imx.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/usb/usbmisc-imx.txt b/Documentation/devicetree/bindings/usb/usbmisc-imx.txt
index a85a631ec434..b353b9816487 100644
--- a/Documentation/devicetree/bindings/usb/usbmisc-imx.txt
+++ b/Documentation/devicetree/bindings/usb/usbmisc-imx.txt
@@ -7,6 +7,7 @@ Required properties:
 	"fsl,vf610-usbmisc" for Vybrid vf610
 	"fsl,imx6sx-usbmisc" for imx6sx
 	"fsl,imx7d-usbmisc" for imx7d
+	"fsl,imx7ulp-usbmisc" for imx7ulp
 - reg: Should contain registers location and length
 
 Examples:
-- 
2.14.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
