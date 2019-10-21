Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C14DDE4CD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 08:46:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fiRAp9bTSruxj5HTMEPxc+6uUzJ7KMss1vjXNQX4Xoo=; b=Fh/NIF9XR/hJpqJn20U4VwPezw
	e2K89qHFiQUY0D+Li5Su5P9f464d1zQfnRo5YtqZr/iSAEtq7O+c3qnRLP/Zj9aDph/SZj2RV0dh3
	rxDZcg+ZwrOD2z7hnT5d33C8Ot6dSP67IjOwkf/gG+0Efm5VVUFoTaGehrnnZ3uFrNi7aytx39Cg1
	EF3Pvcqt1sO3/jgG9DiGPjTzZ0KI8G98omu7PDSxru2aVbAmIUJ1HYuVuurj7dT0b/EU/QWpsvkZf
	cWFFUgEEVNQ7ygMkgDzAbhwxMC67M03geOtaLMjVh3YOKtl/SwHdmXsYQIhUAPjStk7EGeOHdoOFb
	xceSoEzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMRS3-0005wD-4E; Mon, 21 Oct 2019 06:45:59 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMRQt-0003wt-IT
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 06:44:49 +0000
Received: by mail-pf1-x443.google.com with SMTP id 205so7779424pfw.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 20 Oct 2019 23:44:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7S85Z16eqmxjvMi+R450sz/jCD08hapdQq20bxkJhIQ=;
 b=GuRCYZtGI6OJa6X8+/Ffb8CLtebpBzKn0NZw6zffUn9sUbMUSQw/2smdjQAyEdECD3
 dMQoJ9gWZR/CRhS+tkhIG7O7tZtUVlouDhfhyiAQw2z97JpcLK7xPgBnhtxfLaA8tn65
 uLzm7NNQq95muYyOqE612+gA7JyzPHObNYoj3nDvcwncyUqmu2oYZUqEOp2ew25NMmgo
 KN93tzSSewsfwDec/nSg8XESFTYjDhbU13AGcEXLTB3GLYNzOv7oMORl1H01diaRc26p
 bkEp1OO+6DilyontJxPS9m3bzCDZfJRqYjI5195khDfCWjZv4xw6ht9zGQk0/ZCOL6cw
 nQ2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7S85Z16eqmxjvMi+R450sz/jCD08hapdQq20bxkJhIQ=;
 b=BifA6Rmcb1yMrYvvOJepjIHlhcbTLcaS3U0zWJWDAdPh8mS40zIEZw81wBmdaYQRMF
 cVFd8dZKPqrGvccEumk1eodTBxRehJZQ0fY28OENgXxEz5KcK8Q3vANhjKc+U96KaeLj
 LH+eBdeFPcsUZrd+cZfJZzGrA2+mff8HwVpbkJ+exg4q422K3hidyHiG3PpEDHRE6lNr
 ILh/qdiCzSI6Fdak3KtH+wawmSt8CAoVGCIEjEknhoS/nrF990V45FEdyxJyYYbIA4ai
 R19JqU++7U0jTLhpi4rQZiDJlBvJx6S8msNDTStbvQltvFvXr3Mw+CSJUg8rONxbbdxI
 Dy1g==
X-Gm-Message-State: APjAAAXxrNLfOfOk3pVZDz+/LQD5Owz6vtuQHkuAm73XUADpgeq0MTa1
 LDYA7eOjVb2MQkT2uThlH19n
X-Google-Smtp-Source: APXvYqwxSvUROjDFsJmxjbMvpcDF5YALujo6V9ImzLknl4U15yQJoDhBjAS4yK3nij3Yun5eC568gA==
X-Received: by 2002:a63:2889:: with SMTP id
 o131mr24222845pgo.444.1571640285755; 
 Sun, 20 Oct 2019 23:44:45 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:700f:8db6:2442:890f:ac37:8127])
 by smtp.gmail.com with ESMTPSA id d4sm13156624pjs.9.2019.10.20.23.44.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Oct 2019 23:44:45 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: linus.walleij@linaro.org,
	bgolaszewski@baylibre.com
Subject: [PATCH v3 4/4] MAINTAINERS: Add entry for RDA Micro GPIO driver and
 binding
Date: Mon, 21 Oct 2019 12:14:13 +0530
Message-Id: <20191021064413.19840-5-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021064413.19840-1-manivannan.sadhasivam@linaro.org>
References: <20191021064413.19840-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_234447_622151_882B2DC9 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-unisoc@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, orsonzhai@gmail.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add MAINTAINERS entry for RDA Micro GPIO driver and devicetree binding.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index a69e6db80c79..0303502cd146 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2150,9 +2150,11 @@ L:	linux-unisoc@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	arch/arm/boot/dts/rda8810pl-*
 F:	drivers/clocksource/timer-rda.c
+F:	drivers/gpio/gpio-rda.c
 F:	drivers/irqchip/irq-rda-intc.c
 F:	drivers/tty/serial/rda-uart.c
 F:	Documentation/devicetree/bindings/arm/rda.yaml
+F:	Documentation/devicetree/bindings/gpio/gpio-rda.yaml
 F:	Documentation/devicetree/bindings/interrupt-controller/rda,8810pl-intc.txt
 F:	Documentation/devicetree/bindings/serial/rda,8810pl-uart.txt
 F:	Documentation/devicetree/bindings/timer/rda,8810pl-timer.txt
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
