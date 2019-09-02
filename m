Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79DCDA4EFC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 07:50:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cvqKGSOgfxZX1pqjH/P/CHWWPIcmONFMpmkNaFUOovM=; b=WfEp+XDcdwjArX
	u5TjjdDQN6dKieUIHcrzbkNPsZcj0ECetBiFuXD5CrkcmYSBfdlQw7ayX3aay+HBWisY7PzHhEXvc
	GrVgDjf55ochkTMnJnaxUU3lhW623w7YCZOKhKK4lQhFsJePyx5Xql0VT80/+1n1MgRe1FjL0z41X
	TQx/HVyYO+yGCBSEy6x4d5xWljUZmFx/orx4o56+rIxGdBmf3hW5VXCYCxuy/5j4rntvB/56CzXHR
	/B9NpCm+kds6Gjrq0p77OxWoMZ6yvSBqSf1PaQolGF3+rEaTKBuW9te814U7fPfyPM50eXvccbmIx
	vRTuorLDLLYWZu+PgxpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4fEP-0001zV-AC; Mon, 02 Sep 2019 05:50:25 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4fDx-0001Ex-DG; Mon, 02 Sep 2019 05:49:58 +0000
Received: by mail-pl1-x644.google.com with SMTP id w11so6187625plp.5;
 Sun, 01 Sep 2019 22:49:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ikV6lemlNYdFpEeGQSYqb+rV/obqc+rmipJrPne+LAs=;
 b=MAIvwr6/8HrrYhQuIYpsBU0n0QRmouCFyUCeHgTs67GyIPGWan6FxktGY+LZYjzIvu
 PrwVa318B6qjN5QnsMN0pRREoNTd895ozDy4yXB0TRykCShhlG7ml/M97o3vFnkMHyfC
 qZigYBE9JwJvzsHoDP6hgvcxSlNKIRfUWz5Isd33sWtUVCNdePIxgSMqXjodFkzk5kdo
 94fDNtxSV88R7FTXr4MPwvAPyj2mxMylpSj34ORawW3vXxOMocG5FkKe2DQQSWvvJURU
 r2B5H7aRmLlE6TmP5yL7arlb9uTThbWFrJNIS7YDwbogQXUKL3Rj6Xj10xRta2FyZ2U0
 Ml2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ikV6lemlNYdFpEeGQSYqb+rV/obqc+rmipJrPne+LAs=;
 b=fh6FFaKCujpCrR7yE2hYDGdP9mVUbkZdqMfij+BxktpRZAu7pwafuOlJQjnA4sf167
 /qekuUBvkSN2YPlL9izHq3YK5c8r3gSqYPEMWfOs+mTEUbpOBdH48Zr7V2pdq2DXbt9o
 2TFtMU3799v1cu7i3sK32YpmlH136sj7wFkg9uulyzicygyX+45hAlWyNcAwu+EuVAZb
 NCnlZhjofJAKmS1FXYb9eaqsZCj6u/6dkcio2KULp4nXb3yh3f5O6vabrwvnPn0Pkiiw
 dU0eMzFua/CHiy0m29IQ2n6EhGCau6AOQHdXBXmd8ymFPX0eutN+XFOIegPJl34SXho2
 zgvg==
X-Gm-Message-State: APjAAAVBt//KZGxGJo+RDxg495woTGIiJD3iHgE0V3XvghianKdy3GHr
 cK4mHoYIEXZM5bBmwnu/Tkg=
X-Google-Smtp-Source: APXvYqwmjDYBb+/h+lox38LRXgnKxFGbWgnCBcvK3a32iq8PnRmY1WQ3TIqaar+s+iJEVbDqoBGVeQ==
X-Received: by 2002:a17:902:7246:: with SMTP id
 c6mr339002pll.190.1567403396634; 
 Sun, 01 Sep 2019 22:49:56 -0700 (PDT)
Received: from localhost.localdomain ([45.114.62.203])
 by smtp.gmail.com with ESMTPSA id 136sm16533912pfz.123.2019.09.01.22.49.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Sep 2019 22:49:56 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>
Subject: [PATCHv4-next 1/3] arm64: dts: meson: odroid-c2: p5v0 is the main 5V
 power input
Date: Mon,  2 Sep 2019 05:49:33 +0000
Message-Id: <20190902054935.4899-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190902054935.4899-1-linux.amoon@gmail.com>
References: <20190902054935.4899-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_224957_643544_29483312 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As per the schematic Monolithic Power Systems MP2161GJ-C499
supply a fixed output voltage of 5.0V. This supplies linked
to VDD_EE, HDMI_P5V0, USB_POWER, VCCK, VDDIO_AO1V8, VDDIO_AO3V3,
VDD3V3, DDR3_1V5 according to the schematics.

Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>

---
Rebased on linux-next.
Added Acked by Martin.
Fixed the commit message to add misssing VDDIO_AO3V3 and VDD3V3.
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
index 6039adda12ee..0cb5831d9daf 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
@@ -50,6 +50,15 @@
 		};
 	};
 
+	p5v0: regulator-p5v0 {
+		compatible = "regulator-fixed";
+
+		regulator-name = "P5V0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
+
 	tflash_vdd: regulator-tflash_vdd {
 		/*
 		 * signal name from schematics: TFLASH_VDD_EN
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
