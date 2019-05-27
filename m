Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC1B2B5A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:43:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3jFuiSc5/CzojzOb2o8jJBCuIPfsZ+3zK7N2SjFuLo0=; b=c13xhJl9huFkBO
	6nxZx/ijYRrF3A+dA4XKhBdW3VbGCOeJ8bIMNcaSjhcR50hBaZkkBr7pgDm+0xOfslJ3d41a8Nr6o
	8w5GEKDFKofV65EgT++538duHUaF+LsTPcjdBxjxOPaL+nNv9M7pbPLvzLI9duT0mvlle0RgGcuz3
	9zWJDsdAgMqaBG7JHHDxyZGYun7OL0ldIC2YHpT2JUawJOzpPsjAtrGg/eGUrIqWWxLEhg+jp91eL
	ktGUK1ujN+/DoV2NZ3CSkrwYOfp7YynMpeYVol84pTg6yTC01lFYU1AoeZsmlmVG50xDSdgWa3XlL
	HCxTbv+WRWxerghaIEKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEyc-0001JC-Qj; Mon, 27 May 2019 12:43:42 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEy9-0000p6-GF
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:43:17 +0000
Received: by mail-wr1-x444.google.com with SMTP id r7so16783981wrr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 05:43:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wfKAsx1k3aZxm1g3WHRqV/EWJCTGjV5kvipkF29KWgY=;
 b=RbixjwZfkqTf7IjnopTanq0l4LQmRfQrKZvuDGX7vGcEw57/aoOmAB7MvWEgbsFEEQ
 FnNubmDp9BOqpEMqt7ceQvKzMftLMFAlYy8DH6ClC2u3tTNNQyTt4j07CKKUSop2lyKK
 O6BY8X+QzDpCyZneUK62VsxMklgpvmSbEBloeNMS8blv125hNBND2y7hPxGdRXhUasVA
 2BKmUMDZse3jc8EwYgQfNqwVUguTsaERfTcXWFAeT/UUpTVqivGAIncepVhKdgPlYTfK
 WttPp0FRlWnvcMT8iOT+SL2Yyn1PINPI2xPOErptKrxeTxaG1FcfI2gSKDI+Gzarc7QB
 N8LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wfKAsx1k3aZxm1g3WHRqV/EWJCTGjV5kvipkF29KWgY=;
 b=hBnn3z5StJPhMivgvId/1As/TYa8ErtSDmS4vsUKwbtciQ6QR+dZojIyTTgB8rKrbY
 hOBb46Y8MEQAXE+GcPmLAWbX+gpUjtzp8WjYF1YFlQ7l2qc2RLCE1zJyENn7QGHovot3
 6nlFoctorq/piGXVNoHLw79LfR7ofYzEUOYAx/nlBP9qRRhpdQF+03WdWELBPbVtAX92
 qATot9/X48ycSwJ3HCvIphBfD9C34G/66EViWECkguR+MFnfRokwWtcDKZRbiZFef4Mu
 2VDMUsTYUqhwyGim75apcASXYZsjITwpTwPvMRo9X15qY1siWZNDd+Y5QHHD7qTxx4z3
 LTqA==
X-Gm-Message-State: APjAAAV39rmmAFpSVCJAvTzjWcfybCn8pGPxJigpLpayaMCf1osTYH8v
 3JTBEUq6A9jvgPC8DjYK6ftnvA==
X-Google-Smtp-Source: APXvYqxnfjIHIRa4qi07Fsf6jQxGYjFAlyaqW/pJH4kjCXSboDIWvjhSeowBftxypf9mHpHl5S6bwQ==
X-Received: by 2002:adf:db89:: with SMTP id u9mr36557444wri.294.1558960991581; 
 Mon, 27 May 2019 05:43:11 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id c14sm11494930wrt.45.2019.05.27.05.43.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 27 May 2019 05:43:10 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: ulf.hansson@linaro.org, khilman@baylibre.com, devicetree@vger.kernel.org
Subject: [PATCH v2 1/3] dt-bindings: mmc: meson-gx: add dram-access-quirk
 property
Date: Mon, 27 May 2019 14:43:05 +0200
Message-Id: <20190527124307.32075-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527124307.32075-1-narmstrong@baylibre.com>
References: <20190527124307.32075-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_054314_076025_427291CB 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On the Amlogic G12A SoC family, (only) the SDIO controller has a bug which
makes any DRAM access from the MMC controller fail.

Add the amlogic,dram-access-quirk property so signal this particular
controller has this bug and needs a quirk to work properly.

Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/mmc/amlogic,meson-gx.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/amlogic,meson-gx.txt b/Documentation/devicetree/bindings/mmc/amlogic,meson-gx.txt
index 13e70409e8ac..ccc5358db131 100644
--- a/Documentation/devicetree/bindings/mmc/amlogic,meson-gx.txt
+++ b/Documentation/devicetree/bindings/mmc/amlogic,meson-gx.txt
@@ -22,6 +22,10 @@ Required properties:
   clock rate requested by the MMC core.
 - resets     : phandle of the internal reset line
 
+Optional properties:
+- amlogic,dram-access-quirk: set when controller's internal DMA engine cannot access the
+  DRAM memory, like on the G12A dedicated SDIO controller.
+
 Example:
 
 	sd_emmc_a: mmc@70000 {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
