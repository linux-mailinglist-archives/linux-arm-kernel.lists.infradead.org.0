Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D634962AD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 16:42:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Q4h2fB61fXre6uOv4VJgLI62KCed56dyGZgE6JoTJ8=; b=cWS06CT37cRrw7
	CPXjEaHnWv7R55vaJa4g7inQSFhjj0c++uPJZhb0RM6cDkgRwntyeYCBvaNymZMJvtaaeh1BNteo1
	NtM22UGr6lit/nOu45dywwMD86TyKJRNtIxbTA8iQBej+Gs7sEsjyBHsngCYH/uoedIIIfymCMvtm
	fdRegAxPvjcWFLM5UvGlqqaL2Y71JTWWT9XHL9GhBLlcBl0917y2XkjPJ9Qidk7poC8kmLR5/ugKm
	JJzzf6ko9zfUois3aEnMsv5Dkk7D9aqluRr7Ryz+8i50l/waauN19XwxlInuCS7989fPw1sKTqGY8
	lKx5+H5l7I4qJVm3dzwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i05LL-0004bN-2E; Tue, 20 Aug 2019 14:42:39 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i05Jm-0003TL-1v
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 14:41:07 +0000
Received: by mail-wm1-x341.google.com with SMTP id m125so2881956wmm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 07:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9n4vL5AKnXTdEpCX2BHNEpG2Tbnp3//JpmPid0dGPgs=;
 b=tK+RLHY6zUlOOhsKM4rznnfPISNI24hB1YvLotfEWrM86a66y6A2twRdVzvLjA5o9f
 I/XIEzeTDjmV5nILoSjmz5Qsb/tQo3ykPKXnKzwe+Ne/PAWIHztByhdEN1RdgvJBgpn4
 +eqFRwLRneDDaHQM+g1OO5D9m2F+CT+2a8uHnAXC4XvGFfRWtq58SZxiTEAShxfGGCA2
 uoNZSai4xYdpugLLZZ8oaG6RgAlO+Ebfozs9N1mOws7dZqhhbna/3KqhiGxHIEO7dAbz
 MINfNe5FDClZw6BQiJNzBcQgeB7WVsDX99H0cPBaI6SLvAU42TtQ2zrra22jUBq9vQWA
 NfwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9n4vL5AKnXTdEpCX2BHNEpG2Tbnp3//JpmPid0dGPgs=;
 b=CT2ck8ZXK8Tr0g7dAls7ikR0cPmd2lb3dc7eL9mw0nSy40hIGngjlrrqcs8N2vHn/D
 Uquj9vq7wd+VM7aBKWybddeWNMcTHJyKeaFRNTZdiQyocPl7T4G5NmTLP61hMYQcrMSq
 lV9R2UcikSRkYsAeW3hu14/dR+4ID34yuKYwTvFEWoow5G1JYWle88brMlfjN+0K4/pG
 l15c12ds6NN+dqa0Xj3xdF915oCOqIrudToV7kTuw08VJWZDymN9r16nxNbjbSsZaOmg
 7fMieUXHCwzwJ4p7jhhZS4srtWbmuTrfkboVMQjyj8Gz6Rmn70AHi0EQRC9QUOhnMUTz
 lsVg==
X-Gm-Message-State: APjAAAVsyVrmnFjEQ5JkQQd2GLPR1hjKNZAQQwTB7jQyfGEypa72ZVib
 Agv9AHVjj/tYCryUUCI9O84eqQ==
X-Google-Smtp-Source: APXvYqzMgawTTA6xqA+odeNgl1YDT1Da7njoTjpy/er3HfA/XKn/fAVRNydIf3lGgZQmeLbxRI+uNw==
X-Received: by 2002:a1c:4b15:: with SMTP id y21mr351562wma.53.1566312060700;
 Tue, 20 Aug 2019 07:41:00 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a18sm21826750wrt.18.2019.08.20.07.40.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 07:40:59 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 5/6] dt-bindings: arm: amlogic: add SEI Robotics SEI610
 bindings
Date: Tue, 20 Aug 2019 16:40:51 +0200
Message-Id: <20190820144052.18269-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190820144052.18269-1-narmstrong@baylibre.com>
References: <20190820144052.18269-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_074102_099331_AC9DB94B 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the compatible for the Amlogic SM1 Based SEI610 board.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index d701e8447363..b48ea1e4913a 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -152,5 +152,7 @@ properties:
 
       - description: Boards with the Amlogic Meson SM1 S905X3 SoC
         items:
+          - enum:
+              - seirobotics,sei610
           - const: amlogic,sm1
 ...
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
