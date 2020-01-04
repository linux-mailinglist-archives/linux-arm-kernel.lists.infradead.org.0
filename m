Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 604B2130138
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 07:36:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U1qkjIyropHJutAU38z+letE5fDC7Nf+nNZQA9mAQvY=; b=I+RIduckDraX0E
	tjhCpyVSzsY9EOAAETIGIRTxs/aR9IrFeCKjXR48c/5hfhEPq/meRYtcHPqQti/N8USFZ2/Y5dlCC
	JWdWvFoD1VumofQ2CIMFkSclRYK9R55VIjNaOUCyBpy+r+10i+DFooboN7k3pqMWo4nFj4gtlXiCH
	wPh+qKB+w7yW6naCRIz8mJEU324/Wa3vuAwgE64lH5gLA3pCu9mBsGiUQDsDolYHDiFCHpYCwfCJN
	eEwY2W09eIc2BLBgs923v9poFZL6oCWRfqB74XkFPfHHiXFWcvjjlakZu6yy2VI5ZD3yywztcpIQ8
	ch+bXM6ScMXhzOBJta0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ind2O-0001ww-O8; Sat, 04 Jan 2020 06:35:52 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ind1p-0001VY-3l
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 06:35:18 +0000
Received: by mail-pf1-x436.google.com with SMTP id 4so24467233pfz.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 22:35:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=r5PKGVb0dDuVUlJ0+VCUDjDjxFbtyh7Bp6dOX8cXxZk=;
 b=N3OQHln9X+hJ8yMsU3mNQMI5zuWGRE/v6GRy3UBwgP8D5naP5ZA04A/HpAQrEwstIP
 GmaPV4f9hHw+7XGxv/LHzgBLnUYfUYkH9mTlEyr/K8ao7yMP3RRj8spC2iEeHV8E7cF5
 PNJBsZp7Eof3ag+a6Sn6RA1npkxv5SjCkjxmJvHVUv6rMqcb4d7VjSv3tOLi4Bqdy4fR
 DRNSIWJsCuTqLfHGJnUuojWf7e2tOkG61r2XIMvLpLfepnaRi1ykKvLvdXI8E6GQ3i8z
 EPpyq3LAWRE2j0LhuGEqBbjZjuXGBpM31nkB1ySeQwgWbUIUS1QD2rHi2CjFzFClCXRB
 YXGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=r5PKGVb0dDuVUlJ0+VCUDjDjxFbtyh7Bp6dOX8cXxZk=;
 b=ctir21li9VgVEXAQ+uxq0NST9+BUNq61tzit9qGDC5ET5GwCzZD8nI/6SaUOmKvJDJ
 r0znA7qPWsWPgEcm5bpdybRvPyfFlVG+TSFSDg3JNpwDYg+iVp/bSARgvo4WrdVc/LAR
 Z3gmxlIDK0CfXxrw0x7qD8aStiDeHxCZZ0qUAklJ7ssx4ROopFUMPXTtlxL0VYPyfwMY
 i4iqHj1Dn6V8BHLBq3uCWbpbPBlyrspubiwtVPUR/LZp52pagpddRwgdqX4giuqxCROP
 fotwChYcJYGZkJgTaz2Jw12VvzU+fAXkXvJi9d1Fgkv6UHXNnqVRj7MpNqJ9rCQz/smP
 /XnQ==
X-Gm-Message-State: APjAAAUCkDWBzliC0oG9IFb7qVYpV5joZn3ATQmwiQ96s3rDETfjrP3O
 7HWLkXmx9dsVhh3UfZqkjeM=
X-Google-Smtp-Source: APXvYqwZj8SDI7DbUOwYdHKJrDNeMHcthHxarF0VkAChIuOoMuHZFsfaTqF6idwcE3+kpOQCLXH43w==
X-Received: by 2002:a65:578e:: with SMTP id
 b14mr100617080pgr.444.1578119716337; 
 Fri, 03 Jan 2020 22:35:16 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id u2sm64761580pgc.19.2020.01.03.22.35.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 22:35:15 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: [PATCH 2/3] clk: sunxi-ng: a64: export CLK_CPUX clock for DVFS
Date: Fri,  3 Jan 2020 22:35:04 -0800
Message-Id: <20200104063505.219030-3-anarsoul@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200104063505.219030-1-anarsoul@gmail.com>
References: <20200104063505.219030-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_223517_151235_73A280F4 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:436 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Export CLK_CPUX so we can reference it in CPU node.

Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 drivers/clk/sunxi-ng/ccu-sun50i-a64.h      | 1 -
 include/dt-bindings/clock/sun50i-a64-ccu.h | 1 +
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun50i-a64.h b/drivers/clk/sunxi-ng/ccu-sun50i-a64.h
index 979929276709..116e6f826d04 100644
--- a/drivers/clk/sunxi-ng/ccu-sun50i-a64.h
+++ b/drivers/clk/sunxi-ng/ccu-sun50i-a64.h
@@ -36,7 +36,6 @@
 #define CLK_PLL_HSIC			18
 #define CLK_PLL_DE			19
 #define CLK_PLL_DDR1			20
-#define CLK_CPUX			21
 #define CLK_AXI				22
 #define CLK_APB				23
 #define CLK_AHB1			24
diff --git a/include/dt-bindings/clock/sun50i-a64-ccu.h b/include/dt-bindings/clock/sun50i-a64-ccu.h
index a8ac4cfcdcbc..e512a1c9b0fc 100644
--- a/include/dt-bindings/clock/sun50i-a64-ccu.h
+++ b/include/dt-bindings/clock/sun50i-a64-ccu.h
@@ -46,6 +46,7 @@
 #define CLK_PLL_VIDEO0		7
 #define CLK_PLL_PERIPH0		11
 
+#define CLK_CPUX		21
 #define CLK_BUS_MIPI_DSI	28
 #define CLK_BUS_CE		29
 #define CLK_BUS_DMA		30
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
