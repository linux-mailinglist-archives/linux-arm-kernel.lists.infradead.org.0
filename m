Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC04238B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 15:48:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WardDNbAYXMJsnHL6xq7EU+6eMKLxoqNU++C7op0zrs=; b=GjEIjmbFUkLamH
	EXYAZCGb84C+Bz3GyWedXCfHVJYqxza7mi2T0kFXgqgW296u1h+D9jp3ypmhpOXdLIPoK7PuDEfZV
	rUUHT7ohW2wSHrV8JJSpBJxhsq8kL1v99xvRgnG4rvqYAIapMcgVyY0ARrVwjb0cwcWl5KvjgEVLG
	7K0WeHf5ghacAU+fp5ahpTutmkXQz4NQGN4Sv7yc84p0zSa3RWigL0IRxjFLzIO5aTGuLY6INQ7om
	4a2ExbMuyGrkLcs7HW0YQU3ao1O+4/VHet5FvN/PGysHVh4cmZjSBrEXrmeFL2n30z7vV6CJFodK4
	nxCDUDUg/XW5DYjjlCCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSieo-0001gQ-JD; Mon, 20 May 2019 13:48:50 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSieR-0001KZ-4e
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 13:48:29 +0000
Received: by mail-wr1-x443.google.com with SMTP id e15so14708831wrs.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 06:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WgQQkRup1RP/+DNyWfqO+Epqum0KCIs3YroTyrmMm+M=;
 b=ECz4HpcncgSFwRp81ULoGgyzEIf01j7MVMVLUZs5icfIEXRflAb/GdIZWzBcr1afr/
 WM6xeLK2gQpzHdGOjHFjxZoVP8gTIryAKKa6EUxoGNw7r+rXxtAMkPaNkUAzEfWikVh4
 9lGze587fgpcG71LRQ5fv3KjqmA3GizDMCnzJwrHsZ49sUaM33yumda5F1Z9HoR47goe
 3pWjQg9XGdwFRxHhxphQAeKvU8UZfYDiA75fbivygOL7h+iJzzckvEaE7f6Y+kQdtLcq
 pLT015MGQzFCjpLqAN/abu/1p9WpcJbyTEaUZz8tSRRCtpw3ogSH1vxoDjYxasMSBQCV
 +Zsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WgQQkRup1RP/+DNyWfqO+Epqum0KCIs3YroTyrmMm+M=;
 b=g6QkV/lAPpXp61d0n09/orMO0UblHAW96Vydzb3dkkwyRr3RAJMeV/g08oclVVAFIz
 6LYeAj8eFvRu3pv5Ck8pJ/7AqQvHxbLsdRwI5Xe8V/945RS17kiV818MQ7Ls3fjmUM93
 7zaiD4o/VKf9cXwVj1gso+4VK9OlvIvUF62swuX6cqan1T5iUoPwSfiwKDv6VYXMszGN
 Jh0yTiSUH2BU/79urAzvvbrIovYU5wY+Plq2ySVuLGFjiALY/+stdP7FxyJmhzzmjZ2M
 Tp474PgCYEkgWOtZXoCO6jpdwD3ZhmZf9TGJVpD9VEJpDKJ7o/XMFf6rrI5eITQXXsH9
 3U4A==
X-Gm-Message-State: APjAAAU/JAeNTh1gYPeVy5wqTT1OkJlB5zvcE+s+kxtmjOFqcxO70R5K
 O5ERMHych7Yw4JkVOPD0I27H8Q==
X-Google-Smtp-Source: APXvYqz03Oc3TW8sF7k3k7ydP3/3Hz99odDAm9g4tJMrQuAYQOPdZACa3NTVTLiwAg2Y0+KJDpcBug==
X-Received: by 2002:adf:f049:: with SMTP id t9mr25662404wro.17.1558360105562; 
 Mon, 20 May 2019 06:48:25 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id h12sm12091358wre.14.2019.05.20.06.48.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 06:48:24 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 1/3] arm64: dts: meson: g12a: add drive-strength hdmi ddc pins
Date: Mon, 20 May 2019 15:48:15 +0200
Message-Id: <20190520134817.25435-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520134817.25435-1-narmstrong@baylibre.com>
References: <20190520134817.25435-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_064827_193842_EDFA1CD5 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

With the default boot settings, the DDC drive strength is too weak,
set the driver-strengh to 4mA to avoid errors on the DDC line.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index 5b4942c73e65..aa678d92238b 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -327,6 +327,7 @@
 								 "hdmitx_sck";
 							function = "hdmitx";
 							bias-disable;
+							drive-strength-microamp = <4000>;
 						};
 					};
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
