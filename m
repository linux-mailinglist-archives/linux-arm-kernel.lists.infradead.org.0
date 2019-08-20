Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2AC8962A4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 16:41:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q2Gr/9k62S1bPCWPDy3IjNIZruIPf3SyJY+kszjuHgA=; b=UxegrhvQ2PEWjJ
	0FZ2wkgXzj53LtWVYeUP+j43Cdfk2jxgxEUN6An8dk37QRezpYYgUeq8qQ//HeyS1PreNgGT8+RZK
	/mSp0gRJAT//81olGkIJSgJq2fWhRaGjNN8GetxwY7rZTe1OvknGIJB+CC6WgvXCc4tmErEjs2Eq0
	s9okmwffR6CMMOQ80eqbOipSdEKCEh9/8J3LRiPMPhn+4/OJLRX8lOmy5PgNBCXQ8rDRqG+s7xuWI
	A2bmOmaZGybKm6rB1NWJ8V+Fo2XUEfT9PCKApANO43JBgoTADA6szhhIe+ij0yOjWl+KqFFC9JwHL
	gQZ4rsxQ/JZlgb/IU35w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i05K1-0003XJ-6w; Tue, 20 Aug 2019 14:41:17 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i05Jj-0003T8-Db
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 14:41:03 +0000
Received: by mail-wm1-x343.google.com with SMTP id 10so2847949wmp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 07:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FtjbfzxxRQVlXomA51tccWbA15Rb8KwyrlxD2ZA+wlQ=;
 b=Y/hLIPMrAuVaUxTSVXjbJHQmQQ8JLEBe1TvDbYh0gvKcX2L/Q/YU6tCzL+yKFrGpZ5
 ++ri4z7NgbbXSYnpAP9cfnIKYfRqe6h736YsHvXgGFZfhrlp8i6rE9I0FqQeijg5Ywkd
 dSxEds04VSwwrRZjM0p1JUPOWxO0Drr+rqefb6Znck07/Vgb482CYubnYJfz1jZUuzGz
 ljFEX685mjvDyQG923roLxR5fBE0IEULiyQxg0QqAmYuxMTXDJH8LVbQYWH0KvnhG7OW
 D8IE/GWDFqaEzeeSTlYlvnjYGETQC7pdoEmQkBd1sT3eay60Q5JzCHIqi/MjXCwfRPFF
 Cz8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FtjbfzxxRQVlXomA51tccWbA15Rb8KwyrlxD2ZA+wlQ=;
 b=Au+yJyvuTQ9Zt9dOxgMadApPyO8LqnTd2fvwFHw4hw61A1mgcC1NGKKun4ozLA4MiS
 23yoyXFVk8Je1epjv8BPXIfnXqFpXe91IVJs6mOI9dY1wWRjrRfhu+L4klHmCy5jp7dL
 //pGUFJqMj9Jfwq9I2Ba8AtbskzH1cbx25DQMJZqpznvur2vieG33XgJssOLj3JNcA31
 oSoAkTsgPNkobK6f2P+uI8RNPaO0+XCr07S1TfysFutq1OBsSycc8osHZeDxHzsYrmHT
 pF5sTO3VMDi5dXkJqcHVgYVdYgUon/OJsYfcDHWna/A44262AbFiE/dbq0PfZMD8ITb0
 +XIg==
X-Gm-Message-State: APjAAAXhtNVFQwpaBtnsKabn2yWw/Rw5n2+UKLlRGtkmcLsDJUcNr6Ip
 s5PLQz8sa7o0d74q8KC/E6+mGQ==
X-Google-Smtp-Source: APXvYqwBS4oD1m88wTCd7yYz/NuvNsTh8uemnpLC23aAqfqzhSziSlAqHUgACd7BA6CGz5CxGnWs0g==
X-Received: by 2002:a1c:740b:: with SMTP id p11mr400414wmc.6.1566312057392;
 Tue, 20 Aug 2019 07:40:57 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a18sm21826750wrt.18.2019.08.20.07.40.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 07:40:56 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 2/6] dt-bindings: soc: amlogic: clk-measure: Add SM1 compatible
Date: Tue, 20 Aug 2019 16:40:48 +0200
Message-Id: <20190820144052.18269-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190820144052.18269-1-narmstrong@baylibre.com>
References: <20190820144052.18269-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_074101_624970_74604E7D 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the Amlogic SM1 Compatible for the clk-measurer IP.

Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/soc/amlogic/clk-measure.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/amlogic/clk-measure.txt b/Documentation/devicetree/bindings/soc/amlogic/clk-measure.txt
index 6bf6b43f8dd8..3dd563cec794 100644
--- a/Documentation/devicetree/bindings/soc/amlogic/clk-measure.txt
+++ b/Documentation/devicetree/bindings/soc/amlogic/clk-measure.txt
@@ -11,6 +11,7 @@ Required properties:
 			"amlogic,meson8b-clk-measure" for Meson8b SoCs
 			"amlogic,meson-axg-clk-measure" for AXG SoCs
 			"amlogic,meson-g12a-clk-measure" for G12a SoCs
+			"amlogic,meson-sm1-clk-measure" for SM1 SoCs
 - reg: base address and size of the Clock Measurer register space.
 
 Example:
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
