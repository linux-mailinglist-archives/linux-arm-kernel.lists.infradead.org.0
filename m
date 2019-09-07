Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9263AC7B7
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 18:52:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+NyXBcPtA6Yil/uN4euEGwii6noRku0Q3qkS3xexP00=; b=acj/kw9+S0gFNb
	Eu88wZm/ca+BR+ZH1Bbf1pAgYuc+cyRDq4aN5XvERUEqdiYDYxFCxY1/VNCqPm6IeDTh2rAZVkwbV
	R3KGGlNDtqCQLh9TKy3dicgDYkbS3Z17fOiMsl1zStu+E5wU2wA+29WnOgUa+KTHayz1W+B+FMniD
	N6aKv8Hte1/7Jp4UVS5qHxYnrM8+gSx1QGN7Awgll4i8jyxZ5nfQXNmEaUyqMqjcPTJg9NPG4ETy+
	2SbHJbH+hye0G3PfcNXWw3yQUNQE1MIVyt6D1NhliOWlVEwYuJFKUThl3n+eqq+9Gfuq8A7f3embz
	XWLbimKAMUGnerXdOD9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6dwj-0004Nb-28; Sat, 07 Sep 2019 16:52:21 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6dwJ-0004H2-E5; Sat, 07 Sep 2019 16:51:56 +0000
Received: by mail-pf1-x443.google.com with SMTP id r12so6581340pfh.1;
 Sat, 07 Sep 2019 09:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NOgs26FQJd+mh+eb+SMpRPr0VcbXm8Xot4tqXkHbFIk=;
 b=Dip9+kTSWTbr6gn3P0yZFOqPtta+hwDN47LPrzX6MDjKBMFBWO9JJdcUbs5Ik9ajZa
 +ixWcapDeBlq+Yr27K6BOXXhfBAxN6Pj6Tt0MwEp//aBhpkVLyssNUhQnMxZlYSAjndW
 ptQMF5lmIUBGklV9ugMRx4tshjIRsOvEHRUv2L1CnJlMDgYemrYgHyizUpEDlwZwD7pl
 quf1Mnb8UwNTmJDOd+ahyX3tHh1y6yeqrhNg2pKkMuzIL5fUmkB3IupGf6yfM4oRNqKZ
 pTsolZ6boiDZCRwvKl5aBdw1M7p707I/QDheZ7VPwKrFLhLrTNjnFmurV8hQAd+rrgE3
 5LtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NOgs26FQJd+mh+eb+SMpRPr0VcbXm8Xot4tqXkHbFIk=;
 b=haPzwEzQF6A047HvyXtikioexzZJpLVB6/l6VmNKkZgk0XxcdiTmn90WDS+gqxyfoU
 N8F6Wy9ZXWEYZS9gBGpv6p8OvHPqJMDPg3LXJLZD+FZvhejoRZLqEu2+aJZ5VHQZQJQW
 yuTrMXNyp8YlYom/dtnLhuxIwBuFkcgk5GYvIzdrdW4X6FtMLtFwz6D1sBdMLWsSkiyL
 X4EVDhNDAGF3dVYf3IDyVxu4sIy0u9Rjq0/lz2sT7cG5QM4uX6ZIQqsWhiGuA8QVaO92
 KKJNT6gkMbMvGQwA9FTbsDnofr9ZIbia2rsdd80Ga7sHuwhDGEhESxXqIwX9rcd5uxfH
 7j9Q==
X-Gm-Message-State: APjAAAWsFY2ZPdhB3zJ/CFsJ24Mri9qx8HkAPwsZxJSFGYBdvStkOUbl
 e/0EK6exz3jFa9VB7Nf3O80=
X-Google-Smtp-Source: APXvYqyXYjonK2Ofr7tH7Sz+4FfHQ0WLG28bw9csjkdeoulwVX7aAU5EopaZVWxckKScZWJ+UM4Skw==
X-Received: by 2002:a63:7e41:: with SMTP id o1mr13657678pgn.212.1567875114780; 
 Sat, 07 Sep 2019 09:51:54 -0700 (PDT)
Received: from localhost.localdomain ([45.114.62.203])
 by smtp.gmail.com with ESMTPSA id v27sm20028215pgn.76.2019.09.07.09.51.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Sep 2019 09:51:54 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>
Subject: [RFCv1 1/1] arm64: dts: meson: odroid-c2: Enable SCPI DVFS for cpu
Date: Sat,  7 Sep 2019 16:51:32 +0000
Message-Id: <20190907165132.464-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190907165132.464-1-linux.amoon@gmail.com>
References: <20190907165132.464-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_095155_524350_1FFF2F94 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable System Control and Power Interface, DVFS for cpu
with setting 1.54 GHz as max freq in the initial SCPI tables
loaded by the BL2, i.e. packed with U-Boot.

Fixes: f7bcd4b6f698 (ARM64: dts: meson-gxbb-odroidc2: Disable SCPI DVFS)
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Cc: Kevin Hilman <khilman@baylibre.com>
Suggested-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
In discuss on other mailing list thread below.
[0] https://lkml.org/lkml/2019/8/30/186

Tested on mainline U-Boot 2019.07-1 (Aug 01 2019 - 23:58:01 +0000) Arch Linux ARM
on archlinux distro.
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
index 6ae9fafe4244..7e822408ba26 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
@@ -307,7 +307,7 @@
 };
 
 &scpi_clocks {
-	status = "disabled";
+	status = "okay";
 };
 
 /* SD */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
