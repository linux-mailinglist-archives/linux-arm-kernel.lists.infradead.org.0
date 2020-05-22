Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4E61DE65C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 14:10:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iM3Zm8glxE4bblqcaI7r1ZbalC0TuFSR+CpGNulMooc=; b=jtNobghK7dRLJA
	JpY9vpRp2vdvpwwZC4AQblt0vuolp98giPh+qB84GdZPwZxkaXgpZf1meOZ/Pf80rlFUzm8nUswMV
	3zztMBj5FbQT0B2YHG/b2trrJ+70SuCwS/EZ1fwekjOKIVuD/iWX4RM2pskoidSpt7h2wamjD37jV
	BnVUYcLMXxYDAE/evlHq5FTCnhSKwJeNaDPfjO41vXj/LoxXq318ATOQs//yj+hsAyEa3FHNs8pYA
	x5344gGJmcuvAQUpoVpJwdt8HDK6q+Yo3fKxtJP6+vQZnLCVlsb63xnoQruv1bDsMRxdQRjk5zTwC
	1W4X9rRXjxwlAVr8ncTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc6VY-00072o-Cz; Fri, 22 May 2020 12:10:36 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc6Sc-0003SM-Ve
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 12:07:41 +0000
Received: by mail-wr1-x441.google.com with SMTP id g12so8731684wrw.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 05:07:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1qePp19LiRiOBXtccpgQ+eI6GUOhz0auoBWQ11adkXY=;
 b=VhVGCTS4grQt6k3HIErrSSbtbGv1Wb2NV++azMsGdLYYMvxxpy9bDLN55ZLzINOV9k
 FA4B2MGWBaHYAgatvgf2dGYKrGO8xWsZ4QKI9fTkogQYBe2HwRX4p37rG6SYWT43qr9m
 rzKobBuagWzGznsZIFsj05iy4OgSMBAR8TGedQokwHS8EPC5GmcC3wXUr9VaTZVsqePl
 FEcg341dLTGcYR88SzS5d1jPHMbs60ufBgTrfl+nqj5vy+SytnzIR3P34AHGt0pyfmvL
 djl2y9/l9gHpLihRw3dgb1o44HKCoGq741hEmx2t9uXgkpbm6wlqvo9SaJ7s0OIIeCWx
 mAIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1qePp19LiRiOBXtccpgQ+eI6GUOhz0auoBWQ11adkXY=;
 b=dFCEn7HFuveZpFoCxPASHcU1Vdm3u3L1ow46LUxfvQMHD1D2Lev5ZhS6lx//IJxm5Z
 C1HHhJvPtxW8PoMp9QsuSVyY8U8cMavjZKFySHJmN0QZ7sVizSWHtZKgxMtlPZb91MeW
 GWp5YIiDgkR/ZDaSbfSb2Xu3NhDlxejYcvJLlQrLS140F8TjvXdW1VUz8ooK6fXVh1X8
 ejb7wClL83hVhQicjIjOn3BDIcoMmyH82EwONXhOR1qsuwmQprGrvcwdv5JVNkJLQNyE
 doCALt2OcQH1kyV7Vf21E4IgL7wz+MVi/orNwfmXfOaWjteLty0wTanG92EwsIEP7Mg0
 1dlQ==
X-Gm-Message-State: AOAM533qhSb65lD+WSmYZOdm6xo8qhY/XkVy7fJh3mqHtrUzuI5N9Cl6
 yu2ssB6jU+iN6C7mfx2HjNaKhQ==
X-Google-Smtp-Source: ABdhPJzG2w/6WApFpPLpfPz5eZ2F69IZCZdA6mR68/WmlVPBV46pTlpI4dGghrWp/qiA5FGADLqR8Q==
X-Received: by 2002:a5d:4f0d:: with SMTP id c13mr3365938wru.357.1590149253506; 
 Fri, 22 May 2020 05:07:33 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id f128sm9946233wme.1.2020.05.22.05.07.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 05:07:33 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v5 09/11] ARM64: dts: mediatek: add an alias for ethernet0 for
 pumpkin boards
Date: Fri, 22 May 2020 14:06:58 +0200
Message-Id: <20200522120700.838-10-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200522120700.838-1-brgl@bgdev.pl>
References: <20200522120700.838-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_050735_273959_E6963B44 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Add the ethernet0 alias for ethernet so that u-boot can find this node
and fill in the MAC address.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi b/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
index a31093d7142b..97d9b000c37e 100644
--- a/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
+++ b/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
@@ -9,6 +9,7 @@
 / {
 	aliases {
 		serial0 = &uart0;
+		ethernet0 = &ethernet;
 	};
 
 	chosen {
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
