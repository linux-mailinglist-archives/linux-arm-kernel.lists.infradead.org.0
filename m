Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7056960841
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:48:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+2CNY0B4GeDdbIY8qKErzQ+ALBqTNUQcS8dluj+nD3I=; b=EipkYnMN7QdOmyHIF5QdJMcGBE
	oFP32LAdGuputbzAu1iioU67uEmd8n/hBHuC/vw87sFKzNMhFu8uJtPjuV+Dlt705rRyf0w/OIRbK
	IR+DQGCCs2GH2ULNsMG0hkHjdGCO6kO+x+N7lCMxJpWAfWpUxk1cqrB2Dv+yKIC+kKH+3selg9LTo
	2xYV8YZ7hxpiyFOF3H2PVHX8EAQjmlhJLilG4Xt2dpIS+FgGwCd48KnHLjVT0iRt8wkMMy80KwODs
	c2FSMYLtd/4j6REjMLIz3yRZkVYZXpRnW/E0sRmSdl1s4/HDoZDwE30+njgdA20uFzz6pfe1Qn7+f
	vT4Mpn+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPVG-000376-SY; Fri, 05 Jul 2019 14:47:58 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPRm-0006NA-Pq
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:44:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OeeBouTMQ0QpM851H+9JcHlUtfHvDXzRGM9k4NmcTmA=; b=DqsHB8Vlv3x96ZEYunLl6GUxW
 d48abN1cUp/S6f0hcmAijz0xjmQjqD1O57jrEfxY3o8A1swR05jtCYujVn7IgIPLyCl6N9IqGfh4k
 wfykN5tRt69r/KchTLsrAR4rQZJF0UQm+H/5/PykIpT47ylMv/zxld662UACK3zw6PxVRPsxctMvz
 vuEXYWX4hkcjGZVH8yJF7kJC18TwLleBK3ITRbmvGAeiU8ikqlZeUD/BbH1dnzeguxQ65zQEaUKNb
 eoL2sQer0+e20yFCgcYGfSomoG4cEmdGGCgsiUZOML0Ob6dZ28tVmD/1ZRS5Bzaada99fIx0HDbKP
 khjfd3vxA==;
Received: from inva021.nxp.com ([92.121.34.21])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjK7n-0000kp-Ue
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 09:03:25 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E79B42006EB;
 Fri,  5 Jul 2019 11:03:18 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 71FCE2001AE;
 Fri,  5 Jul 2019 11:03:11 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 2A6B6402E5;
 Fri,  5 Jul 2019 17:03:02 +0800 (SGT)
From: Anson.Huang@nxp.com
To: p.zabel@pengutronix.de, robh+dt@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, leonard.crestez@nxp.com, viresh.kumar@linaro.org,
 daniel.baluta@nxp.com, ping.bai@nxp.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V4 2/2] arm64: dts: imx8mm: Add "fsl,
 imx8mq-src" as src's fallback compatible
Date: Fri,  5 Jul 2019 16:54:06 +0800
Message-Id: <20190705085406.22483-2-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20190705085406.22483-1-Anson.Huang@nxp.com>
References: <20190705085406.22483-1-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

i.MX8MM can reuse i.MX8MQ's src driver, add "fsl,imx8mq-src" as
src's fallback compatible to enable it.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
---
No changes.
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 9db8efd..da5ee11 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -502,7 +502,7 @@
 			};
 
 			src: reset-controller@30390000 {
-				compatible = "fsl,imx8mm-src", "syscon";
+				compatible = "fsl,imx8mm-src", "fsl,imx8mq-src", "syscon";
 				reg = <0x30390000 0x10000>;
 				interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
 				#reset-cells = <1>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
