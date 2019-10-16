Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A27D94D6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 17:03:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n5UMOiyfRxHP+S4WQEFmtoV335W1AFZ993zyZq4BgKw=; b=a8GFMIgMFP3Vc9
	tzxlZ/1yk1i3OCfmEtkPpBR9kNLZM5W1VaCKg5cip3rUaZFviev1H62QI1rATzjXdQ+xiY5NodT4H
	p/g4+sz4OckSD+DipvMbJo+tZ+JVTZG9IoZT5mxO0PM7Dg033zUYFHGeRqUJaVo48/TwugvpHX0ie
	4LWBeWkYSwUhc3O6atANtSEiYv71Hmh7RGxZ7CMIYP4aS10l/yKFjMZtHw4LCvE/ANsfaD9R3AusC
	NYUPpddJDrJUXfOg71rPawlW7AUUxpRnhCPhm+RMaYnfIqWYgFDdt78g0g/XwTuhFi/C5qo6cdC2W
	UH50fIFfJwPn793BmVMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKkpH-00017Q-8t; Wed, 16 Oct 2019 15:02:59 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKko5-00009c-0m
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 15:01:46 +0000
Received: by mail-wr1-x443.google.com with SMTP id j18so28442346wrq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 08:01:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GJDCD24q8FHHhxNDtUAkpzQYbJaDZYgAmYeaRlxpr/w=;
 b=dO4olJtvxy5WdTAk6CiGSGZ/doWOUCerRa2ngeO0GD37wFEQBYSjsutuPLDVbqT8mO
 Y6IMoGamFUFHX0sMTqJ4QBoJ56ZYmIPvod5t6RiUfjmLhmn+8xP19XUrKbPWKO6JCkT/
 nHW5ii8489KCW+AgpKSIdQSVKlZlsV5JoibBzTOk8oIA98Q5ApEEh1nO47aFvAg9GLdl
 2/KQBpSsJJ0OnjbxDkwEFoXlx2MhB3wzSpVAJJGKzPCJ7F05keQFXpB0ci03+puGuENc
 yvhd9mLDRE/0SZbaTCcPzjsABsHYIIotHozMjkDoM1UygnHvkRASDdbmA7FnpySj9QA9
 +PHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GJDCD24q8FHHhxNDtUAkpzQYbJaDZYgAmYeaRlxpr/w=;
 b=rIgkZgOIi84B54uMa7lNDItU390GAub556iQasQBxBPlegVcN9nkZV1VMWUXSmxbc+
 b/S978MxKAkaPn1MTnxi7Cbb+tQtJtPFVsRIxlYXsX1SIuynUdTrkzYjEeUNJkbtyzcG
 Mp9Dhz9DcmZ0nzP4H4+ExHrzx6Ftnzw9eL2gfGppWoM1NmEd837PNAn6vy3F8ruJjZUq
 xjjtH4Y154zMKFHKPH1gTt11VpspdI5Tj+ry7NMjK6Y5tUCeg5HFRlzuybGNVkfXLyz5
 kHQqZb0D/qpk/Pnu4lE2E/kjkZU+MIDyLM7awb0O+WkVIYan7U/3WiA360i6kDj/nWRz
 n/lA==
X-Gm-Message-State: APjAAAUm2PiXOSSn5cNQpE+9HzjrjP1zomIvuYBvYonkhFfJtirBpiKj
 LE0RQIeMrVFNIwsuFpD/tlw=
X-Google-Smtp-Source: APXvYqxajNGwg9e2D3RfLPK/tRVSjQI6X1jb4DR8hLkyw9AlkbnFzdfh7YT0cugXZNRH+p27aat98g==
X-Received: by 2002:a5d:4685:: with SMTP id u5mr3277509wrq.264.1571238101466; 
 Wed, 16 Oct 2019 08:01:41 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id r18sm3215437wme.48.2019.10.16.08.01.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 08:01:40 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v5 04/11] ARM: dts: sun8i: R40: add crypto engine node
Date: Wed, 16 Oct 2019 17:01:24 +0200
Message-Id: <20191016150131.15430-5-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191016150131.15430-1-clabbe.montjoie@gmail.com>
References: <20191016150131.15430-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_080145_110113_2D70BF31 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Crypto Engine is a hardware cryptographic offloader that supports
many algorithms.
It could be found on most Allwinner SoCs.

This patch enables the Crypto Engine on the Allwinner R40 SoC Device-tree.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm/boot/dts/sun8i-r40.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index c9c2688db66d..421dfbbfd7ee 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -266,6 +266,15 @@
 			#phy-cells = <1>;
 		};
 
+		crypto: crypto@1c15000 {
+			compatible = "allwinner,sun8i-r40-crypto";
+			reg = <0x01c15000 0x1000>;
+			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>;
+			clock-names = "bus", "mod";
+			resets = <&ccu RST_BUS_CE>;
+		};
+
 		ehci1: usb@1c19000 {
 			compatible = "allwinner,sun8i-r40-ehci", "generic-ehci";
 			reg = <0x01c19000 0x100>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
