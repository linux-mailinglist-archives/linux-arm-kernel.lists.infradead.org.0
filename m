Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E315018480D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 14:27:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BI0k/PVelV8n3hTBsGtR6laI8tJdlGF1JULGBQk9ih0=; b=dPp
	Fqqfow/AV2QPPI1EnQEPHZmWABAuyPUlECxkvqBwS6BXlZDY4LRerP0MMPfSK2cm+L30FCJzwBwuK
	nOsyLexFvL4lfWJRPQ61W1oyXMox+wyKaFKv81wvUY6Ng23wnIWQrB/tTNDLDJQsUk7AoDzNQl2p8
	leIdmUSsiEY125/LME2cHFXnajXjiwTOB55ikcjm1W16C3893/r8hUDPRrhQ2KxJkyxVi1CgvOvvm
	zoFEI5QbwzSu3qhxVKDrVndILPLUCLmUh0CZRY+d1tDm6ezTYV+Cq6SCaLxHie10abxv47jgdJgRl
	kJemGRq2nKVfI+tqKrzroJNDh/yerAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCkLD-00081w-2F; Fri, 13 Mar 2020 13:27:07 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCkL1-0007z0-2t; Fri, 13 Mar 2020 13:26:56 +0000
Received: by mail-wr1-x443.google.com with SMTP id a25so12112779wrd.0;
 Fri, 13 Mar 2020 06:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=hGTtD4LLU6z8nLYoqJKtaVgPwNbnoGTn8gZTvLe4N9c=;
 b=U2Uo01NM91NeBSJVW7uzYrj/clfD2+uDJn2m4bO9PQGnqG9CONH5kjfrKGbB9kawLl
 UosbWPOXW/QVxzhxAX5JADqAQcJnZkZFXWyT8hJN7kZRM3hAivHdpHaYS5dwB013jV9a
 nhFTaA+p6bTYIcgeLrgYQEfK5iHcY9GXnAvWveEnRMlxrJPzD4GAFqPT0wdBipKkxWSF
 8PUAG1CpXxlydZs0yZlAwx8gG6zdOtjmL688rc+4Iqhx+Sp5g0TAmvGJmHemf2t4DPXK
 TlOy5e89BbW+pwPRdA7DhYiZ07Z2DCTZhbuetN9ETxY8CuUqAYwTKz+LA4/G9tTKIH3I
 YNGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=hGTtD4LLU6z8nLYoqJKtaVgPwNbnoGTn8gZTvLe4N9c=;
 b=OCGdojHP18KCznQjXWOJwxGg8UoHnZF9clKX+sOWpipwcsHolfqwsgpFVVG5L5/4mV
 GsDOn+TIs/NPn8jSP5GRShlkrIBAKKxcm1F93j51GnkxLAkYhK8gcxnroKW58ZzSmbXF
 SltE9b8uJxLekJVTL8b24RVn/0yqiZEZKAv9EPog2TZXQqXr/EIVVvn3hWW5iaZmmomg
 GFPsU+lO2KN1Hz60cWDl1hdyGnffwVAHW069w+Jl5CEmoD7EmX5NiSYq4J8htjMIBBH9
 kvhylVb/l200VbXKgYgmdKxlXA27WB9K4LCuOiHtbfDrQDry7pxcNbsJ8uO9ufZ7ScPV
 pVZw==
X-Gm-Message-State: ANhLgQ0G6k+Qy6XQJrs37G2acwtj7xyl3Ts2aHMrFO/RyUquiVR6mEdF
 YEUnMZAI+/WQI3Fj6pX7PmXNJgV0
X-Google-Smtp-Source: ADFU+vv9CSAECvZnYj48mBzZNjuL7qHzUdi9abc7khFeX05zaTMSUwv7MmoseyxxldsKLgNVD8282g==
X-Received: by 2002:a5d:65c5:: with SMTP id e5mr17438260wrw.161.1584106013666; 
 Fri, 13 Mar 2020 06:26:53 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w67sm12994428wmb.41.2020.03.13.06.26.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Mar 2020 06:26:53 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] ARM: dts: rockchip: remove clock-frequency from saradc node
 rv1108
Date: Fri, 13 Mar 2020 14:26:46 +0100
Message-Id: <20200313132646.10317-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_062655_144555_5BD69AB7 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

An experimental test with the command below gives these errors:

arch/arm/boot/dts/rv1108-elgin-r1.dt.yaml: adc@1038c000:
'clock-frequency'
does not match any of the regexes: 'pinctrl-[0-9]+'
arch/arm/boot/dts/rv1108-evb.dt.yaml: adc@1038c000:
'clock-frequency'
does not match any of the regexes: 'pinctrl-[0-9]+'

'clock-frequency' is not a valid property for a saradc node,
so remove it.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/iio/adc/
rockchip-saradc.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rv1108.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index 153868c62..f9cfe2c80 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -366,7 +366,6 @@
 		reg = <0x1038c000 0x100>;
 		interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
 		#io-channel-cells = <1>;
-		clock-frequency = <1000000>;
 		clocks = <&cru SCLK_SARADC>, <&cru PCLK_SARADC>;
 		clock-names = "saradc", "apb_pclk";
 		status = "disabled";
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
