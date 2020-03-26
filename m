Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18115194407
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 17:09:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZH54KjVLAO756SSkKzm1s5yzwk3uamz/+bd46n+i0y8=; b=c2QtpzQTBqlUnE
	P9VblqP+o7++oIAPa2zYCdrnwfZLEEHWQgXg8+qNg7+NaAWdPTb8xrQVXXnoxF43n+FWHLO4IjPeS
	5yFM2hHxa/9VcN62EAql+4ZKjTGEN6h8ZMvWGKq+a+ZYjjv4g0ZA9P2qhTmPm2eI3rprr9eq/elLg
	MbFJaF2PSUUdZzvUZG/HnXXU4nvUsGBjXPfocqpjbmDLB4z1kvcfuNRsDdhuAgCQYaLDQ1HZ9PmNM
	NMe8y8AU1cncVp3lE/5ejjgpS9TI5QIXCU8dAwV7wKTIb35FPl1Ew8a1MLbp0Mvt8aUwlirRtQpZq
	9XmtWSJW/Z8aMUK4KAyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHV4J-0005vQ-EZ; Thu, 26 Mar 2020 16:09:19 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHV43-0005sd-9z
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 16:09:05 +0000
Received: by mail-wr1-x431.google.com with SMTP id m17so8438985wrw.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 09:09:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6pZtO6xc9Ub+dNzgEsbskEWr5UgKhTn4yKFMf+FrJ2k=;
 b=VWHRwE6eWFq4R42rHxzTR+6QgRdLxFu5T6V+gEVyCN08IQCK5J5Or7jp5+GBq2F+Li
 WoA+QAQe5okTYE6YSop/mrIL0z5DYifVJUnloXtD09xuqG0rw7+XazvhW80+peKcpIYI
 NdH4+I/xuzblyIdYHxEaJMYbo65J7qSTQ6oLWLK/6R8cx2VDdrfUAY3QGi75GqO0567G
 9ggonFzo2SX5dOOX2hN9TYKyAQYvmly7I9AEcuQFwn/O4Uo/vMkPUdg5ANwuZbH5h4Uv
 ci4AUM0hbokqDc7rVkbMOVwt5i6YBdd84x4OH7VatDPh9HtnBefjSII3SyxybCeTOUWM
 DXJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6pZtO6xc9Ub+dNzgEsbskEWr5UgKhTn4yKFMf+FrJ2k=;
 b=nEGKnIDB/zC/SgJ43AO6nt0hSj6TYZfDGR72BZyBRWGFtczp4ow7+z37xSxb2Bywls
 6oilqbFwfgYxndTyQ1KkyUSqw5wR9iQ34xUtfkCV2XMzry4Ex1rfK90be3/QdtGM9kSf
 IZkhekP5KiMtpkh9DN6PiIbdiZt9JraTDR+4Ry62/T+99bdbrHpS6KgkqhrNkCoR+eVF
 UdQPJydJNcziD54GTtgLluGLbsYQgVGocJW34sSLc05w7DJmA70VQ8QP9MNV7K1kaybB
 NBs9KIQIaVnbk/W5mS/cB3xctumSytoRbJiz64DGq60ZGC8Gh52fHa77eJyL5Hm9+bhM
 TJKw==
X-Gm-Message-State: ANhLgQ0m1pWtgEUSVBgt0wNB/Hzo3mjpS4u/rzEDQ5/bipeeWo6DCZ4Q
 i1DlYtUkDsspbXhfw4fKEb4u2g==
X-Google-Smtp-Source: ADFU+vs9oSnFf7w8PXHfbPY+V9oo/HHkchpoIhj6Hkk+PDZgRu+V8yGfgjqVDQ1h0mUrOtzm5gK0Tg==
X-Received: by 2002:adf:a3db:: with SMTP id m27mr10361849wrb.350.1585238941470; 
 Thu, 26 Mar 2020 09:09:01 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id z188sm4093511wme.46.2020.03.26.09.09.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 09:09:00 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 0/2] arm64: dts: meson-g12: usb DT fixes
Date: Thu, 26 Mar 2020 17:08:55 +0100
Message-Id: <20200326160857.11929-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_090903_398523_5A152A36 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:431 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Misc USB DT fixes for G12A.

Neil Armstrong (2):
  arm64: dts: meson-g12b-ugoos-am6: fix usb vbus-supply
  arm64: dts: meson-g12-common: fix dwc2 clock names

 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi    | 2 +-
 arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
