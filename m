Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A946B121
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 23:35:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wOzzJJ8ZQAlnZn+VrN5pLdo9CyGEMZ0V456QNghAk4k=; b=EBERPcPyMPhIAo
	tT7WeFEOuMvcg9lkC9ONBuNZtus8uQmABY3HS5nmnMO1QCv1Y17AvZXYQG3mVi38FV84QSMpi2WqJ
	I2F4mb417FfS2KLDsB3dy6bGDkBKn02bVWm1pAWiIq38Oiit8EpnGoxe/wHVkb1r/1Bb6ivCmvfTB
	XxqTAIw1iuFus3lQ2/ZLQnLbj1PhDCgP8SYgkG268SPdqC4PJKMnEQOKpHRNvL18o3f5wej1kLR+4
	iGW6pwV5OEjoibrGYsPpUfYfFknrP1sZT5KDlg2b+SLJebUwvTxl69baO+8eFuQYJ++VQiSP0bxOf
	h6DY2d08TRpUfVujlmNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnV6r-0000VO-JQ; Tue, 16 Jul 2019 21:35:41 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnV6h-0000Ut-4Y
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 21:35:32 +0000
Received: by mail-lf1-x141.google.com with SMTP id h28so14799431lfj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 14:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MNvC+K7Kdc73WaqJDzj59mDAyRdrEkpHGd8ss21+q6Y=;
 b=DIo5OEFecYocCqLgsxqDkmltRtyvH2Auh0zRCEJPpWbYAVmX+hc9ZD9N9ZvccW4VtX
 CWCM7ELq4ajhY1BNqxB9UGvXuruJzToZ3SM1ATPiWhq3nTo2eRQmK6+zA2WTRkfx9fmM
 gG/9/GsMov6IvSxUgk+uLMMEAPyz4JDf2rsOwtx+CR+UeEdoKGUNGaKWJmP/oGI6we0T
 MrA9c3jVz5q0a1e+fIfW7djWYZ7DDbdGV5nNDb/rj5a8r6BZacHyVRp0S+RBxnoQXItc
 c/oh2WfJ5cDHjMQVIFcijbxHx0lMzbqnAOWMcJuJwEk+wvKuvInrXB95YealZU9DzANn
 Xu7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MNvC+K7Kdc73WaqJDzj59mDAyRdrEkpHGd8ss21+q6Y=;
 b=nUawawfKrQrLYnew0vwUZ6rKCHi0dhrTiSvvXJMCLF+P0LDwL/phGr1ONwn5OFArAa
 Ate1Nj3YDR/VYx2CeVxxejV1ij6xuvjxKt4IpwUxCkkaG5E1CFPodnnk8cAoYtt/IeK0
 mpXj/k/21ZL0P2tu2U69WH+ae+NPDzrLl0iYYxl6ihmzWxPyuPg7oNkUZF40b8V6U6Tt
 xYMdnaPfUF7HfUzDESTvQMxC6Fak1UDlFD6L60BgK8G1O2I9RaHpbFnp/TSSoWhznlof
 MOy6cwIGnz9aTPqXGLSn4YaZtU5dPnjGb4OG4guvTUHBG5JLNaadJHxLc1s4dbYKxlKN
 UxvQ==
X-Gm-Message-State: APjAAAXIaYtbsiDpC6YMGTwqJhXBEPrz4ddlNCQn5sFNoBTmFY1e5RNs
 /2yHURMqpSOc1kMAuStEhCrTYw==
X-Google-Smtp-Source: APXvYqwy44rBJOojRNJlPTqxD6Pmg7/jDnaHuMrAyTR4KDQhC0IeVc8fw0IsB5KJF0+yGk+lcgMxyQ==
X-Received: by 2002:ac2:5601:: with SMTP id v1mr16141005lfd.106.1563312928103; 
 Tue, 16 Jul 2019 14:35:28 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-22cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.34])
 by smtp.gmail.com with ESMTPSA id w1sm4494760ljm.81.2019.07.16.14.35.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 16 Jul 2019 14:35:26 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH] ARM: dts: pxa3xx: Fix polarity on Raumfeld SPI CS
Date: Tue, 16 Jul 2019 23:35:20 +0200
Message-Id: <20190716213520.31427-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_143531_186031_61496ED0 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SPI CS is active low and you probably will get a
warning in dmesg of the DT core enforcing it active low.

The reason it was set as GPIO_ACTIVE_HIGH in the old
board file was that the old spi-gpio driver would
invert the value and drive it low deliberately to
activate CS. The SPI and gpiolib core handling now
expects proper polarity to be used in the machine
descriptions.

Cc: Daniel Mack <daniel@zonque.org>
Cc: Robert Jarzmik <robert.jarzmik@free.fr>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/pxa300-raumfeld-common.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/pxa300-raumfeld-common.dtsi b/arch/arm/boot/dts/pxa300-raumfeld-common.dtsi
index 8ac24e3c8513..86568637e6d9 100644
--- a/arch/arm/boot/dts/pxa300-raumfeld-common.dtsi
+++ b/arch/arm/boot/dts/pxa300-raumfeld-common.dtsi
@@ -78,9 +78,9 @@
 		gpio-miso = <&gpio 98 GPIO_ACTIVE_HIGH>;
 		gpio-mosi = <&gpio 97 GPIO_ACTIVE_HIGH>;
 		cs-gpios = <
-			&gpio 34 GPIO_ACTIVE_HIGH
-			&gpio 125 GPIO_ACTIVE_HIGH
-			&gpio 96 GPIO_ACTIVE_HIGH
+			&gpio 34 GPIO_ACTIVE_LOW
+			&gpio 125 GPIO_ACTIVE_LOW
+			&gpio 96 GPIO_ACTIVE_LOW
 		>;
 		num-chipselects = <3>;
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
