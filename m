Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9D769958
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 18:48:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9sBFo+V7p38nlAzp2rKl10u7RqOXWsIRCLio8tK5+8E=; b=KZxgN6stC+x3Rl
	ziZSZf9W0ALLynuvuhWVF+2YGk+2PMHi663xFuK1b7NQINSc1wwHs6t+pbcGXQxNtdDm3Hjx/7p5o
	Hr14Rk9FeIo0H14koNWFfZ/I9UmnCoDjHRsSDpDXnmsqFOFn83RtOBbHi6+aMHKGISnZPiIpB90gz
	JUjF/RpE8Otnu6XjQ6uORGWTgIY7gUkOnpNXoctn2RBMUMjQ7aVT+LwI7BI/IB34i7XTdw0d0eiDh
	sOGkmjg5lN7lVEyLcZBDIni3z0JF+hi2oRA+nMlxO/J+fK4QGKfi/WJ5cZt26YlF1KryFk3S/X9t3
	tvHSccqPyW9PF7knOARA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn48y-0000XS-TZ; Mon, 15 Jul 2019 16:48:05 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn47x-0008S6-C1
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 16:47:02 +0000
Received: by mail-lj1-x243.google.com with SMTP id x25so16986427ljh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 09:47:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1GrmpWeN2Qp2z2sO59baZfBDoTLQGcC2m9BfzA567mQ=;
 b=JsOkgG4xjYwh5p0fpY0DH1lP4CGOV7PLVl0HgSo8pHerG7NPkw9abfIG/Ek7Yk2iFw
 HEm/QmJl3iqispZ1dY6GQVkIV1R2A2XM+mrep6DiG5xpOWl7lnmSsCwJFJvdBR7IhZdw
 YRiFNMacUDzRHIHC9VP2BaFMna4Z8IlRXs4PQuEaNi7h0lq66p2ycbAC8KQ9wMpI/a1u
 QeULCGRAu7DgK8fWx8aei1Leash+XJMX7MudWdGH47gfLXZA8kOplq/fSRfuEWyqifGK
 ccNqPy26t2qNFNLoBWKzXPeZiswVQXCbRkH3+xoknPDoANimgQcHU2r2mPBHXXW2y5vx
 fkHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1GrmpWeN2Qp2z2sO59baZfBDoTLQGcC2m9BfzA567mQ=;
 b=howRpI/3kF/CpMa4wCu79rHQfGylNN6Tc3pKwKDMmmry1Fi0wgELJHNYIj6ZPQNRiX
 YwuRARbq7XMylLR26gZP40NILFbcIra1l0BTEGqfGe76nATdcCvpD1CpZI5pjIecvHcT
 Z+BFRH87DzC702OkG8La+LvQZS71Eb+omKWuEYG+xis1XUOhoG3jSv461Y/t/HwdKejO
 WxfRaKyOhYvITDjMWmWjU1z/LG+Dfv3iIhOURPSHac8EpXTs+HM6CxK+eLF84KsKBy74
 xKhh8F7+WMYG5Tqs56GHVgWNXzvPmiDz4i3rcTGPvIBNnG8qp3TEJkfvdIjQEfhTFH4e
 sqvA==
X-Gm-Message-State: APjAAAVHaaud55qjWsTvgtSlm+rTCFD7BHRcDDkdw1dv4bRjP8xIk+ZV
 eBXRM+QvuMROGmwGM1NqlnIPRaqzjZM=
X-Google-Smtp-Source: APXvYqz5rP5e+EezSvq0W2oCdY/rhEuvqzQ63vWU+8JtZhLoCaV+zQucI4Kn2WVoQ3KZAUEECBbP4w==
X-Received: by 2002:a2e:9cd4:: with SMTP id g20mr13913221ljj.205.1563209219696; 
 Mon, 15 Jul 2019 09:46:59 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-22cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.34])
 by smtp.gmail.com with ESMTPSA id e87sm3628329ljf.54.2019.07.15.09.46.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 15 Jul 2019 09:46:58 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>
Subject: [PATCH 3/3] ARM: dts: gemini: Mount root from mtdblock3
Date: Mon, 15 Jul 2019 18:46:50 +0200
Message-Id: <20190715164650.2883-3-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190715164650.2883-1-linus.walleij@linaro.org>
References: <20190715164650.2883-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_094701_421702_47F2B2D6 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The third mtdblock device named "Application" is where we
want to mount our root filesystem.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/gemini-nas4220b.dts | 2 +-
 arch/arm/boot/dts/gemini-sl93512r.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/gemini-nas4220b.dts b/arch/arm/boot/dts/gemini-nas4220b.dts
index 254ecbc3d79f..521714f38eed 100644
--- a/arch/arm/boot/dts/gemini-nas4220b.dts
+++ b/arch/arm/boot/dts/gemini-nas4220b.dts
@@ -20,7 +20,7 @@
 	};
 
 	chosen {
-		bootargs = "console=ttyS0,19200n8";
+		bootargs = "console=ttyS0,19200n8 root=/dev/mtdblock3 rw rootfstype=squashfs,jffs2 rootwait";
 		stdout-path = &uart0;
 	};
 
diff --git a/arch/arm/boot/dts/gemini-sl93512r.dts b/arch/arm/boot/dts/gemini-sl93512r.dts
index 5f70e01af7ec..a98af0351906 100644
--- a/arch/arm/boot/dts/gemini-sl93512r.dts
+++ b/arch/arm/boot/dts/gemini-sl93512r.dts
@@ -24,7 +24,7 @@
 	};
 
 	chosen {
-		bootargs = "console=ttyS0,19200n8 root=/dev/sda1 rw rootwait";
+		bootargs = "console=ttyS0,19200n8 root=/dev/mtdblock3 rw rootfstype=squashfs,jffs2 rootwait";
 		stdout-path = &uart0;
 	};
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
