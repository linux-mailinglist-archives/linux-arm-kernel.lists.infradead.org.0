Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3128077B97
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 21:48:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=586KhIR3w5QLiL3Jd2jDzIn6TMeatKfx1lmGLn/Ngxs=; b=MM3XHglH4FxavK
	L7owi2dgaVKi143NuilNmF+A2UTJYgBfQ5OJ84T9FMhQzh09pvk9Sved2uto/rLMXfPL8weDBkGB+
	KNiShEvg0FPKjwPv4+YhDNCab/95qKl+JGI764p9sFiYCsa4kbRcaOChUkR0vijJckh0CZmDRI4EC
	6VA41G0wWHUtqc92/mhDPlfMFX5TeUWG+Sd9fGDBQ/cKeyJ4zRR1S8IV5Bh1Y5/pHUWp77JLAI3UI
	Qx6J3MyR+4bofnTV9hESv/7NQXQD1D8Wl02TPoe5wU3ISUNTpqvcfzQb4awa2H1OE1bQhxqI/oHBm
	+xMPSeu9sdoc07pX1l+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrSfl-0000n3-HZ; Sat, 27 Jul 2019 19:48:05 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrSet-0000E2-Ke; Sat, 27 Jul 2019 19:47:12 +0000
Received: by mail-wm1-x344.google.com with SMTP id h19so40230251wme.0;
 Sat, 27 Jul 2019 12:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nJlEm3dspnVA1ANEmrZqrPkw4P7Y/3ZVDcm+FttuwD8=;
 b=jMGFetvUkouy5oaS2jC9JloqDDB4ECT5Fa59B0q8l9FZFb1TmFQeFuDB+PkR6358Hl
 GZOcEZ06G86uK/6zH82Gwdj8NsArIOCIX+mrwQBhjItintgYrxBW/lL7dTjOMWK26XS4
 TqV5BIAhUlaj9eFliO6D+6sdMxwNl6eAb0oXuaKkUA/eQJ5DNtO1DC80LTUbEPC5AVst
 lkg2S+BsXMyk57FnQJaaRZ8VmvM8Fs8NJWI3jTfsOLQmyN0pJu5/8oWk+f6i3AKV23VO
 Lv7d5qg0GusMAKDMNUOkcVGtOIBjDpV9Di7lkH28WDLPSBn8ZyrA3lO6OfRueI1r24fG
 /mvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nJlEm3dspnVA1ANEmrZqrPkw4P7Y/3ZVDcm+FttuwD8=;
 b=Zlmf1nZt5Iez+D0mgED12y4xtDKawH6KbZXbdj9nP3Ng5DNiqVkYRyVA4K64K6zuIp
 ZlPE9AACL8Yag1xeZIccXw0f6nA/MNj4EmxZqoeIdeWlUuhigqcUYptKlXwbQXH2SECr
 IbmBgfu3B+R/iWXSrhChhNxEes1sbbpsBYX+39vxGjYJti5rgC3M0dPBBEpxQEcrUhg3
 lUGr7P7toQNxG3WBK3Fr5/DCaRnsL4ws/2wA8jTa8xsKNZxLXYRQjHFUBFfjYsVZiYCP
 kkk5kKI+ojgdEBBoLy7qVtUb5UnGwmbdaDaSidRm7yumfwLXZcaUWjB0xJESBGNP4Jbm
 RMEw==
X-Gm-Message-State: APjAAAWpAO+TMCpuhYRdqemQhtXeBDXHb0KaMJ9bMSAgIwx4P9LV70td
 vudsVNoQEs1SN+agxAkCdANP93Zz
X-Google-Smtp-Source: APXvYqw957ik/KAi3QT0gjmD5rTkJZINjl7uhrK+NX+nd9KMeifyb6WC8ERCf40L6g/Rr/rocBXY7A==
X-Received: by 2002:a7b:c748:: with SMTP id w8mr17514641wmk.36.1564256829821; 
 Sat, 27 Jul 2019 12:47:09 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133C65C00B418D0F4A25A19EC.dip0.t-ipconnect.de.
 [2003:f1:33c6:5c00:b418:d0f4:a25a:19ec])
 by smtp.googlemail.com with ESMTPSA id c4sm44651726wrt.86.2019.07.27.12.47.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 27 Jul 2019 12:47:09 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH 2/2] ARM: dts: meson8b: odroidc1: use the MAC address stored
 in the eFuse
Date: Sat, 27 Jul 2019 21:46:47 +0200
Message-Id: <20190727194647.15355-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190727194647.15355-1-martin.blumenstingl@googlemail.com>
References: <20190727194647.15355-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_124711_673235_6B520348 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 ottuzzi@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Odroid-C1 (and probably other Meson8b boards which are based on the
reference designs) uses the MAC address stored in eFuse at offset 0x1b4.

Assign the nvmem cell to the Ethernet controller as "mac-address" so the
MAC address which is stored in the eFuse is assigned to the Ethernet
controller. This means the MAC address will be consistent across
reboots.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson8b-odroidc1.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/meson8b-odroidc1.dts b/arch/arm/boot/dts/meson8b-odroidc1.dts
index 90f66dc45115..df428a40a748 100644
--- a/arch/arm/boot/dts/meson8b-odroidc1.dts
+++ b/arch/arm/boot/dts/meson8b-odroidc1.dts
@@ -200,6 +200,9 @@
 	phy-handle = <&eth_phy>;
 	amlogic,tx-delay-ns = <4>;
 
+	nvmem-cells = <&ethernet_mac_address>;
+	nvmem-cell-names = "mac-address";
+
 	mdio {
 		compatible = "snps,dwmac-mdio";
 		#address-cells = <1>;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
