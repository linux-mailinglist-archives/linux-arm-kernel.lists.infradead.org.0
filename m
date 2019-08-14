Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCAEA8D60D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 16:30:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WT3WB+No8Dn0BX/8SiSO1PTI7MgwgSxjqVV0YuRBs0E=; b=jXb40pXgTzm6km
	LlVC89DbOITos3zk/sUHJyHjW6FhvgTFBqWhOp9m0ZrSJG6TCtaFyNuDkoxerHU16Xatm7OMNHb0b
	vVcclb/ciPBY+NiTZ4YtePMm8tEdxYmrcSQCRhsdbrnXvmMeRJqZOc8HsvmjLLDm9orkbv4sgTM51
	JE9txH2LEtBJ5oTy/Azw+Hf3YzZIATLpBIKiAWpxv9FoAAvNb5Uh3WttOyyrrsCYoQgWgtvVUfL84
	yfs+sjr/zqrDzS63ZdA0lH7Nx7UqPGj0IYnpAd2yDcuRLzNChcYH/23yCE4BFRAh017+013a4Cvbk
	5YM62BJ97phHFk7PYjtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxuI4-00036H-RQ; Wed, 14 Aug 2019 14:30:17 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxuHH-0002Z4-HZ
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 14:29:28 +0000
Received: by mail-wr1-x444.google.com with SMTP id 31so111342838wrm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 07:29:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eAFiTbS9tUsX23wvX/LxXnBM46JN5Jo6L8dXcPl3X0s=;
 b=I0uu0tb7hCj7NOzVQ9cxQqyxLj2ts/mcabRUsP2x/js53uYLjxjpmy9xUxR92i0vVk
 HkjNwwuBeSllIocHQNIVn7rVWwgfNk06xctYCAUklo05hcWc0h3ZMMtX1L4/YjEtTirl
 auQJ9EqjnJiEVyUw7UD4xZxTQAPQe4AtCltZgS0FsPzzE48Adn83e951uj63o4dLj4ak
 gpZ5LU8pKqnDwcj5Z2iFXdGO9/FcUWZWE7NOJcLwnekcZNrtLVUGB4ABOl6i9idkZCnu
 Ccy13esI8dtih+gCHB6bRKtJMIip975/2Xb9nAhp2/NYFe0A+I8FlDGoeWiNRDcEPB6I
 55Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eAFiTbS9tUsX23wvX/LxXnBM46JN5Jo6L8dXcPl3X0s=;
 b=EzDum/fXa/KH1ekm+SN6DQUkHZIMXp1lgEcOywrGRvpKvpQFbiCG6zUKOLdw8XDmzG
 dmzmFE87ZH35Fc1fh52qHewOIqD+Z7eRRTVAcKGzsRlk4aTFKiMPYQFOvYyJ8XnovxiN
 73PrCeC19NXhM8xh56Kgk3tg3FNAaZbUb9jnrfrytC7QsPfPpguIuGPus3uipIw+Wycg
 VqM0MKucqaNXAZdv+RDK86pRdGkOrio8dbpdtZsH3S8Tj7kyt00JYJKn/3yRXofrISzC
 j1xeuSyS+F17vJs7WAo5Z/I0PJ1nvdsMk9rjx8fywsBkY62i01vGU1K6pX1/eXXtcp6j
 QLng==
X-Gm-Message-State: APjAAAWyYJbrxrpOGaQtQVUm+7m9oT2bc3kjyyU5lCzWYYnZfa8nKpIu
 Yba0/MERZNGEr/cJ5opXdJRtz70X03b7fA==
X-Google-Smtp-Source: APXvYqw2v0j/k9m0jX2dRH/od4sgZO9K4GyqV4f6kOpOSECtwsplxNzyoaB+k3+nqd8UXQjoU3OmrQ==
X-Received: by 2002:adf:a48f:: with SMTP id g15mr8286783wrb.172.1565792966037; 
 Wed, 14 Aug 2019 07:29:26 -0700 (PDT)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id o7sm4202908wmc.36.2019.08.14.07.29.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 07:29:25 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 03/14] arm64: dts: meson-gx: fix reset controller compatible
Date: Wed, 14 Aug 2019 16:29:07 +0200
Message-Id: <20190814142918.11636-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814142918.11636-1-narmstrong@baylibre.com>
References: <20190814142918.11636-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_072927_579480_98503F4C 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the following DT schemas check errors:
meson-gxbb-nanopi-k2.dt.yaml: reset-controller@4404: compatible:0: 'amlogic,meson-gx-reset' is not one of ['amlogic,meson8b-reset', 'amlogic,meson-gxbb-reset', 'amlogic,meson-axg-reset']

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index c2d3fffea8a7..5b3dfd03c3d3 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -220,7 +220,7 @@
 			};
 
 			reset: reset-controller@4404 {
-				compatible = "amlogic,meson-gx-reset", "amlogic,meson-gxbb-reset";
+				compatible = "amlogic,meson-gxbb-reset";
 				reg = <0x0 0x04404 0x0 0x9c>;
 				#reset-cells = <1>;
 			};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
