Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5D6135A58
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 14:39:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xGB7U/Z/VuRy1Yw/QoZa3+SaQnaN8YVeYJZ9sdbVl9A=; b=Erikmce213rizv
	6+a4TG3pVHLmXnpT8cXSSV9qww1LCmgMU9EP98p3FrhjT6xSCETD/wAbIkOwkCrn3/CiBdWErf87h
	TCGX1MLzPXBrh5FMi7jN6GcYZPsbxYY6+yq5aUzI331M2tH0p5fao3jTrQSeW6tDocjjWsEBOtRTD
	1jzCY4mH/C9ThRZulO8e9kPf/M/ZW+LFiveCmAXwfet5rCUMPbQd/1YSoVcbVbdNJ5AApUewT+p9F
	s1CC7ydNwf3WraWDvkenTKV1Iqb68Z6wmGqiTbfYxhaEjuBSb8Y9RoLt2uin04v4UVDx+dItq7rMv
	HZvMs4uFnHaIIAxjUsIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipY2M-0004dP-27; Thu, 09 Jan 2020 13:39:46 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipY1w-0004QY-Vs
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 13:39:22 +0000
Received: by mail-wm1-x342.google.com with SMTP id a5so2979060wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 05:39:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iSLBbyZMom5Gh2asx6vSf9spPxO1dtGNpvUOI6kKFOE=;
 b=QJIiAeT3487JndkFw1jxkB1fCvzWWv1O/7PNOPDhXs5owXnctuTcuHcb1znb8OtuO9
 Yu4bJeEkL3whooM4CuY9LnTpi+PR2IOFXUY1iqV0UG2KmRoaITgkSSog+eyBrDp1yh9N
 Va/CFMOSakJqAkXehUGqRdpGniZFLlTrYVtGhWmq7YHBBMcsrEJHkXfK0PzXXtY4mEr/
 iQk1hg9dVrsTPRwOAKBoBUQGre82zVyKrNN3a0xplz322eKPr+GuXIlXUUoyFDInhKQI
 5MVkN5kYQJrZC0Z86vsy6hfZC48nhM5DP0DPS0kRcBxmqWUURi0P0ocbfA0N0ZaN4hZ8
 kyPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=iSLBbyZMom5Gh2asx6vSf9spPxO1dtGNpvUOI6kKFOE=;
 b=C2C4Dzqisgps8NTECvOT3MdJuyvs68O6EL8Zp1Q70Nl8xYjO82gUnglAOmEhHbCEon
 9LnbmAt5A1hDAHoBvVCQHv/ew3Ye8ZkWk4ODcPECfBko2vjb2g1oX6/BCH9ctU8J0cjD
 2Xg2P2qCH8DOX6bpfY5rj47MeX+RnaM+zC/KSv5Tq8GFPJOz2iGtPGIwWbEJsn3usOUy
 H3qYTSgk7OF2N2KSEz/fAL6N2fKA9OCyAtQ1MjS6+akLBZu8Yqx959iUYWg0s2gAsihi
 w3jUKzcxFYfTami/FmcXY/9uLD1OsPk5XI5FYBuzX/9eQpCR4AjHgECvuFdN7Db/etDh
 I5xw==
X-Gm-Message-State: APjAAAUs7fx4d7/Uu+MCuQyXLz50et+Btgb4aApQzEcyH9OozbfE7laF
 6rdtahBYBsFf6nkYeyB+mmJuM7/bRrbsRQ==
X-Google-Smtp-Source: APXvYqwGbw1JXeoKM7gwrs21nIc0OoNINaE7UVW4HZCYixEZBd/0C48GvM2p3JS33LvusyNKo9Tkag==
X-Received: by 2002:a1c:81ce:: with SMTP id c197mr5072174wmd.96.1578577159200; 
 Thu, 09 Jan 2020 05:39:19 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id q68sm3136809wme.14.2020.01.09.05.39.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 Jan 2020 05:39:18 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/6] arm64: zynqmp: Fix address for tca6416_u97 chip on zcu104
Date: Thu,  9 Jan 2020 14:39:10 +0100
Message-Id: <c542d6e305010dd08ff1d434de6f9d1996a6b0d6.1578577147.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1578577147.git.michal.simek@xilinx.com>
References: <cover.1578577147.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_053921_019275_D71C0B67 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
 Rajan Vaja <rajan.vaja@xilinx.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Harini Katakam <harini.katakam@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I2c address is not 0x21 but 0x20.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
index 2d71b4431cce..7a4614e3f5fa 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
@@ -118,9 +118,9 @@ i2c@4 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <4>;
-			tca6416_u97: gpio@21 {
+			tca6416_u97: gpio@20 {
 				compatible = "ti,tca6416";
-				reg = <0x21>;
+				reg = <0x20>;
 				gpio-controller;
 				#gpio-cells = <2>;
 				/*
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
