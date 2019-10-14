Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0170D5AA3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 07:19:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mGkk5610rvLBVhf9243cEiQof8f3kk62DbLSWpNS/SY=; b=urrve8AbE7XdsA
	A19jJByeE9/fKyWyA5n5oxz/a5NhURsNzlg+O2ZoW+aapqyTbDlsgv76WvvXVYz2kpjv47q/HMDrQ
	lIHYh5edKuNsLaIAKII+FYwrZd0TWURETh0H5SZLwGr0OWO6tPbVYSTnpp5Yd2aHl3biB+D3RyJFU
	skIdsYBrD53ljvwYwZP3ihvtr+B1d13lO5p/sD03eCyh3EdKBUwQePRpEiBI+onfeEOwATQLuE1hr
	BWGJTz1Mu8Ct+dRLA1dmdGfo+RQ/XTcrtP/4lltVLpIc8xhBw3FfEijsjNPdVg3wyg16H9fWDqmGw
	FIuqM17RHcmSDwjRvasg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJslT-0007W0-7a; Mon, 14 Oct 2019 05:19:27 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJskt-00078c-Db; Mon, 14 Oct 2019 05:18:52 +0000
Received: by mail-wm1-x343.google.com with SMTP id r17so13606154wme.0;
 Sun, 13 Oct 2019 22:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IYELzo9paCdNSHZmbtgi4XuRP3zt69X3tMzTrt8WAxw=;
 b=BD+S0sfz4B7A/bxxA6b4D/PzrFOg/tbJ6HIHK6u8MQCD5Y6fmIxJlq7XsFAih10qFc
 fe+7G+8Oq7sseBQX30ziTyxqsqKOnX1+lj4Di4mwwp4zxrcpvGFD2Au6c+XoKTnhxtFh
 aOwDZgV/o/jeeInR/ue6gDpFrOYcsEn67ZBKYx9u3JNVojcx5qMKOwy/GgZtb3sQ6/FK
 bexRD373A4R0XwRpS+/pkfx5dS6Fx1ujfkeCxV/SvFFTtI4ZHqZFARwzri4sAHt/j1MU
 FKn9U3Do26GNlOWfYg7E4d1jfyVWzTQni+tBYRsoTjmL2ODBxKYwQ3T1h3b6rf9vsDg/
 e14g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IYELzo9paCdNSHZmbtgi4XuRP3zt69X3tMzTrt8WAxw=;
 b=pvV7Z8EefPEFO0ixmabisW9pavtt3PBV9sH8y9J6z/U5CKLUdImugkHPYRmyq/t6G1
 fSxJJWksEMjhOMzZbmIhjerjPHg9iAUBPw0hfb4K7JUbkWNTIrRI33TZLfMVCzMHiAVB
 y74i8H/QhVuTDADlDyACW/cq/ARweltQlE/KEuPgQwviaf2NVTVd0pyJgtEJ31XMK9VS
 pUsMWPT8phAVi6oQmem5uZ93/81uR7Zite/GXiAkGdRNFXJpxkNQuJBpHnLWOqhKdwq7
 oJOwFgq35Dj4JDLsN8kQa10jV6SXbTXHjXUXDdapqTEmx4FD5KnHm/95fX5bs4ys61uL
 7E5g==
X-Gm-Message-State: APjAAAUrB4cCysf+XzZJ0qGTXeAKRiv4pc2MjYFsFubxjG3V+Jby9Lam
 uWPlQoGGeGvk1nwGefJePkQ=
X-Google-Smtp-Source: APXvYqzDeIQMzuATD9N9pJOIMujxL8TUHVaFwMZVR/+YhNBw4jMhgGwy4f0S8CRJNje0FHxlYVxgMQ==
X-Received: by 2002:a7b:c8c5:: with SMTP id f5mr13251625wml.170.1571030329786; 
 Sun, 13 Oct 2019 22:18:49 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id 5sm14660340wrk.86.2019.10.13.22.18.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Oct 2019 22:18:49 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, khilman@baylibre.com,
 mark.rutland@arm.com, robh+dt@kernel.org,
 martin.blumenstingl@googlemail.com
Subject: [PATCH v2 4/4] ARM64: dts: amlogic: adds crypto hardware node
Date: Mon, 14 Oct 2019 07:18:39 +0200
Message-Id: <20191014051839.32274-5-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191014051839.32274-1-clabbe.montjoie@gmail.com>
References: <20191014051839.32274-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_221851_538434_85CE617B 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-crypto@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds the GXL crypto hardware node for all GXL SoCs.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
index 49ff0a7d0210..ed33d8efaf62 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
@@ -36,6 +36,16 @@
 				phys = <&usb3_phy>, <&usb2_phy0>, <&usb2_phy1>;
 			};
 		};
+
+		crypto: crypto@c883e000 {
+			compatible = "amlogic,gxl-crypto";
+			reg = <0x0 0xc883e000 0x0 0x36>;
+			interrupts = <GIC_SPI 188 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 189 IRQ_TYPE_EDGE_RISING>;
+			clocks = <&clkc CLKID_BLKMV>;
+			clock-names = "blkmv";
+			status = "okay";
+		};
 	};
 };
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
