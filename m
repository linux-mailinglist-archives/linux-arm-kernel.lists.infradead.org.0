Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE99716858F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 18:50:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1WeOxvgKl8Nr0hNYIAhQ2K3HV8sWwj/9tTjz5miOZuo=; b=DVcPjpf44ge1vZ
	Uwm4ghAiAsq0e9tsxtFKpZFnjPVBDJpjIi/hpGBHUMQV5JBiORWQPg5rxZ32Ovh50pTlOl+a3vhzq
	e7V0khCA8nXPCkeZT1pdztECmieiLBEyVml1lEtQDzt30s+0JXW37Z9lCV8VUNQSaDdJSjBvWeFoD
	Gl8DZTvRVaVYg08myHyVHix5/bq0ULdYk+nv+lIZ4/grZG/B9DEButmsN9FeFVzaQ9Syx0QlUmMeI
	awOIDxrN7H+Do+2BgjA9ixKGFIOPf1bJt7tLfQzT45gj5gYeJghWH55ZEBmRiFpgQAigWBfSOqpde
	kG8ZVu3AiUg94wim/uxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5CRc-000309-6a; Fri, 21 Feb 2020 17:50:32 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5CPZ-0008HE-C5
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 17:48:27 +0000
Received: from mwalle01.sab.local. (unknown [213.135.10.150])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 399D023E57;
 Fri, 21 Feb 2020 18:48:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1582307294;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7epvypZ2s71nMBOYV3M0piGfVsKm24bt5XMXPEjLATY=;
 b=ePdASEdVx7RT8SUrAfzRVsUL4SWQftHO44P5F6B1K2JNUyYhYPE43MADr5eycvsHDtqsKz
 4X1gp7bPhqkIT4TRPf8V+hYKcyOddDUnJ66NY6111EzjkM24MX83K4fP5XSGRZ9LmvKMmZ
 npbmJsnqWctGlVYT3eojBuRfVn3wjH8=
From: Michael Walle <michael@walle.cc>
To: linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 5/9] dt-bindings: serial: lpuart: add ls1028a compatibility
Date: Fri, 21 Feb 2020 18:47:50 +0100
Message-Id: <20200221174754.5295-6-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200221174754.5295-1-michael@walle.cc>
References: <20200221174754.5295-1-michael@walle.cc>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: 399D023E57
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 NEURAL_SPAM(0.00)[0.773]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[13]; MID_CONTAINS_FROM(1.00)[];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:12941, ipnet:213.135.0.0/19, country:DE];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_094825_586252_5B7FA82A 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peng Fan <peng.fan@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Li Yang <leoyang.li@nxp.com>,
 Michael Walle <michael@walle.cc>, Rob Herring <robh+dt@kernel.org>,
 Vabhav Sharma <vabhav.sharma@nxp.com>, Jiri Slaby <jslaby@suse.com>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Michael Walle <michael@walle.cc>
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
