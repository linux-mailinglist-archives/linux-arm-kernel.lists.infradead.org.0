Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1740E1964C0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 10:17:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QwcZjzZSazPSmJYkQLlTrXxYsaJNbuBz4D+i4DRLngc=; b=INa
	IFjlrNf1TB1MB/h+zzY1lvSJTlDAQh6Zlr+BP1JhtJGJIJQsKXZeAf1PBT0s6AcNYeneSRjrLDvKl
	f3eT8IZAN5/ZjAmWFxuKBlkF+/eIwiF4u5FtoE0cY3ljWfrNgBCJL2zP3d4X+A8zJ9MO7v1S/fdLD
	oRIt4cMSyoNnRRpz75ArjRoKbEvt1BKDQlvNhNL1Jlu/33Bd28s098eExbXODYqHHXiqaccmaVGq/
	2O0p6d2oVieUx+AWyNR0rBlJcQk2KcZKwL1cLnw3rfnajADu8NRVzAx36H6PYX8Obzxbqqlk8EWds
	8bHrHzda3BCiMMg3i+xhHg9qNTcFRYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI7aR-0004zC-Q8; Sat, 28 Mar 2020 09:17:03 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI7aJ-0004yB-6S
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 09:16:56 +0000
Received: by mail-pg1-x544.google.com with SMTP id d37so5386410pgl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Mar 2020 02:16:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=dbt64BOHdGBEqZICW7xFrVv85mRzXdLFYOBZsB2adHc=;
 b=QMpe31hxR6ssU1HeoeZaHjFlpVz/ckdZelGkF46XlV3hdtUy/KMe3YJ9X0jbMwy5CX
 ru49qZasvJXvMFQvVty1rttigU5qxAZFFaykPJEu8BsDFfL63yuF431z0Lx2tyUTSpcC
 TPOesZM3CBISd8Hvco3LSRT3bedlBvxwUeJMl1LllOEbahabbk6n8yMPxqp5EJVR2U/j
 6JTTEYBEQdBIgzUeUX75PwuH9TpKPQS+emDDGbhWgQQR0YHW0auhcyhFVW1gusXmpITR
 GbIsnt5CMH8dVs+frtgx7VKoWMrSkN0RgtwJEkndw/nrK/OpHvGqLQJxpANuN7NDQvsQ
 OF3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=dbt64BOHdGBEqZICW7xFrVv85mRzXdLFYOBZsB2adHc=;
 b=nc5BXxq95BY/KdXYYsQAf6FKUYOJAror0YwFY3GKw/vpx6SyKnIHyIC5fQ4Kio4s/f
 wfubzFzLGa8KlVUueDEAWMyHc6iY2Dt34Dh0H3miKq9gm7yfxquOCUsCpUcZXYYbLPMz
 LHGESoUXzAxlec3FUeTiabtzArdqigW4IAhl7Qxf4TBFBBJaqHiyJxDLQKsv+y+chmhi
 G19v6NDND96+BIehlGOud8gxVSUH/MigolGkJedVyHZzOucBvFtU2jZkZka7jWD5U5Vh
 NfDvfzk5xaDX21DCAF0DyuQiimL2BCypJAmEak7xGwL7YvVXe07/X0hG+d/ZkpUwg+Pn
 sa2A==
X-Gm-Message-State: ANhLgQ18e2mqA9wlMN87UnMwPu3MiEXJJtcrRXg1Ry8lBcd8ZAufzchq
 fojYUojwRGIMVIi/lUjnIUU=
X-Google-Smtp-Source: ADFU+vv47AMVwTFPLDTJTzrIVuokO5+kgV9NngI7TCqKN2EMx0eiYE7QkqrmD4xpiBL9zEJPDInnkw==
X-Received: by 2002:a63:1c4d:: with SMTP id c13mr3447030pgm.4.1585387014579;
 Sat, 28 Mar 2020 02:16:54 -0700 (PDT)
Received: from localhost.localdomain (li2017-195.members.linode.com.
 [172.105.124.195])
 by smtp.gmail.com with ESMTPSA id f129sm5796176pfb.190.2020.03.28.02.16.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Mar 2020 02:16:53 -0700 (PDT)
From: Qiang Yu <yuq825@gmail.com>
To: devicetree@vger.kernel.org,
	linux-sunxi@googlegroups.com
Subject: [PATCH] ARM: dts: sun8i-h3: add opp table for mali gpu
Date: Sat, 28 Mar 2020 17:16:32 +0800
Message-Id: <20200328091632.12837-1-yuq825@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_021655_239430_9EAEF517 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [yuq825[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yuq825[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, lima@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Qiang Yu <yuq825@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

OPP table vaule is get from orangepi lichee linux-3.4
kernel driver.

Signed-off-by: Qiang Yu <yuq825@gmail.com>
---
 arch/arm/boot/dts/sun8i-h3.dtsi | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-h3.dtsi b/arch/arm/boot/dts/sun8i-h3.dtsi
index 20217e2ca4d3..53ef9a18e953 100644
--- a/arch/arm/boot/dts/sun8i-h3.dtsi
+++ b/arch/arm/boot/dts/sun8i-h3.dtsi
@@ -128,6 +128,23 @@
 			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
 	};
 
+	gpu_opp_table: gpu-opp-table {
+		compatible = "operating-points-v2";
+
+		opp-120000000 {
+			opp-hz = /bits/ 64 <120000000>;
+		};
+		opp-312000000 {
+			opp-hz = /bits/ 64 <312000000>;
+		};
+		opp-432000000 {
+			opp-hz = /bits/ 64 <432000000>;
+		};
+		opp-576000000 {
+			opp-hz = /bits/ 64 <576000000>;
+		};
+	};
+
 	soc {
 		deinterlace: deinterlace@1400000 {
 			compatible = "allwinner,sun8i-h3-deinterlace";
@@ -205,8 +222,7 @@
 			clock-names = "bus", "core";
 			resets = <&ccu RST_BUS_GPU>;
 
-			assigned-clocks = <&ccu CLK_GPU>;
-			assigned-clock-rates = <384000000>;
+			operating-points-v2 = <&gpu_opp_table>;
 		};
 
 		ths: thermal-sensor@1c25000 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
