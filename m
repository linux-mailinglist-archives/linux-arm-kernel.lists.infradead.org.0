Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB641E1090
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 16:30:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jH7VcGPPMDOne/RUGwamdmnEpLlYwJmEnYbk9GInzJ8=; b=VrV
	LmSeeTrYA+VtwhqVgtnHk8CRqNUyg6T/Qg7XjElcbMxOhb4VKoAbqwNrMJpDPz8jcQ9kDZe3rX9ko
	jGElp8gc/0mXYvFkawdLKvcmQ/LiwFPKWCxaIgV6vD0KMFujI9cAEJJ+PflfT6KzjumKbjcv7ScO1
	EkUpRFMiCG2dZSJdJWx7OtlhVrk3jHUdCAcVjCVpb0MRddp0rR8dLTzLwa3dSsSSkhCmIcgnDbdup
	yc1yIkOv9tWai9o/iM00rTkqdbVSmbZvLR4/tcKLwP8tTiadBOE5XLvp5oZr4XvXpGqyq4Zpz5BZt
	y+lPbk9BHihvCjSsAmA2X+a5ds5dqDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdE7Q-0004fP-49; Mon, 25 May 2020 14:30:20 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdE7C-0002st-T5; Mon, 25 May 2020 14:30:08 +0000
Received: by mail-ej1-x642.google.com with SMTP id x1so20649003ejd.8;
 Mon, 25 May 2020 07:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=yMh1OLCPJYxMT3dRwDh/Pc1pXHaCVXG/hZf91AhdVB4=;
 b=BOeyv6u90esY242TIOVf8kZuHxZc7IiQ4MFI+Zqvwnzes9+xpAj9hLrHuSa2uyOBDF
 Or68NuUhIgoEg6nrhjh+IEbnG9Whd1p5tJqEWeNdAT0ST3Osy+qsjbWYmUd9upYS+BdI
 2qgI30mwbvOogfXDlMdztExw+nMndzWJd43DYd3kfgXSNP3MnD7GjZ0Xy8FkjRu7QqWk
 VUSXBMCyKF/d2KTbv5eA+/8WowJnlaEfolsh1wtKblHmFhkOjXyGM9Yf7P7h8hbeuACF
 hyKMECLKRaGsrNpU3R2oAklEG3KJhKdUdgKPm1XyKHn81exBNgBWveq1bY0yPJAdBZfJ
 PuyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=yMh1OLCPJYxMT3dRwDh/Pc1pXHaCVXG/hZf91AhdVB4=;
 b=pm+Ikicefb+HKc7jmOpYgWNL0xebyRVu8/qHrHFf+D1Hg7jsEyD+/L/eJ52x7E7Eo6
 ibbGwiJNT5M16Wr1UleU7lB14YUPhNNRf9+i8VY9bbNhQWei0CBQALjQC1InD58EJ5Da
 WC6Xzwpf0mRUl03nr5JNU7OzGmuaxxRK5oW0hwUmZ0wOrNXWDxxrIGFWS4HWLajW8257
 TOEJK+FYF3sOaSAUfPOU+G9xCKkd7piCMePaSDuN6LCs3FtwXA0tHMTZH+ufcY0VKNnU
 erbwKjjjyLXDt30wNq9O5FCItjW0+OHhp6irX0FL6P517e23EdL7vczVzLRfxurzl2mO
 G5iQ==
X-Gm-Message-State: AOAM531G9CXqhIxQX2njnAVrobSBlhovqWKPOW30uKvn42SfoXX9lefv
 bNLYEjvPPIlcTZOHF5DFZPQ=
X-Google-Smtp-Source: ABdhPJwpDfwq3VxDQ5PqHUh5/tPRWT5lYSDfIlEbnN3rH0SxoiirUlcrfg9jhMOb+eHRznUbsJQX/A==
X-Received: by 2002:a17:906:c7cc:: with SMTP id
 dc12mr19635108ejb.263.1590417002325; 
 Mon, 25 May 2020 07:30:02 -0700 (PDT)
Received: from felia.fritz.box ([2001:16b8:2dfa:6900:4b6:3b49:50f6:6c03])
 by smtp.gmail.com with ESMTPSA id f10sm16642978edt.69.2020.05.25.07.30.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 May 2020 07:30:01 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>
Subject: [PATCH SECOND RESEND] MAINTAINERS: adjust entries to moving CEC
 platform drivers
