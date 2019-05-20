Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA262416C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 21:45:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w2CmMZnkgvHwzB3aQeRqlkMQUZmW2Zb3Y1m0iHegzIU=; b=bVzFughubkStBq
	BGQVKGK8P60DGzyaSWGdQzg1i28h4gggZPtoCtHbiLuZUaHRtG/GRpn84TV6vkT9hgiAh9Fqu2H7L
	Ralf0WLi4ek8aV/8lDjM9c4HTwmPF0R7m/ExsLaC3SEAgcyzc9+VY11zCfbiiVgwTsGU5vvkSI1xF
	SQHMgQmbEJDfkc8tlDcHRi2WP/a//Bivf5d1Atsf5WkGqMsdT3ftPlz2u1l3i4kE1BXxXiCBw/6Vi
	hYU1KuVE42sg9BTUtAbDq6avuLWIJ3Cb4Zf/FvxhkNWdlqqufN9StsE11KCSZnvHmAXgQVjSEE2II
	SpbBLYyfZbdZndbmSZcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSoDw-0003Ly-W7; Mon, 20 May 2019 19:45:29 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSoCh-0000nY-84; Mon, 20 May 2019 19:44:14 +0000
Received: by mail-wm1-x341.google.com with SMTP id j187so672128wma.1;
 Mon, 20 May 2019 12:44:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cerp4BVz6jg3tc4rdBJfzN6XOYaVzz+u0Df3uTDWRZE=;
 b=kyYql0N/INbJltmfL4wFEOR+NsMXKiaRLatSdnJCMyxaA4MIIcyUUCEHtSsgERHE7/
 S/hoOwAe1IXGGrqMuJ4LFzQ//JAB8NAAT9hcwrAMLJk5ca+nMQiCNDdjJ/eg0h4wPqmk
 ad84lRW4KWxKwTNWjd6i9rn+LXgH70sP+aO9K4aZfogHpeE13o6TdQQPqLQ2H2FN/FVt
 0vnpHxxu5ly+oVB03lXLmvCBoNjgr7HlM0hDVBc/OTRYdxBUjHly+K/W5Spbb08tGYo1
 LWvKe8pPuKhXH9+/krespj+/cG2GWWN4nDzWRdFqVrpDddLVhtYUJvvxBOIBt8Nx2RmD
 n89Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cerp4BVz6jg3tc4rdBJfzN6XOYaVzz+u0Df3uTDWRZE=;
 b=i1ZtipblP9lT3I9P5+pYeiXJL1EIh5UZhbOvz1zV8ly+iK53DQklQTI1MfDzvkwehW
 veJDiP4Xx4gmfWw5cwvTgtmehUmpmJQT0eFgHxSDckay4P7T3HslyAzq3+56CUNx/5iu
 yt9Unvqih/1HQDSC4r6LTAt5jPc7LZOlVUb2LUqUvJk8AgJ//huUYD7TmilYyzzfRmA9
 9CkB60J7Smdg9MYaJDVhlnIHHagpk5a7SqBEWGxNMQjec373wHINeT2EqQrJe/FhZOgC
 F4lumiL67GlyIbiBlL1dcYxyxCbPrOKoCdVObMh5SdkcktOSFo8e9+hk+B35jZEqESJp
 2EWg==
X-Gm-Message-State: APjAAAV1VX992NTRbkSCr38FjFv526dMLHfiJJZdAmtXy8Ch0Z4XJByo
 h2bkBCorQz4zt3tNLNryiCt911fv
X-Google-Smtp-Source: APXvYqz6TjOgiMXyvvY45YMYM5QAQd+aEkZPv3dGBlfGkdv3uVfPB9l0UQz9qje2U4+bNqxrMirqJg==
X-Received: by 2002:a7b:c939:: with SMTP id h25mr612524wml.7.1558381449221;
 Mon, 20 May 2019 12:44:09 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133EE71009C356FA1F0E19AF9.dip0.t-ipconnect.de.
 [2003:f1:33ee:7100:9c35:6fa1:f0e1:9af9])
 by smtp.googlemail.com with ESMTPSA id p8sm9135352wro.0.2019.05.20.12.44.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 12:44:08 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, khilman@baylibre.com,
 mjourdan@baylibre.com, robh+dt@kernel.org, mark.rutland@arm.com,
 devicetree@vger.kernel.org
Subject: [PATCH v2 5/5] ARM: dts: meson8b: add the canvas module
Date: Mon, 20 May 2019 21:43:53 +0200
Message-Id: <20190520194353.24445-6-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520194353.24445-1-martin.blumenstingl@googlemail.com>
References: <20190520194353.24445-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_124411_688283_476B651B 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the canvas module to Meson8b because it's required for the VPU
(video output) and video decoders.

The canvas module is located inside the "DMC bus" (where also some of
the memory controller registers are located). The "DMC bus" itself is
part of the so-called "MMC bus".

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson8b.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm/boot/dts/meson8b.dtsi b/arch/arm/boot/dts/meson8b.dtsi
index ec67f49116d9..e4134c63a48c 100644
--- a/arch/arm/boot/dts/meson8b.dtsi
+++ b/arch/arm/boot/dts/meson8b.dtsi
@@ -205,6 +205,28 @@
 		};
 	};
 
+	mmcbus: bus@c8000000 {
+		compatible = "simple-bus";
+		reg = <0xc8000000 0x8000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x0 0xc8000000 0x8000>;
+
+		dmcbus: bus@6000 {
+			compatible = "simple-bus";
+			reg = <0x6000 0x400>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0x0 0x6000 0x400>;
+
+			canvas: video-lut@48 {
+				compatible = "amlogic,meson8b-canvas",
+					     "amlogic,canvas";
+				reg = <0x48 0x14>;
+			};
+		};
+	};
+
 	apb: bus@d0000000 {
 		compatible = "simple-bus";
 		reg = <0xd0000000 0x200000>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
