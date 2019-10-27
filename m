Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A00E6415
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 17:19:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aSMaXwi3WjsFn9L+nkOy8wHNb/ZyvfiNaqVDKYfGZRU=; b=CU5EUcnua0wt/Z
	5/jh9mBolMO7HFoAlatVRH/d7AX8+y680Z3W/AVYEPEu6hRqCZ9aeLefdV+P4PJNvMNA9spzlxkJN
	JCmt3y4wNpKftYItvJoPP6kIQoXG8vtnfJgKrfllmUvqecSZDJATY3TyK7QHbsVxxzZ66yUJF0rv9
	mMbGi5s8JCOoU0H3nPJDFq4j40ZghCyGOSi9L8iD+Neyr/mSxttpDeeEzrb0Zu6AewjSP7Y55ERv7
	qaolT5xErMhbQw4x3vM45musoXchS/xTmHEFSzNlsZ3EnHxrpv3GYuKEvRJy8/8wiIu/vWT/YS2+V
	WIM/Nzgd2zWnsOYoSGxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOlG2-0006gC-5O; Sun, 27 Oct 2019 16:19:10 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOlFD-0006Bs-AR; Sun, 27 Oct 2019 16:18:20 +0000
Received: by mail-wm1-x344.google.com with SMTP id q130so6693308wme.2;
 Sun, 27 Oct 2019 09:18:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=l2pKUClZPs6kJxYKVc9s3ay4DPVtu8eC20YF9cqpcPI=;
 b=fuZKY1Gwot9PXbdi2F0wFKeeUjfJaM8qcBUEEIAcOoEfGOkP8ISPg68uLOAqKjU/zV
 gxOYOedqSMEtXUZ/eVc8E3Z4snEmY16p65SFrIFEZ+ssrsOhiQIp8qEW988N7tm4j+v8
 GKm3RY37S7u35/GOsMJcLlw7oHLwyN1CIZJJdQ6aVEXHYHe3fgzAhztZ0+dMg0sMb5Dd
 NS8ced3UpEBqX+np36zo2dGDKSrgrbr/e4ibJhaaxF40LwkbsNHnTl6mbCVIXgL6tpdG
 fQnKelPXoQs/met8AQg2y3NtSoU4xbqyKSYTagtJpy+89PYHPkwqKy/NbM6IintphWGW
 hSaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=l2pKUClZPs6kJxYKVc9s3ay4DPVtu8eC20YF9cqpcPI=;
 b=f83kYPv28v29qMBf8EIrnVdsebXc1F5IN4rrKvDTSsmKAUyS8cosaRrGwB1IIuvb6+
 UGV0ji5yhqtZVUyLhPsMT8NRVpQSWkghcfudWRkDadYH9r+yX5bYGRyDuC/cLHWYj/ut
 4PYzY40i1RUjGOpzidKzhCWrDDse2lAddKGeV0E6Ys9STCQ/I2PQeHeq9YKKaV37xh3i
 Z5CX13scaPQizf96DqrOMZgaSWQU5aOlrHwmQ8dce4UUJAAOcpxaWCOhFFlTpFxEHqZB
 ZnNiPw7prcCS20EQYMHJF8NFT8nCZjYLEhS+IHvnKLuOw9fLlMlqIkvECkF3Pu/dZRg1
 ro5w==
X-Gm-Message-State: APjAAAU+956PnKFdw6ur8no8L1PvfBOzpvPdQC1p1aoLUkkaUoc4SNXY
 AD42Gfv50S6bOIgYaHHp2aEMrD4Ox+/Qew==
X-Google-Smtp-Source: APXvYqzdDF+BTs3CmnmqR/OMrHlFL2KK0vQNMdUQU2ukI3jHraGwiggiPz8BvE9c9Q3Z2hXogtSkKg==
X-Received: by 2002:a1c:6146:: with SMTP id v67mr12265207wmb.102.1572193093558; 
 Sun, 27 Oct 2019 09:18:13 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F133D01300428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:33d0:1300:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id j14sm9585014wrj.35.2019.10.27.09.18.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Oct 2019 09:18:12 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: narmstrong@baylibre.com, jbrunet@baylibre.com,
 linux-amlogic@lists.infradead.org, khilman@baylibre.com
Subject: [PATCH v2 1/5] dt-bindings: clock: meson8b: add the clock inputs
Date: Sun, 27 Oct 2019 17:18:01 +0100
Message-Id: <20191027161805.1176321-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191027161805.1176321-1-martin.blumenstingl@googlemail.com>
References: <20191027161805.1176321-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_091819_389904_7B8AD664 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
 Rob Herring <robh@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The clock controller on Meson8/Meson8b/Meson8m2 has three (known)
inputs:
- "xtal": the main 24MHz crystal
- "ddr_pll": some of the audio clocks use the output of the DDR PLL as
  input
- "clk_32k": an optional clock signal which can be connected to GPIOAO_6
  (which then has to be switched to the CLK_32K_IN function)

Add the inputs to the documentation so we can wire up these inputs in a
follow-up patch.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../devicetree/bindings/clock/amlogic,meson8b-clkc.txt       | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/amlogic,meson8b-clkc.txt b/Documentation/devicetree/bindings/clock/amlogic,meson8b-clkc.txt
index 4d94091c1d2d..cc51e4746b3b 100644
--- a/Documentation/devicetree/bindings/clock/amlogic,meson8b-clkc.txt
+++ b/Documentation/devicetree/bindings/clock/amlogic,meson8b-clkc.txt
@@ -11,6 +11,11 @@ Required Properties:
 	- "amlogic,meson8m2-clkc" for Meson8m2 (S812) SoCs
 - #clock-cells: should be 1.
 - #reset-cells: should be 1.
+- clocks: list of clock phandles, one for each entry in clock-names
+- clock-names: should contain the following:
+  * "xtal": the 24MHz system oscillator
+  * "ddr_pll": the DDR PLL clock
+  * "clk_32k": (if present) the 32kHz clock signal from GPIOAO_6 (CLK_32K_IN)
 
 Parent node should have the following properties :
 - compatible: "amlogic,meson-hhi-sysctrl", "simple-mfd", "syscon"
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
