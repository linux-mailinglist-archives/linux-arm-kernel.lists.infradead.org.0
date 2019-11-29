Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C161210DACA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 22:10:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y9zLZVCidXt0IzlkWETdEbqUg70WgeLOHpYSkNCJZUY=; b=GQPah10jx4Y2iZ
	rmNqweSptNBhoJIP8o0UdrypMMK/YUdej3g4ZLELcw7vz0uouARojPEKfEIWYNQAjnrPtb/DV+m2i
	kkxfSMwhR4ILo3aNamwBwac3JF8tRP4jB0t2MwJQkabzHsTIv+mCJPgwd17eEAKa2eOmQzK4shglA
	gLqQVms+bSx1FwQ54iJK07heihisTef/CnOaB9If8yLA+8+12aOt1oDiKBbr0bh/azurDjabhxhJZ
	ijvjgrLW5l+cytkJawEQtLpIBC4TvqIgnM9Ofdhdh54djkd9clruykNp3uK8oeUhFfc6I7n+m2UP0
	tns6T4TnPZ0RPf5AnL+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ianWp-00074D-6W; Fri, 29 Nov 2019 21:10:15 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ianWb-0006Tv-RC
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 21:10:04 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id D75B723059;
 Fri, 29 Nov 2019 22:09:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1575061791;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=vBGH4Is8jTUA/hpecRwlSpOFBZJJLpBTculd0msTkEU=;
 b=EaG70I7RiyaiHNh/CcggLrwsnJYaFUU7+ulXZv6r7uax/uYOh4rlcOeqMH/3n3wvENoJIZ
 gN0VCKL7LHsbbJ8/s8YolS1WJTPmr/1amTZIigQC6/FpyBMa2hlTszvhPrVMarKnhtzWJb
 tC92UluXLeJUc8T3/mXoYXM5wBXYhyw=
From: Michael Walle <michael@walle.cc>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: ls1028a: put SAIs into async mode
Date: Fri, 29 Nov 2019 22:09:37 +0100
Message-Id: <20191129210937.26808-1-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: D75B723059
X-Spamd-Result: default: False [6.40 / 15.00]; ARC_NA(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 R_MISSING_CHARSET(2.50)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 TAGGED_RCPT(0.00)[dt]; MIME_GOOD(-0.10)[text/plain];
 BROKEN_CONTENT_TYPE(1.50)[]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_SEVEN(0.00)[8]; MID_CONTAINS_FROM(1.00)[];
 NEURAL_HAM(-0.00)[-0.607]; RCVD_COUNT_ZERO(0.00)[0];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c::/31, country:DE];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_131002_075468_E943D599 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Michael Walle <michael@walle.cc>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Li Yang <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The LS1028A SoC has only unidirectional SAIs. Therefore, it doesn't make
sense to have the RX and TX part synchronous. Even worse, the RX part
wont work out of the box because by default it is configured as
synchronous to the TX part. And as said before, the pinmux of the SoC
can only be configured to route either the RX or the TX signals to the
SAI but never both at the same time. Thus configure the asynchronous
mode by default.

Signed-off-by: Michael Walle <michael@walle.cc>
---
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 379913756e90..9be33426e5ce 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -637,6 +637,7 @@
 			dma-names = "tx", "rx";
 			dmas = <&edma0 1 4>,
 			       <&edma0 1 3>;
+			fsl,sai-asynchronous;
 			status = "disabled";
 		};
 
@@ -651,6 +652,7 @@
 			dma-names = "tx", "rx";
 			dmas = <&edma0 1 6>,
 			       <&edma0 1 5>;
+			fsl,sai-asynchronous;
 			status = "disabled";
 		};
 
@@ -665,6 +667,7 @@
 			dma-names = "tx", "rx";
 			dmas = <&edma0 1 8>,
 			       <&edma0 1 7>;
+			fsl,sai-asynchronous;
 			status = "disabled";
 		};
 
@@ -679,6 +682,7 @@
 			dma-names = "tx", "rx";
 			dmas = <&edma0 1 10>,
 			       <&edma0 1 9>;
+			fsl,sai-asynchronous;
 			status = "disabled";
 		};
 
@@ -693,6 +697,7 @@
 			dma-names = "tx", "rx";
 			dmas = <&edma0 1 12>,
 			       <&edma0 1 11>;
+			fsl,sai-asynchronous;
 			status = "disabled";
 		};
 
@@ -707,6 +712,7 @@
 			dma-names = "tx", "rx";
 			dmas = <&edma0 1 14>,
 			       <&edma0 1 13>;
+			fsl,sai-asynchronous;
 			status = "disabled";
 		};
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
