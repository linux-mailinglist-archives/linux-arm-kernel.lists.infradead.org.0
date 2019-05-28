Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BAD12CF09
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 20:58:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Cv+HodePhmoXhNZXhMaC75QwjyeB3RnwY7cNV6GEM74=; b=qys
	8vPw6YIQHF/ETAA59mHuNPVstsAtRl6+idayKLC8Qe8zufmuatUzt9sJVBM6rotfaa3WEVGoqt6E9
	7VlRdhn6lkHvSdTezs7ZCKX1nMftCQLdOZ9CLolUF5/ZypOMoqnVHwotDI5EE2HwtA9EDUd0dYQew
	J08Udc1lDEYjqqP8SPWnrTe4H+TvydTZ2eJylaEhiIiY1ybOrgJgImALBk4LYfzqXPdeC+DhbIe+I
	sgTWTOx/L5A9EPRvD6kEBABOA8aYdR5GeOsFyNpxvb05mgzGG/hKqfnPO+6sUYWghIaDoQEErjaC+
	D53ncJTghSdptG2eCHZN3JG+DgJwXBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVhIu-0001p0-RC; Tue, 28 May 2019 18:58:32 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVhIo-0001oO-22
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 18:58:27 +0000
Received: by mail-qk1-x743.google.com with SMTP id c70so10112978qkg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 11:58:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=DxNIK7DhwVGgLXgEiftICyRQ9ArYZNpGSjpgZmlBJSM=;
 b=fRk7A5HEC3sWxS/85PfUklpU/sB7N7q9ftA50KLwcOsjlS+mYQJBsXxySJvB4krAmO
 nbhnZ5iRDuRQ0jHKkCBwzxnPUMOvz/AV9+bemleehawEurqD3kB19lD2ZsJuw8xhKNdV
 IeM/Pl+9ew2FrmQbHE2bAWPlaL0lzxbYCDdjkCaeHttOvalysxIFT8reak5hCkbV6XNv
 EYXuUl7wcnOdiV5eUEAgLdEl0Y80YaywCrt7xPflg6d/HLHgvuKuPw4MUo2tKXLksrZM
 tMGPxmr9OG1JE2KGKDSxVrdQbApLLljSMgARfG+F+P0FMZSPzoQadaS/KWGVQW6R90ZV
 MstQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=DxNIK7DhwVGgLXgEiftICyRQ9ArYZNpGSjpgZmlBJSM=;
 b=QlAHDFdtqnW+zpfmaG1cCutO632bymttNxuyS213vwVv4Re1fJupvTGKI8TyxZgOKa
 QnGgtiZLUQ42pk7ZrO01Qk2EryCRlQdcqfH+Up55vB36MdmaL0kfOFGLAUq6G1dRtMRs
 1XtuPpcnTUN8kbY3RXRABhURwRpouKXGqOdBXxOQFmRL/rX17oEMa1fIzvYBcJT/1Xom
 fJTwsziO2vaDj7LS0PRNgX1bNnidXmTgN3ntJvsPRulIEFidXLKmsDaukrqzkAn+GAoq
 zMcAJB5Jc5jJwjysajFy5/ZQr/c7eMfcw3iUIeIy89bAKDyeiMfLfraDVaZQAzc1Vkdo
 suQg==
X-Gm-Message-State: APjAAAWTiEIoW7/amDOaeB75YEvHkLhDATBTtxov2owrlw0MSZCUXddm
 E8DCMX0lysCivLl3YNTvR2c=
X-Google-Smtp-Source: APXvYqxc6l04+k0vdMz5Nt/p+zd5Wwn2DuLL6bNeuvjGc83hutL1H+PdbnwfyWT3gQAXzu/4Cyp9OQ==
X-Received: by 2002:a05:620a:232:: with SMTP id
 u18mr11672246qkm.131.1559069902053; 
 Tue, 28 May 2019 11:58:22 -0700 (PDT)
Received: from fabio-Latitude-E5450.am.freescale.net ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id a139sm5135901qkb.48.2019.05.28.11.58.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 11:58:20 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH 1/3] arm64: dts: imx8mm: Pass a unit name for the 'soc' node
Date: Tue, 28 May 2019 15:58:10 -0300
Message-Id: <20190528185812.7103-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_115826_103683_29CFF967 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 linux-imx@nxp.com, kernel@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 'soc' name needs a unit name to match its 'ranges' property.

Pass the unit name in order to fix the following dtc build warning
with W=1:

arch/arm64/boot/dts/freescale/imx8mm.dtsi:203.6-754.4: Warning (unit_address_vs_reg): /soc: node has a reg or ranges property, but no unit name

This also aligns with imx8qm.dtsi.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 708d3c4c1389..d6803db32e40 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -200,7 +200,7 @@
 		arm,no-tick-in-suspend;
 	};
 
-	soc {
+	soc@0 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
