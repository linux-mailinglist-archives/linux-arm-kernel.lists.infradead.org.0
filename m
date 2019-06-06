Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 992CA36F3B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 10:57:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MesHV5MzBB3kfKguxF+NWA8+sNemK4c0hwr6rhvSp5Y=; b=tsShrUVUaa2HrI
	jODdHxPtPeAYJ0DZKphYWniWnH7yMXrs4fev+VdVdZ0mr+3G7JZZm0kSSbey4OJlButp2hgvzp+iF
	xhb/O10AJL9ixt+9tvlZLJMUcGVMjMkMG1aytcUgfkJhj/a9bWveoKIljuhVyNXXIjDckj3eOLnWq
	NBHI5x4pU0Kgf+jaWj0BLX46ESW43k7wt3LmcPVHPt+Pgw2mROqm4mfV6XXNhuMjEAx6JWymmj3Pk
	AkafA8hO3PBYYe0cSzCLmUUVpLF6nQBZS3MHpZzB6slWY/h6E/MhVWgb2bqQ3uFiZWvjx1FvVo05h
	c6VQF83jhAmKKRKWNnsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYoCu-0000aT-M3; Thu, 06 Jun 2019 08:57:12 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYoCd-0000Qn-Fd
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 08:56:56 +0000
Received: by mail-wm1-x344.google.com with SMTP id g135so1540346wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 01:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6+fylG/tOnqGX2aIqT+71+ORb/4AkkvDue4m4inFcks=;
 b=buu/8B3ZYXUp+j5g3/g50Oflkw24Cs1+pC9lzsokOuI3yr2ENAMA5G1Eefknu9gFou
 KCyVxXXX5Bq+xnhf492L2kyWpbIDsHIXBmR0EFkxUXhKTCDj2vmjDuMao/cbiMsMoWYX
 QL46D6bDryv4WOyzI5QF6v6PbY1r2c/6evGe2b0jO6+06B4PqNVUUrGMikpTCWpNlPAS
 kwcw5BgPzTsiyD727FDftgI22jIPYNB7yo68qpTYjVIy1agGcAlvxxT/Tqnchx3woGMb
 fhQEl/KK0QzjakKqcsdl8HOHbXTS0Psi1RQIDJqM+5FziVGasPH89EicPXu2cXyVWmHS
 nMHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6+fylG/tOnqGX2aIqT+71+ORb/4AkkvDue4m4inFcks=;
 b=sXkyRsLec//2y9yFHNKsCZzwbcgunHup/xxkHKTWAKi+gTUF/Jzer/keQaLlk6zIPe
 0/ZTH8wDXZsxTsgnb6ykUBH8fFAt866+Pd3UW3VTOAu/TuPafymVHrJULPLMj7yx0enI
 s3ySE2YJP7RJ2UOPtNg6IuFbkl5EeJGrzNLPBPAmNphu9mY68KfGopSrPT4oDo4/pcIi
 WZEBFtHCXf3XGLy7SsDCE2Wto+cfq2xoFOUoEH4zPiMu+DHufomrVmeDf+wGkYXz3UIQ
 P9CF73lcuUrgG4lCGe9IIgj+mX5VNadLq92EnZOGo9k1BU9QzSsh7UiFUpmdLoZD858K
 ZXgA==
X-Gm-Message-State: APjAAAWNdmNFX2iEeCIujo6W0oFJ71B1lb/OkhUf80BEwhbLUfHAjgdw
 YUK6byAySCya2pg7muR9sDgfDw==
X-Google-Smtp-Source: APXvYqy+e2uWcrVijNb10BfH/ocbR5J0+gtso73gONGfKdAF2BhMjMq+uGYcq6aztFzWdyu+ddPV4Q==
X-Received: by 2002:a1c:f012:: with SMTP id a18mr14679576wmb.168.1559811412162; 
 Thu, 06 Jun 2019 01:56:52 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id f24sm1087334wmb.16.2019.06.06.01.56.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 06 Jun 2019 01:56:51 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: arm@kernel.org
Subject: [PATCH 2/2] ARM: multi_v7_defconfig: enable Lima driver
Date: Thu,  6 Jun 2019 10:56:45 +0200
Message-Id: <20190606085645.31642-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190606085645.31642-1-narmstrong@baylibre.com>
References: <20190606085645.31642-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_015655_524517_B7A647A2 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: olof@lixom.net, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, arnd@arndb.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A bunch of armv7 boards can now use the Lima driver, let's enable it
in defconfig, it will be useful to have it enabled for KernelCI
boot and runtime testing.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm/configs/multi_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 952dff9d39f2..0757e0278e22 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -656,6 +656,7 @@ CONFIG_DRM_VC4=m
 CONFIG_DRM_ETNAVIV=m
 CONFIG_DRM_MXSFB=m
 CONFIG_DRM_PL111=m
+CONFIG_DRM_LIMA=m
 CONFIG_DRM_PANFROST=m
 CONFIG_FB_EFI=y
 CONFIG_FB_WM8505=y
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
