Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F0181C5A5D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 17:03:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3jWA+r3iyUgxZ0wz7V5ugOUgMejf7vMlX1zv7hAISo4=; b=vENVsYg4wkE0ZG
	1Ad9L0OIPhAu+EwBsYOm1Hn4fz2C4vhWBusp96Vz2aGOGqa3UqDlht0kgKRoMfbcbSXGL419fCl0f
	1VvVo834mecCZKxnF4w9DvufTTnejZ7m7aAQFPklqAGFST/w0LMbmfl5K1CXs2DDdewM+Kubaoo2o
	fSxD/Y1+qmitlnUg7Nhgy5/7+S7LM1ZCRN6OUXoRc96uaQt7LwUvsyh4JHHLPxuitLXzrMgnEr3rj
	YCeyrvqrEdOsXB15hdEWkSvXJEdRR2pbG2Of2+1a1u8BDERxTpk5Z9rKr1QlpALoJFHLESI7HakrL
	n6u5blPfnF7qDte+c1qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVz5u-0002eh-1C; Tue, 05 May 2020 15:02:50 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVz45-0002D0-HV
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 15:00:59 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 94D3423E80;
 Tue,  5 May 2020 17:00:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1588690853;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=T8QHJzdQsqxKUorxv0i84+q/jnRbNR+waUrdwg8sxko=;
 b=WzXRH7omIgdod2GwSr7P7NftvohR0t4Z6U/E+DQhKjCkTzaBB6v013s/9EAZW8xkJrpOCB
 5LH8ly/cRqlGucUBJr3oqx/91F/JiXnHp0IaLASdw83rbiHODqxxEmFDqoPURkXME2DpDw
 p7Ylps13Qk4orZFSTsF0mxPa6AnlrNY=
From: Michael Walle <michael@walle.cc>
To: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: freescale: sl28: enable LPUART1
Date: Tue,  5 May 2020 17:00:37 +0200
Message-Id: <20200505150037.32573-1-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_080057_747584_B9956693 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Michael Walle <michael@walle.cc>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that the LPUART has support for the LS1028A SoC, also enable it on
our board.

Signed-off-by: Michael Walle <michael@walle.cc>
---

Hi Shawn,

After adding/fixing the LPUART support for the LS1028A I've forgot to send
this patch to actually enable the LPUART on our boards. It would be great
if this could make it into the fixes queue for the -rc. If not its also ok.

Thanks,
-michael

 arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts
index 5eac8a6ab46f..360b3a168c10 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts
@@ -17,6 +17,7 @@
 		crypto = &crypto;
 		serial0 = &duart0;
 		serial1 = &duart1;
+		serial2 = &lpuart1;
 		spi0 = &fspi;
 		spi1 = &dspi2;
 	};
@@ -189,3 +190,7 @@
 		pagesize = <32>;
 	};
 };
+
+&lpuart1 {
+	status = "okay";
+};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
