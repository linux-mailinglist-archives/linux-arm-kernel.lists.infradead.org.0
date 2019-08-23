Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 146E79A86C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 09:18:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KBRYJf7K5MiZIbc3LOKORLC3m2BY6pquODot7SZwOn4=; b=lPjCU8uYYqVCCS
	NmcJ2yH4lbG2FNtVAxq64fHm9YnPCl6uv66xTENNYfBG4yNpBMqXAxAURpvEhwyUjtsK3PBvD9COD
	FxSxxhwu5BgBJY8dm7IWHvzz3qgL8aOD4dUZejSVneKoraOldWIKnEKyCJhbydzlfx45oRcTb4Qh3
	Eeqh/30TfNjleSfxTt/BB0OrJhLosNrV8OU2pwqdowTFkVahyAM5GRU4LZWvI40riEeuI63jOznC5
	8LWniU/d3tYmlYNHIDLX43GbdrQ2PmmQfzzdlDiqyH4UYShk0zLf3wy+V+Qwe8SiNS1/5oM1YSlMw
	g/Vf2i9pw0Dp/dVCAgLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i13pk-0001I5-UM; Fri, 23 Aug 2019 07:18:05 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i13bB-00014h-6r
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 07:03:06 +0000
Received: by mail-wm1-x343.google.com with SMTP id o4so7879144wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 00:02:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8G0E0ExO/8vd2rGhXGiVb6HSb8G+1dBBdN59XPnX2pY=;
 b=GoHzf8SkZj1+SpCoyVP0Y3ZBaNamHMVTa2ltB0yOI36PwQ+quf7uqr6wqjiPeGBaT9
 edo0ve8cKUP1ou+mFnM+m/6MAHAItTL7Sem8XzG6gVtS68cGxRx8/05t4M2eODJxw7w6
 jhgneNZIMupty7Mek5jp2do8k5Bqr4C14o696uFuHx9CiEHSMBawDDUJedraA1h63Ccq
 zQ4TqdFILCQ6FchVgfQwFB01t6AXfqyUqsPxqGTUZ4j6BJfXxpDNGllhZbAEAEXsGA1h
 d6O639EAXrHr+zeKOkhJ9wnQa/7GTbNTCSFwL3w9A6TWS6phQkzaabtz8NGrQQZxpTIr
 I2Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8G0E0ExO/8vd2rGhXGiVb6HSb8G+1dBBdN59XPnX2pY=;
 b=tYKwGyWRtgFlb+akq8vstaA0h4Nds56FEgnnr3cUa6q/v0M1FtlkiBNSfkX1u2jSVl
 HVVeCYXSbEvqLyCqnTSDkmAIMmobQ2Fy6nucKUBRBT7n2+04wgt+bS792wle8zGrA8U6
 Hp4Pb2OhegMTNsq1hyUiCuibWGWMHG4+yUPBXWgdd5wV2rFCCbQ8fITwE7a5qzHJxhHA
 ARr+lsZjKh9KgtGoRcOQ6MHMiC0t/vVDkup/ZzjLVFDW8gbj6Ky2GlHdqX4J4qOa8wR9
 zSPCyPuoO1dYvJFSdtjNvSv9ncqIRt2HN/AmfsnSk7wjcZvMqf0U8U4mVzzX6NaIzBLp
 7LOA==
X-Gm-Message-State: APjAAAVoC43YXf2SfA5WmSrjnDIehZ+bWKkGQ5ovBXzzu+7ZISLYd+ZF
 qtknHXpQV38pMBjwhf97SBFBJg==
X-Google-Smtp-Source: APXvYqzUKYnWao2Wqg2Ns4yi/vxfNMHPEOhgTpeWMwDQcAu/e5rK+lJa7uHRKL6EwbWcDxwqcZ5Jsw==
X-Received: by 2002:a7b:c4c6:: with SMTP id g6mr3436424wmk.52.1566543778710;
 Fri, 23 Aug 2019 00:02:58 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a26sm1741833wmg.45.2019.08.23.00.02.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 00:02:57 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [RESEND PATCH v2 05/14] arm64: dts: meson-gx: fix watchdog compatible
Date: Fri, 23 Aug 2019 09:02:39 +0200
Message-Id: <20190823070248.25832-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190823070248.25832-1-narmstrong@baylibre.com>
References: <20190823070248.25832-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_000302_159037_CB492700 
X-CRM114-Status: GOOD (  10.92  )
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the following DT schemas check errors:
meson-gxbb-nanopi-k2.dt.yaml: watchdog@98d0: compatible:0: 'amlogic,meson-gx-wdt' is not one of ['amlogic,meson-gxbb-wdt']
meson-gxl-s805x-libretech-ac.dt.yaml: watchdog@98d0: compatible:0: 'amlogic,meson-gx-wdt' is not one of ['amlogic,meson-gxbb-wdt']

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index 1c580f42e818..b3fe3268af3e 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -325,7 +325,7 @@
 			};
 
 			watchdog@98d0 {
-				compatible = "amlogic,meson-gx-wdt", "amlogic,meson-gxbb-wdt";
+				compatible = "amlogic,meson-gxbb-wdt";
 				reg = <0x0 0x098d0 0x0 0x10>;
 				clocks = <&xtal>;
 			};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
