Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B98BAF1B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 10:15:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tnjee4gMzjCPW/8Vqxn+AqjCyObcXM/omvX7uy27cHo=; b=V7X/BlwXSXyCKl
	3wNXLG/VF4u4lagcezV0Xg93wsBORcLFX4+RYtCoJ7zR3aAodd8CfewOEEhnPnCkkb/dUMCBHzP2S
	NUYI4eLcarPDf/N94G3J35kV6KY+5JEjax+U3atK1yVdFCViqLzAGtha97RdfL6cx2xqOR+bFRJij
	4kUWpq4EbL0R29bitSsbpIhYX76OJoCsR6MliHWGKZ1kqK7kYCQdL9GkOnaYoYBf4LGXwRcSfgJw8
	baKXJV8ZC4Cb6mZ6iB6gsGcQddntYFQMK9Jy1zny8aIDGpnaxb4qXuwdotT/5pOJY5xr3ehhWQOJD
	1rTngi1YdJAw+j0KPkDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCJVK-0007FG-5V; Mon, 23 Sep 2019 08:15:30 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCJTq-0005DQ-8c
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 08:13:59 +0000
Received: by mail-lf1-x143.google.com with SMTP id y127so9417497lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 01:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yaEGfYYzHwOCfVyIlgvVjUBZGDRTASgoNwVywAAbPHY=;
 b=ewfXG73buI74XMq7fZvVCWZKlgR+0TiV4JG9jO/fe49Cgrg27am4riX0e0bPmvYroq
 u1b3ifBwwoH+Hu3VVrsI7kvp9IgLIBUnoVgqO1+NL1lZp+dR74yHyrgZ1unaAXzC4J6X
 kayGRA9zv0hm5PTVKc5F3g/2+TsbFV+athuPM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yaEGfYYzHwOCfVyIlgvVjUBZGDRTASgoNwVywAAbPHY=;
 b=g/ylJY2Pp/N3OZHrkAPPC2eH6iD3kiDcD4kwDiNERCpIA6ooDHEXQjdZEjRSq4WuGf
 8rgFqFozOcrYRU8E+mu1rZFUsr1XJrEJs5AbcikhfKYXyn3do3I6zfiXfQBItk3tcU/B
 L3tOHGb74AdNE5vIAdvk3CI/SGVryBnhy2skqhd2tDyDLyiANnwrE7eFPLE+Jt8ritPZ
 Uj6Mm0hv1GZZYS9EbnKSmXKZRI03YMkPGGEcx/iCdksTuTdt9gzAoam921yy0IGlLMbJ
 NoQqPVenAkPS9vp6jKl/K26tS4XQmwDKJYq9LTMS9fWiP+JoD0WSNOrN9f8AZQ+3ywnm
 eBuw==
X-Gm-Message-State: APjAAAUIvxhH6LVifowdpbprC28xJV6XIY2k0YjaKM1TwVecdIPbKc2o
 kMAyXtCGt6D1IcvlN+BLIMhQdA==
X-Google-Smtp-Source: APXvYqwa45HyJC3lNRp5/zE7lrzcpW7gGM4PVnCUaEY3v11W5wPXc/WNYcX42D8uo4bAGlw71Tm2Fg==
X-Received: by 2002:a19:c396:: with SMTP id t144mr16546948lff.14.1569226436978; 
 Mon, 23 Sep 2019 01:13:56 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id c21sm2054946lff.61.2019.09.23.01.13.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 01:13:56 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Thierry Reding <thierry.reding@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH 4/4] dt-bindings: pwm: mxs-pwm: Increase #pwm-cells
Date: Mon, 23 Sep 2019 10:13:48 +0200
Message-Id: <20190923081348.6843-5-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190923081348.6843-1-linux@rasmusvillemoes.dk>
References: <20190923081348.6843-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_011358_315985_E978DB02 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pwm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We need to increase the pwm-cells for the optional flags parameter, in
order to implement support for polarity setting via DT.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 Documentation/devicetree/bindings/pwm/mxs-pwm.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pwm/mxs-pwm.txt b/Documentation/devicetree/bindings/pwm/mxs-pwm.txt
index 96cdde5f6208..1697dcd3b07c 100644
--- a/Documentation/devicetree/bindings/pwm/mxs-pwm.txt
+++ b/Documentation/devicetree/bindings/pwm/mxs-pwm.txt
@@ -3,7 +3,7 @@ Freescale MXS PWM controller
 Required properties:
 - compatible: should be "fsl,imx23-pwm"
 - reg: physical base address and length of the controller's registers
-- #pwm-cells: should be 2. See pwm.txt in this directory for a description of
+- #pwm-cells: should be 3. See pwm.txt in this directory for a description of
   the cells format.
 - fsl,pwm-number: the number of PWM devices
 
@@ -12,6 +12,6 @@ Example:
 pwm: pwm@80064000 {
 	compatible = "fsl,imx28-pwm", "fsl,imx23-pwm";
 	reg = <0x80064000 0x2000>;
-	#pwm-cells = <2>;
+	#pwm-cells = <3>;
 	fsl,pwm-number = <8>;
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
