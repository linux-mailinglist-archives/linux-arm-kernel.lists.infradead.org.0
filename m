Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B041B30BA8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 11:32:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/dXlDs+ypK4viPedLPXMH5U9SHnQOGQR0I16p0WshgU=; b=hlWq2om9WDYC92
	5ywGq3CTExKGIiTUbNzZ6QdgchDo5kfun2mJrD5t0JXAu6NVVflkteju8CNLC9u6GuvGbeJzJvJZo
	hDLUT7LkXwg1VNouedshe/5BmkkwsK+PWybWwOjw9qTImDxm63lbEdVnZDen3HRfjtEfF6gsEXDBi
	WtVINsiNGsrboKGBEEsFhJrXJy/M31o4XkzxJjC8TbhhK9bcrhfCxanPkSWORJlpQPWbf1Y57M5Kw
	bjtRzmw7V1PPDd5NOZLhKRWJopJ5Co1tZqeK31dzYABi91BbT16romQFk3uLS7ONFz4MxjuFvA+ge
	ow848QURmxGl7OG8g86Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWdto-0000ym-2N; Fri, 31 May 2019 09:32:32 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWdsw-0008W6-WA
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 09:31:42 +0000
Received: by mail-wm1-x343.google.com with SMTP id v22so5479513wml.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 02:31:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4XUFa5U6isWZ7sY5b7KzRU7MZCM9RrE7vyQt7fpmtT4=;
 b=MLOrSTV7dTXzxU49x4bDt+i4tkXD7kzAQpmwQ9bfTBv/B0cg9fAvuxgqkLXRIjEr9c
 aFSbGbkA3xaQsc40nPleliurFUDWlHuT4f5hb74t2arP26m0Nf0g7fBCgMJY42OYRBJd
 KDUmnjhPwj9+0aeWInVRsHpjkRC3ymeKr2WmduIQMk2YS97ZOmrx0mk3OKc+iQunLVp0
 hNifdZ6j4EsjCbskrCt5DYr9K6H3ODgVt43y27Xnqa5Y0ShU5EgUTr/DJ09GhQVB81cU
 z/QrhG3bjKA0sP5isGkvTkti38x+V22BYt6RfBT1cNnjXVEoqa3L/iOhEsK2v4nSW1YA
 LcwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4XUFa5U6isWZ7sY5b7KzRU7MZCM9RrE7vyQt7fpmtT4=;
 b=PcCODFpz4Ed8fkfGayC2mVmAAU5iM23+MgoyKlQxnR8QPXWCZEx39Ekr+CvpaLYPVK
 hxsZHWOy9jcc833iISn1G89s4ger72tSOYTv3gobfA1b4l7xyDbKF+bdAFnR+qTUMCCy
 xlzR1ElKFLBLVuk64sjRw22f5y+WM3CJ3f1BK5OCxhIii2OyzOJYUIfume1VBs/xGf13
 0RU3qCsUBg7kmwdMOhFnVz9sVplalJQN1zqZMwctHkfiT8VAZ5f3kNoHgahFLw2R5wym
 lweKyNECZMuyqv+RKHQvPpuxUflvRHcrjoJ358mNrkAQ/qb0cNgqPxkEl2iFuXgGABTT
 z/HA==
X-Gm-Message-State: APjAAAVnkMh35RY2C3dBenJpZ0s3FUMQrBEA5WKJ0BEjB6B3c5n2PpNq
 h+ODbNKMbkBYqyw8mRAkFzwcqA==
X-Google-Smtp-Source: APXvYqzgrqYZPxkbQY0KTYLUCn3TpwKRSYfNypkhzNaTip4VP3njQzLsn0of+r+EUNCcWFHL4ErJtw==
X-Received: by 2002:a1c:4083:: with SMTP id n125mr4896062wma.54.1559295095233; 
 Fri, 31 May 2019 02:31:35 -0700 (PDT)
Received: from mjourdan-pc.numericable.fr (abo-99-183-68.mtp.modulonet.fr.
 [85.68.183.99])
 by smtp.gmail.com with ESMTPSA id b136sm7187023wme.30.2019.05.31.02.31.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 31 May 2019 02:31:34 -0700 (PDT)
From: Maxime Jourdan <mjourdan@baylibre.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>
Subject: [PATCH v7 4/4] MAINTAINERS: Add meson video decoder
Date: Fri, 31 May 2019 11:31:26 +0200
Message-Id: <20190531093126.26956-5-mjourdan@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190531093126.26956-1-mjourdan@baylibre.com>
References: <20190531093126.26956-1-mjourdan@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_023139_502650_4135997F 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Maxime Jourdan <mjourdan@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
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
index 429c6c624861..4aa50e83a494 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10215,6 +10215,14 @@ S:	Maintained
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
