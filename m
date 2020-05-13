Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB031D18A2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 17:04:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v2f8ik1k7sNHJR8XjNZPgPcMZpEVYBQT6IGcctUqcwc=; b=fHjAtAzibFVlDW
	JcJIkIToWRCXPSF0pCYqM7fnWPGH5YCDkBGT0fFJlNRfo1+tOb3KhVHbb4NZIOsn+H6Kpm1f5f0DY
	AOuk75Rhlp63Pexvlh6qU+hTIJLhbcnq8j2xKqueIhN/CG7mR2FfsSUPU8veVIns3oXmW4bwrzfVO
	oofxD4QNhW4NSsXSXJuaV43fYHDYgWSypUqvPqpQLX4sP92wBgPB439gb/x8b5NkKZyIOe7ARZObD
	6B94xOKGnf696yuk2w22aehsy24LmHbdipKTKGLp2zl8dsY1b6v+Tma3+Pf5lcD5rN1NPn+nPxcIO
	+51FWG4C5jANwkU9Offg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYsvo-0001vB-Op; Wed, 13 May 2020 15:04:24 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYsrg-0004Pl-7m
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 15:00:10 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04DEwJv0008668; Wed, 13 May 2020 16:59:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=QTCaThy3GVFCYOhCkPvOzFwaT3nv8roy2DLEbs0qBbo=;
 b=c+3ilERflSrBijQAJJe6KdPE0lLVj+4f4Lcx5gSA2cUC/2uEPNyJFLy00GETTt6p7y5f
 fHKSf6vukoNpXa6w+E2JH8mssiWxFPrxm6618QjqKBXlBCMgd3dvH1raB09XvRMzQBJa
 vagqwuh5vSiblFFvojO19IL/qMnTVrHMrFX5AoGZD1lIGkkKZDHyonrP1nbDbcrrzWzG
 nYD5XZMCuTeSOseoVNpt8Xg+Hk8No/PAIJByhcmB21+E9LgFT/3AOM/s9oC7JjfPILHW
 3QNFfk9Jk3Si/44+ky826t7QZWG4n5MyGuohjaZWC1kdQ2wfrowb825vOWlNE9VSHT42 IA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3100vqdeb4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 13 May 2020 16:59:58 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1BE9310002A;
 Wed, 13 May 2020 16:59:58 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 084EC2D3006;
 Wed, 13 May 2020 16:59:58 +0200 (CEST)
Received: from localhost (10.75.127.50) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 13 May 2020 16:59:57
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <linus.walleij@linaro.org>, <robh+dt@kernel.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <gregkh@linuxfoundation.org>
Subject: [PATCH 15/15] dt-bindings: usb: dwc2: Fix issues for stm32mp15x SoC
Date: Wed, 13 May 2020 16:59:35 +0200
Message-ID: <20200513145935.22493-16-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200513145935.22493-1-benjamin.gaignard@st.com>
References: <20200513145935.22493-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG6NODE3.st.com (10.75.127.18) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-13_06:2020-05-13,
 2020-05-13 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_080008_622819_F5F5A1C0 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@st.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Correct the compatible list for stm32mp15x SoC.
Fix the name of the stm32mp15x dedicated supply to be aligned with
what the driver use.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 Documentation/devicetree/bindings/usb/dwc2.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/dwc2.yaml b/Documentation/devicetree/bindings/usb/dwc2.yaml
index 0d6d850a7f17..1357b861310d 100644
--- a/Documentation/devicetree/bindings/usb/dwc2.yaml
+++ b/Documentation/devicetree/bindings/usb/dwc2.yaml
@@ -44,7 +44,9 @@ properties:
       - const: st,stm32f4x9-hsotg
       - const: st,stm32f7-hsotg
       - const: st,stm32mp15-fsotg
-      - const: st,stm32mp15-hsotg
+      - items:
+          - const: st,stm32mp15-hsotg
+          - const: snps,dwc2
       - const: samsung,s3c6400-hsotg
 
   reg:
@@ -90,7 +92,7 @@ properties:
   vusb_a-supply:
     description: phandle to voltage regulator of analog section.
 
-  vusb33d-supply:
+  usb33d-supply:
     description: reference to the VBUS and ID sensing comparators supply, in
       order to perform OTG operation, used on STM32MP15 SoCs.
 
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
