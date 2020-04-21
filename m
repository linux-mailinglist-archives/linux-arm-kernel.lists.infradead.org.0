Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56CD21B32F9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 01:14:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Dix0hUcDCXADPZq44mXffXuj2kok4C97C2TWgScA/Xw=; b=clf4DAuq62ytal
	zIFqsvQjLTu4KBMzJ1tZDa8xKzEFjo4JLNju69/LNVQyoI081aDrJM43ReuYHhlEGV7pcj2JsM1oS
	KgRWMOrUnrgovQZDoG2HnI+VfH+vVfJKMK69lYdx7CCh+4p3Ld1nnDjYORtkCPIOLYQ7GDwqy7Kq8
	s1EjZaLtNSYc5r0PZVbqLvWJ4YsiYHt0HdV8r13MfoKMNNk39iZrUq5NzcIh05yJCXMmEHkSCJT+c
	CGih5uNEpbhobyN2CLiU6ztRWGqRN31O/qFFU44x8yayaxVIZzQJi5t6Lx2UK8CtlMUcWmPmUfu+n
	DFrxUCrrAYIcnINHsYjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR25n-0003Mc-TX; Tue, 21 Apr 2020 23:14:15 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR25g-0003M5-UI
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 23:14:10 +0000
Received: by mail-pf1-x44a.google.com with SMTP id x197so425636pfd.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 16:14:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=R1LgwgNk37v/RhfylmRZmdafnEpy9OxL5snQLuqrApM=;
 b=pwj6uK9nTPE6809fMgZCi4Y10qeeXj1auUVcHhS/EWHRpPTVN2aaMqcfEjNODmZylX
 2kLxyDda/4dLxklEqQOhI+LHdXDtOhv2rDVW3kNzmn3w7AxSJxHMx9uno7reEdBLt5PI
 FQ5Zci41WiUTZmjpnXPyUN6B4il+WnssUGgb6xjapjA+4U+En15NUbqh6BBVbzxNPM2d
 xcewtcuinJQJTXBYa1SXoJgf0BhxoeS1D5AYGAWTZPAYXb8YqHGMGjXtnV17Y6rDGDZQ
 p6BxHdv1J6TIP9XvsDnuBVcyYI+0XQYIMc5e9xma07MKY49m46pYQlqNt/krGSrNIM7p
 3rzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=R1LgwgNk37v/RhfylmRZmdafnEpy9OxL5snQLuqrApM=;
 b=W6Fs0blEIc56M0EF2aSuK3/wmnz7+TU78F5Y1JNd4Wk+/aNd4219ig4o5ZDypTiK4j
 epV/qoPJbsh3tLxrvad+kxxd5tzWezkylQhxX8/MDlKA9OASrO+O4kTPUVxG43tU+P0w
 dKn21YOh1ingzzz0XHSv2QMZ8zrzoC+DJh8SXNfKc0Q96/w0NjBdomIpNQj3RhXNDjcw
 O+uu5J8EdAyyrcciGagYc7ypn7VX/cJgaWDjIylLI9uSMYXwQq3T2t7ullNNCqDaGNOB
 PCJASvmVOrmuMokbA7SEQmc0Ymc+mtvTREKHRQ7o2ppSW8jkoBVxehzqt3nnf7bQ6OXV
 QU0g==
X-Gm-Message-State: AGi0PuZiCPjVUvh/iFec2rBgH7LNqho80dw4xRfMcWFCRrvVJNr8wMiZ
 tVSm5xvUT1BgbI5N8c1ynEeTr4U=
X-Google-Smtp-Source: APiQypJKToKTvMG7ZLpke4XRmG0eAgLQdxs0h0nxoaYDdq/t/mxr5vWsW+yQTNSJVZU+WgCnhIDxBjo=
X-Received: by 2002:a17:90a:3568:: with SMTP id
 q95mr8581386pjb.47.1587510847009; 
 Tue, 21 Apr 2020 16:14:07 -0700 (PDT)
Date: Tue, 21 Apr 2020 16:14:03 -0700
Message-Id: <20200421231403.199217-1-pcc@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH] arm64: dts: fast models: Fix FVP video RAM size
From: Peter Collingbourne <pcc@google.com>
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_161408_997890_FD142A73 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:44a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Will Deacon <will@kernel.org>, Kevin Brodsky <kevin.brodsky@arm.com>,
 Peter Collingbourne <pcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to the Fast Models Reference Manual, FVP has 32MB of video
RAM starting at physical address 0x18000000, but the DTS only declares
8MB. Fix that.

Signed-off-by: Peter Collingbourne <pcc@google.com>
---
 arch/arm64/boot/dts/arm/fvp-base-revc.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
index 66381d89c1ce..72c018188c40 100644
--- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
+++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
@@ -105,9 +105,9 @@ reserved-memory {
 
 		/* Chipselect 2,00000000 is physically at 0x18000000 */
 		vram: vram@18000000 {
-			/* 8 MB of designated video RAM */
+			/* 32 MB of designated video RAM */
 			compatible = "shared-dma-pool";
-			reg = <0x00000000 0x18000000 0 0x00800000>;
+			reg = <0x00000000 0x18000000 0 0x02000000>;
 			no-map;
 		};
 	};
-- 
2.26.1.301.g55bc3eb7cb9-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
