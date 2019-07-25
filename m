Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CAB475832
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 21:43:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xEO/kqchDKty5fl67snKcHgh5AwctwVYd60wqsijAoI=; b=Gi7
	DNDNLW2R2yDQ6athoS262ayM2CMAM04kxzg4QTEgDQKG9L+okNE1+tnKsvfbV9MZZ6FEmm+RxtX8/
	zh6cFCvpqFeRpS6fcP7F+MoGD21tNjIs/35kQpWDgBdEQclliCJ9BOEb6X+62MEFx8OgNg3J5fhga
	Ge4Y+ehnEqZ89or2wzv+1pPWl97qLPOhvLdt+ywmz9autuxE3v5uxTVyANf6ZunPF/GhLOOrHFlKm
	rfcNj8iP30t0P7wl82LZCZ0mmsFHcSnjHghvib9w11e/dsPvvfBFlNQ/OlfxJ0tpoNtSVrJKmaduV
	YbO1YNwRlMztdVeFeGyyaM6bd2ezWVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqjeA-0001VV-SY; Thu, 25 Jul 2019 19:43:26 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqjds-0001RA-ID
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 19:43:10 +0000
Received: by mail-wm1-x341.google.com with SMTP id v19so45767599wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 12:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=HpwqwqbOJStimlLPjV2WsSVvFoS5zR7dipevAmhXn+I=;
 b=UQg/tDmQSfp9ChPaHt8EGlDQzZ6S/EdbxNg82he/Mzh8kwJ1qDpcDDkFMwLldt0cJc
 lCF8BYMyw+DpR0ybV0yCoNWYL08yFyuTbTqO6aSQREaMO43xW88KfpTm8GecjxL8rJGw
 GyauPYbXAUfd+wepxHqkp3tFKGMm0w8zorbYNjo6KTprUZWLwZ/Fo8VRDIu+/lxrhFXM
 eDgKBYvOFPyY6b3EkW8UL0kebH0JQ+M7KxuybGZKYAD/kf7iDXT6S2sTLL26ra0MIe4W
 Qa6E4+gr7U08eq2pNnQbGEPANNHi3nhHnEMX5iaonM8eETL+dQ37+c+wg0iR530FfwHU
 Nk5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=HpwqwqbOJStimlLPjV2WsSVvFoS5zR7dipevAmhXn+I=;
 b=cyMSpzST9Bdx7IDRG8rbk9DA73phKfuBOgZdzfuZHkAT+GsM8KyFPg1eQ17Jo29ncp
 okI9lbNgX3iClNErqKe7nk2ioZBoGWozOVRnnRAekWp9RuLYy4x0cyf9jmTsrjPCcD61
 OMpTI+gKoCLbpwQroLOL0AEBchVPaH3ujgw2BtDKHWaCgqMwizCO8ccYfvjBMjfFNzKe
 DA9gXTQYRfrkp3UBRjjo9M7ryxEoGawv8SnVipa7gPSeWoAeLu5m/2zd5h2L6hSdX8sC
 loW6GWuNcdy9eQuGZxeE5pvICFtxUt95AOSjoYOZMGKXxYPGO2ZnSPnTGRHcV61QCZMP
 VtCw==
X-Gm-Message-State: APjAAAWYkXUUxlYftJiRTB/Srv/k5/YKUX2K/0q2SZlxvqJomLD8uas8
 t27Bq1zfKXGpjNb09Y9hh2/fVA==
X-Google-Smtp-Source: APXvYqxpAh0jfU//NVh88rL1qSwss1rtJWAjuYNhw8soBe0yFJ+ERG4l4cq/Ofn+pyhmxoEsDSGiRA==
X-Received: by 2002:a1c:cb43:: with SMTP id b64mr82451700wmg.86.1564083786567; 
 Thu, 25 Jul 2019 12:43:06 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id
 y16sm103410662wrg.85.2019.07.25.12.43.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 25 Jul 2019 12:43:05 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, khilman@baylibre.com,
 mark.rutland@arm.com, robh+dt@kernel.org
Subject: [PATCH 0/4] crypto: add amlogic crypto offloader driver
Date: Thu, 25 Jul 2019 19:42:52 +0000
Message-Id: <1564083776-20540-1-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_124308_628998_8903132C 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, baylibre-upstreaming@groups.io,
 linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello

This serie adds support for the crypto offloader present on amlogic GXL
SoCs.

Tested on meson-gxl-s905x-khadas-vim and meson-gxl-s905x-libretech-cc

Regards

Corentin Labbe (4):
  dt-bindings: crypto: Add DT bindings documentation for amlogic-crypto
  crypto: amlogic: Add crypto accelerator for amlogic GXL
  MAINTAINERS: Add myself as maintainer of amlogic crypto
  ARM64: dts: amlogic: adds crypto hardware node

 .../bindings/crypto/amlogic-gxl-crypto.yaml   |  45 +++
 MAINTAINERS                                   |   7 +
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi    |  11 +
 drivers/crypto/Kconfig                        |   2 +
 drivers/crypto/Makefile                       |   1 +
 drivers/crypto/amlogic/Kconfig                |  24 ++
 drivers/crypto/amlogic/Makefile               |   2 +
 drivers/crypto/amlogic/amlogic-cipher.c       | 358 ++++++++++++++++++
 drivers/crypto/amlogic/amlogic-core.c         | 326 ++++++++++++++++
 drivers/crypto/amlogic/amlogic.h              | 172 +++++++++
 10 files changed, 948 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/amlogic-gxl-crypto.yaml
 create mode 100644 drivers/crypto/amlogic/Kconfig
 create mode 100644 drivers/crypto/amlogic/Makefile
 create mode 100644 drivers/crypto/amlogic/amlogic-cipher.c
 create mode 100644 drivers/crypto/amlogic/amlogic-core.c
 create mode 100644 drivers/crypto/amlogic/amlogic.h

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
