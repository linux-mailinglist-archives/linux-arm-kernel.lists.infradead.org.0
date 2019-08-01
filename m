Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A12A7DDD4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 16:24:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Zf2ggZFbFjjiyKcZ1fO27Y89TfoUxi7JMwGSaCq6jxE=; b=X9L
	Zf5EPtIJ77FoDrmViWrPZ4I8CvX3neHQOxVR1lNoyTYRalbB73hoFDu5zsUeBBWIE/n/wpMlMTlYY
	ruYmkYk1xvtYDPQ01o7QZD01YnX91e62+NrpBmSPZXHmNLiKO3Oe5krVYTg7OF09md6XR9bnbl2sr
	xDspSHN6hrBgNmiis7AhOQVBNh7d48CGLdoSVDPyO2Ziyz7yp5/EGhHIi7rMTZfIgpy9TRp9chRxu
	AIOMtwDBUJw8vNT3orf6Dcia9zPhAAJqKfPcGLra21dmStrF0zxx6j9zXrpYTc21OyOYzAJYFJDbX
	oBSgGRjiqieMS1ZPVr1yPD28oKDh7vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htC0n-0000BI-2q; Thu, 01 Aug 2019 14:24:57 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htC0c-00009u-0M
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 14:24:47 +0000
Received: by mail-pf1-x442.google.com with SMTP id q10so34157137pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 07:24:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=5uT2pwDuXIe1LO/tNDR3p03ieSG9jK3CMGI5vSshufI=;
 b=U/Z6UAqOS/j/lALnpzcN26kzlcwaPJVKQcP9j7Wgrd7j8dj4d/xrdgTjIx77u0OHR6
 NuuzTOHCJEv+a8o7kcLlVUQ/lGwXUfglBZUKU1UXEaDL9P4YGJfTAh3pArvAAQDeNkPy
 f7eUEZ5wkE7ZCf/BEd9Ae5wVq8qrGPcbroVLDg9LG3TYkA6s2mNc6+OoY17Fvh1zBato
 GajSaduvhGWco2CYp29ULlIE7LkwRZJBZDvYMNXgK9nDbP+qAi2JS66GXUiA62FFCzyY
 DHA3KzcV9euwlsQSQm6i/EQ9T+Wbv6rHWZeHkGt9CVm3MPKikEU6o4Sj+kyqPA7E+57W
 nrGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=5uT2pwDuXIe1LO/tNDR3p03ieSG9jK3CMGI5vSshufI=;
 b=BlatCV8ardByPi8t1zVLyxualNGKKcVQsBbyT11O0WJZZM+XfPvh1MOBMIzMFB0xfs
 Hm7AeWbGX+uYpia95UECz2tH2CIeZEV87oQZPy1j7qk5ZdVDZKaF5edJqcaA2GhXcPRR
 965eyK0vUYtkGuFRUXkpDAq1owkMht3szXo6kIh5qgMSHBYlmDXJdTfShkwp+BY4tOcY
 sLEfk2ZS4HQH08RRhe58+Mo3EhHD4okBYWqFa/PELaAu4s9nbmUTuD1IbaPRoQlrL/we
 2YHwGWsf0fPSIfF4WAWcuA+qskj8G1A7PmV9T/cwanXcQigW6PRB95VJQeTP5srBFNz/
 Tklw==
X-Gm-Message-State: APjAAAVRzl6pf+GypdNKpGbvgGjhuFHJ0Nqk3p7mkWvPq1VomqadKGZB
 CaQPeNN3HZy8HspQ6EVF/iM=
X-Google-Smtp-Source: APXvYqxtGAJdtgn+8GGnATr9/vG6ptszO0XNX8xjHfPT3TT4Iz4sKu0uMzIsSXmF1i0kPbCaYKv+Hg==
X-Received: by 2002:a17:90a:109:: with SMTP id
 b9mr8621373pjb.112.1564669485620; 
 Thu, 01 Aug 2019 07:24:45 -0700 (PDT)
Received: from localhost.localdomain
 (p6796086-ipngn28101marunouchi.tokyo.ocn.ne.jp. [114.165.92.86])
 by smtp.gmail.com with ESMTPSA id h12sm5626454pje.12.2019.08.01.07.24.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 01 Aug 2019 07:24:45 -0700 (PDT)
From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH] arm64: dts: renesas: r8a77990: sort nodes
Date: Thu,  1 Aug 2019 23:24:36 +0900
Message-Id: <1564669476-22680-1-git-send-email-ykaneko0929@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_072446_056006_4CFE1848 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (ykaneko0929[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ykaneko0929[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Magnus Damm <magnus.damm@gmail.com>, Simon Horman <horms@verge.net.au>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sort nodes.

If node address is present
   * Sort by node address, grouping all nodes with the same compat string
     and sorting the group alphabetically.
Else
   * Sort alphabetically

This should not have any run-time effect.

Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
---

This patch is based on the master branch of Geert Uytterhoeven's renesas-devel
tree.

 arch/arm64/boot/dts/renesas/r8a77990.dtsi | 44 +++++++++++++++----------------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a77990.dtsi b/arch/arm64/boot/dts/renesas/r8a77990.dtsi
index 84d1f58..e51bc4c 100644
--- a/arch/arm64/boot/dts/renesas/r8a77990.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77990.dtsi
@@ -1326,6 +1326,17 @@
 				      "ssi.1", "ssi.0";
 			status = "disabled";
 
+			rcar_sound,ctu {
+				ctu00: ctu-0 { };
+				ctu01: ctu-1 { };
+				ctu02: ctu-2 { };
+				ctu03: ctu-3 { };
+				ctu10: ctu-4 { };
+				ctu11: ctu-5 { };
+				ctu12: ctu-6 { };
+				ctu13: ctu-7 { };
+			};
+
 			rcar_sound,dvc {
 				dvc0: dvc-0 {
 					dmas = <&audma0 0xbc>;
@@ -1342,17 +1353,6 @@
 				mix1: mix-1 { };
 			};
 
-			rcar_sound,ctu {
-				ctu00: ctu-0 { };
-				ctu01: ctu-1 { };
-				ctu02: ctu-2 { };
-				ctu03: ctu-3 { };
-				ctu10: ctu-4 { };
-				ctu11: ctu-5 { };
-				ctu12: ctu-6 { };
-				ctu13: ctu-7 { };
-			};
-
 			rcar_sound,src {
 				src0: src-0 {
 					interrupts = <GIC_SPI 352 IRQ_TYPE_LEVEL_HIGH>;
@@ -1866,25 +1866,25 @@
 			thermal-sensors = <&thermal 0>;
 			sustainable-power = <717>;
 
-			trips {
-				target: trip-point1 {
-					temperature = <100000>;
-					hysteresis = <2000>;
-					type = "passive";
+			cooling-maps {
+				map0 {
+					trip = <&target>;
+					cooling-device = <&a53_0 0 2>;
+					contribution = <1024>;
 				};
+			};
 
+			trips {
 				sensor1_crit: sensor1-crit {
 					temperature = <120000>;
 					hysteresis = <2000>;
 					type = "critical";
 				};
-			};
 
-			cooling-maps {
-				map0 {
-					trip = <&target>;
-					cooling-device = <&a53_0 0 2>;
-					contribution = <1024>;
+				target: trip-point1 {
+					temperature = <100000>;
+					hysteresis = <2000>;
+					type = "passive";
 				};
 			};
 		};
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
