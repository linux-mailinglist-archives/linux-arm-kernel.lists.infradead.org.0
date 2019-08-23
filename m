Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F35E9A8A4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 09:22:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i/CDLBMPW25M+eO42HidLngOAYzjRzNmnx9DsVfxHic=; b=TrGL0uXg/DvDpR
	knrdx/oMSrWqv854ar8UQC8IRKskVH+0Y7O8was9iZx8lkleNnj/7ZN6QLKTHwU7AN7cIGE1oYlIj
	UL7kGIWVFCiWIrhUQzCBrVQu0s6kGewlp2Li5tzUYREBUo4+okz01dnfGMICJTTxiq8zn6/fbxoUL
	CydRU2NvBhP2/OKjiwEuPRPGGodaPG0q1UEtpcm8E92dPfYJCMLS0aqjuw8gGTUkx/OdGPczPsf9p
	nIhSiQuE3d225jrYYMSp75n8GMgMO8KmN9g+o6OC5ObKKA20s6PwZC3hXgYvardW/Ug/4Ox3SjTBo
	80y1A0OiGUtJICXm9w6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i13tn-0005b2-55; Fri, 23 Aug 2019 07:22:15 +0000
Received: from casper.infradead.org ([85.118.1.10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i13bO-0001Af-Fm
 for linux-arm-kernel@bombadil.infradead.org; Fri, 23 Aug 2019 07:03:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oQGMBKaIheYnXF/WLoo5OGX0tV7WLbdJIx9rXGOlw/k=; b=GzenkpsD4vVLXUCXv6lIRwBQ4W
 3+TRUGkUJffg57UiDQZFUBhGf5JzffyNvB7LZv2XcKfT+8l0x8oIdJ4f893rdNIOT/7egXncrjOqx
 C0ZgdxrchBmd+oVS1vHAnLzdZKASEwSO5Pspo54S0bchLfShXC+fIKqSNEE+8S+VZiEtd0Ao5GQGc
 QpFPrcFR2an6IjXA6yFVXhX1FIFPkggM6IxLNQXMGNpDxRz3BT8JcnbRCVxP1P5XePLY3/j1Q8hJU
 ovlpiHbWIPCHKYecr06ubAbVodBGS/pb/h9wQ94SIr43bquUoecQTC6AOnAVdok2rsWTFUTiVTtgT
 M6UQW90A==;
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i13bY-0001fS-79
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 07:03:26 +0000
Received: by mail-wr1-x444.google.com with SMTP id u16so7631887wrr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 00:03:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oQGMBKaIheYnXF/WLoo5OGX0tV7WLbdJIx9rXGOlw/k=;
 b=mVmbh45be4lh02qKYGB1ppWPUAXqpYSlKJfU62Y7zJ1xdVVEmByScDchKh+pHwEFRb
 5oAhmWgIVQibnTwD9F21vmyPl2JHo+goiEn3kA36QXesSw6b4tQelRGrTJ/mdPn5WGpi
 IazIx87rcse7UykBS/zFCfoQmR174qxqGeYUXDAXhiTkGrGMoOWgB5gHqKWQjh5zczK0
 Tdc3b3WJSAgyvnZlF6SGFhcd7F4KuIj/8otVnrc/SZjAdChl3RB8qgpXP3EUbwQEDUdg
 QlpVdTTr8ADEMzrwyA5MWOkVarTraqRMKR/Y8i1ZDTFGrSbwKSoprGIUh/0e2pmAEtN7
 uCjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oQGMBKaIheYnXF/WLoo5OGX0tV7WLbdJIx9rXGOlw/k=;
 b=aVBSabWiAdjJiXPIeMtmeSL5RVgy0qwlgGBlbxdtIinvHwg7UJaN7CmwJRjH3FqHWV
 6z5bxHuac2YeGNRaPsRn9FffDRvPTeiQPKZyC6fm14mGMG7+VcsSURiUpyrq46muzeR7
 r/DXjOztlHT6If+tAMv200Nwm7KXAKDH3QzH5A2Se/zAZLYqQwZR6tLDGeze4MWirba2
 Jrijo43zxgLaxomK2rTRcfJtGL9ZkNJqyJSh9YrZEwMvWxMgsVFpF863XbYsMHgrnJD+
 uZ5258Z5s/DRfJSTzGqG4PQSvUj48az0EaZJsoGaeWgprD/1GSRhLY6qiQ0OIcPgynOT
 imdw==
X-Gm-Message-State: APjAAAWjmW2MpAFoZ0u6bDmRpHOlC/NDXoHOm6/hQNWawLFcVMRlvPj+
 ZAIko4gxKdL4rMMFttKhmHCHDw==
X-Google-Smtp-Source: APXvYqzwxUVLowuS3xao7n+i7OlRwLWmah+4GSU46RDQCt7NTemeu1LZlIIg7p8uweotJYEbZaHFCA==
X-Received: by 2002:adf:e4c6:: with SMTP id v6mr2982750wrm.315.1566543782721; 
 Fri, 23 Aug 2019 00:03:02 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a26sm1741833wmg.45.2019.08.23.00.03.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 00:03:01 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [RESEND PATCH v2 09/14] arm64: dts: meson-axg: fix MHU compatible
Date: Fri, 23 Aug 2019 09:02:43 +0200
Message-Id: <20190823070248.25832-10-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190823070248.25832-1-narmstrong@baylibre.com>
References: <20190823070248.25832-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_080324_311487_476F6B94 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
index acc2feb8fd89..82919b106010 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
@@ -1118,7 +1118,7 @@
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
