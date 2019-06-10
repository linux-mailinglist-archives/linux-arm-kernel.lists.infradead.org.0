Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06CB63B9D4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 18:46:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YcQe5MePMnA6rkvkH0Ail3lBJSmIzJ8Tc/V/nk9WKbU=; b=jQyL4ysSdNCFL0
	oZlKlA/bvCv8YNV/GHQYhsaoTBvlqbAMHJJNJJIaExuY2Tfq5NYjdJTT4XLkLWErIFKz5WgYHbtgH
	7KNix1lFQhrWB7P6qV9ArEUSrHIWm2aJG/JG4ncOrs3i59wSOrbhMEXjI07axuNz/oAV1lPYAqWoC
	NdN/KC/wAG56v23w9sUl3IfqAD8O7YVAr9XqVAs11alvGfMD/rfO6LxTAOh3e/ELp8Wia4AYJ4yHV
	sdiA+k5ebAZByS2I52p7xuA4RcIHHmCqBULeeUaUwPEd6rUldFwwRXE5dTpG4mjLf5YxLu40xa9+x
	7XIk1jS4ali8mMjnqMYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haNQz-0003rq-5y; Mon, 10 Jun 2019 16:46:13 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haNQU-0003Xk-5W; Mon, 10 Jun 2019 16:45:43 +0000
Received: by mail-wr1-x441.google.com with SMTP id c2so9884181wrm.8;
 Mon, 10 Jun 2019 09:45:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nahDfB+sETBKegXKfy/SodtmY1BLud+5qo+bYwVBnVw=;
 b=lT00zEWQBKTcIrdf1DSG77zx3wzE+5oMxUfbuyi2w9rk7Bh7REl+ToPUKJaxy4vL7z
 AqIWtzDYPCsA+cXDkybh0W8egNZ+BfklMhL4EMKjhXt/xATwOhBE2BHH8UQK71dGRYKR
 bafdZRPL3D/QHr+jqKY6gxaqmNNKdp631kykqe1agrXyqRi0epe/4jUNfLdAaz7ijFvq
 8fhpgFhME9k7nOnYNU1k6bXaGECR9WsgvbdtCR3jAEaOuN17y2AfyJbTPhmd7j+4jkAf
 lMttQxi++m8IWT2/3EOc4N8rNDjrsh5XfUBtpQHl/G8fKQ30R+lakY5550yVloGUL+zu
 5soA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nahDfB+sETBKegXKfy/SodtmY1BLud+5qo+bYwVBnVw=;
 b=YVs9vSX7T643L50gn3VhkY7TbcNIfrFZtQ9gv+6ofWc3hOUZIoM6plXNHdL7t+wFW/
 dGS3KRcf7KoDL/oM6re9xpSYHJ5/CK230S29a1b8D4+u/G3uQ/G07Rl56/fvcdZhRyzu
 dRpO2baClaQMfWlcweUNCa/rsOzRAspmGL5oSD4U28GFSzLMBa3On1aM8AzaQd2lSFYR
 LZkt9FMg8DuSv601POwL95MQ1Y+xcny2ZcVLx9iziJLtUFlJQHvmpEeYalo6l2ONcb+W
 obYT8ShLkg/3bmzDIVD6HAUrgj9Ggv5peCuY2L1R3GOH26UVMbxBD+j+YoRgZj3dGGw9
 ggOg==
X-Gm-Message-State: APjAAAWnylYrK4JN2BLjaoBbxpUeldSXMvqG076GHUOHi/kyYSSuA84z
 POTbCf3ClVvvWmKTDtVw7NI3vB6k
X-Google-Smtp-Source: APXvYqx0x0tmbODDCfYeLJWzIheIC7aPsNOI9HSuYlsJi+GMqfDcrpthcsLlQSlsn/njQXUotdTv4w==
X-Received: by 2002:adf:f041:: with SMTP id t1mr1446704wro.74.1560185140616;
 Mon, 10 Jun 2019 09:45:40 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA40000C4C39937FBD289.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:c4:c399:37fb:d289])
 by smtp.googlemail.com with ESMTPSA id g17sm11441158wrm.7.2019.06.10.09.45.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 09:45:40 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH 1/2] arm64: dts: meson: g12b: odroid-n2: add the Ethernet PHY
 interrupt line
Date: Mon, 10 Jun 2019 18:45:30 +0200
Message-Id: <20190610164531.8303-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190610164531.8303-1-martin.blumenstingl@googlemail.com>
References: <20190610164531.8303-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_094542_204785_22160F90 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The interrupt line of the RTL8211F PHY is routed to the GPIOZ_14 pad.
Describe this in the device tree so the PHY framework doesn't have to
poll the PHY status.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
index 0d9ec45b8059..8c9535880007 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
@@ -190,6 +190,10 @@
 		reset-assert-us = <10000>;
 		reset-deassert-us = <10000>;
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
