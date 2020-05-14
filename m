Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9531D2999
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 10:04:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hho/ltpZv7kKtVnoskEf1ZEKHqjKGdFkF53HiNLs8gA=; b=Tn7KkIQWlwKnPX
	MIcA3nfFmdMKNdQ2tnu9Oip//Ozz8o4yI+PFr66B8vKmlPguQX+/4lnJnGR1lrm6+wianaq/WYDbY
	NuJzBXS35Gsm3AlibkU3RAR8WzSOypfGdIybBM3VYk3oa0wRmFOu7gD2U0iekhKZfJavfpOEFcLf4
	XKiyLycPebiET86F70D5GIFohqEh9rYMxdwBAO8++mMoqUypvi34KxxQ9vQx/X4NtiALWwQAksd1+
	d0sO/XYHCofonQ2hUnP/KtfHC0sEh9aMImngnKFEhjVbYTpIRKVmN/9H2LCiMYcjOBdM5Ji0USxMu
	NeZaKb9Hm9t5on0rSIfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ8qg-0007LD-6z; Thu, 14 May 2020 08:04:10 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ8n0-0003xk-K0
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 08:00:29 +0000
Received: by mail-wr1-x444.google.com with SMTP id i15so2567318wrx.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 01:00:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A3BhZ5w2nZuK3+ZudhXc+00fKQMrXVNQ6trbR5U2M5Y=;
 b=JJCxO3Exc7DnGIwr2iuuQUzDbvfOLbZbgPpv5L3N74cFZsgnyJHeo5Sc60JJTq+MbP
 XwFLwQsDTsS0wGHd4KAwQHWKbM9MwDOMb86EwwIBhrl0F6j84h5tjc2/n3ZabjTtMh9D
 ky3W3TQ+YF5EhKOyDkGQ3o2KIlO7tbPkHLOmpD4Nrk5F1S5+YN1zv+gHWLHEzDcrxu+g
 rabtnGA8f9E8JFjGQkbJ2p0Qn0ZRvcwuKhqf+n5uk9hGMcmu+GqfDrq5yfic4Rk4Cv04
 Tu/m1I679dB1PLq36SC+1yxLv5TcGKGsz+b/f+0RUtSrRVXjYdBuloDHyilE/A1AhdW4
 cHAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A3BhZ5w2nZuK3+ZudhXc+00fKQMrXVNQ6trbR5U2M5Y=;
 b=lVVaEme7r0Kzt33RjhK2DYArOvbBVXdHjpJFpY4NcYNm08OJ7g7YSJoIRScgesm8bP
 ls1sjhpvNRvOkX/K9bAp/KLx6NMbu3uJjw+abFg5KhoIfuPg7t62MKl2GKwz+Pov2ykc
 +oVGbGGytrMkD2SfcgVczOg8pqAVOjV4fJst75ndPBwT4a20xM1yMXJAyPIsEqBW6Xpu
 Zf0s/1utsKDj9TUkkTjepIwVv3oY+Ph+p6wstuJbGrueaNa2PWFxdu7EYVI63+wZMMtC
 yCj5srgDYtqNEtOcS/M66TnKEKoVu2DHScklZQyH0ygsUp1sjBzOOQxORwkhRnWAaMjZ
 CrqQ==
X-Gm-Message-State: AOAM532Gyo+zzMJ1K0/UHR/rQDmg27ALLGByvCWj9luQP4EiMnBehuXN
 z8kKv0ySL0LTnioHWkiYDxFw1w==
X-Google-Smtp-Source: ABdhPJwQsAtFFDpkxmlp3HoBK9HFLKTyKPF/9otGNSorLEiCutYPpPt/Uz19BtSeOpUqWag0enyEZw==
X-Received: by 2002:a5d:400f:: with SMTP id n15mr4090320wrp.419.1589443221364; 
 Thu, 14 May 2020 01:00:21 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id 81sm23337446wme.16.2020.05.14.01.00.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 01:00:20 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Jonathan Corbet <corbet@lwn.net>, Rob Herring <robh+dt@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v3 11/15] ARM64: dts: mediatek: add pericfg syscon to
 mt8516.dtsi
Date: Thu, 14 May 2020 09:59:38 +0200
Message-Id: <20200514075942.10136-12-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200514075942.10136-1-brgl@bgdev.pl>
References: <20200514075942.10136-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_010022_684536_4B120F07 
X-CRM114-Status: GOOD (  11.33  )
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
Cc: devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

This adds support for the PERICFG register range as a syscon. This will
soon be used by the MediaTek Ethernet MAC driver for NIC configuration.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8516.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8516.dtsi b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
index 2f8adf042195..8cedaf74ae86 100644
--- a/arch/arm64/boot/dts/mediatek/mt8516.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
@@ -191,6 +191,11 @@ infracfg: infracfg@10001000 {
 			#clock-cells = <1>;
 		};
 
+		pericfg: pericfg@10003050 {
+			compatible = "mediatek,mt8516-pericfg", "syscon";
+			reg = <0 0x10003050 0 0x1000>;
+		};
+
 		apmixedsys: apmixedsys@10018000 {
 			compatible = "mediatek,mt8516-apmixedsys", "syscon";
 			reg = <0 0x10018000 0 0x710>;
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
