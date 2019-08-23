Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 691819A89B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 09:21:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uDyghf0fvxVpzJStqq22f45424wuY4oZlRSFTneHCeY=; b=NG7IaV1VafxNif
	ur8qSPU7hn0/1guiBZdxDoqrUqwS8R4nmBZNI6yw0FGEbt5aZ5F5XGgWP2phfx9UWjUDWI2sU/Lm4
	3vWIvnZKPRRQjhAyx+PPou7A81OGdvIxgJyfifomvaALdwnY7FfJ1y5mZubaO1eh2si23Hpo7J/+k
	68ikmLhDxcG8oz2u1yb+iWzWa+8zqJXXVqPxAexq//kBXDqJoVHe9+0qnqGh1R4RVMFJjiG84IyNZ
	f9V/AsBwkMBZbp9GsWN1PK8NvLLWmGJ8ghZjn8iz3G77/kf3CKluraaQN1Gu8aOMnFPXKwUg+amL2
	jJCNN0YpmAlzkArW/IXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i13sj-0004ie-V8; Fri, 23 Aug 2019 07:21:10 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i13bF-00019Q-23
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 07:03:10 +0000
Received: by mail-wm1-x342.google.com with SMTP id m125so8011879wmm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 00:03:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BYS/jLJ5SnTBfvUO73YfQ/qZMgKSxQ0+sfqUXBWxFgE=;
 b=VwfExEy20yJXYNxH8LKSGd6Mc3F55oX0J7Yva343vW5KwrjHbcdmyjuoNkCU/Zm7P9
 jzK7TUODE2Onk7XXbzt2FkZE06iQnI0ME3K7CPJh8ywR2ZKnubK+Xg/6kZOEe8q4Zmt2
 F0JyeHph/zSHkuFZfaDQippYQWw9HRrWgM+NEneHXMwN0p7mih38B/WvFxlgnLb/WBVy
 mLyK8tgI2Vu5NL+T4jFyOofLadOGW92CHCx0dI7qnga28Hij/IVDL55UraU7h8sgtNpa
 HzcHRqGlHigHegh5c5QFXnkrctrRhqqrm/xm//OhwuVxQ0fDj9hUV9yd+DrNLOJJT4jN
 8X+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BYS/jLJ5SnTBfvUO73YfQ/qZMgKSxQ0+sfqUXBWxFgE=;
 b=Q7Wy7isYWtMmRi4d3JjebjPcvIUW/EBoMyJ9jHan8yquh2VRBKsxx11N6lnuTyT9NE
 WUYOgBomi9gfKvJf1Un98h+EjaYLKcvqPkiHup9nlJE16uHlIwIUMmoYT0o0qLdo8yeO
 05eCPDiAViXgJwxCLryVCkODpYieBlFfZSayC+wJ1cI/0A5jWJs/ITOc16LoOwDtwVEL
 u51XPuGypkv0EL3utEG01NB6JdKYmp7RFZfGWarNtML7y7+ryFydkkzHYh99L2odllVa
 faGmn+nNoMlNGunHDd2ZUpKPAeDsapV14y1okWQ+SW7NTSheofSFINAQlPKv+q2ZlOaq
 doiw==
X-Gm-Message-State: APjAAAWresETEQkgAbujo3D7Iot9rp84LUCXeeiWrMM6WMjmwb4n8LOV
 uH471GqeU4dXGBtFJdu5iHaHig==
X-Google-Smtp-Source: APXvYqxDBCBALfUY1roCUtb5nFCGs8ULUeZhn4O/3BvnRzigx377XPNv7t8/+DlNYXkU7+9hRiHjCQ==
X-Received: by 2002:a1c:d185:: with SMTP id i127mr3334208wmg.63.1566543783727; 
 Fri, 23 Aug 2019 00:03:03 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a26sm1741833wmg.45.2019.08.23.00.03.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 00:03:03 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [RESEND PATCH v2 10/14] arm64: dts: meson-g12a: fix reset controller
 compatible
Date: Fri, 23 Aug 2019 09:02:44 +0200
Message-Id: <20190823070248.25832-11-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190823070248.25832-1-narmstrong@baylibre.com>
References: <20190823070248.25832-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_000305_517421_5029243B 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the following DT schemas check errors:
meson-g12a-u200.dt.yaml: reset-controller@1004: compatible:0: 'amlogic,meson-g12a-reset' is not one of ['amlogic,meson8b-reset', 'amlogic,meson-gxbb-reset', 'amlogic,meson-axg-reset']
meson-g12a-sei510.dt.yaml: reset-controller@1004: compatible:0: 'amlogic,meson-g12a-reset' is not one of ['amlogic,meson8b-reset', 'amlogic,meson-gxbb-reset', 'amlogic,meson-axg-reset']

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 1a5efa2e16c5..d09c7a5cccb4 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -2187,8 +2187,7 @@
 			ranges = <0x0 0x0 0x0 0xffd00000 0x0 0x100000>;
 
 			reset: reset-controller@1004 {
-				compatible = "amlogic,meson-g12a-reset",
-					     "amlogic,meson-axg-reset";
+				compatible = "amlogic,meson-axg-reset";
 				reg = <0x0 0x1004 0x0 0x9c>;
 				#reset-cells = <1>;
 			};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
