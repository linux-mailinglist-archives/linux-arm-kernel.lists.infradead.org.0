Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E855E595A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 11:04:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q61Gm4psWzcu7fOLtnpJ6ipOikRoc3h6gvEo/sVnNGE=; b=Tr0MWjNIny+TVo
	5/fUsPkB40+Z+YExmUmZwkAvYPiD6ewOl9mButr+sXRacmlC8q05LGUL7+PC1PMzFOVBK8vnzGtVI
	BdL1A3be6MQxE0TjYRv6whd3EHtnwjMI3fVfQpBGSWRv52Evw2kyQ4V82P91mgXVtEXt+D+0cDK/2
	/p7D+3JZOj9UeQHwlW9bvej2LId0Qi0p0r6adzFZNPH16Vrg6EO1RkA7H2wA6sl1DHbOqZrSsl33/
	W83V7TiM4agzD3cPowsjsNkrcP/rFdNTT4iF4W/JQU8t+DvYFkMdhhdy3RteX5lTZ/cS0lIEEfoup
	2nDFWKlYsAgu8MwkDzvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOI0A-0003zN-II; Sat, 26 Oct 2019 09:04:50 +0000
Received: from mout.perfora.net ([74.208.4.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOHzu-0003yd-6i
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 09:04:35 +0000
Received: from marcel-nb-toradex-int.cardiotech.int ([81.221.67.182]) by
 mrelay.perfora.net (mreueus004 [74.208.5.2]) with ESMTPSA (Nemesis) id
 1MQdh4-1ib1S01G0U-00Nkh2; Sat, 26 Oct 2019 11:04:18 +0200
From: Marcel Ziswiler <marcel@ziswiler.com>
To: devicetree@vger.kernel.org
Subject: [PATCH v2 1/5] arm: dts: vf-colibri: fix typo in top-level module
 compatible
Date: Sat, 26 Oct 2019 11:03:59 +0200
Message-Id: <20191026090403.3057-1-marcel@ziswiler.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:uCkCQ5TKbiZEPOXRjuUU6qXHkYQrJJn9ygRw5CFh8WqiHqiMNIH
 6XJvGd+TbDVJksX+AEQotEHsuk7/gDK7WZjqhVGmXRByJJjpu+ZUZB5+yxbkuyOoioiKtxD
 2GKSezcg0OEusEbDk+okfru1hIlQtefsZVgtIxEzrKT14s/bJRgNnVRPWx4jXaZ09R0ZAO8
 G5mRaDsp4xgCjj4e1g2dQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:eXKVbwpdkws=:ul6xmUDv/h87RAGo8xH6dn
 vjL2OR+mKU3FR5fXVUIdWWH7nYHRRoKtCsIgHl/bXzCOtd9jKrgj+r4uiilas0q4kJQ8pHqOi
 Pcs2RiHsSdtMrDcdUf7YaXfRm+QaZkTxn/7texn96L7oCVCJnyqnWGDRNj1FNd/3KJ9FRMul8
 chz8UewIiV+lR4cKS9aXC7MzcWjjtkLxyrCGAR2FUKJ7hf81NworcE1minxkRXCE62rM7DC2x
 ZmhgaDyiQb6TDrSOZFLARt9HEEiqVJBi2bbCrfrs3H69zUTCD6/Ryh812rJSGNlEuhXIrotvt
 8PAbPg1d4KKiC/6//I/CH5VNmbOdAF6CZgRlrflAY13Apro0sfEmxZ5YAPkSsQlhslong8ega
 N1z0bQVppPYnz5pM6Guq27lMlpmfzCkQdIDv7/CMHbW1TcI8DRRneysnM5Vtjb74qTaeo07eN
 8T4F5KiTlBMf36xXAghWrLGaYelunsRtFN/CJFGNnezvZEdKmiE82J+of9h+WTVNoBLdwXE8F
 4e8Jpvo7hb1O+yfBsnGjDh9jE8yvFjhxGLuZarMeWD+4CIZvraF9C2+1Netia+6hHTcJqv9VG
 ybNQVqtTRWieS+3t5SsyZn4yZJMWqgco2+/XbL99U2PN3noVETC/rv+/5VYCgnNARy2AGB1Ms
 DThyusxTBEFusTD4B1q3APVUT2VJV+MRZpqW7v6GYbVEW1wFE5OR7XWqwevQXLa9rIiiIj7oS
 jWkokw5cc+Bfuyi6xUamq7ICPPn+bxuqXgi/fWoGobdAGH+vft91mlDWfmWBKGJw9r7nR/koH
 MJLY7XPwn+Sbxoyn2IySDHPDquYJF9xNZ7MKkPnwiNptMQav1mSF8NGKwHJGYVHK0GxZ4xS7O
 ZybazX6O0zJoqz4P1owAvMWsffCthsjje2UEZkE7Q=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_020434_324629_5CDC3B3B 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [74.208.4.196 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, linux-imx@nxp.com,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marcel Ziswiler <marcel.ziswiler@toradex.com>

Fix typo in top-level module compatible.

Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

---

Changes in v2: New patch.

 arch/arm/boot/dts/vf500-colibri.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/vf500-colibri.dtsi b/arch/arm/boot/dts/vf500-colibri.dtsi
index 237b0246fa84..92255f8893ce 100644
--- a/arch/arm/boot/dts/vf500-colibri.dtsi
+++ b/arch/arm/boot/dts/vf500-colibri.dtsi
@@ -44,7 +44,7 @@
 
 / {
 	model = "Toradex Colibri VF50 COM";
-	compatible = "toradex,vf610-colibri_vf50", "fsl,vf500";
+	compatible = "toradex,vf500-colibri_vf50", "fsl,vf500";
 
 	memory@80000000 {
 		device_type = "memory";
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
