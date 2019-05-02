Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A87D8118B5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 14:11:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o3qz2Z5q/5WgRXHaturxPfiAZ6SMqQJhG5K8A1NK410=; b=IzDLAehjqSE+s8
	F27+Oav1z3811h6O5ZjNuRQL3jHKAAXx9n3Oac77sOA+8qWh1kQV+8plJ21aTGQ4VyyDN1+kHBW+i
	DZHhdL6zfYIzyZ5yMAZ9Z2iNWaQJoXP1yLfctgE5FOp+PZBiGUI+TfALup4yJduTFSq5cljaXaQCm
	Af4E7BKjerEQzoKHClqfuS6ypjdSD/3Y0VRZdJAvWgv32ZwPu+rNo59tfjfGKvCTxUN/fA2iywphs
	a078fcjGHGUmFHFCnsE69YBovggxApeVeeI06d+Kuxz57bWVyOFEssry27dfPnv/jtiIlJF/Zg3lw
	u35a7Geum42KSoYhBtpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMAYm-0002LQ-2T; Thu, 02 May 2019 12:11:32 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMAYE-0001m8-7x
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 12:11:01 +0000
Received: by mail-wr1-x441.google.com with SMTP id l2so2996463wrb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 05:10:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WV5PITTv1apIvGOQpl0Oue1rXCYUzZjLQa3jrOACL0k=;
 b=fGFv2mw4iL0cv2bG/GRA7d1X4HgNeWqkFUlKM+Y/IqRoYZkLd0lJQcSAr9hZhYwfJ6
 hOPQ2Lvq9gbk+Sd5w5JijwJEeNRrewo04HsjsjC4UFrKfgiKFa9pYpbbdZ3VFnEkmYtV
 7apA/VD3apl7Qf0l8II8mQYF0IM7z5F7ujT3GPaile4zDTk/anUVf5ndCF1HvidAejb9
 RDNZpwoYffe52dGwv0N9zyhFGxjRfihGe58Cb++wdZZwKD9NW1ztJc36uCy3vE+0uRn5
 tZDcSJcNeWAmC+5W/TabQR/vaJWPWnNCVawCbNyKLSflnfO05LztfL+RP8FkKJh4TDuV
 9hFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WV5PITTv1apIvGOQpl0Oue1rXCYUzZjLQa3jrOACL0k=;
 b=nElS8NNJ2b4ZxpVZP2yCEoTuVL1TVirGQj8H0ELBSlockCfmdlqAjTHEmR6Jq7fLZR
 Dtb4ch1H6eikEFTzsKc1+jW9zcw+wTbpd/7EwCr1Lt0xGky3cAxuRJeMump72Sd2NHUw
 BjDUZAJ/ySfoRDMmXBrT3GgmOxFtlC/UY0b8YFd1e89lUDNDLcF0TNL4EC9xmtcTQUSO
 uTHkddtHjNrs1gLkyWcXcTHwk+QcoHNPXTkeRjI4gQU4ax4BZWGN8jsEwQ+7nZqTEopC
 0/xcuBW0GbM0sLjSqUEez9lmMv9/TRGHErPjKoznkkOQ3T+HGZfmsd6OhlMwujKmlTHS
 Miog==
X-Gm-Message-State: APjAAAUmbaZSpsRyYO9eb7QUy5c0YFuZ2iZfq6eMdzQJMkoqKolPkAz6
 QvElWDFSUOJRnr+T3bVkitvxng==
X-Google-Smtp-Source: APXvYqxHbdw86DQT9DLiLhVUZhwVSNryaz0tC87K271cS45Tz+OjI7rgzVXULNJc92nQD2UrLXWBOQ==
X-Received: by 2002:a5d:5383:: with SMTP id d3mr2573633wrv.105.1556799055563; 
 Thu, 02 May 2019 05:10:55 -0700 (PDT)
Received: from localhost.localdomain
 (aputeaux-684-1-8-187.w90-86.abo.wanadoo.fr. [90.86.125.187])
 by smtp.gmail.com with ESMTPSA id u9sm3648348wmd.14.2019.05.02.05.10.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 05:10:54 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, matthias.bgg@gmail.com, perex@perex.cz,
 tiwai@suse.com, kaichieh.chuang@mediatek.com, shunli.wang@mediatek.com
Subject: [PATCH 2/5] dt-bindings: sound: Add MT8516 AFE PCM bindings
Date: Thu,  2 May 2019 14:10:38 +0200
Message-Id: <20190502121041.8045-3-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190502121041.8045-1-fparent@baylibre.com>
References: <20190502121041.8045-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_051058_280222_DDC2A56C 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add documentation for the bindings of the MT8516 AFE PCM driver.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 .../bindings/sound/mt8516-afe-pcm.txt         | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/mt8516-afe-pcm.txt

diff --git a/Documentation/devicetree/bindings/sound/mt8516-afe-pcm.txt b/Documentation/devicetree/bindings/sound/mt8516-afe-pcm.txt
new file mode 100644
index 000000000000..c5fb3c55a7f4
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/mt8516-afe-pcm.txt
@@ -0,0 +1,28 @@
+Mediatek AFE PCM controller for mt8516
+
+Required properties:
+- compatible:  "mediatek,mt8516-audio"
+- interrupts: should contain AFE interrupt
+- clocks: Must contain an entry for each entry in clock-names
+- clock-names: should have these clock names:
+		"top_pdn_audio",
+		"aud_dac_clk",
+		"aud_dac_predis_clk",
+		"aud_adc_clk";
+
+Example:
+
+
+	afe: mt8516-afe-pcm@11140000  {
+		compatible = "mediatek,mt8516-audio";
+		reg = <0 0x11140000 0 0x1000>;
+		interrupts = <GIC_SPI 120 IRQ_TYPE_LEVEL_LOW>;
+		clocks = <&topckgen CLK_TOP_AUDIO>,
+			 <&audiotop CLK_AUD_DAC>,
+			 <&audiotop CLK_AUD_DAC_PREDIS>,
+			 <&audiotop CLK_AUD_ADC>;
+		clock-names = "top_pdn_audio",
+			      "aud_dac_clk",
+			      "aud_dac_predis_clk",
+			      "aud_adc_clk";
+	};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
