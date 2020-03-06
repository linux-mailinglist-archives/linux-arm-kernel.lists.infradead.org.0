Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 054C217C774
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 21:57:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J+GDrSPM898KnGjEIOKVQcBZZ+ISDZ/NRYUkj8lAWR8=; b=X9qTWrGBR1e1PS
	4GO+ciQphFZOkAoQ7e8VhrE0cub0B5vaWTtGWO0frzggmPJjy3gGKM+jxPOR9+zl3PDwIIJJ48RNS
	fdK17quX5NG4FK1vVpNlh0AgW7MUyYEOQo537qqfmhvEXlFHPIt1vo9qJvl5k8HTa45EG7g4F0lWR
	YEcOOpQtzgt4HiosRzmB2VqtnXDrs/t28QmNX+MsMG1b2WyuazW02LlF6dnwhuuYXL/fIRx6XEJ31
	YhroORWDDPPd5Y26brYzgQGfcUw5U2C9WfVXw0hbhUkacBTnJnPFOoui6PHGciemUG7kNnc0qu5rr
	Gt7QeocNmFqifhUcvYsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAK26-000654-K3; Fri, 06 Mar 2020 20:57:22 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAK1y-00064V-HQ
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 20:57:15 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id B4FAE23E5A;
 Fri,  6 Mar 2020 21:57:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1583528233;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=q71VaiFL5GD6eAxeUMfKSm1S1jRZh0ImWHYLWUEuk7M=;
 b=U6Vuut1gkukNxqHcH3uDUmvg/44I6feqkj5Vzwckf3+eWRtxjpPeW0Y4EDCm1yNRI/htNf
 7xBkb+CYeGTnMrzwVyPU8dzck8TulnOhsNpKVA+M5cMBba05stpsvvQr5a/RBsCoub8YoZ
 6lmXyyBTqMWmEW1tg+hbgbR0rZdjqv8=
From: Michael Walle <michael@walle.cc>
To: linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: serial: lpuart: add ls1028a compatibility
Date: Fri,  6 Mar 2020 21:57:02 +0100
Message-Id: <20200306205703.30634-1-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: B4FAE23E5A
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 TAGGED_RCPT(0.00)[dt]; MIME_GOOD(-0.10)[text/plain];
 BROKEN_CONTENT_TYPE(1.50)[]; NEURAL_SPAM(0.00)[0.535];
 TO_MATCH_ENVRCPT_SOME(0.00)[]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_SEVEN(0.00)[11]; MID_CONTAINS_FROM(1.00)[];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c:8000::/33, country:DE];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_125714_735819_9399E69D 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Li Yang <leoyang.li@nxp.com>,
 Michael Walle <michael@walle.cc>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Michael Walle <michael@walle.cc>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/serial/fsl-lpuart.txt          | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/serial/fsl-lpuart.txt b/Documentation/devicetree/bindings/serial/fsl-lpuart.txt
index c904e2e68332..e7448b92dd9d 100644
--- a/Documentation/devicetree/bindings/serial/fsl-lpuart.txt
+++ b/Documentation/devicetree/bindings/serial/fsl-lpuart.txt
@@ -6,6 +6,8 @@ Required properties:
     on Vybrid vf610 SoC with 8-bit register organization
   - "fsl,ls1021a-lpuart" for lpuart compatible with the one integrated
     on LS1021A SoC with 32-bit big-endian register organization
+  - "fsl,ls1028a-lpuart" for lpuart compatible with the one integrated
+    on LS1028A SoC with 32-bit little-endian register organization
   - "fsl,imx7ulp-lpuart" for lpuart compatible with the one integrated
     on i.MX7ULP SoC with 32-bit little-endian register organization
   - "fsl,imx8qxp-lpuart" for lpuart compatible with the one integrated
@@ -15,10 +17,10 @@ Required properties:
 - reg : Address and length of the register set for the device
 - interrupts : Should contain uart interrupt
 - clocks : phandle + clock specifier pairs, one for each entry in clock-names
-- clock-names : For vf610/ls1021a/imx7ulp, "ipg" clock is for uart bus/baud
-  clock. For imx8qxp lpuart, "ipg" clock is bus clock that is used to access
-  lpuart controller registers, it also requires "baud" clock for module to
-  receive/transmit data.
+- clock-names : For vf610/ls1021a/ls1028a/imx7ulp, "ipg" clock is for uart
+  bus/baud clock. For imx8qxp lpuart, "ipg" clock is bus clock that is used
+  to access lpuart controller registers, it also requires "baud" clock for
+  module to receive/transmit data.
 
 Optional properties:
 - dmas: A list of two dma specifiers, one for each entry in dma-names.
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
