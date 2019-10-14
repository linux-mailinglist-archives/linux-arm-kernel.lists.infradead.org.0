Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54873D5A93
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 07:19:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=llprveLeIq5Q38j9FzZhuQVonWhFbZ77g25Rce8vl9c=; b=XcvQw6NKYOkKnr
	I7M5G2VkHZyh9FwxYsYeiC+oKTVuzsb/BAOiRoAjWWLMRcIHO8Y93uX+GvPaPeVzSthA4XpfjRI+8
	OMrFJR8WCqXi4ZjzTOQhlz1OUGhYmFv8XBqP6e9NyWmHkCvEulYO+O7qjwnWb+riZHh2H0k8NKgbm
	5WdfZOUlRm7ymwDWOLuhvxxrxapLQChAn5ikSNL3hEq8JVIWdtqD/yLYCmsc5NGdwDOoGOgavqK4t
	glAWdGFT77Epba2IE3qih0dY0ZCaa0g3Uy+4nnCJkb1rTxBtsJ9HlDaPBGldZIcaRVJCm7I+Gv3or
	jUVjK9ZOl2wC2dJIreaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJsl4-00078D-Pa; Mon, 14 Oct 2019 05:19:02 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJsko-00076u-OF; Mon, 14 Oct 2019 05:18:48 +0000
Received: by mail-wr1-x441.google.com with SMTP id p14so18011109wro.4;
 Sun, 13 Oct 2019 22:18:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VV3IaZnskbUr1GiFO2X9yDGhA134LORR3NXQx0QiOlA=;
 b=GF/EoEenQBXCUWJ2k0tzuqQR085/nEg2EkMXurnyEdNA2zKX6mjtAE5DIkxdZ0UU5Q
 wSofKEtnAsrgiJeTSdIjD03CU0AYKb/SncJB2yl5/6p80ZrpgWSQoPklhw3I461/0+89
 zm7Sp2nZb/rLh1lZG8RLs1GXPEV8El4hcQ661jDremdTBE5H9wt8573KGsGOPmbhlZoC
 1yHBDrCLpIEkaqxcvFLeaCQMEoWaNvrrRsqGeqp50z8CPYO7Fp7+cftycC7iLB4mmS0n
 QQzIa0U6xir7ZDLNcQlPRwVrRP3iWp9AdJI6aK3c+j38tJ61NbCXeZrw7E3NjzG116Gb
 keTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VV3IaZnskbUr1GiFO2X9yDGhA134LORR3NXQx0QiOlA=;
 b=rZeuRp9pFN+QnnjFvJzIh7He0XjZ02dNgxxgiaK0DA6iJCKGlBg15De2OAFaImHWWX
 VmR1kqWtWefUZuy9DDMwe9FcBKVTo5KfjE+YXCBOwISUsz/YTqkenyw30k8UBRjaPNjM
 tcQ0Z92L+4czSr//dGkKtoi0Z23eQg6DrnkYqZXAwVw/7tYDrCKoZkE3fHqhoMAzT2Na
 tvm84FDIzzRzZ09dyAeJFFK7QP/hZjaNJO7uKA31tazUOoR7ZsVj2HMPNcc2I2U/W+Bp
 GkBNfzn75w06IFnnIYvUnA187i7mEYDZO34WO2vJiGywjR7eMXHuVOPOEKQCn5Rk4p7T
 zd2A==
X-Gm-Message-State: APjAAAXqKKoE2FOsMX+OdtAfMGXCENVsuGlIBPqP0CgLfNbqThMmpLnf
 DgRHptU2Qtxa2YFdCR7n/B0=
X-Google-Smtp-Source: APXvYqwSkfiMiVUM22hh3eH+vxUD6VrSroLzyJM2IkERg+/i7QXfkOq9fwEWbQq/e+W1/GbC3PcE0Q==
X-Received: by 2002:a05:6000:18d:: with SMTP id
 p13mr1507726wrx.396.1571030324402; 
 Sun, 13 Oct 2019 22:18:44 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id 5sm14660340wrk.86.2019.10.13.22.18.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Oct 2019 22:18:43 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, khilman@baylibre.com,
 mark.rutland@arm.com, robh+dt@kernel.org,
 martin.blumenstingl@googlemail.com
Subject: [PATCH v2 0/4] crypto: add amlogic crypto offloader driver
Date: Mon, 14 Oct 2019 07:18:35 +0200
Message-Id: <20191014051839.32274-1-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_221846_808785_BA736308 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-crypto@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello

This serie adds support for the crypto offloader present on amlogic GXL
SoCs.

Tested on meson-gxl-s905x-khadas-vim and meson-gxl-s905x-libretech-cc

Regards

Changes since v1:
- renamed files and algo with gxl
- removed unused reset handlings
- splited the probe functions
- splited meson_cipher fallback in need_fallback() and do_fallback()

Corentin Labbe (4):
  dt-bindings: crypto: Add DT bindings documentation for amlogic-crypto
  MAINTAINERS: Add myself as maintainer of amlogic crypto
  crypto: amlogic: Add crypto accelerator for amlogic GXL
  ARM64: dts: amlogic: adds crypto hardware node

 .../bindings/crypto/amlogic,gxl-crypto.yaml   |  52 +++
 MAINTAINERS                                   |   7 +
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi    |  10 +
 drivers/crypto/Kconfig                        |   2 +
 drivers/crypto/Makefile                       |   1 +
 drivers/crypto/amlogic/Kconfig                |  24 ++
 drivers/crypto/amlogic/Makefile               |   2 +
 drivers/crypto/amlogic/amlogic-gxl-cipher.c   | 381 ++++++++++++++++++
 drivers/crypto/amlogic/amlogic-gxl-core.c     | 333 +++++++++++++++
 drivers/crypto/amlogic/amlogic-gxl.h          | 170 ++++++++
 10 files changed, 982 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/amlogic,gxl-crypto.yaml
 create mode 100644 drivers/crypto/amlogic/Kconfig
 create mode 100644 drivers/crypto/amlogic/Makefile
 create mode 100644 drivers/crypto/amlogic/amlogic-gxl-cipher.c
 create mode 100644 drivers/crypto/amlogic/amlogic-gxl-core.c
 create mode 100644 drivers/crypto/amlogic/amlogic-gxl.h

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