Date: Mon, 25 May 2020 16:29:46 +0200
Message-Id: <20200525142946.8268-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_073006_968419_C7EB28DD 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lukas.bulwahn[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, kernel-janitors@vger.kernel.org,
 Ettore Chimenti <ek5.chimenti@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Guenter Roeck <groeck@chromium.org>, linux-stm32@st-md-mailman.stormreply.com,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-samsung-soc@vger.kernel.org,
 Kevin Hilman <khilman@baylibre.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Kukjin Kim <kgene@kernel.org>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-tegra@vger.kernel.org, linux-amlogic@lists.infradead.org,
 Benson Leung <bleung@chromium.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Joe Perches <joe@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 4be5e8648b0c ("media: move CEC platform drivers to a separate
directory") moved various files into a new directory structure, but did
not adjust the entries in MAINTAINERS.

Since then, ./scripts/get_maintainer.pl --self-test=patterns complains:

  warning: no file matches F: drivers/media/platform/s5p-cec/
  warning: no file matches F: drivers/media/platform/tegra-cec/
  warning: no file matches F: drivers/media/platform/cec-gpio/
  warning: no file matches F: drivers/media/platform/meson/ao-cec-g12a.c
  warning: no file matches F: drivers/media/platform/meson/ao-cec.c
  warning: no file matches F: drivers/media/platform/seco-cec/seco-cec.c
  warning: no file matches F: drivers/media/platform/seco-cec/seco-cec.h
  warning: no file matches F: drivers/media/platform/sti/cec/

Update the MAINTAINERS entries to the new file locations.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
Mauro, please pick this non-urgent minor clean-up patch on top of the
CEC platform driver moves.
 
applies cleanly on next-20200417, next-20200505 and still on next-20200525
for this second resend.

v1 send here:
https://lore.kernel.org/lkml/20200418093630.6149-1-lukas.bulwahn@gmail.com/

v1 first resend here:
https://lore.kernel.org/lkml/20200506050744.4779-1-lukas.bulwahn@gmail.com/

 MAINTAINERS | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 7a442b48f24b..bf5cb149101b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2403,7 +2403,7 @@ L:	linux-samsung-soc@vger.kernel.org (moderated for non-subscribers)
 L:	linux-media@vger.kernel.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/media/s5p-cec.txt
-F:	drivers/media/platform/s5p-cec/
+F:	drivers/media/cec/platform/s5p/
 
 ARM/SAMSUNG S5P SERIES JPEG CODEC SUPPORT
 M:	Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>
@@ -2548,7 +2548,7 @@ L:	linux-tegra@vger.kernel.org
 L:	linux-media@vger.kernel.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/media/tegra-cec.txt
-F:	drivers/media/platform/tegra-cec/
+F:	drivers/media/cec/platform/tegra/
 
 ARM/TETON BGA MACHINE SUPPORT
 M:	"Mark F. Brown" <mark.brown314@gmail.com>
@@ -3969,7 +3969,7 @@ S:	Supported
 W:	http://linuxtv.org
 T:	git git://linuxtv.org/media_tree.git
 F:	Documentation/devicetree/bindings/media/cec-gpio.txt
-F:	drivers/media/platform/cec-gpio/
+F:	drivers/media/cec/platform/cec-gpio/
 
 CELL BROADBAND ENGINE ARCHITECTURE
 M:	Arnd Bergmann <arnd@arndb.de>
@@ -11146,8 +11146,7 @@ S:	Supported
 W:	http://linux-meson.com/
 T:	git git://linuxtv.org/media_tree.git
 F:	Documentation/devicetree/bindings/media/amlogic,meson-gx-ao-cec.yaml
-F:	drivers/media/platform/meson/ao-cec-g12a.c
-F:	drivers/media/platform/meson/ao-cec.c
+F:	drivers/media/cec/platform/meson/
 
 MESON NAND CONTROLLER DRIVER FOR AMLOGIC SOCS
 M:	Liang Yang <liang.yang@amlogic.com>
@@ -15212,8 +15211,7 @@ F:	drivers/mmc/host/sdricoh_cs.c
 SECO BOARDS CEC DRIVER
 M:	Ettore Chimenti <ek5.chimenti@gmail.com>
 S:	Maintained
-F:	drivers/media/platform/seco-cec/seco-cec.c
-F:	drivers/media/platform/seco-cec/seco-cec.h
+F:	drivers/media/cec/platform/seco/
 
 SECURE COMPUTING
 M:	Kees Cook <keescook@chromium.org>
@@ -16249,7 +16247,7 @@ STI CEC DRIVER
 M:	Benjamin Gaignard <benjamin.gaignard@linaro.org>
 S:	Maintained
 F:	Documentation/devicetree/bindings/media/stih-cec.txt
-F:	drivers/media/platform/sti/cec/
+F:	drivers/media/cec/platform/sti/
 
 STK1160 USB VIDEO CAPTURE DRIVER
 M:	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
