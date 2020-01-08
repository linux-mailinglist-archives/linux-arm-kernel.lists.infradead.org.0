Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F50134752
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 17:13:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G2MTM/3rKkFZF8HRIl7sbN9wLl1grpvZ8nCQFhsLtRw=; b=RBALBOdrsN1s9J
	Vk7EsWMv8mhu9OhuycMY8/Od51A47QpODHmhu14RP3MbOnPLh/1yHjLcAQm4YbAi96uVj5M5t7nlV
	LZeKZ2ZMQKJ2wZ9qxUzqdJ9CdjOeSyRYDthodVkhpg0wlpbVltaMiF1BdojEan0sLEWHcgrC1vgP/
	CgmycwrlBjuE6fGEWzn1fwG+rjJbdEpdRevlguu5Qi/8d7fJNROWC96J+aE4yakzPCkY2fCk9pKpy
	xEqWYnEhV4gqFTy9dDFVzhhSNTXZBZT5s4uMh2pzdM1ivXSGuVbBeQin8ZWPOVxnvJ9B0JXs5Jggw
	6YwvLeYwWAQX2EUuV6PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipDx9-0004sh-95; Wed, 08 Jan 2020 16:13:03 +0000
Received: from mout.perfora.net ([74.208.4.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipDx2-0004sQ-0F
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 16:12:57 +0000
Received: from marcel-nb-toradex-int.toradex.int ([31.10.206.124]) by
 mrelay.perfora.net (mreueus001 [74.208.5.2]) with ESMTPSA (Nemesis) id
 0M4Yxu-1jcU710aU8-00ycLZ; Wed, 08 Jan 2020 17:12:39 +0100
From: Marcel Ziswiler <marcel@ziswiler.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v1] ARM: dts: imx7: Fix Toradex Colibri iMX7S 256MB NAND flash
 support
Date: Wed,  8 Jan 2020 17:12:31 +0100
Message-Id: <20200108161232.327424-1-marcel@ziswiler.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:NgfM57qzSnHZU6RlIq2nxaQLQoxcUkHwSvrd2wvK1n/CK2WmzBL
 mLr2Bbu8CFVuMfDzmap6ePR0nYAk7KDdFxRsbxKWT7RTbwwCWk4IPNl0dGJSu5dmPZMsbHf
 Y6meot00kKbCmeIFnF+RqptM88BoxCLh2aVH2dnCTtAAGA6qvIXtzBDDEuNnfQpe4XuDtXP
 Nks7b2X4yavDuHRjaHQXQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:neE/JN6HsKo=:gGTUhhol46v+Et5a5oyyXH
 9j37vQDNIv7i5zQtlh8yuWO5ThM5slDWMGBxNSdTPQGunYx2v958TIJBlZ9ucdUcZafAHHA6M
 3i7IT5LtPCqOR5kstFfbJBPVL9KH7anvaqRq2f8H3C9dsvrt2tSes1Zl+0TZZX56NPYzyxhIp
 r/Mka8ln+NnMv9gbGcROVQ4+ARExsSPSBrKdkVt9yMF3ULOybn/z/3cLrLyPylJxPOFUdLf/+
 jnVh1f0nWg+lonSFvy8RR+6//8pXGkwdvB8vjz42SOwVKMKgSYgqvJVyXv5qyDlLJqCYnfQ7X
 B5+/uExm8ZDmZw63GQ9pXib/anExDpiFjnD1V0oZxsa4N2SuuyZoxxLjvkJ0smjJWZnDEWcMq
 epgjqrZKyexCSpW56bNhB7XCc7ktt6D0iTpWWj1cc8SuYNJ8wX2Twr+VtHEx3kwxcxydwgJ56
 zvrlMciwF4+WGpU370P6Bj0R161G1G1WUmAgvodV8EXgGdC9owbSIGUjZryJuB/QrNgyww0n/
 RnBHAeYXVGXcIJXK/811ADxsma4MxcIWjBYGRhFkjShexvEjORY8vXcU0h88hYbrzv9eqHrH3
 3HirsI2uhhnJtbkFyx3xTwK9w/Izu5qYez27aEeytkPfVT8xFvQkPj5aohOq2g/QY3KdGPTUK
 6hjZ2PMNjAulYcOHMxcJNcO6ZGX7qgWqxb1+Jh0gvH09ORsaMTu+P3nWtpuRnrhVTW3zIeOvA
 srTji2B59wlG7QmzVNgcWYujj8L2Rorwn3wGtT9arNui0cSr0qOGUEpdOQn7T9MulEzGnUQrr
 WUsJ/r+5ApDlaNoyLBVS9gZoCjd8tSNvQSx5lD70/wc8Ny5q47YQWu5HaNws4OXShEMTFRNEB
 lOXq3IZh8m98TjSpGBbg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_081256_120875_33DDAD17 
X-CRM114-Status: UNSURE (   7.30  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marcel Ziswiler <marcel.ziswiler@toradex.com>

Turns out when introducing the eMMC version the gpmi node required for
NAND flash support got enabled exclusively on Colibri iMX7D 512MB.

Fixes: f928a4a377e4 ("ARM: dts: imx7: add Toradex Colibri iMX7D 1GB (eMMC) support")

Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

---

 arch/arm/boot/dts/imx7s-colibri.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/imx7s-colibri.dtsi b/arch/arm/boot/dts/imx7s-colibri.dtsi
index 1fb1ec5d3d70..6d16e32aed89 100644
--- a/arch/arm/boot/dts/imx7s-colibri.dtsi
+++ b/arch/arm/boot/dts/imx7s-colibri.dtsi
@@ -49,3 +49,7 @@ memory@80000000 {
 		reg = <0x80000000 0x10000000>;
 	};
 };
+
+&gpmi {
+	status = "okay";
+};
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
