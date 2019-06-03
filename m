Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6156932D23
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 11:48:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I+FKdudwO4HBovZi81DcBh0D16h9ennlJKpGhVvOaaQ=; b=fJsdwVfJBk/rkH
	FB2pzozF8pu8KjZV0TP5oRKO//tuKectItWDzPSXAt6+dyY/Qo0f1ZSyNzRWQdyVcI09BED7ANHoV
	4GAnMD5NcgnkjeFgMtajFSAyZtUW0TM5r01j6SVg7QFmPJ7k2J+5xoyLYGw+98/XunFTud7TzgTqh
	DPPnb0B86wpFxR6Kb2Pp9ypCM6DQnoPIe5AiQNbZ/+F4W0HxEUu9hszU2aNVZ+BXz56xx5NZ8NwU3
	OLAbSeYGFMmwzIcfRlfspX/hyvcx1o0lHOpx41+yOT/TW7MI9hZhDmqQe5ip0+y3aO4P32/vp4O4z
	zWSo16T7PDEVhhLUtaXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXjaG-0000lD-PT; Mon, 03 Jun 2019 09:48:52 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXjZI-0007zp-Tn
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 09:47:55 +0000
Received: by mail-wm1-x341.google.com with SMTP id s3so3111771wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 02:47:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ySITkoSpV5tz/0UidgwrcEdFJZVNdmdPr2B7jtp9jvc=;
 b=NDatLUATUjuiUD4hERuG9znRQfMuTUCAU4ggEVOIBP+FgVSRJt3WZaY0RrGa7Dwvb1
 tPXdCBOtf0m2SVVhC/s51PZUQLWyTn//g+w5QgkbouvAEZZfvo/hYS0Qvxc9mY1N3RDl
 12CLAjcT2rNrEYGTTAfmXLf/b4PMau58fO8Tf1EJrQQRkioz3g1D42ztA9XxEOAFB+W/
 su2WX/nD5EDsKD8vv14foqsrzziZLg0rVZSxVTe2nVknHPJXLy1BppZQLalDKIXavP16
 72N48w4vbmtGK60MSJzcw8yI8w33mpxO9I6dUgQOrevlX7znnciyGipSUQ3j2jUt1vHw
 bNhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ySITkoSpV5tz/0UidgwrcEdFJZVNdmdPr2B7jtp9jvc=;
 b=ol+HHdVGNAnEjuzF6fYgiYNNhR1CRP6ic1RyIzvAyhC8DaiknHzk1kaYA4tFfGhAgo
 88Pg6mYWMt770wVo1+yxLcujijtz2oftEgShUxE6uX6PVyNCXR1CClzxwOXR5YGeY3ns
 4pUiXByLzlLRce41KeAl4lpkKhCP9ubeKvWLY9i7PDqzgQBjHQ4tD2auiebqAx6/BP/z
 Byysj8P7wc1qFumqoLGQEA8pWZ7TnKqOR7qbtfTSUjkd2lFMzI5Np6VNkF6QDHhcnDEN
 c8yZD0+dM8A4Qg1HuKSGG23/1EJKnIZBWnvfgqUlTjR58J6oCkozLP4jbGVyJDj+rcsI
 tUJA==
X-Gm-Message-State: APjAAAXnE8zevBNYrcEER/To/s0UStUYSKJxJOE9EsP/VHZwAsvIkB7T
 yNCvKRgfDvPu/5bUI2npwHgVvw==
X-Google-Smtp-Source: APXvYqyFQyOwq3NatVmnOTvLBdiP1Y15tNjKDOOA5BlWh3lX91HYLp+dMM229VRYhDYAQ5xrcfOheQ==
X-Received: by 2002:a1c:b046:: with SMTP id z67mr1498018wme.49.1559555271273; 
 Mon, 03 Jun 2019 02:47:51 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id z14sm11235375wrh.86.2019.06.03.02.47.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 03 Jun 2019 02:47:50 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 4/4] arm64: dts: meson-g12a-x96-max: bump bluetooth bus speed
 to 2Mbaud/s
Date: Mon,  3 Jun 2019 11:47:40 +0200
Message-Id: <20190603094740.12255-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190603094740.12255-1-narmstrong@baylibre.com>
References: <20190603094740.12255-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_024753_305499_F3DCE6B2 
X-CRM114-Status: GOOD (  11.40  )
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Setting to 2Mbaud/s is the nominal bus speed for common usages.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
index aa9da5de5c2d..300c29dad49f 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
@@ -206,6 +206,7 @@
 	bluetooth {
 		compatible = "brcm,bcm43438-bt";
 		shutdown-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
+		max-speed = <2000000>;
 		clocks = <&wifi32k>;
 		clock-names = "lpo";
 	};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
