Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0F9131CAA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 01:11:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=oqrI5BHfdfSpa7BY3LTJX3YF/wjVCqId3H8QuJ596Ls=; b=rAx
	d6qqdXpFq01rfQjfEGoI4WB7azR0iG4N4B8Lte3TelXeyRR/4GsGPrSwSO7v1g7nZyYjIvs0gDzlX
	1BEmKhdUlQhsuAJBEBZNRNpoQ9e2275W2mXk60lD65+9+Bp4B/khDfnT3wwCUSXNP5MZP+bg+I+/G
	zh5WOkWejGxXSrAjjvf1SV8IzUJ0NUUcP41s9yEmIJbXKTUA5sFwZmRWnz0wBxl79XqbSRzSvX3pl
	2Ce7u0cU3QKKEXKs5lBwFGiNsfe6+GnEB5T6ouLdBXoflWaAUXkNkL3w1oVlg83u/pH+vn4cSpzSq
	fq8sh+dc3pH0yBpElnExmx3DSzITR8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iocT9-0007Lu-HP; Tue, 07 Jan 2020 00:11:35 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iocSk-0007CF-IK
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 00:11:11 +0000
Received: by mail-qt1-x841.google.com with SMTP id 5so43951892qtz.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 16:11:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=cIfGQUZGJ1UQZiG4WYmmh441UIHqnbg7xG8dfeToYGo=;
 b=QmzeZlQd12isY78U0z2qg8kl/Pr3BprBoEAk8EDdG1Ct18v1KI6ll/4aYE7Isb8nUA
 LfW+kvH+V5/QBxxGqHZYY58LamtMj5TPCyULaH7s+m3xlSN18oVsXOvj8GMm2ONPqkNF
 ebEZ9Y3QHJEjUl1QDvCyuplkYVI3evjiI7d2w/P6x8mYJCc2JgGDaZ/+drHIXSNr7un8
 ZFqUdLODOHqMHQ22Lt2vkQQngFu0EkRQ6zmTe+2fpnXUBUPBvNLD+Iblv+7WG+3Utygv
 tRqbY+rc7Ytav3w6Vu0AB2FpDYpkGe8tDM+5Jf8v2MWh5Bfs5Ft9Wo99YN1kzyxMRe/R
 riwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=cIfGQUZGJ1UQZiG4WYmmh441UIHqnbg7xG8dfeToYGo=;
 b=BPmzPQ0Sd1rdn4TZ2kVNTgVHhFTOWzUXEz+4PagOTeLhETMkqZYKtg6aJoS4cJNG3Y
 yMUz9t00BjuZP4oLr3z68Te+OmY3Pe+w1+mjTxepSCrccbNkwRG/kT47gvgR0RKdXb/h
 06DipXbt9suQOHA4RlbpubO0Ot5vbkn1CWqN9MYMkDfOFcRYRznL4YJQqMBbCJtjak1L
 dBlByAdk6m7+g3jDqVAaSAtj+Z3hK/IAowilI7WloSoZSQck2brlSEmkk1jOJ4hOTEKB
 5+yv3JqkKviqHDpuI7nXekNy1A2A/BwqgVZYm8eOT7VnqQBIRhh4FuzCZf5q/F0umlcN
 0mxA==
X-Gm-Message-State: APjAAAU8U0zq7gf1CMslvqXY8X5HUowtbCrswGq26LbTm86qB4AMEKJT
 A+LaOjMcSW51azXTDjNOAbM=
X-Google-Smtp-Source: APXvYqyPhtUgVqFYkncn77Bs1JmcGJr9/M595ftioW/J3/E7vTTJxcgLzW3TZE7RljEtUeXfLbf/Jw==
X-Received: by 2002:ac8:33a5:: with SMTP id c34mr78914522qtb.359.1578355868718; 
 Mon, 06 Jan 2020 16:11:08 -0800 (PST)
Received: from fabio-Latitude-E5450.am.freescale.net ([2804:14c:482:5bb::3])
 by smtp.gmail.com with ESMTPSA id f23sm21441262qke.104.2020.01.06.16.11.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 16:11:07 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH] ARM: dts: imx6ul-14x14-evk: Pass the "broken-cd" property
Date: Mon,  6 Jan 2020 21:11:17 -0300
Message-Id: <20200107001117.2009-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_161110_637613_608A9A47 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
 Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com, kernel@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

imx6ul-14x14-evk does not have a GPIO dedicated for reading the card
detect pin on the eSDHC2 micro-SD port. 

Pass the "broken-cd" property to describe the absence of the card detect
GPIO so that polling must be used.

According to Documentation/devicetree/bindings/mmc/mmc-controller.yaml:

  broken-cd:
    $ref: /schemas/types.yaml#/definitions/flag
    description:
      There is no card detection available; polling must be used.

Even though no error is oberved in the kernel, the lack of the
'broken-cd' property caused the micro-SD to not be detected in U-Boot,
so let's improve the device tree description to make it more accurate.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/imx6ul-14x14-evk.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
index 212144511b66..265bf4108cb6 100644
--- a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
+++ b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
@@ -327,6 +327,7 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usdhc2>;
 	no-1-8-v;
+	broken-cd;
 	keep-power-in-suspend;
 	wakeup-source;
 	status = "okay";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
