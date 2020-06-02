Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B861EC114
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 19:37:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kLbTjsvZaEmH3GwIeJvwSiLd72wCym3BhsAjN5iO49M=; b=k+7B01xeNEFxKuPD739BWrxoBL
	JimooGf2RdfVmv0nKt2xGiUz6k707EQHg0b2HPyYmh4ROnACP6bQK6BHgURcCVJ4qTXxApzddULxx
	zu0mYGYCmWXVVP4y/tCu2Ly+DeN5wLSrQOjN1/pfbaG+MRr+YrIDv7GJucIDFkyfAlvq1oE/tsKts
	rQbUn/8jPo11YA3XR+VN/n6X8QSKRNn7ynwa1sbena+Dbo8jQnsFO42NDCzyY8+118alQ24vX1IBY
	9F9bUsu9R+OEGV4g9K5UB9eTm3vhZ6WmOYAEv8epgavsQpFZeqyKO7q4oerjavmhI0zg9Ez8/m5QB
	1P3Gzkgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgAql-0002Ku-52; Tue, 02 Jun 2020 17:37:19 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgAqf-0002KS-5J; Tue, 02 Jun 2020 17:37:14 +0000
Received: by mail-pl1-x642.google.com with SMTP id x11so1622602plv.9;
 Tue, 02 Jun 2020 10:37:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=yC3b8DT3Kq2HwvI7o7BNmEUaQSfwkzDaER9EH5kkdq0=;
 b=Yviw9z295zj5fjLl2vUlLMAJzpUBdI6yODgLo71V+gnRWdy/HAfOku+4RRGF+yzmqK
 t+au//KmqSyun3jNCn8vCEmKZNdAFWTJftT893d+nbe9PjQ8sJDXaTHzCZ/jv3Wa/7/Y
 QigrSViYpDIh7VAmvvZTyDug+wYeFeI+s7pGmAbiZpsKOOY1z3i1+6IG3saPoQPuQW8L
 PRHyMDST7Kx8Ek98ZFeCdl8Ojb5DhgTobkvM0vWcFMfafJCDpPpjqhzsc+N/z6iB08FZ
 DSJW5bxNzFbXaXqd0LKkWoaLxpbP935w0N9J0lqkRULyFI9st4ghdJYOiCX90M0LelV8
 k1lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=yC3b8DT3Kq2HwvI7o7BNmEUaQSfwkzDaER9EH5kkdq0=;
 b=l9xQkgqvTjjmw8aSVCnWIqlG626eszVV+hoB/Njjx1w+zCMmLJUdo+oyhYZVlb1vtP
 y2FcBcUkkcmqqrRV18t9F/9VwmYJpzAdQebp8qG+0icKc3VFqVu5YJTArJj2NVPSj5sG
 HqW124n99ByLS3iPFrbZ7WjvzC/FFE2WUuWeF1ikZJqwkPznVkeyljVzypI/vAX1nh46
 8wclER0zMGFJsEBzNsowIsmxF6At4aOoetHd/JA4MYdC+MepEBqGP1RPyQHGrzZ8Gufw
 Uh9r4SlekSxEn5BGXVpIuRQr/mTbE+Bnaa72XwM9LVNmGnv1VGXjTe3EI0INjDYTNDq7
 BRXQ==
X-Gm-Message-State: AOAM531BUIGaYgn7778AO4OUGT5egSL4Olm1L+sY06e8T9rizSvywXxX
 np6sKiUjBazrrKF+A2D/EHc=
X-Google-Smtp-Source: ABdhPJz/gwr+d9DNnYFiNawK6YhfZFHEyC8/iMMp5w+Vh1TRDaGaZmArZRTSZkbx1AZrUmItAtFU5g==
X-Received: by 2002:a17:902:aa48:: with SMTP id
 c8mr17901684plr.128.1591119432420; 
 Tue, 02 Jun 2020 10:37:12 -0700 (PDT)
Received: from localhost.localdomain ([223.235.152.125])
 by smtp.gmail.com with ESMTPSA id i22sm2864382pfo.92.2020.06.02.10.36.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jun 2020 10:37:11 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 robh+dt@kernel.org
Subject: [PATCH v3 04/10] arm64: dts: actions: limit address range for pinctrl
 node
Date: Tue,  2 Jun 2020 23:03:06 +0530
Message-Id: <1591119192-18538-5-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591119192-18538-1-git-send-email-amittomer25@gmail.com>
References: <1591119192-18538-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_103713_201263_35DCD8F8 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 cristian.ciocaltea@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

After commit 7cdf8446ed1d ("arm64: dts: actions: Add pinctrl node for
Actions Semi S700") following error has been observed while booting
Linux on Cubieboard7-lite(based on S700 SoC).

[    0.257415] pinctrl-s700 e01b0000.pinctrl: can't request region for
resource [mem 0xe01b0000-0xe01b0fff]
[    0.266902] pinctrl-s700: probe of e01b0000.pinctrl failed with error -16

This is due to the fact that memory range for "sps" power domain controller
clashes with pinctrl.

One way to fix it, is to limit pinctrl address range which is safe
to do as current pinctrl driver uses address range only up to 0x100.

This commit limits the pinctrl address range to 0x100 so that it doesn't
conflict with sps range.

Fixes: 7cdf8446ed1d ("arm64: dts: actions: Add pinctrl node for Actions
Semi S700")

Suggested-by: Andre Przywara <andre.przywara@arm.com>
Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
Changes since v2:
	* this is no more don't merge and fixed
	  the broken S700 boot by limiting pinctrl
	  address range.
	* Modified the subject to reflect the changes.
Changes since v1:
        * No change.
Changes since RFC:
        * kept as do not merge.
---
 arch/arm64/boot/dts/actions/s700.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/actions/s700.dtsi b/arch/arm64/boot/dts/actions/s700.dtsi
index 2006ad5424fa..f8eb72bb4125 100644
--- a/arch/arm64/boot/dts/actions/s700.dtsi
+++ b/arch/arm64/boot/dts/actions/s700.dtsi
@@ -231,7 +231,7 @@
 
 		pinctrl: pinctrl@e01b0000 {
 			compatible = "actions,s700-pinctrl";
-			reg = <0x0 0xe01b0000 0x0 0x1000>;
+			reg = <0x0 0xe01b0000 0x0 0x100>;
 			clocks = <&cmu CLK_GPIO>;
 			gpio-controller;
 			gpio-ranges = <&pinctrl 0 0 136>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
