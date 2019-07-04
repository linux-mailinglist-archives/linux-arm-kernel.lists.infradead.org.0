Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCC45F963
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 15:53:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=o9iBdRUy5UqNtlqBfrePlLCWQ4+PoIKBK+5yE2zZCVk=; b=IYF
	K7IzsnJmwlqo8E2brwReWPBTCkDZbOj97KW+ndItIKHA8fQQ6wAUkLHk/AEFwaeCenMOuEZOlpyaC
	LUuMQkavNgS848HFUeW9SYVDKYqjji8If8DvXeMB/10LypLbE8Ee2hMo94JCnK8GavAwCnlx/EAm9
	FAVcbTLjsd+vl9D+FpTMn0c0CUv0XiosAUxsZ7gJWHy8rbX/R6e+YHcVW9/t131dv83YmccrCMXeY
	vXAPgAyjsv6SltJVnRzu875tBpnKIaBUBFc+Lzo7aGlMtT/kjbfuobNIHlh9fnTOroo3KfiWNpw5U
	qibAmfaLwojOT4/YIHAzt5nfQENQ40A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj2As-0000t2-EC; Thu, 04 Jul 2019 13:53:22 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj2Ah-0000s9-Ci
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 13:53:12 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 687B7200D9A;
 Thu,  4 Jul 2019 15:53:05 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 27095200D9D;
 Thu,  4 Jul 2019 15:53:00 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 6A9B9402C0;
 Thu,  4 Jul 2019 21:52:53 +0800 (SGT)
From: fugang.duan@nxp.com
To: robh+dt@kernel.org,
	mark.rutland@arm.com,
	shawnguo@kernel.org
Subject: [PATCH RESEND 1/1] dt-bindings: serial: lpuart: add the clock
 requirement for imx8qxp
Date: Thu,  4 Jul 2019 21:43:55 +0800
Message-Id: <20190704134355.2402-1-fugang.duan@nxp.com>
X-Mailer: git-send-email 2.14.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_065311_569265_7600C2EF 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, daniel.baluta@gmail.com, fugang.duan@nxp.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Fugang Duan <fugang.duan@nxp.com>

Add the baud clock requirement for imx8qxp.

Signed-off-by: Fugang Duan <fugang.duan@nxp.com>
---
 Documentation/devicetree/bindings/serial/fsl-lpuart.txt | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/serial/fsl-lpuart.txt b/Documentation/devicetree/bindings/serial/fsl-lpuart.txt
index 21483ba..3495eee 100644
--- a/Documentation/devicetree/bindings/serial/fsl-lpuart.txt
+++ b/Documentation/devicetree/bindings/serial/fsl-lpuart.txt
@@ -13,7 +13,10 @@ Required properties:
 - reg : Address and length of the register set for the device
 - interrupts : Should contain uart interrupt
 - clocks : phandle + clock specifier pairs, one for each entry in clock-names
-- clock-names : should contain: "ipg" - the uart clock
+- clock-names : For vf610/ls1021a/imx7ulp, "ipg" clock is for uart bus/baud
+  clock. For imx8qxp lpuart, "ipg" clock is bus clock that is used to access
+  lpuart controller registers, it also requires "baud" clock for module to
+  receive/transmit data.
 
 Optional properties:
 - dmas: A list of two dma specifiers, one for each entry in dma-names.
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
