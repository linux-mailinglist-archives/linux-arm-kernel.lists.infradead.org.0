Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE737662E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 14:48:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=79nMXTZtY4844OwM5xG8y5JMyc10MhdrY+xKOM4NwWk=; b=SejC+eeXmIWchg
	3kv96W6chAgoz/qQaSk4J08h62/QpiY/h5lYDXISNSabf8FJBraHpY3X98hi99h8522Jvuy35i9bL
	DBYDfEWBZ/v+lnsRIG9wdbgr2e/4WOxHtLoY7/6uakAbU4xTvOa/rBzCN+x/LcLV8pHys3UiMBPO9
	SVCKlvN0qOSYaPVKXH2F66Rvd4uWw3q9Bb8FH8tYdDAToaugKHCz7+444DTtgeqAfG9QffO4jS7RY
	+JoPGPyn1SYv6HgYs/5OjI6F0tfuawPQZBD7B9CdnrWzjHn1vmGhBImv42kUSBjYpj/c+IGoWGBEE
	eBncJususDsigrNKTWAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqzdp-0004IV-7x; Fri, 26 Jul 2019 12:48:09 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqzcZ-0003OD-No
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 12:46:54 +0000
Received: by mail-wr1-x441.google.com with SMTP id n9so29230356wrr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 05:46:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GnVNZrf3NrBA1rEJS3yEc20MogrzrhTJ4K84VxPwt+M=;
 b=EbxJlKQJkFWK+Xju80qYs0AUcIev9OIj1bvka8/3uHjZVTLK6ajBrvJpSOw63+t2bD
 ykTSio0wJbXFYFHZY0WbG9N5dfRVVeaCelFlY0kK+KMgZ3NjEv99RC/dx2lrvTiA2XID
 4dFKdBf8/gJ+hht7efgDFe3KUN8VWINUqyrPfRT8NI3G6wS3W5PkjJx1nqi7ZxM3CnPC
 lBqlQF7nh74Lwp2N5k+eI1omnQcUAr2Z1M3arcPRJP16uXcctKdNVtUaRiRV4Vod5iGz
 G5UOpMCjRF989nTulaQyhQmCFu+FOfsyhol9WRQqDIUyRIp9UiwcLxKpELfeU9Oaz6lQ
 g6+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GnVNZrf3NrBA1rEJS3yEc20MogrzrhTJ4K84VxPwt+M=;
 b=GWdY0dMgxGrfxq0VIDLQQyB4FMYtgDqYIUoEboNTpOuoUa0clF8OGWKDEDY6wI/j0X
 5ihEPZOAYYa4qxgtLlV46BDOqFwN05Sr6ctqzTYe0ddicy19raQmDuDPDZwxOHOSlDee
 Ymowu7pB2lnqNk+Eu+TnB29duz6d+OM3n7+vnkopLtoR5tvuPMNbWVQieMRJli+KORY+
 Hcx1R1Q/3xa2HOnywrDzzOVj+5eSdcK1rhdDedDcmmhwfrUnNd/8DBOMYux+aROg3o2+
 fa0ovQpTYdqcWJRw5DHaLbH3BdXdoTBIwopIKLb4JVFG6PkXyhMQlCh2Fu6ygoNTnUCH
 OnYw==
X-Gm-Message-State: APjAAAVIfQpsdSD6UmlH+QBUIYl05pcTDEKax2YH00Tc6H4FNWr9fTAD
 b7I1LNepqqzkF5ar49o4PmptMtuQ9D8=
X-Google-Smtp-Source: APXvYqzJugJd3lJHrKUFGoc3lueZYS8pq3Az7Tfvg22mTfEOJ5LzNpMo3dpS+nX/DOufWWarEEiNLg==
X-Received: by 2002:a5d:53c2:: with SMTP id a2mr23921778wrw.8.1564145210215;
 Fri, 26 Jul 2019 05:46:50 -0700 (PDT)
Received: from mjourdan-pc.numericable.fr (abo-99-183-68.mtp.modulonet.fr.
 [85.68.183.99])
 by smtp.gmail.com with ESMTPSA id x16sm39090124wmj.4.2019.07.26.05.46.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 05:46:49 -0700 (PDT)
From: Maxime Jourdan <mjourdan@baylibre.com>
To: Kevin Hilman <khilman@baylibre.com>
Subject: [PATCH 2/3] arm64: dts: meson-gx: add video decoder entry
Date: Fri, 26 Jul 2019 14:46:38 +0200
Message-Id: <20190726124639.7713-3-mjourdan@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190726124639.7713-1-mjourdan@baylibre.com>
References: <20190726124639.7713-1-mjourdan@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_054651_774942_EDD57BB8 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the base video decoder node compatible with the meson vdec driver,
for GX* chips.

Signed-off-by: Maxime Jourdan <mjourdan@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index 74d03fc706be..86e26ed551e0 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -437,6 +437,20 @@
 			};
 		};
 
+		vdec: video-codec@c8820000 {
+			compatible = "amlogic,gx-vdec";
+			reg = <0x0 0xc8820000 0x0 0x10000>,
+			      <0x0 0xc110a580 0x0 0xe4>;
+			reg-names = "dos", "esparser";
+
+			interrupts = <GIC_SPI 44 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 32 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "vdec", "esparser";
+
+			amlogic,ao-sysctrl = <&sysctrl_AO>;
+			amlogic,canvas = <&canvas>;
+		};
+
 		periphs: periphs@c8834000 {
 			compatible = "simple-bus";
 			reg = <0x0 0xc8834000 0x0 0x2000>;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
