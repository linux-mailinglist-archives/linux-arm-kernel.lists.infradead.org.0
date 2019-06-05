Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 495113610F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 18:20:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YXpubww7y5Jk3mS6WDijToXw9BLE5W2K0aJ8iukUcG8=; b=Gf29v2+VcHv/MM
	uI5gA/6yLtFYiJpxBtIvVbX1x6FZjeChQjxr1iTfcKOXyWqexp32Ka8OEEO6nPYSM230KQ5ES/g8d
	b9L8G+jB5djcyP/XL5rUMJVW9L7pAKxHAviUQtxHDVe27lcveG6DTffEDUeIbxRy50hvrYmh0giQC
	1InVMCckzz1PSdZ2YaZcDqshzuIUsL33aFzP9A6JhWOCzwndZ3bQAz4hPbFRssV9k7OG3W4x18PTk
	7N11KPNek6ESVYfT0a+igLyts30Ug/ERY7VelY2IeQoDGfvELUQzeGf0RltzAuzgoYk2wEBz926tF
	J153zTnmu3E16KdSktqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYYdz-0005yi-WF; Wed, 05 Jun 2019 16:20:08 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYYdb-0005my-VG
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 16:19:46 +0000
Received: by mail-wm1-x344.google.com with SMTP id f204so2882627wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 09:19:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=REJ+F/EoJF8y7ON3vJSgKlf1KSRuyaPRK39EHGB3NLk=;
 b=xSvGQ9SIw52V+xJMZSJu1t5JISloHTwQ/WcAqny7yeQQZs1S1UcR0Y4sA80dMU38y2
 GM6DmHjk9PmL6JZaXLxXOBZdJrwYcAju226VUJyhkORsLc2qHDvJDwNPAOuow/WANc+E
 oUSD+9NxBoOjnoS3Po5Z0EKMmRNKI7L6wDIBjxmxNVfNcuift44HPNGuHNE7Z9iOju1K
 K8ZqdQyUtq/DUKZ0/ICjCuEL0kPB8rNlVPDATjnZAiYnBuCeYFptndmVC6KLQzkHMyiy
 f7auDVsLTJ8PxPn+kGauN3fZHPjISBgiclFUj9Ek14U5Yy7ebiCeRSNUSX8MwOZ6yUrE
 0p3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=REJ+F/EoJF8y7ON3vJSgKlf1KSRuyaPRK39EHGB3NLk=;
 b=mg+gKn7WbLKVr4Q9FN8vN4GXhCRUIXNKQu9kA8c3KhIq2T80h+EjsWk2E/c9TaNaId
 H3CQro9GGqZZwFazB4ZN5E2lf8UBb5ybSoRFin8Ar7adK7CWCfGdEg65T+vCUme1a00c
 ox++OO5cQP01eGoWfqIL/av4W8zzHHlGcE1iN3ip1b2jGcLQi/uhAvDQbhGx6an7lDKp
 f45FhWjjZRx0Waq0DSxjr6jHKWZSUauzJ0e85XqjOKiAs/je0799RzBAcCL6ZZEQx6gx
 be2IRsL2UcSP399n96p2RnWf3QyBv5dQtHQyUd3x7rTTKgJe6zjHVohkIjmHHA4nuKeA
 cWNg==
X-Gm-Message-State: APjAAAUb1NKFSybu32sULw4dXbyDfdLSCQUXCY6FjDApFZQx/eGhvUpL
 kCnGzmO7nxWt0h0i6lFUnWcNXQ==
X-Google-Smtp-Source: APXvYqwmf+UWLALwoDRIoedcMvv5gTJrZReDlb+XPS5jcOrSEieCWO3wlZSFz74KYV9MywZPz2GGww==
X-Received: by 2002:a7b:c94a:: with SMTP id i10mr20301333wml.97.1559751582725; 
 Wed, 05 Jun 2019 09:19:42 -0700 (PDT)
Received: from mjourdan-pc.numericable.fr (abo-99-183-68.mtp.modulonet.fr.
 [85.68.183.99])
 by smtp.gmail.com with ESMTPSA id 95sm40062336wrk.70.2019.06.05.09.19.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 05 Jun 2019 09:19:42 -0700 (PDT)
From: Maxime Jourdan <mjourdan@baylibre.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>
Subject: [PATCH v8 3/3] MAINTAINERS: Add meson video decoder
Date: Wed,  5 Jun 2019 18:18:58 +0200
Message-Id: <20190605161858.29372-4-mjourdan@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190605161858.29372-1-mjourdan@baylibre.com>
References: <20190605161858.29372-1-mjourdan@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_091944_016960_2F866F77 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
