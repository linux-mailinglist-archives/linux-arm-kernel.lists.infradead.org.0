Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4E9D5ACB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 07:32:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=llprveLeIq5Q38j9FzZhuQVonWhFbZ77g25Rce8vl9c=; b=UQc
	OFYJHi/CfhSFANQKt09Ame6uVI1nCiL7WtXUkRP2G0/ryBXbefR/UXUgjmjOmAZxmfnkriadaQFxa
	UsfFV2X3bapuWfFVpzP/DwzVsk7d5+YnAkkrK075HfSCoMZpOj3o7M+afLAt7zb/b3kjtBQXd6Vkl
	GLPL4SIi53j2jCWTAQcoj+UTTBk+c3KxWCwLgfH//miLz9FUVQxK9M9Eg0qI0QtokoOWJmYCnpCPF
	n4PV0v6X0+M3FHVwK41xKHZBai8N4BVxYv2e06uAbsZLyQGr1ReHERLhKTYVjWwkxJCQQtKoOhY6z
	UTAMCnbMGO9uInDRkhHbdX9s4v7LlHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJsy0-000531-DP; Mon, 14 Oct 2019 05:32:24 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJsxh-0004yz-N9
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 05:32:07 +0000
Received: by mail-wr1-x441.google.com with SMTP id y18so8575278wrn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 13 Oct 2019 22:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=VV3IaZnskbUr1GiFO2X9yDGhA134LORR3NXQx0QiOlA=;
 b=cRqLzJK9lJrzLH1r4rNUMpRvPCQQKB5rPJ5QPg7YyDp8fMfycNYirondsQkTjFceJ6
 ioRTE6ZkDNPDXDmCf6sTrknQZiOwRWOksZXeJEd02Mj5bccyQkq3nMd1FAR3Pl2k2Uvg
 5g7rTSB/9hCW3YLuNKlwgkVri0Uu+3vwu3vLvtCSmmxV+PSAp4ZQFZHZNNx0tYJ+buAf
 Imgshxznob8AnLOBG/3Ks6qNfWlJ7S9sw3a6P9jk8Osn1lkzKvXDVCSSmzPoSP53bhON
 7QdhfrUpN14Rd9ujAvdrOuon50Yj8UUUEz0SsI9F2u1JCT8xgQLyOkQi8Vi9HTl2Qa+p
 pUHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=VV3IaZnskbUr1GiFO2X9yDGhA134LORR3NXQx0QiOlA=;
 b=TFzwzR3KBWG5LWddLUzsSMXUasV5ZLnYeACPy0dncaqDr2/9QUO8XJKx9DANiUm0/Y
 5Urdyux3zA1LEi+ix1cKXLEG/s6juYMIf6lirLFxHn8+kKuVRcbSOI381ZP+fGYe/4k1
 +2Zaoo2u5LntecbQOayWpi2sihYI7uw/cQr/ifopCfEW6ACjGXR5BoICK4KHvlEkyEyx
 Dh+/ivxozGns0rboDIEW0ppjrTKfs01ydCHdmV66o81qsRuJ8OyfXy8KZuPKumygSZDi
 jgwe87kifPmG0gAYJfU8R1BR9RzZK96ZSy3Eexquv4V69etUYCfd42jIeUFqxITaxVoW
 EI5w==
X-Gm-Message-State: APjAAAVmx4TseCvPLTqcRQQ1KSjKfI8uxdw5O16hsLab0SrZe0ZitkOu
 TJUbT2kdxlA5TdaNOi7fVSWIJg==
X-Google-Smtp-Source: APXvYqwaGzOSKxB6TEqQpVVf3oyhcigvwBtITeEf+3ldzPzepGPpOShz3H63eqnPZOaXvDvtl9vrWQ==
X-Received: by 2002:a5d:5488:: with SMTP id h8mr24154767wrv.284.1571031124058; 
 Sun, 13 Oct 2019 22:32:04 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id o18sm44238772wrw.90.2019.10.13.22.32.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 13 Oct 2019 22:32:03 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, khilman@baylibre.com,
 mark.rutland@arm.com, robh+dt@kernel.org,
 martin.blumenstingl@googlemail.com
Subject: [PATCH v2 0/4] crypto: add amlogic crypto offloader driver
Date: Mon, 14 Oct 2019 05:31:40 +0000
Message-Id: <1571031104-6880-1-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_223205_819927_3CFDCAD4 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Corentin Labbe <clabbe@baylibre.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
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
