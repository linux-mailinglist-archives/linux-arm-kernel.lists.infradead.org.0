Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 060821C39C4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 14:45:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hIIdYi1hUp0OH0YY6dbSoWhx7ajFPirkeMzlOMk91a4=; b=TcueTJzeY8gVu9
	NNtnQb8sGFfk5FO9zB5DYLDFkq6EucpcaTAfuU+6c6NQ6ewfdcg0nNReobpO40auzzQsBtvksFwH4
	wp54u7SLkACDQAjp/zq2iJXt2H543/1PfKHqnoyilbdTFue7Pob6kIxuwpOOI3uuTNvY4b+JVJHKW
	sLmH92UdnupjFRyDeS0jFF0yWhXWBmMJ/pyyA1JIFt2b9v9X61jhzA1KR6dGVtzYwhyXyV/NaSHj3
	7brEAmY85hZvRV1vs6T+CYub0KjjhxTaeo9V4nzHxRY1ehbnAqbE4boOT077jO5IeTFprzKzoZMy+
	gLQKUY5D2C2CwvOK87/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVaTO-0004j6-Dt; Mon, 04 May 2020 12:45:26 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVaSt-0003Pk-Qz
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 12:44:57 +0000
Received: by mail-pg1-x543.google.com with SMTP id n11so8392173pgl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 05:44:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6xeLFFRxjayddvBRhnid9ILi0KvAvgA9E5JIow98J+k=;
 b=NpY8F90BRltGb4GXWEpu15PIYA39hWgN/vjRE9Ek/b/9GW9wzoD3cKzg1ORQbVdpzg
 efo1I3GN7J7X33UTFoMJ/eu2PsADoTAYvDaOMlTjW8elrMi4BiFGa8nRmECVckYCnT1C
 7KCADcckuDMNWkx0X4b8cBJVDqkY/JjcvnQio=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6xeLFFRxjayddvBRhnid9ILi0KvAvgA9E5JIow98J+k=;
 b=tXec48I2nMRQP9CyjTWu9DK0lSnsK7ZYs0Q3YbLiggjdF69Lf2liNpP3T1jIEX5JXT
 78T3dlKMJhJwjEZ357br9qPnfS1Gl7ZCKKFyffnkwJY6GJICGT5seQ5brGuMepcxsQBa
 fbFskgOFw9307oCLdkfMtwLyo50BZPW8Op9V3YZCYI/1ihkCrsz2uSfhPIg4F7NWaD32
 HoaiLh5Wy7Zwor3uk9LokYDY5tdpQ+VnZsWNhpTCJbDhG47d91eaFtR/DIAgm3/TpKSN
 CKuDBtu34T6nLM/3qSGDRFS7YC5OEyUYQDulN3OtmlcvesEtdgpoozD56o580KRtJqHI
 Mn8A==
X-Gm-Message-State: AGi0PuaNVnDAK1PEtEcUZovC5ucRZyR/vfYh+8AUEZs9Z9L7sXnwNkLQ
 YIyN6/wzLdsmOe97LvENjkz8i6Wn1AD5Qw==
X-Google-Smtp-Source: APiQypIsMuPoACD4kDg+3c6GSsELr2TwlWwMVfHmHQccbvWxqpghPB7vzmBRwg1sRRP95stLAqZs3A==
X-Received: by 2002:a63:1e18:: with SMTP id e24mr16016160pge.296.1588596293785; 
 Mon, 04 May 2020 05:44:53 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id a99sm7154563pje.35.2020.05.04.05.44.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 05:44:53 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: mt8173: fix vcodec-enc clock
Date: Mon,  4 May 2020 20:44:43 +0800
Message-Id: <20200504124442.208004-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_054455_954077_46774A9D 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: gtk_ruiwang <gtk_ruiwang@mediatek.com>, devicetree@vger.kernel.org,
 Yunfei Dong <yunfei.dong@mediatek.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Qianqian Yan <qianqian.yan@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the assigned-clock-parents to higher frequency clock to avoid h264
encode timeout:

[  134.763465] mtk_vpu 10020000.vpu: vpu ipi 4 ack time out !
[  134.769008] [MTK_VCODEC][ERROR][18]: vpu_enc_send_msg() vpu_ipi_send msg_id c002 len 32 fail -5
[  134.777707] [MTK_VCODEC][ERROR][18]: vpu_enc_encode() AP_IPIMSG_ENC_ENCODE 0 fail

venc_sel is the clock used by h264 encoder, and venclt_sel is the clock
used by vp8 encoder. Assign venc_sel to vcodecpll_ck and venclt_sel to
vcodecpll_370p5.

    vcodecpll                         1482000000
       vcodecpll_ck                    494000000
          venc_sel                     494000000
...
       vcodecpll_370p5                 370500000
          venclt_sel                   370500000

Fixes: fbbad0287cec ("arm64: dts: Using standard CCF interface to set vcodec clk")
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8173.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
index a212bf124e81..d0e9a2aada2e 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -1422,8 +1422,8 @@ vcodec_enc: vcodec@18002000 {
 				      "venc_lt_sel";
 			assigned-clocks = <&topckgen CLK_TOP_VENC_SEL>,
 					  <&topckgen CLK_TOP_VENC_LT_SEL>;
-			assigned-clock-parents = <&topckgen CLK_TOP_VENCPLL_D2>,
-						 <&topckgen CLK_TOP_UNIVPLL1_D2>;
+			assigned-clock-parents = <&topckgen CLK_TOP_VCODECPLL>,
+						 <&topckgen CLK_TOP_VCODECPLL_370P5>;
 		};
 
 		jpegdec: jpegdec@18004000 {
-- 
2.26.2.526.g744177e7f7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
