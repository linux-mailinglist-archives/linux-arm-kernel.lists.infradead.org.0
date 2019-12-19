Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE742126219
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 13:23:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YpcZcfnX9/qPmn25j0FW51LEqJ6y4fj4JKZ8WBAPBk0=; b=l6A
	ms5hsRfLpjlfvofH1rLCZ36Wa4ZPRHy5kOpgFwjaxyDBon/Gh6FtlplNlGRmNehR//v8cWokSzuha
	R5QuHPwQb/yRDPrlLK9BINuw/oDGyEih6kPYVaxNLO5B7aAuYPz1qxLqtuvsAFamGjqzLDK5taad2
	1k/isZ0h4OKFLy70VgsXdH7RV8cnks9Kw0kflH6nXWc4W6F/tVjCXp6whySmOjiYxE53exZDkJRSI
	Kdu75WR+gFYA/rza+ZkuvbrIAR2WphI8NaXCx7dw1ug86orDdQqi9ckeAP4HuX96NO2rNH88eCKjF
	f26+bSlqbIgiNtlKBV0wNRnR2RTWi8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihuqI-0006oq-9u; Thu, 19 Dec 2019 12:23:46 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihumj-0002b3-Gv; Thu, 19 Dec 2019 12:20:07 +0000
Received: by mail-wr1-x442.google.com with SMTP id t2so5789381wrr.1;
 Thu, 19 Dec 2019 04:20:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=aNzr7uADzXwgMWgQOC3rwaap/EsCtVbWxu1DV9lbYTI=;
 b=AQL19xGMDNf8Su966j6w9GZkLDtN0SklpROZhSdWqJfzPIyEYM2Ay5BVpI/Bb7SxFc
 HoEofmHrKU9MxPo+feUmp3iulC6Fz2Kevlg4GEt1lUjpF1VZvnLx9stP6WC8tEEm5WTK
 AWfpIRnMZt50mCdM4J2DSNL7P9vD+6tImOat8RkpHJcaC1Ad4FU1DhR7/+KZd6c8aasA
 LPmYguFz/URpNAOL3AC0Z4oaUZrbSv5os/aXWmxlLhWxOOAQ5tIZg8obquNKuDm8mACJ
 kzlMVrBInvbEevv+j0/Q9q0YQVXbGBPiX+SIBbKpF5Hm7wfXvkus4Ap/2Imx1ySA0XrA
 d9NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=aNzr7uADzXwgMWgQOC3rwaap/EsCtVbWxu1DV9lbYTI=;
 b=C6DazULUcnk664/1Prjokeg/QwYgaJy5Mp9+De/T8UCGfdo4PF3qu2V4bTY9TRbXmD
 KDHGLsQndFdMFX8spJf0Uo280BZdo8lc3lOEQrEgr5m92gsibxp3FC71AHpxT8zec84d
 gBwDPD0O7HMgP5xgoLuhNZ870AlNHCSwttf0MkfRLvtnldv9ZhFWosMzYq3DGjpfu2/G
 94b3Gv13n4vh+S3SGqSwzDNBTMTzk4ZYYSzV6/gz7fxiGVkVnfmQRhr4XdsF03XM2sU0
 Aj3NJ+6arF5ZPgUlPzDTfaHQ9cdygJ8Kimg5ld8DEePoAqffL9DjJi9Ak4ITO1UIX13Q
 qEbA==
X-Gm-Message-State: APjAAAX8l1/KVcE8fYz87Z1hchxAbRfuvQ5nCQ+PWQM6lcufXkdHHT60
 Qn2GaVJx7sCfLlw/UvNm/Og=
X-Google-Smtp-Source: APXvYqyM3rObdh2zrtMyax+r4jGia6vz+7rratVPDgZ7CSMUV9HDNGUZ1rDlGNQBSxwCcM7wyW8/zw==
X-Received: by 2002:adf:ef0b:: with SMTP id e11mr9111224wro.128.1576758002289; 
 Thu, 19 Dec 2019 04:20:02 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id t8sm6237738wrp.69.2019.12.19.04.20.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 19 Dec 2019 04:20:01 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: remove disable-wp from rk3308-roc-cc
 emmc node
Date: Thu, 19 Dec 2019 13:19:54 +0100
Message-Id: <20191219121954.2450-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_042005_672816_0108440B 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The mmc-controller.yaml didn't explicitly say disable-wp is
for SD card slot only, but that is what it was designed for
in the first place.
Remove all disable-wp from emmc or sdio controllers.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
index aa256350b..23527daa7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
@@ -125,7 +125,6 @@
 &emmc {
 	bus-width = <8>;
 	cap-mmc-highspeed;
-	disable-wp;
 	mmc-hs200-1_8v;
 	non-removable;
 	status = "okay";
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
