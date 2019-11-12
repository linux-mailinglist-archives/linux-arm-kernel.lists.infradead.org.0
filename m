Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CBFF99A8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 20:23:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6LoZiRUULCHzoDTy+/VH4hxdATAtKqPgQM1loAuB1XI=; b=fdy4EUrVgnvR0S5k546scf4lrX
	AVo3xOHQD053Zev+FI+S8ERyLs8ZErs5vytQBdnG6tC7RGcB5B3HKGEHDw9snxNwbz37c2O7uHKAR
	8YQEvo3Y6k08H4k2dbAukTYkk9Jl48SUqhHLS4/YhaQzun6d5haDefQWd/0X6BxHmqTsFDvF0d4xU
	ilojQDbd+hm6/moAgSGjCvsfopt4WVS5YEl1j6qm6HC+APmlCJw2Q85vTkl+6pGKWM2mpb4NVqPPc
	lbSBVaZo7v7j80JMhsPby9cJA7elk2uOTGR15iFs9G074keqoHFvAaIAPEbQVfYi1ihlN61Ky7kll
	QJzn4tmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUbkw-00053B-Rr; Tue, 12 Nov 2019 19:23:14 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUbkc-0004sS-JB
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 19:22:56 +0000
Received: by mail-wr1-x443.google.com with SMTP id w9so13035646wrr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 11:22:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZpEDoN5a5h6fV7ZiE3D69/PGx599J+5pvS1M8/D7rEU=;
 b=PtXGnuhiB8iHD5lBqu+iKKNrAFCGvcM3PwOHEFNhjSf3PtFG6aVLSF3vtNYolZmc7j
 /w8g/CtrAsWvzTkfRzrDBQZqy8ygryYeR5Q5QB+9tEV+6QWCBV/P5qk/l0r4gJ1eE87e
 MYo17lJWztQ7xFIDb3VwIcERrLN34nd1Kwred7wsuxx7kaDLsde2rgiMpRsJzPJ8hJ0y
 X1/Qy6TLwLFNVGggF7HgAyplqcGH/Lt8PQbUvQE+pBS75cqS7yHvxxepFwGbAcNJk24S
 xjHsuNXIQRG7q0GeYX3m680kox5udElJlpHx7icuIxVA1dzuwllg34oisSpAhLaBkBDU
 +4Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZpEDoN5a5h6fV7ZiE3D69/PGx599J+5pvS1M8/D7rEU=;
 b=aBzdoKJFGTNy+24TENG2Yh9JPJwNpBd7JUQ4N9XJ35ZQcV9Cb5u7mXEu+6llUXoAig
 YpYjBaclud6zsrC2XYyH9qX5sGNmVt2T1C2vO7zbbmMqdY5YfNtAmDF/iYbkOKPPlX8E
 daapuYEXqlmlrCVCQiLt+BjgMNtuYaZUsVSMHYZy9KrCUvlEspHsgVc/L4sIEaGxjc2d
 Dst4A/Qwdhrewz8ToREba8gHIXF/FUhdDCi8NkoG9/rnjQKfXUUJfE8Af+0hjUIbGwaJ
 R0Af05YgtwhH2QgGzRpC5OLQ5Y95oe99fYPrG7a3dzOGsVMVkatC+ZawSFapAeZ82aGc
 r5tQ==
X-Gm-Message-State: APjAAAWzMjr7dPDblpD5IV4I1I+Rbxig2swyc1YR6xp+KFIe9ZUR0fdu
 6BuChvAxX7Ppt5DosckdjK8=
X-Google-Smtp-Source: APXvYqxmgR0LNDT2aA2VphXtdJJyNweCg4ramG2+PSK6zKdwAeK/GjCrCGV/ESC/K96/pVllEvHutQ==
X-Received: by 2002:a05:6000:1621:: with SMTP id
 v1mr28728212wrb.62.1573586572256; 
 Tue, 12 Nov 2019 11:22:52 -0800 (PST)
Received: from localhost (ip1f113d5e.dynamic.kabel-deutschland.de.
 [31.17.61.94])
 by smtp.gmail.com with ESMTPSA id y6sm14894974wrn.21.2019.11.12.11.22.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Nov 2019 11:22:51 -0800 (PST)
From: Oliver Graute <oliver.graute@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH 3/3] dt-bindings: arm64: fsl: Add Variscite i.MX6UL compatibles
Date: Tue, 12 Nov 2019 20:22:03 +0100
Message-Id: <1573586526-15007-4-git-send-email-oliver.graute@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573586526-15007-1-git-send-email-oliver.graute@gmail.com>
References: <1573586526-15007-1-git-send-email-oliver.graute@gmail.com>
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_112254_634516_F187BC8B 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Anson Huang <Anson.Huang@nxp.com>, narmstrong@baylibre.com,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, m.felsch@pengutronix.de,
 linux-kernel@vger.kernel.org, oliver.graute@gmail.com,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the compatibles for Variscite i.MX6UL compatibles
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index f79683a..d0c7e60 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -182,6 +182,7 @@ properties:
               - fsl,imx6ul-14x14-evk      # i.MX6 UltraLite 14x14 EVK Board
               - kontron,imx6ul-n6310-som  # Kontron N6310 SOM
               - kontron,imx6ul-n6311-som  # Kontron N6311 SOM
+              - variscite,6ulcustomboard" # i.MX UltraLite Carrier-board
           - const: fsl,imx6ul
 
       - description: Kontron N6310 S Board
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
