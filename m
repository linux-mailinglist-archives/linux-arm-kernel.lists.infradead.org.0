Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE442E2419
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 22:11:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zxWS13M3swUfpNLcLYV6n1aYYek+v1uEyJhRS7rS72Y=; b=ou7bdAU3alcYIj
	aQRGp9SmOSAyFXvU/6qYDkLHAY+a5PTfLp9UaAR+1f8GHYQLVwR+1aO40OnSxE+hMeIkJOdE6cwNs
	cZmWF0qnRmF15rcUiy91SBadtLcqUyQJHoSh+/IeFDez2rZ05L+bVD4KORtBpAfGL0yOmAwbyyCBC
	zPr4JVOgWwOztYLLqAdJFkArJ/jJuLho/a6UEhxJsQZj4ZxXeSCYOu+m5zxiAUQUzhF0GVlO5GlSX
	oY7ipG7UXQOi02jXQ5obKYQJ7okO4RH0jvM0se4xCS6UDIjqH/JLkQIN2yzU6EkXscLnK3RlBoQnm
	YtJyqPj9bs9N+pH3kxPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNMyf-0006yY-LB; Wed, 23 Oct 2019 20:11:29 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNMxe-0006BS-OY
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 20:10:28 +0000
Received: by mail-wr1-x441.google.com with SMTP id o28so23451876wro.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 13:10:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dpe0zCbR3c1VkH/n1U/vOC6ekNORqcDkTSfYoQ4laf4=;
 b=iYHQNJHmQbhRm4umf4o2ihYkcxoZoiFdeHMW6g10R+LYk5ClYI4rP3GaTktcJuUIHs
 HQxSdartm1UsLMWKhma8Fk31En2dOM4r2stHvB3TA3irwopFfnmnJgBlfRzzTghStD2s
 GEEHGXA872OvJ1TKQGRg2cPB6BTvcxXH1bO/eoTHqiGOhdX8rBj91SV3fjkggIM5BcqC
 1nSU9YcIIHbmiRPK6g9Ow7QzAra7eBFzUePfQEgLpZ1XMk9KleGi4Qspt84bWr2ayqVV
 g74jQvyQLno/hsohQwudKYKam9vDmUnAZ3u+qGslOtIYgygjF0A+6Oef1qTS2U+tU3Fu
 6/gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dpe0zCbR3c1VkH/n1U/vOC6ekNORqcDkTSfYoQ4laf4=;
 b=OffDQELnmZEvoKrThGO6eko17OCVjC0Zu1rU3bqB2VRvDRXRiUc9fOCjNp/GBhAbOv
 H+qAQgdR/wHtaXIa3nYmT7EmUWP/NReaERgaVGiVcbBDeigu0Wkpec/3q1CSJ+XXC8VI
 LYcOtrss69OPIEhAMOtQE062dCjSIR5fMBkvgTcTasloCPDTgtZV6iCPbwTplSZclOK1
 3aXMpu62QZ90jbcGRVJSFT5niSDprPRkxjGWgtF+GlB4UyYu4RlwxYgWdi+cN4rFQeBO
 xT0A9sMfO1duGK+H2VRwF21GnDZoUHdVk3eiyzhjFNOOMz1Ed2u4ugZmmosbC/P+DHVp
 XaaA==
X-Gm-Message-State: APjAAAW/3H6ko39X1+gvkDRhAwlm7hWn9W/nWbAAI6uoQRNxChJtNp9l
 goEdQ0YLnhxPdCI+N1h56ig=
X-Google-Smtp-Source: APXvYqz68Wn9kNMfnDrY2c9bI9xvs8OblM3ux7zEgB84kOYTwNMVTM+UoHgwIP1ztIVFRF33kYRzyw==
X-Received: by 2002:a5d:4d46:: with SMTP id a6mr480347wru.196.1571861425413;
 Wed, 23 Oct 2019 13:10:25 -0700 (PDT)
Received: from Red.localdomain (lfbn-1-7036-79.w90-116.abo.wanadoo.fr.
 [90.116.209.79])
 by smtp.googlemail.com with ESMTPSA id h17sm277261wmb.33.2019.10.23.13.10.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 13:10:24 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mark.rutland@arm.com,
 mripard@kernel.org, robh+dt@kernel.org, wens@csie.org
Subject: [PATCH v2 4/4] ARM: dts: sun9i: a80: Add Security System node
Date: Wed, 23 Oct 2019 22:10:16 +0200
Message-Id: <20191023201016.26195-5-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191023201016.26195-1-clabbe.montjoie@gmail.com>
References: <20191023201016.26195-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_131026_892511_4CF35A32 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

This patchs the node for sun8i-ss which is availlable on the A80.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm/boot/dts/sun9i-a80.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/sun9i-a80.dtsi b/arch/arm/boot/dts/sun9i-a80.dtsi
index b9b6fb00be28..d7498a1a158e 100644
--- a/arch/arm/boot/dts/sun9i-a80.dtsi
+++ b/arch/arm/boot/dts/sun9i-a80.dtsi
@@ -457,6 +457,16 @@
 			reg = <0x01700000 0x100>;
 		};
 
+		crypto: crypto@1c02000 {
+			compatible = "allwinner,sun9i-a80-crypto";
+			reg = <0x01c02000 0x1000>;
+			interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
+			resets = <&ccu RST_BUS_SS>;
+			reset-names = "bus";
+			clocks = <&ccu CLK_BUS_SS>, <&ccu CLK_SS>;
+			clock-names = "bus", "mod";
+		};
+
 		mmc0: mmc@1c0f000 {
 			compatible = "allwinner,sun9i-a80-mmc";
 			reg = <0x01c0f000 0x1000>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
