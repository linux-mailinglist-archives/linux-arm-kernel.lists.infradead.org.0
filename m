Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 233B6177DB2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 18:45:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+GDrSPM898KnGjEIOKVQcBZZ+ISDZ/NRYUkj8lAWR8=; b=cZci9aSAPd7aFI
	bLes0RLdA2KhF9PD7eTRA1OjxKE7V9BxhojmK3CR+tjbHmwKZC+90sS9RytcDRvgqhL9QwARmItVH
	ngPiGyDSxpm1MG73mbOKQ7mQu/HyCKYol6aYZbn2wE8L7pUUWPXEiQVBh1JqsdsZWx7tCIijSH3HB
	O5A1EQRBHY7AGYGmj5RVi27QEovuJAQ7TMCRt75dZdNWYHcv4C71KhILvqf+pt/Sk4JuLZLAPLeIH
	8ttiiTFWvm3qr0702XcFDBK38VxywexrMnLdSWv+zRb/18qVtmn233PK/BP+pHEBZ9HEASVJpeege
	NtUEQ1LPA7O1U5g3aqbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9BbF-00083O-Hh; Tue, 03 Mar 2020 17:44:57 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9BZr-0006lR-2f
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 17:43:33 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 268ED23E51;
 Tue,  3 Mar 2020 18:43:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1583257402;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=q71VaiFL5GD6eAxeUMfKSm1S1jRZh0ImWHYLWUEuk7M=;
 b=LIwwshwbFnLCvYrP3pD8h6TnBlEk1zFFhD6/UtZhj6L2a2tUoZ43ya98ix5j797FvcSeRU
 RmC8drdIRuHKo8HadFAl8GEjOgMpYDpHds2Ji8GdRVxNRnZGd1Hg7YuFnyP2RJzBTDt96q
 yA2+tgJRBSgGtyUCDxz9pkJ/b7v/L1c=
From: Michael Walle <michael@walle.cc>
To: linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 5/9] dt-bindings: serial: lpuart: add ls1028a compatibility
Date: Tue,  3 Mar 2020 18:43:02 +0100
Message-Id: <20200303174306.6015-6-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303174306.6015-1-michael@walle.cc>
References: <20200303174306.6015-1-michael@walle.cc>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: 268ED23E51
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 TAGGED_RCPT(0.00)[dt]; MIME_GOOD(-0.10)[text/plain];
 BROKEN_CONTENT_TYPE(1.50)[]; NEURAL_SPAM(0.00)[0.511];
 TO_MATCH_ENVRCPT_SOME(0.00)[]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[15]; MID_CONTAINS_FROM(1.00)[];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c:8000::/33, country:DE];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_094331_291655_7BC1DBBD 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Peng Fan <peng.fan@nxp.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Li Yang <leoyang.li@nxp.com>, Michael Walle <michael@walle.cc>,
 Rob Herring <robh+dt@kernel.org>, Yuan Yao <yao.yuan@nxp.com>,
 Vabhav Sharma <vabhav.sharma@nxp.com>, Jiri Slaby <jslaby@suse.com>,
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
