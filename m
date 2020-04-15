Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94DA41A99C5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 11:59:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5aKONy6M1UxLbjaNqoWewsnixoV9546QLtPaKXBU0fE=; b=ae7
	V2c1aKQ60+RrbkNhcka1eild3cHSK+9zeheaXADIKfCt9j3zPdjhe5qUIVFfzEzY/lsvxigkbfhUy
	2NuDdqDitrgl9Jf8vazCU074Jk3OS4qLKFvP1OBsHThegtvDC8mSxit8qFCjjOK8lRoZNTfybSE4L
	+mXsWMhT2a/3ImlkYpbeCFpM09DHJ2pM16Xv2SDrSePxeyK01hTZxWPZNzZu2ohJk0iwfUerKAOva
	ktvO0FOGulflH6pVHFYAFyeeKN0hPzEphin1imoraW5w9jY14GXMGF3Qr/aA6LbUjRrLmFG1pNiI6
	eDplZINfrGheCSzewV9F6Xbc+lIs9vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOepd-0007a7-Ug; Wed, 15 Apr 2020 09:59:45 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOepU-0007Xn-Du; Wed, 15 Apr 2020 09:59:37 +0000
Received: by mail-lf1-x143.google.com with SMTP id r17so2166085lff.2;
 Wed, 15 Apr 2020 02:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=63vRFQmPky+5Sun2Opkz9FUwUHHMbnn+8rcnJyfbXrg=;
 b=O+a6HRSYtexYUcRf2vogJPvF/gD1KELnuZj6kV7IzsLHhvD1ryxo8ZXyhMxj9oja2I
 T3mKdn9yFI5+RKfmhbvG/nbjMxrVSpPhpXgZJAboj11pvYuLsGQSReYdnaLgOCHE6G70
 bM789lHrYlz91lpKf5MMGdPttYhx6aCoBWj482d6qI2D++FdHz0GPAOhRJOhGqw84OjZ
 GL+AOHaLE9BipLjl54B36Jn9AdGtgJE0TeS6xZnq3WKfUPqz+/Me09yAa5zw2gjZIE5s
 2Dw/JWCO54aVJPPX7f6DTt9e3njJ9IJIkxbexcOSKvXRgIdiO6mFVGSiO6BvJNNAfsKe
 1IXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=63vRFQmPky+5Sun2Opkz9FUwUHHMbnn+8rcnJyfbXrg=;
 b=U4ttXR/SJRt4BSbmtmDcGkBMRW/zDd4t/xojrtdrvFrMFCAJ3v7v0x82nOB2q5osp9
 F22nmoG7wTaXvR/onwB8/jCh0yWlsLxDrZfYOcyhrZOtKJNeO0B2p5NYUIPuqnYdSaGX
 B3zFJgE/ymkiJ3KbkG902Z4kC/zAScverm72dlK2xWNyY5SkcDQ1gDMkZEVwcreAaMll
 HGmi9V6zPfPnFEOwcfDcFCBJUz2wGIup7jT+TjKmjYCFTWaEnmK14zfmTzrcwmsBLe3W
 I/bXjZVL79E342ipdSlTpebNc9XYBVdbR/JyUBurzQLDJ4/oJjThqXNBGtbprZpM6d/D
 nPwA==
X-Gm-Message-State: AGi0PubBrCsDUZuC+UM0EmF1eZJPhg5srRKPNEdHuRQru78uzYJ7Upz1
 7grNXNl00DVUVif0VXL4DTtBE7yX
X-Google-Smtp-Source: APiQypKvCI1atszqVmdui44gkRzNjRuvl0XeDay9w1RcX0HQfX4ZxaC9Ip6qE2cjuqz9J8NIMZa19g==
X-Received: by 2002:a05:6512:304e:: with SMTP id
 b14mr2479583lfb.119.1586944773169; 
 Wed, 15 Apr 2020 02:59:33 -0700 (PDT)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id m13sm12290424lfk.12.2020.04.15.02.59.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 02:59:32 -0700 (PDT)
From: chewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: meson-g12b-khadas-vim3: fix missing frddr_a node
Date: Wed, 15 Apr 2020 09:59:27 +0000
Message-Id: <20200415095927.3780-1-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_025936_497746_4014DAF4 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Christian Hewitt <christianshewitt@gmail.com>

The frddr_a node was accidently deleted when creating a common dtsi for the
Khadas VIM3/VIM3L boards, preventing audio from working on the VIM3.

Fixes: 4f26cc1c96c9 ("arm64: dts: khadas-vim3: move common nodes into meson-khadas-vim3.dtsi")
Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
index c33e85fbdaba..c6c8caed8327 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
@@ -154,6 +154,10 @@
 	clock-latency = <50000>;
 };
 
+&frddr_a {
+	status = "okay";
+};
+
 &frddr_b {
 	status = "okay";
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
