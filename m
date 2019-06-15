Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6126746FAB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 12:44:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RzYeGQp9mv23llu72b0cfpKAQl+VzPJtlggIB1MZwIY=; b=Bf3BQbz38CPqjm
	uATT02Q8bhf3XOeVs+XeujGbNklo4QYQKD0Tj9yz3IVRaYEE+zKSSbW6pWC+vZdzrCCAeLb7Lovyy
	EnBahmqE7TR8hTMXQP8O04MAHpFjKEuVjgo6/ESAmEfN2HB6khPTGgDTDboBdZP6DtW458PnUXtck
	9WKPckERj3WTzt9S5bgOs3ay0svUeG3lvQUBT2Jd+V3ChHjaARz0rAn7ynu5pOlchTmLztZD2Bbq6
	qghKgulBlj+7GbJ41yJHh/PHEBZWeMQ9uc6ay/SnVtMZpaL5zszvzP3vSNE2qCAMWpSbjOjLIty0q
	EieeCRUb4yXDUHgzksSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc6Ah-00038s-As; Sat, 15 Jun 2019 10:44:31 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc6AH-0002rl-Dp; Sat, 15 Jun 2019 10:44:06 +0000
Received: by mail-wr1-x444.google.com with SMTP id x17so5007128wrl.9;
 Sat, 15 Jun 2019 03:44:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6zdNw3j26hIKq9Pkw7umZ9fm4rrocSNYRpSOLSmy3DE=;
 b=R0yBQos50xrtqq39b46j5ApodBRZ1gOp0Na7tJgbgmkwJUPpA/J2uXAOXt0TRyVxPd
 Xa9ZjBRz5vYE5JbPzrAY4P+zr1US9qbBCKPsC+8hWiHsTz+RIKKhW8JsI22KF8Lgm1xK
 A+Z8fcPsVWRq9/rp6nh64m+N9KmAWLVDLrSfTh84k2MqAe1vllIKrQMVF9cXaYsxDEXc
 jtd//zYqRKREXCa3jzGFK2LZzufmOE9xq8NSU9SXiBO8fpEkjMbtTfw9l4GwHQKdsq0t
 q8D4WZNMtc/kgZmcXMBkWCLcfv4cngx7UVh8MoNsh2uqNBH8QTsejWy2qeT+K1D+yP+v
 P0wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6zdNw3j26hIKq9Pkw7umZ9fm4rrocSNYRpSOLSmy3DE=;
 b=lxAGC15qHYjJrakwjftXzWpf1n0xaqA2RxRCVzIDLYpQ2kEueoGLvxGEFnMCumh3MN
 3WKd/o0O1dt4MbBi2UWq/gk01W18c5cIen1NPbXOwwzt9Fc29F5MhOtiMlcNp7KDeYqc
 eV1z2i/C0m26+HdP+VS7Wm/6GNEMXEY1PWUtCX2bUkdd9p8+Kq71e3tnT9bbYwYNrjwf
 0sciHBeWhLanGmRqzLyaLf+YfEIBJpSe7NxJn59GwoGY8+SpEki/lJUQ+KTuwYJuOmi9
 fz3HRETSp9R5eP8fO+y1iJhdEt6RoHmBV8E/0tCX+pjuCUrgn+1PecwxGQrM+hJVSAr7
 ztuQ==
X-Gm-Message-State: APjAAAVZG/8fR8sOaT0miWjtG+zX1IHDOlx4UcNDnqTieNA6zQydnmMj
 PrTqQFcZCM/BsrjjLcMVdio7XvaapC4=
X-Google-Smtp-Source: APXvYqx5Cjb4em34zJEgLyQgg3ezxWmywZodf6qeyk0GQ79btKvMPPOP3Lybn8sH7D3sDJWK2rdbfQ==
X-Received: by 2002:adf:e2cb:: with SMTP id d11mr59054829wrj.66.1560595443825; 
 Sat, 15 Jun 2019 03:44:03 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133C20E00A9A405DFDBBC0790.dip0.t-ipconnect.de.
 [2003:f1:33c2:e00:a9a4:5df:dbbc:790])
 by smtp.googlemail.com with ESMTPSA id l12sm16761120wrb.81.2019.06.15.03.44.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 15 Jun 2019 03:44:03 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH v2 1/2] arm64: dts: meson: g12b: odroid-n2: add the Ethernet
 PHY interrupt line
Date: Sat, 15 Jun 2019 12:43:50 +0200
Message-Id: <20190615104351.6844-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190615104351.6844-1-martin.blumenstingl@googlemail.com>
References: <20190615104351.6844-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_034405_459186_85C9E9CD 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 narmstrong@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The interrupt line of the RTL8211F PHY is routed to the GPIOZ_14 pad.
Describe this in the device tree so the PHY framework doesn't have to
poll the PHY status.

Acked-by: Neil Armstrong <narmstrong@baylibre.com>
Tested-by: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
index 82b42c073c5e..81780ffcc7f0 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
@@ -254,6 +254,10 @@
 		reset-assert-us = <10000>;
 		reset-deassert-us = <30000>;
 		reset-gpios = <&gpio GPIOZ_15 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
+
+		interrupt-parent = <&gpio_intc>;
+		/* MAC_INTR on GPIOZ_14 */
+		interrupts = <26 IRQ_TYPE_LEVEL_LOW>;
 	};
 };
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
