Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0411FD2CB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 18:50:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D+OTDsVAFPsn5NQ6MhVMPC76RLZKLlJ8s8D28y6YmSA=; b=M4seD/unmunABy
	GwWei3SapVGUDw0E5h2leyhA4AnEdTseKq95KfRg9GIbIR9n9XG9Hsn7J3Sln8Y2quiNAfhkVydxo
	z3CvRdf4biFBprJzIc5buN28+OBrJWuv3J9Uh0y/LOZtj6QPc0UrRooUNYWucoVBevW8ojMbmib13
	wtnkkJEY3rfc5ik5zTr+wyAE0t+axUYTdgDwW+gi+tseCdg5lBAJ+RNwqvcoVNm0elWeRKQ+BMtzi
	sFCyf5fyDEjXvl0XmfGJbPGPSItRMtud1lj4Re048pHogLqx0wWjBwUKQREfsHs6pEJYBwdtotkFJ
	X6UjEnUQ1asQN8ZAvVSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlbGv-0001UU-Nu; Wed, 17 Jun 2020 16:50:45 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlbEg-0005t3-PB; Wed, 17 Jun 2020 16:48:28 +0000
Received: by mail-ej1-x642.google.com with SMTP id l12so3118363ejn.10;
 Wed, 17 Jun 2020 09:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=q6IFxg4j69ZkwCCMUppVQGAEtuDflNuWjwBqcXu4yWc=;
 b=Hd+jjA0qiCgPyGwq/YKCmOsq95TdCgNwNFdjCuMzvPQTq/LyAna+naHoNlOATqTcP0
 LldVbflE35vwb66LKkudHfCX1ExzUEjmHLXKqMWgRIR56dwKfT4e0DELMkt0uTwM1cH7
 Vck0R3qkeOx/esfrzVwRc9bPq0NbBWQGYQ1U1DYdWww62ZKWKlfdCrmti6hbuigUfxlZ
 0fsdrYQfXv8F8ZYI1bP9KsMSuick6wwCBtwNC5fjSgizvx7HtncmwYJkqPFqAm1oJNYS
 vS9MYfkiOuEdQgMjNXiSjrPVePovMCQRNhig4FaKr9fpXHIXrRedwLvZwO9AhkBDtKjf
 mD8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=q6IFxg4j69ZkwCCMUppVQGAEtuDflNuWjwBqcXu4yWc=;
 b=jVJqD+z0HGSgOj1wePda5O6U3kzGlEBjImS4UIz1i30G7siMOvCT+Ckzjlv57c4U7x
 smsgoQK8TxKrjwXR8y1DvE4cv5Qf/qsY+zw9IeEW6pJ6Q7tJceNrALrVjAk6pGP5LmLF
 D6AizJy+DHJLAcorw65i0U4qv5hSlXhKQdcMQRg6wyPAS2mIjC6IDwwXA5pnjqIaGLjF
 K8eLoZU2zApM8b6AWB++MNOAJ8yA81yoAwDkeVdcKFIrmaxy3x80/tu3p/3DJofOymf1
 H92zNV9gTf7uVOMZ7WDr69DB2ByJlLaE365dBn1YXfOBxwY2/DQxFNkSbA64xKAoQDlb
 LQZg==
X-Gm-Message-State: AOAM531qhHiN3WSaevqumdfKIFXRJAcWbjieKSxZteVtdX6/IC2Exe+t
 1ry3jKACmWjaJJQbRO0shNk=
X-Google-Smtp-Source: ABdhPJwdWbseXtvFP2fS4kLllfvqMBsrS/h//UWaCxJEWMISfQiPA6Y12StFp/40WvC6xV7yjZOueQ==
X-Received: by 2002:a17:906:f913:: with SMTP id
 lc19mr79340ejb.286.1592412505425; 
 Wed, 17 Jun 2020 09:48:25 -0700 (PDT)
Received: from localhost.localdomain ([188.24.129.96])
 by smtp.gmail.com with ESMTPSA id v3sm127124edj.89.2020.06.17.09.48.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 09:48:25 -0700 (PDT)
From: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
To: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH 08/11] dt-bindings: reset: Add binding constants for Actions
 S500 RMU
Date: Wed, 17 Jun 2020 19:48:08 +0300
Message-Id: <064369c282f06f1e114eb4d7a832e65376680a59.1592407030.git.cristian.ciocaltea@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1592407030.git.cristian.ciocaltea@gmail.com>
References: <cover.1592407030.git.cristian.ciocaltea@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_094826_854850_AE7FCF1A 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cristian.ciocaltea[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add device tree binding constants for Actions Semi S500 SoC Reset
Management Unit (RMU).

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
---
 .../dt-bindings/reset/actions,s500-reset.h    | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 include/dt-bindings/reset/actions,s500-reset.h

diff --git a/include/dt-bindings/reset/actions,s500-reset.h b/include/dt-bindings/reset/actions,s500-reset.h
new file mode 100644
index 000000000000..f5d94176d10b
--- /dev/null
+++ b/include/dt-bindings/reset/actions,s500-reset.h
@@ -0,0 +1,67 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Device Tree binding constants for Actions Semi S500 Reset Management Unit
+ *
+ * Copyright (c) 2014 Actions Semi Inc.
+ * Copyright (c) 2020 Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
+ */
+
+#ifndef __DT_BINDINGS_ACTIONS_S500_RESET_H
+#define __DT_BINDINGS_ACTIONS_S500_RESET_H
+
+#define RESET_DMAC				0
+#define RESET_NORIF				1
+#define RESET_DDR				2
+#define RESET_NANDC				3
+#define RESET_SD0				4
+#define RESET_SD1				5
+#define RESET_PCM1				6
+#define RESET_DE				7
+#define RESET_LCD				8
+#define RESET_SD2				9
+#define RESET_DSI				10
+#define RESET_CSI				11
+#define RESET_BISP				12
+#define RESET_KEY				13
+#define RESET_GPIO				14
+#define RESET_AUDIO				15
+#define RESET_PCM0				16
+#define RESET_VDE				17
+#define RESET_VCE				18
+#define RESET_GPU3D				19
+#define RESET_NIC301				20
+#define RESET_LENS				21
+#define RESET_PERIPHRESET			22
+#define RESET_USB2_0				23
+#define RESET_TVOUT				24
+#define RESET_HDMI				25
+#define RESET_HDCP2TX				26
+#define RESET_UART6				27
+#define RESET_UART0				28
+#define RESET_UART1				29
+#define RESET_UART2				30
+#define RESET_SPI0				31
+#define RESET_SPI1				32
+#define RESET_SPI2				33
+#define RESET_SPI3				34
+#define RESET_I2C0				35
+#define RESET_I2C1				36
+#define RESET_USB3				37
+#define RESET_UART3				38
+#define RESET_UART4				39
+#define RESET_UART5				40
+#define RESET_I2C2				41
+#define RESET_I2C3				42
+#define RESET_ETHERNET				43
+#define RESET_CHIPID				44
+#define RESET_USB2_1				45
+#define RESET_WD0RESET				46
+#define RESET_WD1RESET				47
+#define RESET_WD2RESET				48
+#define RESET_WD3RESET				49
+#define RESET_DBG0RESET				50
+#define RESET_DBG1RESET				51
+#define RESET_DBG2RESET				52
+#define RESET_DBG3RESET				53
+
+#endif /* __DT_BINDINGS_ACTIONS_S500_RESET_H */
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
