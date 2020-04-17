Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 484751AE4FE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 20:43:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FyiMK+f1bj0Df49Ajej1Ihff+NeCeeCIlGQQPuC8TzA=; b=qPgPFlQS+OiWut
	IRHtjjeoW9/yIP6jkTI0Bm06pRuwKfVu9ZJ32fHaZDaEyJiwgBuUgHUok5YTbGMtSG1RAKc+mGG/i
	mOu6LxeDosYP03h+/YDLJHok8Z7mWTU2JcsIv8AzDCXljImCazmqQItU8B/HfFZbqRjRoMBMJhSW3
	1Ks7NQ97bTLJfQsTufe9a49m3reJO8wTizFezMaCeaejv7URUPLksJH1jGeFLy0MAZXly3Ofgl6Ig
	39Pzv4lpDRhdvfA0RDnGnpiv/2LJh+Dd/N5Kh5zs1TQk+dZJWYAUYGupjh1dxtZmTQrVQmsZNYP9x
	pfeWIvNUpCAAkl/JZSDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPVxI-0008AP-J0; Fri, 17 Apr 2020 18:43:12 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPVvs-0006w0-GQ; Fri, 17 Apr 2020 18:41:46 +0000
Received: by mail-wr1-x444.google.com with SMTP id g13so2160350wrb.8;
 Fri, 17 Apr 2020 11:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=p4RArEPtRb6yXEdgtQ3ovyy6FMchkA9pg/LkRnSfJR8=;
 b=LB3xbvk8qJejz7tCjtEyfb58WU6LIalruJuOoQB1Cneg3/jqPgHlbv12NNDaHlpzmV
 o4uu9ADrf4vAphiHiJGYnZeemkZ8JE8PszXtVht45LbV0jh+JbkeLCUgh+NQv3ew0EET
 5OiBadJ8IJ60jWXZcJ9Mh/m0VvlOUHi4cRATM4vw8O+eKPsyatKhe+icKhBA2UTl0dad
 OLrmY/o1wUQK/j6xSJ9Pka6ITAWn4HHjRddCbGUV2CsNveMOBp6rZIwhb03JPd0/FdGw
 erl8L7qmaKONyIRCGNvpUFl9zUFYxMecqk3JJryPWqoARSS8D+vPJJSMwceyE8a2smeE
 sQgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p4RArEPtRb6yXEdgtQ3ovyy6FMchkA9pg/LkRnSfJR8=;
 b=F08Xhn4Mv81QPwWAQCgS9SL1Jj08Awek1PrRAPEt8EM8HQxPg69BMwcsDFsoyoIpgG
 awzIdFTk6XPWSvSxgmmHA4Jn72TBkoK4EkbOI0r9WVEulLidscLokgX76Gi9nkts6lM9
 zNpWNBOh3xv36rDsn5XWqqNrsUpDPzOgkDKU7uc03XJrb8TCNESkGu1mQ69FcoyHEidb
 cF9b8MIqiWnrRTMQJll7ElWFjHAQKK2iCWRJCPfoKdcuHHdzDDK250sGk09jjtMF9ExK
 ZuzYUm8PaTgUE4VHGp2vYQGSE7oLoVec+O7LVfLHbfrPTNM+XQN2kG5FPYp8JLJq7L1m
 qtbg==
X-Gm-Message-State: AGi0PubrO+VVt529R1yKvgP1Jz5H3ZBCTDE/zA5gOLgjQiWaKF2Mhca+
 r6YDZdRz6tQDEfgvoFJqX/U=
X-Google-Smtp-Source: APiQypLp5qHymcuJPKjzUtOnmkQmLSVUjfmU7kNQvo46lL7qlgyByinKLdOTrFJU3TOKc0KrRY21yw==
X-Received: by 2002:adf:f884:: with SMTP id u4mr5203954wrp.171.1587148903269; 
 Fri, 17 Apr 2020 11:41:43 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137142E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3714:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id c17sm33237391wrp.28.2020.04.17.11.41.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 11:41:42 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: jbrunet@baylibre.com, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v2 4/4] clk: meson: meson8b: Make the CCF use the glitch-free
 VPU mux
Date: Fri, 17 Apr 2020 20:41:27 +0200
Message-Id: <20200417184127.1319871-5-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200417184127.1319871-1-martin.blumenstingl@googlemail.com>
References: <20200417184127.1319871-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_114144_553639_15639FC1 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: narmstrong@baylibre.com, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The "vpu_0" or "vpu_1" clock trees should not be updated while the
clock is running. Enforce this by setting CLK_SET_RATE_GATE on the
"vpu_0" and "vpu_1" gates. This makes the CCF switch to the "vpu_1"
tree when "vpu_0" is currently active and vice versa, which is exactly
what the vendor driver does when updating the frequency of the VPU
clock.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/clk/meson/meson8b.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/meson/meson8b.c b/drivers/clk/meson/meson8b.c
index 6d1727e62b55..811af1c11456 100644
--- a/drivers/clk/meson/meson8b.c
+++ b/drivers/clk/meson/meson8b.c
@@ -2063,7 +2063,7 @@ static struct clk_regmap meson8b_vpu_0 = {
 			&meson8b_vpu_0_div.hw
 		},
 		.num_parents = 1,
-		.flags = CLK_SET_RATE_PARENT,
+		.flags = CLK_SET_RATE_GATE | CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -2134,10 +2134,18 @@ static struct clk_regmap meson8b_vpu_1 = {
 			&meson8b_vpu_1_div.hw
 		},
 		.num_parents = 1,
-		.flags = CLK_SET_RATE_PARENT,
+		.flags = CLK_SET_RATE_GATE | CLK_SET_RATE_PARENT,
 	},
 };
 
+/*
+ * The VPU clock has two two identical clock trees (vpu_0 and vpu_1)
+ * muxed by a glitch-free switch on Meson8b and Meson8m2. The CCF can
+ * actually manage this glitch-free mux because it does top-to-bottom
+ * updates the each clock tree and switches to the "inactive" one when
+ * CLK_SET_RATE_GATE is set.
+ * Meson8 only has vpu_0 and no glitch-free mux.
+ */
 static struct clk_regmap meson8b_vpu = {
 	.data = &(struct clk_regmap_mux_data){
 		.offset = HHI_VPU_CLK_CNTL,
@@ -2152,7 +2160,7 @@ static struct clk_regmap meson8b_vpu = {
 			&meson8b_vpu_1.hw,
 		},
 		.num_parents = 2,
-		.flags = CLK_SET_RATE_NO_REPARENT,
+		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
