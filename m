Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71652E595D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 11:05:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h8TaglQwfEtrfuWissOog7YjktzdwBLRLTAhBZMXLRU=; b=WGyQJQKQyJof0M
	6QZoSS08UTzd6cCqK/PcpzV+orV88wnAtNwPTxaddw4lLSaAJb42BGeRI5MoQ5MyoY3FfRS2JO70Y
	pHk0eWzmU2LwL+AARAnehtrhbh4P7dheNKIWYT4qsuSMJo3SULht9cvIQHQxDiA47FMS+6AzuThk6
	7NzVn8EiGk6zuMII/GiW69hOSlw+O+KBYvtMGuBOh/EfHj20PgvfuB4sY45GJ8PfwtW7eDgyLWeSE
	WN7YmnfQuDEBOiPRS3HIrIZdVdqEy+l3ae4sDdDDLGrZPqIb2q5BCqGMLCefECduIpaePHZ0moj60
	y7KRTewB/TYbnFkXsQhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOI1D-0005x5-Ez; Sat, 26 Oct 2019 09:05:55 +0000
Received: from mout.perfora.net ([74.208.4.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOI04-00043r-Qx
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 09:04:46 +0000
Received: from marcel-nb-toradex-int.cardiotech.int ([81.221.67.182]) by
 mrelay.perfora.net (mreueus004 [74.208.5.2]) with ESMTPSA (Nemesis) id
 1MtOvi-1i8XKM3ubG-00uuii; Sat, 26 Oct 2019 11:04:29 +0200
From: Marcel Ziswiler <marcel@ziswiler.com>
To: devicetree@vger.kernel.org
Subject: [PATCH v2 5/5] dt-bindings: arm: fsl: add nxp based toradex
 colibri-imx8x binding docu
Date: Sat, 26 Oct 2019 11:04:03 +0200
Message-Id: <20191026090403.3057-5-marcel@ziswiler.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191026090403.3057-1-marcel@ziswiler.com>
References: <20191026090403.3057-1-marcel@ziswiler.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:bX9HNyHJ2OSAyFglxRaJspgI6OSjyBfQQSuD0XdDtTI4TWnKc24
 wlzYNPkMS633MF86DtW9rj9tP4xAxPTc2ve3WaAXG1K3JAEgu6lcyLPo6NdVxOVSA7Q8Kyu
 KgzB8RrdN4G6ORRgFeH/woWMlqRMcbQ4zPZrAfo42b0v8aS23luT2LIYab/94jMyQdoAcl5
 /RQSYZCRQcG6Yb1hUftNQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Km2OhCJRtEk=:5x2fjFTjh2/E+oAjXibBiL
 dF0ans5YIS0Ch2/Qxh6HxsxLDTcjL17cgnWGIGjItY1u7yurKzLA0TxGOQz6dKYz6nTtuLslB
 TjR88f2oJRSCSk20YQw4xcdzsvYtomJ1FRbPJE0dzMZNegjQX/dYO/6fFrt0vyQbg5O33vOhG
 haHiNS2h9OBTmLdcBSwiw9Y+OhGYSi9M+nilN/98cIt3TMkdEJboGYuyj4fWuF30/+LH1Yrhw
 5DHxTUVDwI88P2VvnTN4lSOc98PACTOrdZousjImht9T8n5dePu6LkfH87SXrCe4K9+mpvqTQ
 TU19Dnj7a/Kib9HaJaZcMYNv8eUgIjDRx4IKeuBnIGNXg/5g/vThPX/9CqFQcAW/UQNROXezy
 Iq4oS5iLOLfTWTaC+A0b5tTcmBM8ZTB/nve5NS28e/qRCgXO197jkzyJPqDl9/0Zqph56wCbb
 kA/tkHaDVQcHjNdQE1EZjnvk2Bh35PadsrOBqnfYuJu0OtBbrUp+5AYDdOMrjOKZNYXaDO6Ix
 a4o+KZrFmv4DnYGw9dSaQlsQNWCb/B4y0LJqpq6JvCQ5hoFBipLgDPVTQeYAL5dszgTksj401
 kIqhXNil89Qsqv7/JwVIOyS5SX6vU+K6UedPv7cmnrUp62AglbeCyrEAfq94q4BSPw8fWqv0+
 xlwjjuGm93bYYcoTBHArKGU2CJr9ukES4P4lajlu0O2AvCYQ78r/1vEigU/ArnAK9b9+7icM+
 tUWewWAdIYSmXkGhfdxbfJUe3vNllYpZ0k/e+VgJqL7/mEvPXroOGja3CBLZFEuajuKDyIW8F
 faJrfBa5ShKeIJRf9keylcyZYO1oCTXIv1+bo+TYCxHaDQybQ5kLTFCJ7bO5+ZPzP0OIW2sQx
 vK3aIlkPx8/SH7xJfejDPv5VqWeb2PtpnG4UUrwZs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_020444_964828_930AE913 
X-CRM114-Status: UNSURE (   6.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [74.208.4.197 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [74.208.4.197 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, linux-kernel@vger.kernel.org,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, linux-imx@nxp.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marcel Ziswiler <marcel.ziswiler@toradex.com>

Document the NXP SoC based Toradex Colibri iMX8X module and carrier
board devicetree bindings previously added.

Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

---

Changes in v2:
- Document board compatibles in a separate patch as suggested by Shawn.

 Documentation/devicetree/bindings/arm/fsl.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 96b05484527e..c835a6fba1bf 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -277,6 +277,8 @@ properties:
           - enum:
               - einfochips,imx8qxp-ai_ml  # i.MX8QXP AI_ML Board
               - fsl,imx8qxp-mek           # i.MX8QXP MEK Board
+              - toradex,colibri-imx8x         # Colibri iMX8X Module
+              - toradex,colibri-imx8x-eval-v3 # Colibri iMX8X Module on Colibri Evaluation Board V3
           - const: fsl,imx8qxp
 
       - description:
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
