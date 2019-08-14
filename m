Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 180078D62C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 16:32:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XSKzwyEf6Wa6xMj3EXYJCT85T3VF8p2/fIS0QKFiyvc=; b=i4d81SjVXHouPI
	Ye6+6ngOLq8xPFsc40OQhE90NRJlgzqHHGOjtavc6FuOdgLy4+rWUZfpSxO+g0WeVOl4WVvszfFOF
	+/LfnIcC5/oRP0qViSxg32FnhSotKcCvoQiTO5ROhnkZmjuVBHHtPRYi0WrnL/shU+7v/aOB5vPIp
	Ab66RRI13+yKJxxslfo1IODm5q2n1Nl0voAXHd//B9h2Or4zkNBFtqXnpvjHXDD4LIkiLjCh9YNao
	p/g5znkMWk5wsxPwFigcDcVKnnQzkEmNME2Ram+No6Fd+sItJWwvvsS9ETManHTEJDXIMTeUOJeZF
	JdtCBVF6yf+HMw1HnO4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxuK6-0006Q2-Au; Wed, 14 Aug 2019 14:32:22 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxuHN-0002gd-RU
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 14:29:36 +0000
Received: by mail-wr1-x441.google.com with SMTP id g17so111306701wrr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 07:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yzfWUBTNkEnWlc/VJanAk2xvxB7vKc+KwpDyTNdWOJA=;
 b=p5hiQFsis2UOLe0K/BxWbyG2jH2KpPMoLOyQ6Wnpl2Vf4HynbFCg5JOK+5/OGZOdO6
 TD39yapvQPrIo5Lz59swex+tSvYHaP+IXOznPBSYGjgC63mJoqcgi4iH1UdkV7thNEZE
 m3e0FrJJm7nBZncFEwy4Lg8aIBMBobRWYbpGR37WT+OA2o7el3TwYZDXa7Zd+1wdBtaA
 KVPSw8PCICD5UKZt0KAVH8BiS5cpO0Bo/NJIfDrWou0PbQtp2utaTlithYQkRUgTB62N
 WvGoQgaXXo1C8ShR26EPl1AoPgi6bMliW4KSWvti+mKnVBJc2+/kzU0keu+1D+eU1pCB
 bTOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yzfWUBTNkEnWlc/VJanAk2xvxB7vKc+KwpDyTNdWOJA=;
 b=FLrAv9dEKeCMkdZhgQr8Aq1SeaxekZimNVfxn/FwVDa3CrhcuLLnovIIoE93HtDRVB
 M2/hJSgG+TinuVE88HhxUEck+zYm1/dB+ZWilQKA4Ox31xkN/VNH2njoWHGFiP4/tcKf
 tx8PY8V8xEOzpVq7/f0BZZg7EYNh01OP1s+Fby/uwGDBjLbIy/FaLaH1LYPggiLY5Jqu
 H2sfK5czsrVosxA0eU7BPtf/jMJG5ALhOZAX8x5aGUr/+6Esrs9JKTREpAdsBPI9L5uD
 CBzfEuPWfawEwvnCt10m/4iqWf5RJ+Mh7pDGyLcdMd4o+HBZFvINOV/ZBmZfr6d8WOYk
 BGrw==
X-Gm-Message-State: APjAAAU8OcVeEq3C8RQOYN9CTWeWnAsig+EmDJrknz8NoLPoLk47eFeV
 91TDB63rGUzMlKYEmmap5/STwA==
X-Google-Smtp-Source: APXvYqya2qNpy+swsErluAaX47OA7iL89LWY5IPgQpfrGkRoHlZUInIbqmt2sfzJ+IqY9mAjDKk4uQ==
X-Received: by 2002:adf:e941:: with SMTP id m1mr54057504wrn.279.1565792972051; 
 Wed, 14 Aug 2019 07:29:32 -0700 (PDT)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id o7sm4202908wmc.36.2019.08.14.07.29.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 07:29:31 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 09/14] arm64: dts: meson-axg: fix MHU compatible
Date: Wed, 14 Aug 2019 16:29:13 +0200
Message-Id: <20190814142918.11636-10-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814142918.11636-1-narmstrong@baylibre.com>
References: <20190814142918.11636-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_072934_070947_DC7385D4 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the following DT schemas check errors:
meson-axg-s400.dt.yaml: mailbox@ff63c404: compatible:0: 'amlogic,meson-gx-mhu' is not one of ['amlogic,meson-gxbb-mhu']

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
index 4a134d29491d..ed59a9e8ebb8 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
@@ -1116,7 +1116,7 @@
 		};
 
 		mailbox: mailbox@ff63c404 {
-			compatible = "amlogic,meson-gx-mhu", "amlogic,meson-gxbb-mhu";
+			compatible = "amlogic,meson-gxbb-mhu";
 			reg = <0 0xff63c404 0 0x4c>;
 			interrupts = <GIC_SPI 208 IRQ_TYPE_EDGE_RISING>,
 				     <GIC_SPI 209 IRQ_TYPE_EDGE_RISING>,
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
