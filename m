Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC03E6417
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 17:19:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EeUFdVOQKKtwLcJ7dc06Z9o1gP23gCUk2/PUA62Pn1k=; b=TQdiXhhlAHj2c2
	PyPXKSVGu+Ed0LpkzVygdIbaYZJYS/PKlo+/mTgpr2bXc5lHyyePLpSvg8LOXlwsBiECEpV7rfX7C
	Y8S8Qh3gOXjs1djBBT1MFjvfy/asWYiI/HzTYE+AIaYf76uVwp+G2wPgGcNotexKulONpHB/WKYtd
	6rPigb3a+Km35BVFACY525I3fEhy9Zu8QAvGAWARo7uQ2lKqJx134O0vHhzvWJUlR+FIDTyZ0J+fg
	wMITuxE2eCvbk1zEqCY98jMbZyqbq0dsWPn4sheMr7FDCvHJlzPd8dpii3RgYRx20laHib5lft5zc
	Ef0H/9ubeTpdTlOMLWnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOlGV-0007Bo-Sw; Sun, 27 Oct 2019 16:19:39 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOlFE-0006Ch-CW; Sun, 27 Oct 2019 16:18:23 +0000
Received: by mail-wr1-x444.google.com with SMTP id s1so7399973wro.0;
 Sun, 27 Oct 2019 09:18:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bQ1b11JrQMPNCzMJaz+y6q1nSpUtkZ5R8/joJD6Qz18=;
 b=Y8fcd9UWEz8ZhI1HAXrUApECbzToLMV/0EZ4fsDzW1oo4Ol5ePz6Mm0IxAvoezYzkd
 s2HnNydcCJv30Wka6Ei4vvbv3sGYXS3vGn+EIkzxzyoLPVuQLSHdgpH1Wt2d4Z/B8BdC
 vwy9UVXLVY+1ivTt5j5Mrczx1aYKocrKk/+TbT1TbTqnhFBbm4pt41AwNWMWy/2loU6R
 8MwwkEwMHjYrTq9P+STJ9fu5Khe5PQf3VSDGkdNDMRq8nQGh21rnLrjwEztWyVtuhWfP
 6ktxynw0Cn3bBFAzb+sXi8HpEnJ81eQ/yyXQHCve4AtjTzyGmCGDpVzZGdFqSRzriwA7
 Sz5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bQ1b11JrQMPNCzMJaz+y6q1nSpUtkZ5R8/joJD6Qz18=;
 b=W83sYxco4kNGE0xc8ambhtDAEbDyq0PhwppstM85/eHbti6CvkWtla3HETpKj5yvoR
 3Q5C5OuGdHHtZ3+9GrolU9PteliInuyTLWPf10NON++WvvFrBdhxcGy4ni9c2j6jJqP8
 haK5TOkcJd/Ku5fc85AZgavBeG9w7eptin3wD4mgVzkWsTO3CE0cQN+zr0oGdt1wyiYC
 iD4mzhKwgeiRPgOzXJ03PRB6IqY//YPYGGifHjUCyBG5XZy2ggnxkb5YDpp5sA3XQV5z
 yVNqK1frXfbtrfzUTbq0VXWTXvAG9T0LX7B4UlltsIZFKmnw2XQMdvrWok22rM5lcPDB
 yRcQ==
X-Gm-Message-State: APjAAAWF2kUVq9pK460uuVNjAEaoWsHOhNk9jR6T4IylUrszm3CzVNfK
 XUoC3Gb9/jHX4j62pElA7eU=
X-Google-Smtp-Source: APXvYqysISP879oRde/djghIAdFy/7j14R2KbsTb23U1GvaSj/8vP8LRd3LHDN3ZcXn4lnSWEN3ZWg==
X-Received: by 2002:adf:dec7:: with SMTP id i7mr2473253wrn.134.1572193096993; 
 Sun, 27 Oct 2019 09:18:16 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F133D01300428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:33d0:1300:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id j14sm9585014wrj.35.2019.10.27.09.18.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Oct 2019 09:18:16 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: narmstrong@baylibre.com, jbrunet@baylibre.com,
 linux-amlogic@lists.infradead.org, khilman@baylibre.com
Subject: [PATCH v2 4/5] clk: meson: meson8b: don't register the XTAL clock
 when provided via OF
Date: Sun, 27 Oct 2019 17:18:04 +0100
Message-Id: <20191027161805.1176321-5-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191027161805.1176321-1-martin.blumenstingl@googlemail.com>
References: <20191027161805.1176321-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_091820_477277_94F576B4 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The XTAL clock is an actual crystal on the PCB. Thus the meson8b clock
driver should not register the XTAL clock - instead it should be
provided via .dts and then passed to the clock controller.

Skip the registration of the XTAL clock if a parent clock is provided
via OF. Fall back to registering the XTAL clock if this is not the case
to keep support for old .dtbs.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/clk/meson/meson8b.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/meson/meson8b.c b/drivers/clk/meson/meson8b.c
index b785b67baf2b..70ac6755607e 100644
--- a/drivers/clk/meson/meson8b.c
+++ b/drivers/clk/meson/meson8b.c
@@ -3682,10 +3682,16 @@ static void __init meson8b_clkc_init_common(struct device_node *np,
 		meson8b_clk_regmaps[i]->map = map;
 
 	/*
-	 * register all clks
-	 * CLKID_UNUSED = 0, so skip it and start with CLKID_XTAL = 1
+	 * always skip CLKID_UNUSED and also skip XTAL if the .dtb provides the
+	 * XTAL clock as input.
 	 */
-	for (i = CLKID_XTAL; i < CLK_NR_CLKS; i++) {
+	if (!IS_ERR(of_clk_get_by_name(np, "xtal")))
+		i = CLKID_PLL_FIXED;
+	else
+		i = CLKID_XTAL;
+
+	/* register all clks */
+	for (; i < CLK_NR_CLKS; i++) {
 		/* array might be sparse */
 		if (!clk_hw_onecell_data->hws[i])
 			continue;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
