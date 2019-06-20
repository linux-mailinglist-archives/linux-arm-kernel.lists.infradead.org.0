Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 327134D484
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 19:06:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=A/Uy08+GSKr9NDaeM+wQ3FhMW0W7/p1tZ9BJ+O+VDBY=; b=iWz
	t5syeWFFzaqJI8zlBni+pIqphRaV1cEHiE2DteKQTxHf3f9AmAd23KQxXgI0X4X3W6HP4ogeztO+P
	apfxUOo/qWifs5JJOUDw4clw2X7C3UfrcJIxve6ewI1hU2gf/WBy6Yfzr9mVTdfvgtQ7bywhS6Iws
	TJEbfneyBv907qM//ygQnRVwH60OSp5Jxven5rtKWJdixQWcr55i/rNVgQYh/itXFEHb28fSCk/Zl
	HsqZ//rAk3557rTifMw1llXSJo7r45md4VyUldrkkfOjVagYwPLvr2D0pXRTTox9DFZTz6Fyfm5yE
	QKrz984Njfn1B+WIfh3ocCclaxYptsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he0Ve-00013P-PA; Thu, 20 Jun 2019 17:06:02 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he0VO-00012l-UT
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 17:05:48 +0000
Received: from localhost (localhost [127.0.0.1])
 by node.akkea.ca (Postfix) with ESMTP id C9FF14E204D;
 Thu, 20 Jun 2019 17:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1561050346; bh=DbHJKltugQqhptZWGL9LmNE+0Ii6tGA8ooe0jZKVPC4=;
 h=From:To:Cc:Subject:Date;
 b=GXYu8RiIpIiSVdyd5M9kCt1hInVJd8HO7NJkgdbMKVu7anVkmhCmi+BiALLAXOBue
 4XtkZ1y0SqBEOlygGskB5+kAgZa4CtzdDLsx1kJbubiqNvCpVRTcxxwYFPY+LpoLXH
 xEBQ0LtZCzMscgxSwpFhZrxH8SygQXuMrPKzg/ew=
X-Virus-Scanned: Debian amavisd-new at mail.akkea.ca
Received: from node.akkea.ca ([127.0.0.1])
 by localhost (mail.akkea.ca [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qgvb6qYfPgiY; Thu, 20 Jun 2019 17:05:46 +0000 (UTC)
Received: from localhost.localdomain (198-48-167-13.cpe.pppoe.ca
 [198.48.167.13])
 by node.akkea.ca (Postfix) with ESMTPSA id AB07A4E204B;
 Thu, 20 Jun 2019 17:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1561050346; bh=DbHJKltugQqhptZWGL9LmNE+0Ii6tGA8ooe0jZKVPC4=;
 h=From:To:Cc:Subject:Date;
 b=GXYu8RiIpIiSVdyd5M9kCt1hInVJd8HO7NJkgdbMKVu7anVkmhCmi+BiALLAXOBue
 4XtkZ1y0SqBEOlygGskB5+kAgZa4CtzdDLsx1kJbubiqNvCpVRTcxxwYFPY+LpoLXH
 xEBQ0LtZCzMscgxSwpFhZrxH8SygQXuMrPKzg/ew=
From: "Angus Ainslie (Purism)" <angus@akkea.ca>
To: angus.ainslie@puri.sm
Subject: [PATCH] arm64: dts: fsl: librem5: enable the SNVS power key
Date: Thu, 20 Jun 2019 11:05:32 -0600
Message-Id: <20190620170532.18845-1-angus@akkea.ca>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_100546_984763_4F9101A7 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Pavel Machek <pavel@ucw.cz>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable the snvs power key.

Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
---
 arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
index 93b3830e5406..e21215b01a62 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
@@ -715,6 +715,9 @@
 	status = "okay";
 };
 
+&snvs_pwrkey {
+	status = "okay";
+};
 
 &uart1 { /* console */
 	pinctrl-names = "default";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
