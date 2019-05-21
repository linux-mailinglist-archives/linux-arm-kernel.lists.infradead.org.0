Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5348C25AF2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 01:50:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hwcIpC3FebpYlqq4p8VgPgXnzmIKncY187TpPSmeUiw=; b=Px+UfYNareIUFw
	wJPkmr25MY4zyPpZ5E8BwC+UxzXyyJp/vr5zpJlBHcvzbM4t6uoOhSXLr1PwBH8JffEHODayiPHQF
	BenYwwx2WN0GY7gN2OH9P/cbm8FHWsaZZy3NAyJOc30BgOQDieqZIcrTnb42gXnaETw0O2YwMjPTW
	bA7btHCTxeVaYyWV4ULsRHUBru+WryWLSPhhuVmiEA+/lZyyn4nIxSzZbWjCsoVM1ZU6nH6CH8gMY
	iuBho9MkvNMq+t9Q2mxvQg2+XU9iWorTQYdx93xNMZxKiZNrPHWzTHyGTtsMHteno4Obn9HKMQit2
	4hdv/bgQJ9kcEiEFkrCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTEWS-0003xz-6t; Tue, 21 May 2019 23:50:20 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTEWJ-0003wX-Pi
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 23:50:13 +0000
Received: by mail-pf1-x444.google.com with SMTP id z26so273693pfg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 16:50:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7q0PelwL9bKMV8j6fotAmIIGWuu5yPxHabkyZucfWSs=;
 b=PgFRHz9LTKAW06xheSlCgmaBYlHudfTzK+hJD9m+hf4w8jZW0zxEWlzYfdhjW8BoOz
 sDx93ktSy6nK4r9e0Z/eFmV3NlH0dxZppw28/hubD1RTw5WFELEY0B28z0t71MVdkawX
 tofgt+pzOVwVuSxr4zX7Kr3vgG7xf/Uf45AW8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7q0PelwL9bKMV8j6fotAmIIGWuu5yPxHabkyZucfWSs=;
 b=a2tht+WmYkD3fZ/3SAq5+OGr2wCUnkNhN+5vb23j50Li8kmecLRtfiVfiIkdj1uqk/
 qQAfb/AEbnZTUoGNruOOF0EBJmUI6Bnvk9xNS1AMfZgciLCh7m7EH285470+TrEngVGA
 xgSeeae3XKiee9rPf1NOsnKnS8ekkoqz0Kp5g96jZgCHyCICpxfsXLm3GkBS8iq67xz8
 vRJ7FX5ST4vJkQoLCuUeCKADK5T22zrSNYtOyUMvA5vBX3hP3/g2XAWof/MVoyYfSeq4
 TVw0gsnM95p70ERFOe2cOaUH14g7hr8IzyV92GSsT1GyX+qUqYHKIc9DFwXLu8mpc9OD
 KEKQ==
X-Gm-Message-State: APjAAAXLSRDR1Et6y2gXdzQ/BjYY9E8DcskhdxzdT64mr4pPip08oN8f
 dzONtEdM8x6V3mmV8GiSg47Mcw==
X-Google-Smtp-Source: APXvYqyw8kaeTYK/TiQMeIZGSd18nYuR1FaVotEhqU23R+CYW+qg0qbUu1Ce2nBjA7PX/xVkt40Fqw==
X-Received: by 2002:a65:64c9:: with SMTP id t9mr85741782pgv.221.1558482608692; 
 Tue, 21 May 2019 16:50:08 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id 194sm19955605pgd.33.2019.05.21.16.50.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 16:50:08 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] ARM: dts: rockchip: Mark that the rk3288 timer might stop in
 suspend
Date: Tue, 21 May 2019 16:49:33 -0700
Message-Id: <20190521234933.153953-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_165011_860632_40D275B4 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 briannorris@chromium.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Douglas Anderson <dianders@chromium.org>,
 linux-rockchip@lists.infradead.org, mka@chromium.org, ryandcase@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is similar to commit e6186820a745 ("arm64: dts: rockchip: Arch
counter doesn't tick in system suspend").  Specifically on the rk3288
it can be seen that the timer stops ticking in suspend if we end up
running through the "osc_disable" path in rk3288_slp_mode_set().  In
that path the 24 MHz clock will turn off and the timer stops.

To test this, I ran this on a Chrome OS filesystem:
  before=$(date); \
  suspend_stress_test -c1 --suspend_min=30 --suspend_max=31; \
  echo ${before}; date

...and I found that unless I plug in a device that requests USB wakeup
to be active that the two calls to "date" would show that fewer than
30 seconds passed.

NOTE: deep suspend (where the 24 MHz clock gets disabled) isn't
supported yet on upstream Linux so this was tested on a downstream
kernel.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm/boot/dts/rk3288.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 171231a0cd9b..1e5260b556b7 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -231,6 +231,7 @@
 			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
 			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
 		clock-frequency = <24000000>;
+		arm,no-tick-in-suspend;
 	};
 
 	timer: timer@ff810000 {
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
