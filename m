Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 844D337922
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 18:06:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YXpubww7y5Jk3mS6WDijToXw9BLE5W2K0aJ8iukUcG8=; b=hbhqIWtfCb8ZIv
	ZIaed9Wy7copCpduPD+GcGB98S80XPNlvnP+BRct29ULt6ZLtpaRKMDIyPJ59JZIJ2irvjKNL9pmO
	GeV0+abW2GqFgzv3qkzvNssiJioAZykmzfZ+hw6KYmV4PyOuzkhNNHJaL+oHz49zS/c1NVKX5Xq4Y
	/i/10qUWSDMXlsmjkoyB9urknPkRbtU6n7URd7zG4DAzupKzNHPxtU8uKFFQElUANPwTI5+8aydsG
	VGUW46vOVYhxx01q0zasU2HCvdQjb9GtnXdbmmbMGrhbP5ymuKuX5pNml9psY1v/6cjEHc9VDCzXi
	T3JWEo+njVph9S/mxJ7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYutu-00033U-WC; Thu, 06 Jun 2019 16:06:03 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYutK-0002d9-JC
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 16:05:29 +0000
Received: by mail-wr1-x442.google.com with SMTP id n4so2983080wrw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 09:05:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=REJ+F/EoJF8y7ON3vJSgKlf1KSRuyaPRK39EHGB3NLk=;
 b=kKQ+VelkUt6JaYM6/XzEtySTnRdqSxbVzVFAxBo810/cywmokiLiR9kZNee1J0oD8f
 ZUiQBCwReVS8IyTTxN1o5MB7Sfd2YRlfLfxryIof6HGtRhKx2z3iC42g0gt6pdBEmz/J
 ErTPSjLXXxXyj5qQQEumXBGTkg42dC6rF7dt4FYx3io5Zdg31GFQvL9+QfjHedb295WE
 F85dgv+buyyOakKpy5ZmUS+XaQqk632bXD2ZFp1o0aBdSrrEp/DlP6ar/Z9eWPRkwnpo
 GudcD18NWBPIchRHYt5YhwfABUMyzJJp7v3A+4jOj65U46ofalj9D+2VhG5iJgz0MkT8
 3/xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=REJ+F/EoJF8y7ON3vJSgKlf1KSRuyaPRK39EHGB3NLk=;
 b=NScHK9pQPU7ur4TOcGqsW4wArozuI6f5Wa6Z6p5yevFAmoiFEJ7FZqRADtRDVtZuEP
 +mNmSFL1pmO5KMFwUJRiHm+SqrlRGGOcM/Mc8Tx/kIN74OQcVe1a7telIXubr1xiQ1Lh
 PYPiAGqq03UcPGquQ2/W5fv+FzgxeGC6ioFfWRWrC1f87TUnV2WZbsiTcW1MV54TC8Hn
 /Bc44kvRfP4aUF5l0zIb3LSTzwcEy+cWEH/IHwtwNQVYigeg7KhKnS+bpMC8V6qRM5DJ
 Xeineb4ybhjoBZHKB6uhbijulq19qEXVMv18d0E160U+XyhYLfGsHhnAzW8x5G8QWXx/
 lT6g==
X-Gm-Message-State: APjAAAX7rmmNpPdoKwrunr0wZ1VyrfmTamxvjdeUfGX1TY3xaspYjH4D
 WV0AtRWkq3zXzQPo9EzlZFxgFg==
X-Google-Smtp-Source: APXvYqz3gbNA2D0bF0Eq0O2oDIySuKiZynD3XFfUkI1kKWkAxWifm2Gws82DrVcaBKGHZEl7uIaLzQ==
X-Received: by 2002:a05:6000:1c6:: with SMTP id
 t6mr31836953wrx.236.1559837125386; 
 Thu, 06 Jun 2019 09:05:25 -0700 (PDT)
Received: from mjourdan-pc.numericable.fr (abo-99-183-68.mtp.modulonet.fr.
 [85.68.183.99])
 by smtp.gmail.com with ESMTPSA id t140sm2180901wmt.0.2019.06.06.09.05.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 09:05:24 -0700 (PDT)
From: Maxime Jourdan <mjourdan@baylibre.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>
Subject: [PATCH v10 3/3] MAINTAINERS: Add meson video decoder
Date: Thu,  6 Jun 2019 18:05:12 +0200
Message-Id: <20190606160512.26211-4-mjourdan@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190606160512.26211-1-mjourdan@baylibre.com>
References: <20190606160512.26211-1-mjourdan@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_090526_629392_8B498FDA 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
