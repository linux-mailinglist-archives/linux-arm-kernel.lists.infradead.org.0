Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5AEDA5DCE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 00:29:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gk1wx3Z6bGHeups2Q33KieaebtpmqBFLz/C7fIrJCEY=; b=THV
	C+ZJi+ZIHvvuEbrQ9wtFQb9ERh0Bn/UHsGhvmLLjHu7D5WFUXyECGCFtIkaIeIBRBpfKYp+TyeI7r
	WqcP9fMoixbqJcDukYu8BBRY7W/Ler2S41nNBI6QSJzsw7Uv2c47PA2WrcHrlksg/ccJq7cZVGRq3
	TUthFziRCBrouUHL6Kfn78DFAJWfu0kJgT3BfyED50TxVaJQURa8Pv4UTkii1skZCy0zm2DPn4Ny/
	mqvl2t9vqXgcIf1sz/Kvrz5a01ly/x4BICOQEtWmvJGL4W7pyAhMWl/kYBagLCSnb3TlH6Ya8E5KZ
	r9kG+Xrd6mMADU4fZT4w7LyIx0ffjIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4upN-00026s-8I; Mon, 02 Sep 2019 22:29:37 +0000
Received: from mx3.ucr.edu ([138.23.248.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4upC-00025w-G3
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 22:29:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=ucr.edu; i=@ucr.edu; q=dns/txt; s=selector3;
 t=1567463366; x=1598999366;
 h=from:to:cc:subject:date:message-id;
 bh=/rnNmkN0lJmNstKoEYq0s/CsngFGzgDjTMCLUiqUAgQ=;
 b=ZSd9eUTmXbV9oARlZXyBlSCelDakieVweLAlvVJa+oQnHmFpFxyz/IZW
 5sSV7KPtdsacpdUjc4f6BDy4CuLPlRKVmCQVfGeAJugonJ3+uS1AcJlfI
 q8PNE+PrryK2v9ump8QQwKRjKiQtHgbAsZQF3WPvoIr9eKFHVYmPHzs/d
 O0oDRBva6Xj4OdzLFVRE/JXoqLWS6Af2ntqIvfgvnM64+KbVLUeMXcZl3
 PG4lEJLfH8QEpXI8tsNzx1guFwLjsi/Quf7GAeSwePhGOrNo3IH4Zv0zx
 gi5ky30W1LfU6oaC9YGkmXkfjyx5EZXfBZMY9H98oPeRFktbPs5X0/lpi A==;
IronPort-SDR: w2yT8C4WF33g96PZimMu+V+3Fvrm0bJ7L8RsZIROMkjaJxnb5TnAFbdaLESx8LnkGmqZ7A8e7I
 MiFPoK1osn3KiY11wNx4MTCvBuB92jegiFuD+3Osv/TXMatgCWkbYgci5wAIq/PTTw6EOKTrNG
 eR4KBHo4l2gzMr0NALlK+/HJzR1E6gJnNVLuLAHxCcQiKQIolmwQknXLKc/iT5YpoUklCnM8tw
 9j3pCIDKHkkuc7PSbIadcsGZiA05EEhTWuh8W5Xcy0n+Hr41al9PUDn+6isVmEPRSWfCegYZCA
 liM=
IronPort-PHdr: =?us-ascii?q?9a23=3A28+91B2KIzFZmoSysmDT+DRfVm0co7zxezQtwd?=
 =?us-ascii?q?8ZseIXKvad9pjvdHbS+e9qxAeQG9mCsbQd1LOd6/CocFdDyK7JiGoFfp1IWk?=
 =?us-ascii?q?1NouQttCtkPvS4D1bmJuXhdS0wEZcKflZk+3amLRodQ56mNBXdrXKo8DEdBA?=
 =?us-ascii?q?j0OxZrKeTpAI7SiNm82/yv95HJbAhEmSSxbalvIBi0sAndudUajIh/Iast1x?=
 =?us-ascii?q?XFpWdFdf5Lzm1yP1KTmBj85sa0/JF99ilbpuws+c1dX6jkZqo0VbNXAigoPG?=
 =?us-ascii?q?Az/83rqALMTRCT6XsGU2UZiQRHDg7Y5xznRJjxsy/6tu1g2CmGOMD9UL45VS?=
 =?us-ascii?q?i+46ptVRTlkzkMOSIn/27Li8xwlKNbrwynpxxj2I7ffYWZOONjcq/BYd8WQG?=
 =?us-ascii?q?xMXsNQVyxaGYO8bo0PD+UcNuhGtof2ulUOrRqgCgmoGezk1ztEi3Hq0aE/1e?=
 =?us-ascii?q?kqDAPI0xE6H98WsHrassj7OqkRX+6y16TE0SnPYulK1Trn9ITEbhYsquyMU7?=
 =?us-ascii?q?JqdsrRzFEiGAHEjlSRqYzlIjSV3fkKvmmb7utgVfigi287pw1trDWi3doshZ?=
 =?us-ascii?q?XTho4P1F/L6Dh5zZ8zKNalS0B7ecapHIVMuyyeLYd7QcMvT3t2tConxbAKo4?=
 =?us-ascii?q?O3cSwIxZg/2hLSaviKf5KW7h/tVOudOyl0iXN/dL+9iBu/91WrxPfmWcmuyl?=
 =?us-ascii?q?lKqzJIktzLtn8QyRPe8tOHSv5h/ke53jaPyhzT5vlEIU8qkarbLIYswrsqmZ?=
 =?us-ascii?q?oStUTPBzf2mEHrgKOPeEUo5+yl5ub9brXpoZ+cMIB0igXgPag0hsO/BuE4Ph?=
 =?us-ascii?q?APX2id5+u8yKXu8VPlTLhOlPE7kanUvIrEKcgGqaO1GRJZ34Ih5hqnCjepyt?=
 =?us-ascii?q?UYnX0JLFJffxKHipDkOlHPIfD4F/i/gkignCtlyv3dI73uHo/NImLdn7j8YL?=
 =?us-ascii?q?Zx81RcxxYrzdBD+5JUDakMIPbyWk/3qdzZAQY1PBauw+biEdl91Z0RWXiJAq?=
 =?us-ascii?q?CHNKPfqluI5uM0I+mQf48Zojf9K/4r5/70l3A2hEEScrO00pcNb3C4BPtmcA?=
 =?us-ascii?q?23e33p1+YAA2cXuUJqXf7qgVzaCWV7en2oGa8w+2doW8qdEY7fS9X10/S61y?=
 =?us-ascii?q?ChE8gTOThL?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2HYAABklm1dhsXWVdFlHQEBBQEHBQG?=
 =?us-ascii?q?BVQYBCwGDV0wQjR2GEFEBAQaLOHGFeoMJhSSBewEIAQEBDAEBLQIBAYQ/gm8?=
 =?us-ascii?q?jNgcOAgMIAQEFAQEBAQEGBAEBAhABAQEICwsIKYVBgjopgmALFmeBFQEFATU?=
 =?us-ascii?q?iOYJHAYF2FJ1ugQM8jFaIbgEIDIFJCQEIgSIBhx6EWYEQgQeEYYQNg1aCRAS?=
 =?us-ascii?q?BLgEBAY1EhxaWDQEGAoINFIFzklwngjOBf4kbOYpfAS2mEgIKBwYPIYE2AYI?=
 =?us-ascii?q?JTSWBbAqBRIJODgkVji0gM4EIjCqCVAE?=
X-IPAS-Result: =?us-ascii?q?A2HYAABklm1dhsXWVdFlHQEBBQEHBQGBVQYBCwGDV0wQj?=
 =?us-ascii?q?R2GEFEBAQaLOHGFeoMJhSSBewEIAQEBDAEBLQIBAYQ/gm8jNgcOAgMIAQEFA?=
 =?us-ascii?q?QEBAQEGBAEBAhABAQEICwsIKYVBgjopgmALFmeBFQEFATUiOYJHAYF2FJ1ug?=
 =?us-ascii?q?QM8jFaIbgEIDIFJCQEIgSIBhx6EWYEQgQeEYYQNg1aCRASBLgEBAY1EhxaWD?=
 =?us-ascii?q?QEGAoINFIFzklwngjOBf4kbOYpfAS2mEgIKBwYPIYE2AYIJTSWBbAqBRIJOD?=
 =?us-ascii?q?gkVji0gM4EIjCqCVAE?=
X-IronPort-AV: E=Sophos;i="5.64,460,1559545200"; d="scan'208";a="78452449"
Received: from mail-pl1-f197.google.com ([209.85.214.197])
 by smtp3.ucr.edu with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2019 15:29:14 -0700
Received: by mail-pl1-f197.google.com with SMTP id t2so8596566plq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 15:29:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=qIiiW+T1UhAkks5lNklqLuvddm5DVfrBC5xScbkb+w4=;
 b=K0FeuOcYmsFKoc2fDRjnpSoubgGygMrQjRrziXMttNfTnbrGKt1V1Xfa1QJGOFPxjc
 TJo30EXTr9wCa6paykPQ2NHk4B0G0E0SubxC9dXem3844k81ANQ8ih6GGdNi48WnmytA
 bIeKNZqnjgAtkrEInFipV6NfTH/BKdTWUsvHT7IXNoE1fBKVJAynG+FMvUixhwtsLrMl
 M6je9wfMOOrzpjMll1O34E8L23yt0omEnQgh2tesfwO50T9perO/RKlD5PkzDL+1XGgO
 beG2AnP42ZJhxTWVODtLuB0pYChgHazjYZfG2t22J0iUE5f1Q4uDvcRxe2crSdKCAjML
 t1OA==
X-Gm-Message-State: APjAAAU2SzWF3LvPVTqSh/gCNmv2Tn2VBYYqGji6jrt+3X25ob0qUy4i
 OMWOJRlICWnimoz04G2kEPA80LcAEJQrlBarRd2IzvGhpHudrBXXJJfHqLWbpV2PSZZOvmxB1e5
 ZJ6WmCalEXJjHILH7lesWjCzOH5g6/mSpCzN4
X-Received: by 2002:a63:ee0c:: with SMTP id e12mr27852088pgi.184.1567463353517; 
 Mon, 02 Sep 2019 15:29:13 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxwUg5ETbmFWe2jD2Z1F51cpIZCZAiQ7rBmqE0CCRmJNv6W5/YKEkY9iPwuX9+S2MB1lyVWcg==
X-Received: by 2002:a63:ee0c:: with SMTP id e12mr27852065pgi.184.1567463353277; 
 Mon, 02 Sep 2019 15:29:13 -0700 (PDT)
Received: from Yizhuo.cs.ucr.edu (yizhuo.cs.ucr.edu. [169.235.26.74])
 by smtp.googlemail.com with ESMTPSA id z23sm5681733pgi.78.2019.09.02.15.29.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 15:29:12 -0700 (PDT)
From: Yizhuo <yzhai003@ucr.edu>
To: 
Subject: [PATCH] clocksource: atmel-st: Variable sr in
 at91rm9200_timer_interrupt() could be uninitialized
Date: Mon,  2 Sep 2019 15:29:46 -0700
Message-Id: <20190902222946.20548-1-yzhai003@ucr.edu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_152926_567371_3761246E 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [138.23.248.64 listed in list.dnswl.org]
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
Cc: csong@cs.ucr.edu, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, zhiyunq@cs.ucr.edu,
 linux-kernel@vger.kernel.org, Yizhuo <yzhai003@ucr.edu>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Inside function at91rm9200_timer_interrupt(), variable sr could
be uninitialized if regmap_read() fails. However, sr is used
to decide the control flow later in the if statement, which is
potentially unsafe. We could check the return value of
regmap_read() and print an error here.

Signed-off-by: Yizhuo <yzhai003@ucr.edu>
---
 drivers/clocksource/timer-atmel-st.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/clocksource/timer-atmel-st.c b/drivers/clocksource/timer-atmel-st.c
index ab0aabfae5f0..061a3f27847e 100644
--- a/drivers/clocksource/timer-atmel-st.c
+++ b/drivers/clocksource/timer-atmel-st.c
@@ -48,8 +48,14 @@ static inline unsigned long read_CRTR(void)
 static irqreturn_t at91rm9200_timer_interrupt(int irq, void *dev_id)
 {
 	u32 sr;
+	int ret;
+
+	ret = regmap_read(regmap_st, AT91_ST_SR, &sr);
+	if (ret) {
+		pr_err("Fail to read AT91_ST_SR.\n");
+		return ret;
+	}
 
-	regmap_read(regmap_st, AT91_ST_SR, &sr);
 	sr &= irqmask;
 
 	/*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
