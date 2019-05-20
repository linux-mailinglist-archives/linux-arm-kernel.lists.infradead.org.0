Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B392F238B9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 15:49:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oKBLrCJ2ZKxfkMrdbIH9TrK0KRT+APMhN/xkMYk5BGA=; b=Ob0kndbF3MHr2G
	X8XsJpeJgVJZh+ZkOcVy77dAzkdXQbNZCM+M58LHZPTcfub3Rm18D8x1vbDFmExvw2KKeR2I7SYqk
	Rd3gB0Y2XSoznvUYnTqWOOpg2+em2LDwnjJXjpigH5NvVai04btHcwr1tJpC9Qx8a0tX/npZxu4AJ
	NJfDGLNuYoV1CpCWNd+j1TLzV9dLvZF7qUan1Jp0SeK0UCvSyksdm+knSg0I2JD655Fm8ehlhDX2h
	2fu9zjuj+MLVYYPy3sIXW1KR+75hdyXAjeQYRZ/CCE3OF+apq+uMnsms2++NPehLmK4XABXjflDNK
	+EHVOVfUUH+5pAjA+lPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSif0-0001rU-0v; Mon, 20 May 2019 13:49:02 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSieS-0001Lb-Rb
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 13:48:31 +0000
Received: by mail-wr1-x441.google.com with SMTP id l2so14694073wrb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 06:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ts3fE5bTuGyoy6N0BRtizoFKFVetgP769BF9fFBWGDU=;
 b=bFK+PHFO5iWfD0nCgJ85WKQubwVR6Dpu8ZHVpY6sr9pRbwyzfHECVAIjqdSRLWeSzA
 3Fw2LvRNPzuu5+okXgXSHDPI2AMIIFgXN3d0EFZzBWkIgqP3JutsKtWHH2CPsP2IMDvg
 WjN5aWELbgdHEzNi+yZySS/+13+ojsZd3aF8eVVpbkSx1PouAZldLWVe23Zwtvnpptji
 iHHFhWTj9b6KCLoEcfNY8aDtCu5i8BLEinRvBH25pviAtucTL9ada2OZKSueuK9LXydp
 1TrlGibEgbzncxfwqhfFYFQX6ZCMzLcgCiQOTU0b+gfD/714Loe08h6I8CphL/tC3b/u
 ESUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ts3fE5bTuGyoy6N0BRtizoFKFVetgP769BF9fFBWGDU=;
 b=Hm0bQtXfUMmGEGYmqu1w9Fad38z11mIOyUYuRMVGYsgddFAepQ130OsvpoMGiVFX3p
 Bc7VOSE8QZ72E5r66pSKCzVXj8cnEkKsz1SmMP7viJEpJ7g/1gPsxPhN/GZptbPpyF7I
 04sslhqJthoO1hqtZn3n9w+36TlBJHpBcjaj5EDZSAaRBnzCwgVjlwAQ4Ifgr72Kegh9
 +56Vk4gcRc7aRP3XeiEUDwUXGniEGqtN7F6OhTzrZvOKprqzUzci8H1hMUyDreb1Roab
 kijd6tSay2OC7TtLoT+yJfpqs9htjbI5E9vrPrTcMzTBfZYKpL3dQ0mGNlnXxZ7W0njD
 0K4Q==
X-Gm-Message-State: APjAAAU8JiG2v9TQGByAFSs5TG703hx0cWKuSWW/dB+ID103Mw9WzhU7
 WQegn/oJmVyK/V68dPi2rl2BNg==
X-Google-Smtp-Source: APXvYqzjRAz47hAbOc3zzoJxPwMLmffkgvKgsWZwLoTq81bwJunQUo08tLhwktaWxnsxeE53i/Tp9A==
X-Received: by 2002:adf:ce90:: with SMTP id r16mr47318497wrn.156.1558360107329; 
 Mon, 20 May 2019 06:48:27 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id h12sm12091358wre.14.2019.05.20.06.48.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 06:48:25 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 2/3] arm64: dts: meson: g12a: add drive strength for eth pins
Date: Mon, 20 May 2019 15:48:16 +0200
Message-Id: <20190520134817.25435-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520134817.25435-1-narmstrong@baylibre.com>
References: <20190520134817.25435-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_064828_976090_D2D2BD11 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

With the X96 Max board using an external Gigabit Ethernet PHY,
add the same driver strength to the Ethernet pins as the vendor
tree.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index aa678d92238b..8fcdd12f684a 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -263,6 +263,7 @@
 								 "eth_txd0",
 								 "eth_txd1";
 							function = "eth";
+							drive-strength-microamp = <4000>;
 							bias-disable;
 						};
 					};
@@ -275,6 +276,7 @@
 								 "eth_txd2_rgmii",
 								 "eth_txd3_rgmii";
 							function = "eth";
+							drive-strength-microamp = <4000>;
 							bias-disable;
 						};
 					};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
