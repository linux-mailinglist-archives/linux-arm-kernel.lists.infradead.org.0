Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9D0F999C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 20:22:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FWvLUzl5DuFyIcMRKGs7BkFTEyXz6y8txcAtKiB8BEo=; b=hKc
	KtgA9hYDX0Ek85oGjIlUWvIrJE15cYjQ5hSKQCntiQDi/N6Yw0ygmRXqLEKzCMGytWQjQLr+MqsNO
	S2DJ3fEyB8oAcIGyKBXE6WiMVgAbRwKY9kg/nQbp1iKlgMGSqXqGNI3oWZd1qkRMfobizjMmFY7c6
	zdOn4LN7hIRcADztpTiMGAKSEa9PT+ZSZZzOYsVNcXYekOomBkEQjZ07yF1sNVMxTZYvkXfZqKg9Y
	z7tLzdgG6yqngO1ZiuPakwGBj/3w5HhAIxkLAOO42cFzChM6O0uWkndsvjKetp8hOYqiYm3yklFhz
	jzCmd8QyCWYy25+BEXj1xDFWOcnKJOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUbkC-0004LB-IK; Tue, 12 Nov 2019 19:22:28 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUbk6-0004KD-3b
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 19:22:23 +0000
Received: by mail-wm1-x32c.google.com with SMTP id b17so4217208wmj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 11:22:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=DK1TigpUcHQJNflpowdTvpChCBocE4D3Y+EycO3ByNQ=;
 b=fUZbp0wJQKnuvlyQ/8lhb56UMwzHp57y0zS0nTSrIC9yFycxpBHvb6ZY9TD5CFupcr
 WMaj4w888FD8AonwI9SKk1tJ+ohGzrelCbSTEOoy9mDdyJ52gaD+3+dsy22taRvxWatM
 QIf+hapJkSTdebS82ZBlDVxcl6inKQGyGsQIYH9nE63Ma23cfT/l50mGxwukp4+8R5a2
 H6QSe1t9dkPfAm1lW8xOEmkxrmXZ8BbJ096KRfNVKn4gkh44ivcbgjGNNAqPuGSA6fSV
 MRXT1F2JgHyzYJjj9/bzJJ4cfnHlGozuUZ9GL9AxmjRdUYfW6l8bVa4t9bSzLLf9CkEn
 vSjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=DK1TigpUcHQJNflpowdTvpChCBocE4D3Y+EycO3ByNQ=;
 b=mo8RJx7t3bXiftMi6zj9uu5BEwEEpre1n/Le520vTOd13aHf13J793gM+eVUuVNkyv
 tdzFwhzfaQ8YCywbjJSGKWf3+im7TT3mtbAyfuZOfjkweb4rimzZ13dEj1Ec5utRfBB5
 XbXtxttM1LZMiVjx5ZOvkW/3D4OJrHJiY8u66jOg6E29QegSGwGLXc4lS+g1rF+li3td
 gaRexDRMbPJ6BOgjV32wiR4CIUiL3jVhnwV/nbTlC0uBFPBaCXQbJZQadC5RRGkPrawt
 CjAMlKhnIZlc0smH4m9t1gkogLh5TqjYNi5XtVv97pv512gTVkTLZHx23W/rayvpYic5
 hNRg==
X-Gm-Message-State: APjAAAXPDHpI0J8G4raWn9I+EO8w+v+PkE7is1uWQJqJoi3NewD+5MH7
 u2BP3YQcQs2w3VucMdzm2Po=
X-Google-Smtp-Source: APXvYqyrtxscRr7w1XVSIDALlk46izl0+i27FRwaiNmrZGNu2z6zghPCCQifyckfWHAP6I51LFCZYg==
X-Received: by 2002:a7b:ce11:: with SMTP id m17mr5879571wmc.113.1573586537127; 
 Tue, 12 Nov 2019 11:22:17 -0800 (PST)
Received: from localhost (ip1f113d5e.dynamic.kabel-deutschland.de.
 [31.17.61.94])
 by smtp.gmail.com with ESMTPSA id h15sm18860481wrb.44.2019.11.12.11.22.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Nov 2019 11:22:16 -0800 (PST)
From: Oliver Graute <oliver.graute@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCHv7 0/3] Variscite DART-6UL SoM support
Date: Tue, 12 Nov 2019 20:22:00 +0100
Message-Id: <1573586526-15007-1-git-send-email-oliver.graute@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_112222_148218_0C67213B 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32c listed in]
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
 narmstrong@baylibre.com, Sascha Hauer <s.hauer@pengutronix.de>,
 m.felsch@pengutronix.de, linux-kernel@vger.kernel.org, oliver.graute@gmail.com,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series adds support for the Variscite DART-6UL SoM

Product Page: https://www.variscite.com/product/evaluation-kits/dart-6ul-kits

Oliver Graute (3):
  ARM: dts: imx6ul: Add Variscite DART-6UL SoM support
  ARM: dts: Add support for i.MX6 UltraLite DART Variscite Customboard
  dt-bindings: arm64: fsl: Add Variscite i.MX6UL compatibles

 Documentation/devicetree/bindings/arm/fsl.yaml     |   1 +
 arch/arm/boot/dts/Makefile                         |   1 +
 .../boot/dts/imx6ul-imx6ull-var-dart-common.dtsi   | 367 +++++++++++++++++++++
 arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts    | 221 +++++++++++++
 4 files changed, 590 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6ul-imx6ull-var-dart-common.dtsi
 create mode 100644 arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
