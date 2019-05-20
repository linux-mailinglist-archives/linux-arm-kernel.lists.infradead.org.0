Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3770824162
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 21:44:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lFkCMiyC/IoZMCZRuEOy1funmeV5tg8ovcAj5S08EcY=; b=A9gxNRTVUiiTPm
	3QInuYqElezm6ZxXMlfXlrTAeg/DOl5kMBnyv3d/E5hf6baJoGy/0bonaIRkZiDInoC8ijWrLIJlw
	vk9u+wdSzh50KdvNsbOc3ZIbBKkMkNjqTJmhuOcyGZQf8SdgULgscH175xwPgS7PGoU1KI6qX3eBR
	AxpDZNZN31gdshbruEgSkMoKVDZG+y8DMGseBZfDDyUcNGrsmcdsVVbpKnD4Y6lzHBTCvF8un40Ds
	EDwBEAkPygXeLYMNjYz68b0ZEXfmYbwE6bTV/B6Y9S1JcpFAga8OSO4l5CYyVyt5vXaUvLRiSlDKp
	rBaaUkoVUS8V+l8lt1Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSoDE-0001Pf-GL; Mon, 20 May 2019 19:44:44 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSoCf-0000lh-1L; Mon, 20 May 2019 19:44:10 +0000
Received: by mail-wm1-x343.google.com with SMTP id c77so551958wmd.1;
 Mon, 20 May 2019 12:44:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fbtcwLTT91//XKmC+nVPtkzszNKe+pk1U7NYT699Lrc=;
 b=bqnP7lv6jn4i1Q/jGxux0ThtCKwf8NtdpmWcAE95aDI+W14w8Kip28zRIk0UnNd8H9
 uLwKOByCpDXwwQznTYVX3bssmINT2gpSwsbYZ1rL2R1gmwUAPDUmWBsGQbVQzPcinQxB
 xNYMJxEfvY2sSqcqHpH7Vx/DfEpp8pH6kVd09RmaSHI7rfv11xyghvZOXzuUbOElDYC3
 PgPwRXIStRlsP7T2dy8TNs86gkFVpGW/dj2my/NPhPbqACLEN3aD6uFczsJj5+rKvnlZ
 J/DrwtS/iLZyhyS4arHTi3Zzq4tSQbZQxGNFynJz7SAhXAel9FsB2Id3VoiSsq0lQ39Q
 4q6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fbtcwLTT91//XKmC+nVPtkzszNKe+pk1U7NYT699Lrc=;
 b=lpejCvaDtghV+bQVvC8VJugl5tkINID1wndhyKNXg4P5SRjQw+ptM80lSaWF5ZTbhV
 EdQNvQGiHLvVK4ldvXNUouqZFzN//LfHsawWbZdz2mV0l7qDzu/JF5Ewcf0aGwPg5sPF
 J5g9RZOUwHQThv8vNZhn88vWFKIZTB7PNqXhdbdOj+pNLk0cxHgG3sLQvjoRhj8DCwnw
 /1anj0nNLsF2Yik0AQuD2KbfOi1LJB52cRKXl7pJEo071dtreoX9Hafsm0pMF33Xe5Eg
 MBDnqa/HyNkLwTxh3sUppxusUueykF1wW0bxKuFKeiBIt7tPb5j2HjeWluOmwaWmRXBR
 Ie3g==
X-Gm-Message-State: APjAAAWtMSdYyfbRvxjgN/iuK7nAHt8FUaa1LtDjWmSxD4YE2d4qeWE9
 iN29hRQ2R9PDfZ0sw5L6qNu4+9ib
X-Google-Smtp-Source: APXvYqxIvBEBsiGaewtDr53S3vSH0QaYQdhtkgZBbh05g6PE/3rwce7wCD+fDv/oMZdNDf13BNdexQ==
X-Received: by 2002:a1c:9d56:: with SMTP id g83mr614737wme.8.1558381446984;
 Mon, 20 May 2019 12:44:06 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133EE71009C356FA1F0E19AF9.dip0.t-ipconnect.de.
 [2003:f1:33ee:7100:9c35:6fa1:f0e1:9af9])
 by smtp.googlemail.com with ESMTPSA id p8sm9135352wro.0.2019.05.20.12.44.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 12:44:06 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, khilman@baylibre.com,
 mjourdan@baylibre.com, robh+dt@kernel.org, mark.rutland@arm.com,
 devicetree@vger.kernel.org
Subject: [PATCH v2 3/5] ARM: dts: meson8: add the canvas module
Date: Mon, 20 May 2019 21:43:51 +0200
Message-Id: <20190520194353.24445-4-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520194353.24445-1-martin.blumenstingl@googlemail.com>
References: <20190520194353.24445-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_124409_074652_0A84F76B 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

Add the canvas module to Meson8 because it's required for the VPU
(video output) and video decoders.

The canvas module is located inside thie "DMC bus" (where also some of
the memory controller registers are located). The "DMC bus" itself is
part of the so-called "MMC bus".

Amlogic's vendor kernel has an explicit #define for the "DMC" register
range on Meson8m2 while there's no such #define for Meson8. However, the
canvas and memory controller registers on Meson8 are all expressed as
"0x6000 + actual offset", while Meson8m2 uses "DMC + actual offset".
Thus it's safe to assume that the DMC bus exists on both SoCs even
though the registers inside are slightly different.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson8.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm/boot/dts/meson8.dtsi b/arch/arm/boot/dts/meson8.dtsi
index 40c11b6b217a..6a235275b01f 100644
--- a/arch/arm/boot/dts/meson8.dtsi
+++ b/arch/arm/boot/dts/meson8.dtsi
@@ -228,6 +228,28 @@
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
+			canvas: video-lut@20 {
+				compatible = "amlogic,meson8-canvas",
+					     "amlogic,canvas";
+				reg = <0x20 0x14>;
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
