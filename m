Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9C01D762A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 13:10:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=i7TTMLRfbBYEM6AbcUrSTztJsIkUpNl37e88utGSYBw=; b=Rb1qk6f9AmqtcY3AtFVm/ZP0kf
	aX2SUFPWv7wdS15oDZrQN3NLYVXQg3WTZI08DUBtaN0KN7ftOyXLv+xTfVqtn8QXDDmmDXCmkuovF
	S1rbCjFP/GDOdUFD++u9Nc/kSqEAuIWeU35Jrj7Xj8FU37XjA67hoHI4YfHdLaxq7jb2ZrKlduO+a
	vU+ACmWzuwmtsOTdXVlUV8C8bOhwatYK+mK+Y2jnhqiePLGC2S4pGYy+cfoRJu/SJU4zRzd+vG9YB
	p8L8eBocgwDO9Lb6hzrj5WRvTsquFkTmaQEvEE73KzLGU8vURdlel62p+MAMGJ+CU6A8Bm9HAQ1qR
	6oAfGIVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jadev-0006a1-2C; Mon, 18 May 2020 11:10:13 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jadeO-0006Ss-Hk
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 11:09:41 +0000
Received: by mail-pj1-x1042.google.com with SMTP id a5so4992898pjh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 04:09:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=STuSyGO/SfkcGFSauy0QHw5IqCNUH9D9huZMTiB2y2k=;
 b=dsYJfxLEd6xbVQlENcWPZzU+WfiP29b3NMO5WPeGK9V/39gTQ7A+H7bFPOu4Kv9N1r
 6IDQH14A5+eKS7P5FL0Sq/5SiYYqyMtcIxg2wrkQN4/A17gljEPX0iDZllkLx9w6/bO6
 +TwDy196nfJdIdS9ROL+TE2Jw5nc3tgtYxhQDGvjdo0FciStS01boz11hBGliU01WiC4
 K+KGnpLlMie0QC8MqcgIsvYASooQm1WAdJ7Lso/HjuXkQZCifiOc7i/ODp6kXbNBzdsb
 rzb/jmP35rtmcaRxVvcZah+syxO1XpzSaSwS1ndM7XP2cqA1meMSUDpuTvbSaH3QF2Bf
 fOug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=STuSyGO/SfkcGFSauy0QHw5IqCNUH9D9huZMTiB2y2k=;
 b=Nbg0qcKpjc+p9zTW/pCGdlNOrtAnL4+kpuCaAcyrsIiMxbZ1JGrr2NPY+jwjM8SIGt
 yjSv69VFt9EJw9tmmGmr7dhtggmdJUkYWhoMgTP/k7FQzAljGLqqZT5haZ3pk80oID1J
 E5S4hNPZmfJ+7uDj2sc5erRqBlmAYt/K36vvU3QmMDZ6RVkZlTKRHcQSCW5PogX7wAlA
 hxWhS8jtzsgpP7ok3EJgTiGnQ7q2xqodi3u4eGWRWNU6rRrPg8/t4r9po5aYL7nTX0e6
 CSjpBDE2raXzVFnARoFnWcLjJXJWQ2jzYFquMlwb3vh0xhuWaYRtwVVke3G+pDZWhDC+
 XUDw==
X-Gm-Message-State: AOAM533/I361CdRm16ykFrE97repr+dste9XXi8nsUoenDclpDRzDKD2
 ZiLdOm0QfhlT/ylsIGVMqi8=
X-Google-Smtp-Source: ABdhPJy4R9lorCsfCy2+A+sDPo3PPj1Wk+rtgXPYIIzgip88QiSihh3BtYXToRutgkUN36Ums0zoEQ==
X-Received: by 2002:a17:90a:f098:: with SMTP id
 cn24mr6322869pjb.201.1589800177920; 
 Mon, 18 May 2020 04:09:37 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id a15sm8290630pju.3.2020.05.18.04.09.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 18 May 2020 04:09:37 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, p.zabel@pengutronix.de, mcoquelin.stm32@gmail.com,
 broonie@kernel.org, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
 daniel@ffwll.ch, mturquette@baylibre.com, sboyd@kernel.org
Subject: [PATCH v4 1/8] ARM: dts: stm32: Add dma config for spi5
Date: Mon, 18 May 2020 19:09:18 +0800
Message-Id: <1589800165-3271-2-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589800165-3271-1-git-send-email-dillon.minfei@gmail.com>
References: <1589800165-3271-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_040940_592710_02B307E3 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-spi@vger.kernel.org,
 dillon min <dillon.minfei@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

Enable spi5's dma configuration. for graphics data output to
ilitek ili9341 panel via mipi dbi interface

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 arch/arm/boot/dts/stm32f429.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f429.dtsi b/arch/arm/boot/dts/stm32f429.dtsi
index d777069..5820b11 100644
--- a/arch/arm/boot/dts/stm32f429.dtsi
+++ b/arch/arm/boot/dts/stm32f429.dtsi
@@ -660,6 +660,9 @@
 			reg = <0x40015000 0x400>;
 			interrupts = <85>;
 			clocks = <&rcc 0 STM32F4_APB2_CLOCK(SPI5)>;
+			dmas = <&dma2 3 2 0x400 0x0>,
+				<&dma2 4 2 0x400 0x0>;
+			dma-names = "rx", "tx";
 			status = "disabled";
 		};
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
