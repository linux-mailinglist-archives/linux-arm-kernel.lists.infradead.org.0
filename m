Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 323201C5818
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:06:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iM3Zm8glxE4bblqcaI7r1ZbalC0TuFSR+CpGNulMooc=; b=EU4OboSIagXonM
	/dDHZcrljGZOrvn45CGXwV0cTpK6JMg2D/URjQNxct/QG3LtpQd4qKVoh2J4IihYnZ//qmcAIrC40
	GF2yO0Zjwpz2HoOOtD5f9OrTpeF9wrsbbF7wXZn+/f3h0QpBbO/kcv3ko2AGHntTqWW78ecvcs3S4
	ULzb4W4yoxVfT6A37YfrcU2696IKGQT/nEeZ8VmsMVz487pBWdEEtQOji99O7WofUcroihnY3SotY
	6wyRQOxTonniBLaLZ74shAi2k+MRjh4xNSuPkqCfskNS0HakAZiJ5n8MyM/t9upqqdKyqXC86vEDb
	RPMYoaPyMDO45CsS9kAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyCr-0007CD-DS; Tue, 05 May 2020 14:05:57 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyAI-0002PO-So
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:03:21 +0000
Received: by mail-wr1-x444.google.com with SMTP id h9so2934812wrt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 07:03:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1qePp19LiRiOBXtccpgQ+eI6GUOhz0auoBWQ11adkXY=;
 b=LQwCci65NzZKH7S/k3KLNL9uDqCmT0NhL3+vr0FbsT08zlA7KCjEKKJA3sZtnf2+C9
 MgO3OOfj1iU8OOWJHAIFg37vsHsbgcG/ty8jsHreNlysA9n/Au6JLGB7Xxv750eTBgT+
 Sl+iLzCZd3APUglRO82tTPfZvQVLMJ3uavNHAqLe/avFh/YZADgXqEMvzVqRopDktCy2
 JBbLkT1YWVum/i0H4xsIcA/O3SnOtyCQ72Fc/9gVx/ow94+06PK5wjuMsmA86t5vb78a
 f1BNH1aOQZ6Kmm6CjzEh853K5kHs/8DpEoorye+0Q8Vxs8MX0SzFaarHH6cmphLUotuV
 jc4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1qePp19LiRiOBXtccpgQ+eI6GUOhz0auoBWQ11adkXY=;
 b=bJYcNCKpGoI3q65gMZI/GYaQlq3dtVTqHmMjnwXHgk+OYpFUd+cZCXJ3/JSKKAr3Jw
 ISmv/mCk5y4cWTQHARy5We5HtAoez1+bFe65OFmE5PNRym44DVkAIsJ1pKdIKeoP3YRu
 KmbQM5ZqpQxz55H7LuP58aHIzqAk0wXFUSrrw5zOsZAGGuSIlyKT/DkBfeTLRh5VTvTF
 3UobvbgUP4NCxzJ5qEwiAkNlXSCkfAtd+gQ0mdXfxkQxLzduZqbWNBREWSX80AkQIXFw
 UIBoUxDqkbWKEV9mPGbuvQE4l/SjrKddH6NJxBxAtypMs7oZFMKcIFkhpEB+F2yrRydB
 s/Cw==
X-Gm-Message-State: AGi0Pub8BTXKOsOmqB3qP9mOEb5nMdxtp+v4258jzWofI7DapTfuIjn6
 o3HpnCoFhutN028lpuZYEapDxRufVms=
X-Google-Smtp-Source: APiQypKqTKjLTaeehBmyF8ZBLt7Ztsq7bEei0OsGAye1X2D3s2hQaZgytBvFg7WpUlAYtX37tEZNHw==
X-Received: by 2002:adf:ab5c:: with SMTP id r28mr3827494wrc.384.1588687396984; 
 Tue, 05 May 2020 07:03:16 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id c190sm4075755wme.4.2020.05.05.07.03.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 07:03:16 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, Felix Fietkau <nbd@openwrt.org>,
 John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Jakub Kicinski <kuba@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 09/11] ARM64: dts: mediatek: add an alias for ethernet0 for
 pumpkin boards
Date: Tue,  5 May 2020 16:02:29 +0200
Message-Id: <20200505140231.16600-10-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200505140231.16600-1-brgl@bgdev.pl>
References: <20200505140231.16600-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_070319_060693_A4BE20FB 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
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
