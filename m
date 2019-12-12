Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC19211D067
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 16:00:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=miDoF8agE730pn8MGKDmJb/qw4g6aOPtXKMkn3wG08k=; b=DP17it/DJfxqBlxyCZSCUK7/uC
	+JxyHMM8yCuVVBLuDc3XkQqA90FlFobc+edSCQZiNqZ/3hFYKkxTGDImPQGBfy9SWhxSGKeC1i8MX
	RaBvLoxdhQ1aywo3HkznL5cmkwVbKWgTbCFs+ETVdC47m7yMuklKHUHfhccMGrKfrZUwwT/nwvjQk
	2vC0axi9GPnk/UBJWogbB/ZqpNm5VvG5UfnYcmlR+45kOtVoreqwQ1IxbKa9GKU5oGUb7FnwSTssN
	KxqGbMtkl6zXwssKG0OnrXuZkahioAyURUiXFDXFgJ+3XBlSagP6h2KXSRWdgp8pLpENfWZl64TuX
	sf8HLR+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifPxK-0008Bo-Lp; Thu, 12 Dec 2019 15:00:42 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifPwE-00065J-1k
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 14:59:35 +0000
Received: by mail-wm1-x344.google.com with SMTP id p17so2852523wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 06:59:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=38rJqXHZjcXBB4mvoplhT0cjvb8m/n1ml03uGyFv6p8=;
 b=BAjhFYlBWOTrrPM/C9ckV2izA+EnfWmSdK6mkCEW2UgO0HYqc9UsNUNvlR9dMjSz3d
 JN/hsxtteUqQnVmCQTq47mq1PGsivh5lrl/L9IxXalWCBN+PXyN1IRn2UAAiLCZy38Ib
 QM7JI6e1KmIZiTlPr1iQ9AwNLxdAhXvlMLoh0s918vX8BQa4T0PQZ5BvkTtSn9nkH7KZ
 Gb1uPRkKtyaYYHcrghm7sgUeBUkwrVRz4szHrNowHW4erZxBSSKN3cj3CG2BHxAXBYBG
 FDEIJd0nCGmfF1olDD6WX+uLg16Yr9YeUh7CT1T7ghUV/2KZC9h1gZ+lgpux9niZU7zw
 /+Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=38rJqXHZjcXBB4mvoplhT0cjvb8m/n1ml03uGyFv6p8=;
 b=Xalk5eLXG1uHhy0mOsPCZk5Yi6GGfQSt7MAIOtOp9UFMv4l+Fbtc30KBSJBDdbfXY/
 qgXufoRdu/SIYL3VHhTxRekJ+uO2Pd1ZjK4vR8pOMYanFDYv4NiXjm+ar9l9k0YUS/po
 mkR/3gm18W+fphUs6N2b2acJ4ovpJ9HI3UekmNOKSLQyIQJQOAb5jo0RpZ4568aiuKFe
 cHRKxfZAbYv0hBhMI/zsBbiCz+zYzZuXhsz4NF0XiyR02HsB7EU25zbn/sPfM+KPVATh
 rTY+mJW2hwFymnt3CTSYbCBVkM0hMhMYEEtctM42Rq4w6HRsSdpZNyoreg7QAKA+8VyG
 MXgw==
X-Gm-Message-State: APjAAAUlXJoJIFchLCSsnRbVIofnQ9xEnwqRdMf9L/kpOJz3MjtoeFT3
 Z5n4n8Lmh2Qj579UGaQheTS1fg==
X-Google-Smtp-Source: APXvYqwKa3+rSD2mxWWJuNz1Hup01RbVsGslqsIbH/oJIm8YXhIy9SEHl7lcDD/GNrjJTphnr+Qgdw==
X-Received: by 2002:a7b:c416:: with SMTP id k22mr6750643wmi.10.1576162769121; 
 Thu, 12 Dec 2019 06:59:29 -0800 (PST)
Received: from glaroque-ThinkPad-T480.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id h8sm6670292wrx.63.2019.12.12.06.59.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 06:59:28 -0800 (PST)
From: Guillaume La Roque <glaroque@baylibre.com>
To: narmstrong@baylibre.com, mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
 khilman@baylibre.com, devicetree@vger.kernel.org
Subject: [PATCH 2/3] arm64: dts: meson-g12g12: add syscon phandle in cec node
Date: Thu, 12 Dec 2019 15:59:24 +0100
Message-Id: <20191212145925.32123-3-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191212145925.32123-1-glaroque@baylibre.com>
References: <20191212145925.32123-1-glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_065934_192838_91697720 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

add syscon phandle in cec node to activate wakeup support

Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 7fabc8d9654a..98c6a1d1d035 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -1899,6 +1899,7 @@
 				interrupts = <GIC_SPI 203 IRQ_TYPE_EDGE_RISING>;
 				clocks = <&clkc_AO CLKID_AO_CTS_OSCIN>;
 				clock-names = "oscin";
+				amlogic,ao-sysctrl = <&rti>;
 				status = "disabled";
 			};
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
