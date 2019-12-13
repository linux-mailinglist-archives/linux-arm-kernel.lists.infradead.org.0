Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F1311E4E4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 14:50:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7WPXTlcYszo1l3yd10TsC+S2eh+0Y+Fk8YXHKSlTFmk=; b=Gxn8n0NqKQxrW7
	Di0A/guiqU+Wh1d/mXMNzwfJmN1jbUta7cAXUCWRYKNPGX6nnp5sQRJtQRLEToQzLl40AYwaTV+5I
	SarB1MxQwiolpSlW6LMPdVneDn07hmxxTqy2KcfZQ51m4+auTVET9m5wbiBZHWLv1G2Q88bvkZU6z
	DjWFud3444wHLTCKuME7TsiOWNhPUiD+ws9tD/Vpe1qlIubjFcNWnaqJ/57TsqW7uYDfJN6ype1Bd
	8q2qMEB6O72G1dgB/rGegSDJSyR79UF4LBdqGKovtFAACVSbGyeNDVcJB5+WXce2vA5Kfd4oX1iZ/
	gNQb8J70QKTDyHGu1jnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iflKS-0006gW-LI; Fri, 13 Dec 2019 13:50:00 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iflKC-0006Y6-3R
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 13:49:46 +0000
Received: from trochilidae.toradex.int (31-10-206-124.static.upc.ch
 [31.10.206.124])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 395885C05EA;
 Fri, 13 Dec 2019 14:49:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1576244979;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references; bh=KGQxjK58jAQG6FE+vNh52hsu3NbDX3qzbuGmMeNbvdc=;
 b=wVGNG34WmvlBILnUGAbsYGUMOh2z1Trmyeqk11UEfG9AHKoO7OAoUj7tmDfJnKVxHZZSIk
 zUBjbeFSMPqAZQqsPRDUOYfMy4Xq2iUywvcTaJDJIUdlDqYr/TZgDhMMOShA+EVIJkR96O
 9TIx5ryMTe/ezWupM7PWTjOEBENhazo=
From: Stefan Agner <stefan@agner.ch>
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de
Subject: [PATCH] ARM: dts: imx6qdl-apalis: mux HDMI CEC pin
Date: Fri, 13 Dec 2019 14:49:37 +0100
Message-Id: <20191213134937.257840-1-stefan@agner.ch>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_054944_467721_020E5C12 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, kernel@pengutronix.de,
 Stefan Agner <stefan.agner@toradex.com>, marcel.ziswiler@toradex.com,
 linux-kernel@vger.kernel.org, stefan@agner.ch, philippe.schenker@toradex.com,
 robh+dt@kernel.org, max.krummenacher@toradex.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Stefan Agner <stefan.agner@toradex.com>

Mux the HDMI CEC pin to make HDMI CEC working. With this change HDMI CEC
seems to work fine on a Apalis iMX6 on Ixora using cec-ctl.

Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
---
 arch/arm/boot/dts/imx6qdl-apalis.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6qdl-apalis.dtsi b/arch/arm/boot/dts/imx6qdl-apalis.dtsi
index 4b6b8b60ea19..f6dd48a4f89e 100644
--- a/arch/arm/boot/dts/imx6qdl-apalis.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-apalis.dtsi
@@ -246,7 +246,7 @@
 
 &hdmi {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_hdmi_ddc>;
+	pinctrl-0 = <&pinctrl_hdmi_ddc &pinctrl_hdmi_cec>;
 	status = "disabled";
 };
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
