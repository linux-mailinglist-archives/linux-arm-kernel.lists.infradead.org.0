Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7B74D47F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 19:05:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=teE+mdQMIdobisFmmW7tGkv0SQxbHKg55MrDUlijXXg=; b=anO
	aR9tc8zF5YpCzkYIMyl6i1dkhjFvws0riLSfWrh69tzx9UOlU+nkSPuvPkglg6wHqdLZTgS/4Vd0f
	eBA9QjGWzgTQ6LYyxy6sNDfajjHQLyJUTWbJoI2pCGh+C2Kh6ScO6tJlhAkiqDaeXKfVcjWrkr+GH
	g3bATtlaPV80CV3uwmB8GvqhDitMOfscJlIPukUIFVroIoKzd8wn2M1Ywt1pOSMygPm2LUXOiTi58
	z+zjSfgaTLV3dsnzaLOugw36ZxXNCuFaRFAVmTtaDJPCXHEHOiPtvqtWJTk8BUc9Efrs8jGQt+pKW
	yI6sQBJOuWaLfZDb2fGn/aE8pVGULGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he0Uk-00081O-Ir; Thu, 20 Jun 2019 17:05:06 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he0UU-00080X-MQ
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 17:04:51 +0000
Received: from localhost (localhost [127.0.0.1])
 by node.akkea.ca (Postfix) with ESMTP id AC02D4E204D;
 Thu, 20 Jun 2019 17:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1561050288; bh=AS2pgKIGsJ0biwMjPOOxiQ+3/xJul3EqWR67+O8CU7w=;
 h=From:To:Cc:Subject:Date;
 b=o/XivuCq99sKxBwg5SGBs+LJl82Zu8IO/2JLO/QYxckEtWOzWXhzwMc6G409QUZ4Y
 mbenT5NaCb2Y7E7wkUDpt4LDBF2CU1FIXGd2tw6GUdk6ZAPRetrKC30XsyMk13ENxr
 +AAFyvYnxwszwLeq5AEn4/tMuj/J39+gs3S8I96Q=
X-Virus-Scanned: Debian amavisd-new at mail.akkea.ca
Received: from node.akkea.ca ([127.0.0.1])
 by localhost (mail.akkea.ca [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jV7O3S7XKWV1; Thu, 20 Jun 2019 17:04:48 +0000 (UTC)
Received: from localhost.localdomain (198-48-167-13.cpe.pppoe.ca
 [198.48.167.13])
 by node.akkea.ca (Postfix) with ESMTPSA id 3A2D04E204B;
 Thu, 20 Jun 2019 17:04:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1561050288; bh=AS2pgKIGsJ0biwMjPOOxiQ+3/xJul3EqWR67+O8CU7w=;
 h=From:To:Cc:Subject:Date;
 b=o/XivuCq99sKxBwg5SGBs+LJl82Zu8IO/2JLO/QYxckEtWOzWXhzwMc6G409QUZ4Y
 mbenT5NaCb2Y7E7wkUDpt4LDBF2CU1FIXGd2tw6GUdk6ZAPRetrKC30XsyMk13ENxr
 +AAFyvYnxwszwLeq5AEn4/tMuj/J39+gs3S8I96Q=
From: "Angus Ainslie (Purism)" <angus@akkea.ca>
To: angus.ainslie@puri.sm
Subject: [PATCH] arm64: dts: fsl: librem5: Limit the USB to 5V
Date: Thu, 20 Jun 2019 11:04:39 -0600
Message-Id: <20190620170439.18762-1-angus@akkea.ca>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_100450_781183_16E04E24 
X-CRM114-Status: GOOD (  10.38  )
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

The charge controller can handle 14V but the PTC on the devkit can only
handle 6V so limit the negotiated voltage to 5V.

Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
---
 arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
index 3f4736fd3cea..ec85ada77955 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
@@ -353,7 +353,7 @@
 			sink-pdos = <PDO_FIXED(5000, 2000, PDO_FIXED_USB_COMM |
 				PDO_FIXED_DUAL_ROLE |
 				PDO_FIXED_DATA_SWAP )
-			     PDO_VAR(5000, 12000, 2000)>;
+			     PDO_VAR(5000, 3000, 3000)>;
 			op-sink-microwatt = <10000000>;
 
 			ports {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
