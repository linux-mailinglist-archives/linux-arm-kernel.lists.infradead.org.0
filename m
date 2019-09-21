Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFC6B9E79
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Sep 2019 17:14:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vvyKvEAjT6wIIWlHYNjRy57yHG7WA8kSzyCRFkI/RuA=; b=h0u8yleMtU1q7o
	ynwcgOU9dgXS47tE2TT2450ZCAnyF0es0TJayfNitG+mTpfaSop7c+oDikIMXu4b3Vddd0988osKk
	5L/DEzKmKWLv5+IEk0e/Rj+EE7jnYifG6c884Sj9lKrfAug25cvMeTvCveEfcWDZmvXa8TBfFHtpJ
	HVuadXkcMGOojZpJFix1rO3KhUWLWJkP/rzweh++pEB12/BwiSwPkaLZgAejSDBkf8rTNJC/XugmI
	mb0CVAgn59oWPECbhrYtuzARnNGXBC7tf7d7OCmf4EqoaE7CgT7gnK6n8rUgAkUi1uKwU1kJRjhkE
	2TEen80zcoALrL35VWdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBh5h-0008JI-Cu; Sat, 21 Sep 2019 15:14:29 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBh46-00079a-SV; Sat, 21 Sep 2019 15:12:52 +0000
Received: by mail-wm1-x343.google.com with SMTP id b24so4912094wmj.5;
 Sat, 21 Sep 2019 08:12:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=g3g3V03D6DkRYbYZABMPMLQMCrNMpOQBXxgsvwVk66Y=;
 b=b0kfoR7HMIpmuiYPIzNdtQLx3b8uneVrYYQ+dwHeZiDpi5mt5Spb2BSDtFU3KWKmCx
 +u1uR/rfNujS2PO/A7PdN+r11lDxBjnESvNNS/dmarQN/UssD/3LVpv+Zu9gIMvAVK/q
 kZbRPxGwZvNQAQXQ+twwkL48AU9/uucjb95D+t6jxIpWaaXo4ye0zqMEcbv3dzFUgnS9
 vc9/vEbudhmHO3DOO0tBvjih385+ZFtD3FNE356fvdFXkge7WPluqmIKDEFYE1w0RGXf
 g48+nPKSQhGJKWpCYBCWWr3YFT8kctrGp0e8gNqV6haE7dGgBEushMGaShSexyqtirIo
 ucfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=g3g3V03D6DkRYbYZABMPMLQMCrNMpOQBXxgsvwVk66Y=;
 b=jPWestq6Dt8ao4Sup62hKAK1PL3+Ml3i/ESY5vydBL0U2ZiXVCgztkqyHBYL5ICYoC
 UhE2vLCF77vuzbEG+AOozzKqJs6PmFRuXrfztBBafz0yT/IymYz8koGN98fsNiIvW5ib
 U0AekmmJxz5wUEg7yZViAo8wbasK8PSgtb/KgSU7QzZuTw6jyhhIcNt8NQuqG3Buy0pR
 rT1hjEn4ZHlfMGsL46EWOS7x+ZplJorutz/aktzVB8VFkfrJm3NHYR9ZDHSebr9TYhbF
 QN32ConW3B0VdPCHVG67gqjCnWx8eAf4OoEWeLhBemFvAtOkQGCgfALsbIh+JDMvInHN
 wDkg==
X-Gm-Message-State: APjAAAUSvTjcPD1t0yOch/XbaUnxbEK45BVg0to1fuRG0eiQ4A9KJIsW
 q9Jkg+o5YWNVHJ0jN95bhzk=
X-Google-Smtp-Source: APXvYqz6hlOksjMhBKLSwZPGPxQ6oqEOuX/QaQonH+2wP07T3D3DBw9L4AZNYrqyscJFSb74nmb3Xg==
X-Received: by 2002:a05:600c:389:: with SMTP id
 w9mr7047507wmd.139.1569078769146; 
 Sat, 21 Sep 2019 08:12:49 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133CE0B0028BAA8C744A6F562.dip0.t-ipconnect.de.
 [2003:f1:33ce:b00:28ba:a8c7:44a6:f562])
 by smtp.googlemail.com with ESMTPSA id
 y186sm10712491wmb.41.2019.09.21.08.12.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Sep 2019 08:12:48 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: narmstrong@baylibre.com, jbrunet@baylibre.com, robh+dt@kernel.org,
 mark.rutland@arm.com, linux-amlogic@lists.infradead.org,
 devicetree@vger.kernel.org, khilman@baylibre.com
Subject: [PATCH 4/5] clk: meson: meson8b: don't register the XTAL clock when
 provided via OF
Date: Sat, 21 Sep 2019 17:12:22 +0200
Message-Id: <20190921151223.768842-5-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190921151223.768842-1-martin.blumenstingl@googlemail.com>
References: <20190921151223.768842-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_081250_956137_6BAB0A53 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The XTAL clock is an actual crystal on the PCB. Thus the meson8b clock
driver should not register the XTAL clock - instead it should be
provided via .dts and then passed to the clock controller.

Skip the registration of the XTAL clock if a parent clock is provided
via OF. Fall back to registering the XTAL clock if this is not the case
to keep support for old .dtbs.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/clk/meson/meson8b.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/meson/meson8b.c b/drivers/clk/meson/meson8b.c
index b785b67baf2b..15ec14fde2a0 100644
--- a/drivers/clk/meson/meson8b.c
+++ b/drivers/clk/meson/meson8b.c
@@ -3682,10 +3682,16 @@ static void __init meson8b_clkc_init_common(struct device_node *np,
 		meson8b_clk_regmaps[i]->map = map;
 
 	/*
-	 * register all clks
-	 * CLKID_UNUSED = 0, so skip it and start with CLKID_XTAL = 1
+	 * always skip CLKID_UNUSED and also skip XTAL if the .dtb provides the
+	 * XTAL clock as input.
 	 */
-	for (i = CLKID_XTAL; i < CLK_NR_CLKS; i++) {
+	if (of_clk_get_parent_count(np))
+		i = CLKID_PLL_FIXED;
+	else
+		i = CLKID_XTAL;
+
+	/* register all clks */
+	for (; i < CLK_NR_CLKS; i++) {
 		/* array might be sparse */
 		if (!clk_hw_onecell_data->hws[i])
 			continue;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
