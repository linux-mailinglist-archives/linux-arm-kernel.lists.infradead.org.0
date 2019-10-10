Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45307D3051
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 20:26:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wpyQNghtSMqOw6rDzwKrh0kw0iPVa+62qZ4nmjmFHd0=; b=NZKxwXP8YP8EAe
	qpkqh7tuIHhH1SJUUeKjsWzyE3YuzwPC9EiaM/jweQlq6c4KtN6zXwZ94X4RjZw8rWz7j+lsmcaCO
	Ue9v7ns29Rymq7eEwTSgVfDtGOE6/7ar+qohfQjqE7KG3M3zGFcfYeGJw00q53iJA2ZLubSfGu0SZ
	IiD3y+L8kKf1NENfhgSPqR9o5uFd9hUd8ROTi41iVUjgJWpCug5kHiSSyGHAIJ6hmx/0mi8jpkjm6
	LIMj7x183mVJLipe7fe3N3VLbEl0u9i4fG4IxU1G25XOPlrZ5OmmFlR1I15lu1RDGnzTA/W9PoJ6o
	NRpxBzyAXpuaYero9N+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iId8O-0005HD-Sd; Thu, 10 Oct 2019 18:25:57 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iId6Y-0002eS-QB
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 18:24:04 +0000
Received: by mail-wr1-x441.google.com with SMTP id j11so9088567wrp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 11:24:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dXbxgE6IvVwjy7Z7gvOGJEOv7GKvY5T5anjn+ffzgGk=;
 b=bQzvJTB8qC7u7C1JtmsouLn+KP418i/G56OMyMJXZstuB+aXGCC7k7akIuWs4qd+AC
 u25R1WgrB7eA97QlFO8sJXseglKHCwhDfJX3xt3UaCzV/2XIY3rTtpyGEnCtRub7rNmS
 3EnxRnHMsgJXNGHAZPz81tpcsHUl0yJxZjE60RH1z0DY1OVtfvwRn6dI0VYwYfBAUwSR
 MrOFdQe+o2wtbXQ0Ya8KsGQboNUkra8aW4aGOYnIs57oQqM+UfpQrkl4NlmuG0Dg6Hq+
 ABgKVZ2AChEwcnStQTbOEt/lWuMoib7ENDcsSnB1nDS3LafCHfyHyRnNt4F625a1uDgw
 BeVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dXbxgE6IvVwjy7Z7gvOGJEOv7GKvY5T5anjn+ffzgGk=;
 b=Pl5fr6K1n795hx9nezOj2NMoVt4YBZz5cvMBmM9HsVp6k1XBj6gplYIfqiZEd28XfO
 VtPdSk38B4zVn5UJCMjMM9d26/LpAJwX+l1u5yyN8YP5Pa62/MsnBmKE6tvPgc3mMcw9
 rbvSE0iKmBor9K7EtMCgWikSCeteZUEUBmZ8fN0RsdU6EUufMMOI3AeHVfdXJLJrMW0o
 QvHBwWSFFLCgVe37LuZLJ87bJy2A+Q/VfewTFnvBjkY0P55+jm1PuVgsH9sQ2f9P8VBB
 VyBT1cw7AkONCIk64NpBqeBOBVI3cKnAmFn0oKLYDD74vjVwGhnqihymwumsntbVBHgr
 oRjw==
X-Gm-Message-State: APjAAAXX3DPoiMRmygq/yt4xYkxBhjPNqaRLr4ybm5jEXqNIjp+nAzrt
 lm1GO+6QCABsyEe9dWQ2qrU=
X-Google-Smtp-Source: APXvYqy6aLVBJ7a1cy+OQbhapwaL8GSDbU2K0JXUHvRBkxooMg5EzYFtZ/rclbK2t3qp1Z55ITRVXw==
X-Received: by 2002:adf:ecce:: with SMTP id s14mr9299104wro.47.1570731841237; 
 Thu, 10 Oct 2019 11:24:01 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id
 y186sm11367664wmb.41.2019.10.10.11.23.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 Oct 2019 11:24:00 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v3 06/11] ARM64: dts: allwinner: sun50i: Add Crypto Engine
 node on A64
Date: Thu, 10 Oct 2019 20:23:23 +0200
Message-Id: <20191010182328.15826-7-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191010182328.15826-1-clabbe.montjoie@gmail.com>
References: <20191010182328.15826-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_112402_864475_6794E3BC 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Crypto Engine is a hardware cryptographic accelerator that supports
many algorithms.
It could be found on most Allwinner SoCs.

This patch enables the Crypto Engine on the Allwinner A64 SoC Device-tree.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 70f4cce6be43..e5d50978a6b8 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -478,6 +478,16 @@
 			reg = <0x1c14000 0x400>;
 		};
 
+		crypto: crypto@1c15000 {
+			compatible = "allwinner,sun50i-a64-crypto";
+			reg = <0x01c15000 0x1000>;
+			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>;
+			clock-names = "bus", "mod";
+			resets = <&ccu RST_BUS_CE>;
+			reset-names = "bus";
+		};
+
 		usb_otg: usb@1c19000 {
 			compatible = "allwinner,sun8i-a33-musb";
 			reg = <0x01c19000 0x0400>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
