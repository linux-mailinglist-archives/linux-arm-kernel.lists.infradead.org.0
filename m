Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDE924BB4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 11:35:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SvCJEX3GQXEW9ySU1Ef01CAvzB4gxVQ/O+MiyykSzPw=; b=HcXeBmIEKVUAnN+ZV5sen6BC4o
	5MOSWDPIFkF57tzuj16uhllLEK9A3nOrzlh/BNFxEW01Tjs+tjcYtMHXsvwxuoB2efBVImH2nL09A
	rYBqBnBK1cKPG66Ed7L4JBQ/hbVEuxHLiu7d6a+fpfe/Mow3Oo5l6ZGfTrCr8OB0jmmCzE1VHisfG
	WrtYFlLoSi7gh5OfuPjxVCuKfXyYXTG3UjkGG2yJjx2E4ODEoxyXVzH5dtI5XwvRoWvuN3jnH/upT
	oRtFQSrKF8CYC86akNKX0XyqVVotObPKw749yR5nL+ao+cXQAoBbjm80lYADqM8zxRiZRJLmvFUlg
	TIlXCNzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT1BQ-00077p-W9; Tue, 21 May 2019 09:35:45 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT1BB-0006vb-0N
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 09:35:32 +0000
Received: by mail-pl1-x642.google.com with SMTP id p1so2790512plo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 02:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=snr6I7xOlJyQUxx9e5KJWRPzOk5/RPGil0u5RknK1co=;
 b=rVPESzloEoFaSm5eQVX+SSjgn2ZsbWsXtAubks8NdodjIma1kybM3H7lhAqtQdgdAV
 clp9h5CkSJa2HT4/kfjRDBUErdWd8NUlKVMz7EI4G9oSHjOLfVg+xwmahACy9O4lIsrG
 xBnNq11FyV62nviOis7Kt9LMBoQiyhmjQiS3iVHHQxyR5OBTzlfDtui1q1cO3fnF6Np9
 LQLAKENmgf621qZS3qr0dQW4fB4AYgzSZlLhR6N4C/LDBMvnAMRFkfYXGZR9Utn3Sien
 NLpOLL+DorAVv1FL32ViodUCMOimKafPcHVxEX1uLz2twuTW/BU/k7pBn7wrfVw/9daO
 3F0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=snr6I7xOlJyQUxx9e5KJWRPzOk5/RPGil0u5RknK1co=;
 b=CDDEGXSGGebnDmGWr44Bf0ZO8G3CpBwb8JyI7YOwKJ5OBdL0HIsAh7cKKGoMK/V6PE
 UsILqtSmXLSCuRcsxfa9DhQJawEGXgMLRSkYsErfcHNp57hn7ykwGyOPCYiP5p1UAEZn
 7CYLCSs90Htsp11oMnoGRceVnwqxX0PJKbvUyot4p4A5Wg1kE9LT5kwK6tGitsoPZz2f
 TwCxS4vyNWHtILLXQjl5N1tjhdaSFLOW5plts8Gu9jWhHTghmyZGRKPgCuR/mjeQ876L
 W3c5NPkpqgPsy2q3HRzvATAL6PlzVX1RtiRjchVmnmvjAlRbT3hYX4Tr+c9hMEA68PTv
 v1rw==
X-Gm-Message-State: APjAAAXHd28nha/CndeDPROIB8DAZM5FP2dJl/eXS0u02bh+YBI/4sOr
 KAzsAJFvkjqz8b9lUUvSmOiJmA==
X-Google-Smtp-Source: APXvYqxblgRSQgNYff41+kJRYh4Og5BQ8zoVZkjZcLjl8sKf00ZpyEGZOIT/R9ZECXRvs2o0hW9Abw==
X-Received: by 2002:a17:902:aa45:: with SMTP id
 c5mr80617108plr.144.1558431328331; 
 Tue, 21 May 2019 02:35:28 -0700 (PDT)
Received: from localhost ([49.248.189.249])
 by smtp.gmail.com with ESMTPSA id t18sm30938459pgm.69.2019.05.21.02.35.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 May 2019 02:35:27 -0700 (PDT)
From: Amit Kucheria <amit.kucheria@linaro.org>
To: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 bjorn.andersson@linaro.org, agross@kernel.org, niklas.cassel@linaro.org,
 marc.w.gonzalez@free.fr, sibis@codeaurora.org, daniel.lezcano@linaro.org,
 Andy Gross <andy.gross@linaro.org>, David Brown <david.brown@linaro.org>,
 Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v2 1/9] arm64: dts: fsl: ls1028a: Fix entry-method property to
 reflect documentation
Date: Tue, 21 May 2019 15:05:11 +0530
Message-Id: <fcc19fb14343088b7f757cc9d6f699ede01dbb13.1558430617.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1558430617.git.amit.kucheria@linaro.org>
References: <cover.1558430617.git.amit.kucheria@linaro.org>
In-Reply-To: <cover.1558430617.git.amit.kucheria@linaro.org>
References: <cover.1558430617.git.amit.kucheria@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_023529_261135_4A8A1C85 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The idle-states binding documentation[1] mentions that the
'entry-method' property is required on 64-bit platforms and must be set
to "psci".

We fixed up all uses of the entry-method property in
commit e9880240e4f4 ("arm64: dts: Fix various entry-method properties to
reflect documentation"). But a new one has appeared. Fix it up.

[1] Documentation/devicetree/bindings/arm/idle-states.txt (see
idle-states node)

Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
Acked-by: Sudeep Holla <sudeep.holla@arm.com>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Reviewed-by: Niklas Cassel <niklas.cassel@linaro.org>
---
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 2896bbcfa3bb..42e7822a0227 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -51,7 +51,7 @@
 		 * PSCI node is not added default, U-boot will add missing
 		 * parts if it determines to use PSCI.
 		 */
-		entry-method = "arm,psci";
+		entry-method = "psci";
 
 		CPU_PH20: cpu-ph20 {
 			compatible = "arm,idle-state";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
