Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E261BDA4F4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 07:07:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rx4xzdwpS4IOZawkLXQHhbJ8a76TY/jdtDsPiejARjw=; b=dJc
	OP8E4PXArizlhK1JNYeoeDds4sUDfL8icLdK3NWsVx0DdnUR6W2PTFfsKEXbZJBr0PRs3MKUxnhPe
	LtU9Yxp+QPQ/9xY8rjbamqz7eR9QnATVn2DqEtucpyxrawOFfd8ikbAiU4bnfV/cHYCqKOZ/jTpUL
	R45LyCPLeFZkGi9Ryh2zlOiKXTooQXQ9c2i0qwVNr7TRPSFHd86dggwlACbdaoBiJHr3U1TkgmdUf
	lbwfOZu4zAcCzrLIpM9CgHMimaG95EM5Ytqnuh62KmawHt53P+Sr86qilBG0SZUoZLrIl/hR0lAvO
	GWpqnDvQUl2qQdAnwc1L2V9YTj0xUxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKy01-0002ag-16; Thu, 17 Oct 2019 05:06:57 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKxzp-0002Xe-44
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 05:06:47 +0000
Received: by mail-wm1-x342.google.com with SMTP id y135so6121437wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 22:06:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=vc5hMa73OPr/x/aEf805fVYp+2tYvgPjEPvMghKb2Zw=;
 b=zh64szI5/P7kHr7xGyuurhRKHjg1Pn1Q28ubOkmOzG3Stwaf4WlQppsxqn+dNutVpv
 Yp9ECpelYfZLjI25E2yFrf5j4gxK5YunYg3Br2IVSqkK/4jF77prXesnCIAaRvYrU06q
 516AdjPwzMZ+S7nTMrdAZq6HlkPzGFMYWUmQhouxL0xUsRS+9Ct91pLNxgnjDTpcvU0+
 Z60oaEnCXX2Aa9eKW0lvTSpWGEuZLmL31s+hPdJUAe0wFgCg+CbW3KqndIWiAaOKVKjD
 3oFcBNzJVMivg8nPMQ95fwkpuydWpLCKG/B9xbbinhjU3YbV/0M3rzGTb3iA8yggNAYl
 ZAmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=vc5hMa73OPr/x/aEf805fVYp+2tYvgPjEPvMghKb2Zw=;
 b=jzJkmsodejMLjYPW6XrL6y7mceSWde/oMJAihNbxahrUOSOy6tfHroaMgVLwYfpl1h
 /GEFQsQrmm0kjUmjCudjNGUOW5My9/1HsfX7UyAHD5fXsj8ovnALScjJgDvZLsBlC+0d
 4si+sj881aEsF6p70FsXnaZfBZtTPNEO5K6o5uXk2OlYY9dM0SFfXME+snwhKSY0/AZh
 PniB6WzBoNudv/Xj6DX15WFzDNjHVdPWNwt/0QX8TBuKpJBAEkTVBsmBJ+KbIM95eV5n
 eBYZwYSNvZ9zCkpU5reegwZ3oq9mEUSfHbhUVmTncaank8Wpbx1YtAKTAsapoTC0bU5+
 gJSg==
X-Gm-Message-State: APjAAAXmjIdiR9AC2k5EH+cbV5oMhGUmk1gmHnJLWKqTaDkisrhP9DoK
 TFFVCaUORHDHwtw9TPYGmdL5Hg==
X-Google-Smtp-Source: APXvYqw07wwT75FOoNWJyD/an/XIle9yHvlb7113NxzJZiEpvXnUsfMUBXr2Xe/6iQ8HyyjCXNyUPQ==
X-Received: by 2002:a05:600c:143:: with SMTP id
 w3mr1048902wmm.17.1571288802451; 
 Wed, 16 Oct 2019 22:06:42 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id b5sm1010762wmj.18.2019.10.16.22.06.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 16 Oct 2019 22:06:41 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, khilman@baylibre.com,
 mark.rutland@arm.com, robh+dt@kernel.org
Subject: [PATCH v3 0/4] crypto: add amlogic crypto offloader driver
Date: Thu, 17 Oct 2019 05:06:22 +0000
Message-Id: <1571288786-34601-1-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_220645_217463_17A68B07 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

Changes since v2:
- fixed some spelling in kconfig
- Use devm_platform_ioremap_resource

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
 drivers/crypto/amlogic/amlogic-gxl-core.c     | 331 +++++++++++++++
 drivers/crypto/amlogic/amlogic-gxl.h          | 170 ++++++++
 10 files changed, 980 insertions(+)
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
