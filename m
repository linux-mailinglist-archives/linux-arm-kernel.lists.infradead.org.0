Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64BB9890DF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 11 Aug 2019 11:06:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=las838Ugv9NHL+qcA6KJvTcp5SyKtmNVaaB5Xp1AjVA=; b=mffzZewe6gNUSgYHRBFGQIyAby
	q2DTUtQjkxSE8X1B3LjfWyJ5z3DVjF1CJTPcowDtK365q+Bk2ZToypkC6R7FajjG2eO6qQlmDlpsE
	GBsBNNtQbD3v83XKDf/QTSuxvcjYKOWWDPsugzagguHzRS3o8Vv0hYTSoxfuHwpMzgaTEYOD8uLyD
	PuoumpbgQxeAm84idGw0dQARhXTM13qfUF7426lxVMlaHxlEM6w7DDbMGiW291ijguMflzbaa93Ry
	sS4DDn9VnfLQzgfyA71w/MzjgF7vPOnnhyon/HibuMzPcp1gJK0+Wc/2vr2mWBQlAhDoCfQa55Bxl
	WGsODfQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwjo9-00072m-Py; Sun, 11 Aug 2019 09:06:34 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwjn1-0006ek-2d
 for linux-arm-kernel@lists.infradead.org; Sun, 11 Aug 2019 09:05:24 +0000
Received: by mail-pf1-f195.google.com with SMTP id 129so1361497pfa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 11 Aug 2019 02:05:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=DfWUrSqQwgPvfj5wOOKm7TdPELNExyWS4lWHPaxFdi0=;
 b=hZQp2vWwFAoQFaAVIm9Vi0vTbYyDGT0EaFG+eNzdUMNiN+eBAQXqB9nOEz5dUKpHWe
 UkQ6pUVajJR2dxBGWGolTvzCo6wuVLeylAlKKIQfUX1ESKJrwsssQ8/8aq/2NYl6BUZ/
 k/yBrBlC7iVkLkdQ95OTdbWCb+FKTudobYkD3x89HUaqETlEkvAdbthS6f/xNthZjkez
 APqw8RXyuaNFxi7uMz47PjLylJlVCYzQqRqkqvMjtZwLEmPtn1lDblB7UH6oNhGkk4U3
 59r3XTvaoivn50FBJFoQxplf8wSJi7T8HFY3x0nKZ6budD//j7uFE/4rziGXvdPkZKIO
 RquQ==
X-Gm-Message-State: APjAAAWfotNwa9BAPuZp+Cq+3ABVRS0KDftqXoDIbQJZxeLxB8QUlshu
 10/Z5gJzWDibVJ8QCKH4zEE=
X-Google-Smtp-Source: APXvYqySWWqv4fBguoluEQVEtCnzmJWQIrOn4zc+LscMyjnZJH79c32tcsOXqXbfufs9etIHIFwKbA==
X-Received: by 2002:aa7:85d6:: with SMTP id z22mr4472397pfn.262.1565514322676; 
 Sun, 11 Aug 2019 02:05:22 -0700 (PDT)
Received: from archbox.localdomain ([203.88.145.156])
 by smtp.gmail.com with ESMTPSA id f27sm87287978pgm.60.2019.08.11.02.05.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 11 Aug 2019 02:05:22 -0700 (PDT)
From: Bhushan Shah <bshah@kde.org>
To: Icenowy Zheng <icenowy@aosc.io>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: allwinner: h6: enable i2c0 in PineH64
Date: Sun, 11 Aug 2019 14:35:03 +0530
Message-Id: <20190811090503.32396-3-bshah@kde.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190811090503.32396-1-bshah@kde.org>
References: <20190811090503.32396-1-bshah@kde.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_020523_121849_75744233 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (bhush94[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bhush94[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Bhushan Shah <bshah@kde.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

i2c0 bus is exposed by PI-2 BUS in the PineH64, model B.

Signed-off-by: Bhushan Shah <bshah@kde.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
index 684d1daa3081..a184361bc10d 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
@@ -160,6 +160,14 @@
 	vcc-pg-supply = <&reg_aldo1>;
 };
 
+&i2c0 {
+	status = "okay";
+};
+
+&i2c0_pins {
+	bias-pull-up;
+};
+
 &r_i2c {
 	status = "okay";
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
