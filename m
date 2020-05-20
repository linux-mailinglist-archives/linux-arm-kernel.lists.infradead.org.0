Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5E51DAB06
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 08:48:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=l+PHCba7+ySlF4o0DJzMfUQy27a65aMQPFenlKgUQ1s=; b=qqe
	6vu3DcrdvBgV9hoKY7KRASPqumvRWe1ea7TtjkvoldgsVoSfm5gYWcmkCXiCVGRodpjp6Zhw/rZFY
	svtlH8K/+8vfTEGyWmBcyT5bPiUoFZ0bDBY93wZuTMIspv5UtegOH3NCwFnzZAZi+owxI5r6rrmzy
	MjsgHjl0v6+43kdlryZeKS2pmJVJ130Z+yr+Xj9eI/Buy4Vn1VyQVS9XKeA+cn52DxQ+PBr1k5foC
	UeH9IFgylUzHpK3zEgiAn2AMk01W36pZ2g8bnoI2zwtfFWTAOnbLzhsnEI5NFFdg2reL/g1oS++1l
	u6MAicMbSrwdZf9SD82KJCXjLkyBm1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbIWo-0003rb-I6; Wed, 20 May 2020 06:48:34 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbIWf-0003qX-Oo; Wed, 20 May 2020 06:48:26 +0000
Received: by mail-ej1-x643.google.com with SMTP id se13so2027412ejb.9;
 Tue, 19 May 2020 23:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=tTeswJdRafCs9rbWrwY8onvsdFrv8hfLm2G+qfpi0DI=;
 b=nGd6b7Dmq5fujZcS3MoQfhIQcFbakcZHSlnkHkKOonOhJzlAIQ2EqBFSR3kA9jz6KB
 bzDKVDex2C2sJ8Mtvle5+hYt82nW1O6fR6uHFL7igg005rcmVQWhZX9wOwhhw40GM2lC
 oCheyCEbG5K5EK4+9Y+Wdi7YRT9NsPNcTl22+Xg0bSIVuW/ySFzAdMkiCuj/Zmc1tZr9
 e0RPv0VCcWQfBw7h8bABZnyHYxvLGBCpLpubKm+/b9bNWNgKwtGlbfpXkVYCMjNuA60N
 JNsy/aWLkK+LlnkWPVNSVosBcT0pszz2Otg4kJIIEn2f501Ja2r2JuR7js38Z04Bx/Ra
 E6zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=tTeswJdRafCs9rbWrwY8onvsdFrv8hfLm2G+qfpi0DI=;
 b=alprmmFFrumKA34yizhmz5wG/arPaIJXzu2YopxSDjsPtwy0sbFhJ0ELrUumnqioYw
 2K33Zl+tflbry6z5Y6ae1jK/4sa/R+kcDZ9faGmScVlyReYBAQrm/WscTZD7TOq9vz/7
 PrrQmq1FVTeqPyyBGPlLcJBRSgRlieUGen3YoNF0ISdNW9fOws/CWW7SbL9Ld0E06mAe
 UwiQtrQ5aZLBAbQz98BaiWzmJSXm+kl2M+iXUMrt8wEA8H175ose9gy8bVZrRW2RW2jp
 kM8nXtM5V52FQSiefyplzZY50gNJLYoG9xwxb61aCoH3/acYx9QJ14Hfaqc2nkRkx40W
 3vMQ==
X-Gm-Message-State: AOAM530i57r66WAoys2k+BplzzAq4DlaXV+JP+xKQ76tRCaUtD1wjpxo
 IGM/R8Yb2PN46/Tg7uV0dBTn/Ok2AlM=
X-Google-Smtp-Source: ABdhPJyoxv+ytT4N7FAeNxPJ21oQAAVQppQVdoT5uByDY/gnRHN6jAIqKTGnnwy5rtDNXvr3TpEVbA==
X-Received: by 2002:a17:906:c7d9:: with SMTP id
 dc25mr2412023ejb.305.1589957304221; 
 Tue, 19 May 2020 23:48:24 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id t23sm953961edr.71.2020.05.19.23.48.23
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 19 May 2020 23:48:23 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [RFC PATCH] arm64: dts: rockchip: fix dmas dma-names for rk3308 i2s
 node
Date: Wed, 20 May 2020 08:48:16 +0200
Message-Id: <20200520064816.3954-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_234825_806932_A1234473 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

One of the current rk3308 'i2s' nodes has a different dma layout
with only 1 item. Table 9-2 DMAC1 Request Mapping Table shows that
there 2 dma sources available, so fix the dmas and dma-names
for the rk3308 'i2s' node.

10 I2S/PCM_2CH_1 tx High level
11 I2S/PCM_2CH_1 rx High level

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index ac7f69407..79c1dd1fe 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -564,8 +564,8 @@
 		interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru SCLK_I2S1_2CH>, <&cru HCLK_I2S1_2CH>;
 		clock-names = "i2s_clk", "i2s_hclk";
-		dmas = <&dmac1 11>;
-		dma-names = "rx";
+		dmas = <&dmac1 10>, <&dmac1 11>;
+		dma-names = "tx", "rx";
 		resets = <&cru SRST_I2S1_2CH_M>, <&cru SRST_I2S1_2CH_H>;
 		reset-names = "reset-m", "reset-h";
 		status = "disabled";
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
