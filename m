Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D70237577
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 15:41:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YXpubww7y5Jk3mS6WDijToXw9BLE5W2K0aJ8iukUcG8=; b=uY7Tt1Z9SUHLLa
	1GY5vwV2QZ/FEjLfysBPPUN571rMlhGxkp8U1MGpCPb7fMzVEculdmVHfrz8qBsMZNoQzPvF9Xjer
	++5/ZGe/lw4ORSA5Fzo11d8aLxWo+pgWQNpuWyTcoRA+w8iZLI9xTpIXerGntbuL9L+Rx/71peG85
	SAIGOE6YuJmTvCZ3aYiq4uR9Pf0UPjUvAOP8fOHqKpJ+docKvPMyEs2QgRUkO+OUFsQI+w7yzAX8n
	rQwmT/Q4jyBUKOzeWhj2X5h9WJjDeysURmssVD2pAlSDuCNlflobA2ef6omscTdXaDlobPAeqgP+7
	CKMalIjz4ghAtCjcow6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYseL-00049h-Et; Thu, 06 Jun 2019 13:41:49 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYse0-0003uv-G4
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 13:41:29 +0000
Received: by mail-wm1-x342.google.com with SMTP id x15so1859886wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 06:41:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=REJ+F/EoJF8y7ON3vJSgKlf1KSRuyaPRK39EHGB3NLk=;
 b=PTfsAfjsY3oSeBXdMfkfbzyMxHay18usgjxancBC261D9HS/oJoPW8MRYTwi9k+cgd
 C5pIrO03DPJuZGj/KNYUCiZcuFYCVrUT3+mxUO85wpM9uza5rK1+bYgK62GhoCBe4yAY
 mN5RwsM35bRD96SmVPNGUje6hvbcZCeRWs02OCP3IP5VqnaubgQyD9chTChxI+Up5+Ei
 uzkRx6+L+7ckE4FzaR7Na/9w7yrac80z51g5n2hq1mzRdG0rAw2hLsN+MhKvdgTO/N8T
 mRfqierqUjkjftsjsmAkDwvic8gv86SrA+ybXHPq9LaLqzMwVUY2BxGoBQAXG0z8HOKF
 oqkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=REJ+F/EoJF8y7ON3vJSgKlf1KSRuyaPRK39EHGB3NLk=;
 b=aKkWb686mrA/BLP2a03BlY3FH04TenhIhASspyBSBWuptXmfxi8CwL8iKwUaIDN969
 M0vUjy/Xh/0x18wGTc02hW9KZM8jlfKYDYHXrSVD7ooVdVlhDum9jIR0OhNsfU6PIj14
 2UlTi+xM9MVFfF2kcj/NehhZhtjf01QS6YWZvp5dGl8Zy6rvi9WrM5HUmhUboXxr2pAt
 R0mto2YNGTRvhjmrmS5KEAC4OvveYBimXFygq6HUhzC2HZntkJh/1jb6/FtbIYpXk3Lo
 Qw9Ny51ymty2uCAgwI7nmXXUhYHnyU9FfVDLuRP/fFucSkFzEQd1b/JgrFneNKIPqaot
 INJA==
X-Gm-Message-State: APjAAAW3Gkkcp3/p8F3zAZxtynPsWIMdvb4WtisLOAxz8Tm0WPIiwDFz
 9WCtIItt13jRUJLFclYNNia0Ww==
X-Google-Smtp-Source: APXvYqyCUOdIPEBrdpfpAXbm0UVmVJdKLxKlwPhqBO3kAZC/II9ZDgcuQbgSw0/eBfjKkYYNG+Rhxg==
X-Received: by 2002:a1c:6154:: with SMTP id v81mr61488wmb.92.1559828487221;
 Thu, 06 Jun 2019 06:41:27 -0700 (PDT)
Received: from mjourdan-pc.numericable.fr (abo-99-183-68.mtp.modulonet.fr.
 [85.68.183.99])
 by smtp.gmail.com with ESMTPSA id c11sm1847367wrs.97.2019.06.06.06.41.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 06:41:26 -0700 (PDT)
From: Maxime Jourdan <mjourdan@baylibre.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>
Subject: [PATCH v9 3/3] MAINTAINERS: Add meson video decoder
Date: Thu,  6 Jun 2019 15:41:22 +0200
Message-Id: <20190606134122.16854-4-mjourdan@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190606134122.16854-1-mjourdan@baylibre.com>
References: <20190606134122.16854-1-mjourdan@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_064128_538869_F8061059 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add an entry for the meson video decoder for amlogic SoCs.

Signed-off-by: Maxime Jourdan <mjourdan@baylibre.com>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index b8fbf41865c2..7cf3ece9f0cb 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10222,6 +10222,14 @@ S:	Maintained
 F:	drivers/mtd/nand/raw/meson_*
 F:	Documentation/devicetree/bindings/mtd/amlogic,meson-nand.txt
 
+MESON VIDEO DECODER DRIVER FOR AMLOGIC SOCS
+M:	Maxime Jourdan <mjourdan@baylibre.com>
+L:	linux-media@lists.freedesktop.org
+L:	linux-amlogic@lists.infradead.org
+S:	Supported
+F:	drivers/staging/media/meson/vdec/
+T:	git git://linuxtv.org/media_tree.git
+
 METHODE UDPU SUPPORT
 M:	Vladimir Vid <vladimir.vid@sartura.hr>
 S:	Maintained
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
