Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFEC6CBBD5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 15:34:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tFusWODqHHMPjXOrPrXTZnLFIsNVArOxvbyFZHIeofQ=; b=m8WxeTKJf5ODb8
	HY8DYtFO6C+sIFicQfPvxKcokPiKEhzNyYMYtCwW2vGyU3UtRwmdu5yaCEBZ5hGy14dWQYifiLiUy
	/leBTHuNyVF2lH54muGOWFH4vSY3Ck4okdfbZ88G+j2c5PK4m8wbYcs0rNcZO3Hi+aAmc5IOAWxGI
	JC4urWz9u1X1ITvE1IxI0jIGIcbm2YleYHp+8qbnJTunilt/5ft+tdOAPsB0Ygfl6QzGjEVYHkZ4r
	NePfenWbXhJPh42qujL9XDzCCXl0lJ7aCyOpPbhD9vdLacgD2RcyRuHYPI+L+yipo2g0NHspn8jxz
	rwv4tNlhTPPI/lqTe8zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGNim-0006CG-7N; Fri, 04 Oct 2019 13:34:12 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGNhi-0005KH-D3
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 13:33:07 +0000
Received: by mail-lj1-x242.google.com with SMTP id v24so6545433ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 06:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KJd8sbimmy5mnSq6QgFxWdBMbJR5jACe59+ThyKK82g=;
 b=QLFFDcVHI2EhaLtxhPso76+poBjMJHw10fNMzcHwmoy9Cx7Afn8Mk5EQT7FCzlOnBI
 YhUhbpnEWCSXynuZYJcKXvG2a71t2R0i9EybdRZHp3LNjkXGueILouvZUvIxp9OnQl5a
 T4QtdWuCdh0huq8+tgQQPgcDyr9ovSMCjdFsQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KJd8sbimmy5mnSq6QgFxWdBMbJR5jACe59+ThyKK82g=;
 b=kB240Mx5Myr1ewDjJ0Q5PG48r4by0HE2X7L35puRexSDktZ3JUcomf1L534jaCOOco
 Ns79TgTTwV0pOo9b+MhBi++z3f9Omh+GM3QsAJAIGUsdzUcKjS399QOHu/0plCqkL+tM
 6EGj/6x0NPqYPj2XPEE3YRsmqgYCPzPy6edaFdpO+iQMHFsQDOOTWTSd6tRwk7GQdG9c
 qpN6kptZ40Qu4lypZSZZrXjk6Cwqva2cFZ/tA7jicTouKeZbU7WE8D0Rmg3UeadIXlD9
 MGrTXIAhqQa28tiotG1NQKaynK8b3UVFwyafhpzSBBcxx1EbVgwwB1j+KiTgLh72LxL8
 ke4w==
X-Gm-Message-State: APjAAAXvwsPBKp63LU1eLUWd9FCLT6kgji9EOsFWHTeL6Yp/PPz8UPsm
 loJ9mOy+LIyFUA9WPSqaZvLguQ==
X-Google-Smtp-Source: APXvYqwvmj9emNdcSYaeyQ5bIj8DBfAdIXf//abqi9CfcXTehTrWUROGkbvTAyHXk/O4qK9ZmcUc3Q==
X-Received: by 2002:a2e:9f12:: with SMTP id u18mr9775583ljk.23.1570195984389; 
 Fri, 04 Oct 2019 06:33:04 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id y26sm1534991ljj.90.2019.10.04.06.33.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 06:33:03 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH v2 4/6] dt-bindings: pwm: mxs-pwm: Increase #pwm-cells
Date: Fri,  4 Oct 2019 15:32:05 +0200
Message-Id: <20191004133207.6663-5-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004133207.6663-1-linux@rasmusvillemoes.dk>
References: <20191004133207.6663-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_063306_483394_213260DE 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-pwm@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We need to increase the pwm-cells for the optional flags parameter, in
order to implement support for polarity setting via DT.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 Documentation/devicetree/bindings/pwm/mxs-pwm.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pwm/mxs-pwm.txt b/Documentation/devicetree/bindings/pwm/mxs-pwm.txt
index 96cdde5f6208..1697dcd3b07c 100644
--- a/Documentation/devicetree/bindings/pwm/mxs-pwm.txt
+++ b/Documentation/devicetree/bindings/pwm/mxs-pwm.txt
@@ -3,7 +3,7 @@ Freescale MXS PWM controller
 Required properties:
 - compatible: should be "fsl,imx23-pwm"
 - reg: physical base address and length of the controller's registers
-- #pwm-cells: should be 2. See pwm.txt in this directory for a description of
+- #pwm-cells: should be 3. See pwm.txt in this directory for a description of
   the cells format.
 - fsl,pwm-number: the number of PWM devices
 
@@ -12,6 +12,6 @@ Example:
 pwm: pwm@80064000 {
 	compatible = "fsl,imx28-pwm", "fsl,imx23-pwm";
 	reg = <0x80064000 0x2000>;
-	#pwm-cells = <2>;
+	#pwm-cells = <3>;
 	fsl,pwm-number = <8>;
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
