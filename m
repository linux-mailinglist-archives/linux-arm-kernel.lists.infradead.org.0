Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7630544B68
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 20:56:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uk4A4W05lWfO87vYx/YMbhT5xYN3nF9GQ4WYknlW5MQ=; b=QUZJHUpYPd9N6F
	M5dXVhDsD6PufN6y4fnrs1HG8kh4eUhAtfoigm/4laDq9gQLlVIA/EjrY0RnUA95X2RJbIF1QNRC0
	hIEAhbgpHPKJfavbKmzcuoqc7zM76oDqtpK8CDt0I0MMwoN0pB4H19Y7TVR2bPPDgOnm6Fgs/2hM9
	LMqaY2ia8OjcXsJENrKK20kgYw3+YbdC9C7b9IrG6rCErFcsTFf4qyI2TzUQIliBYHqjmZPPcpSQk
	PYnhLX5pzWTDszSPNGaexMerQbscZ44gkGDmN2ljqdDhQjQzC6bDjjb36qF00699GWbVRDmNn0z6t
	CNNfLPbhwkNjW8sHUdSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbUtI-0008KY-Gu; Thu, 13 Jun 2019 18:56:04 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbUrY-0005vR-8k
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 18:54:18 +0000
Received: by mail-pl1-x643.google.com with SMTP id t7so5903305plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 11:54:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6lwM3RQ6rY++wgw7yn5WUFBlppvdw3r+F1ViBjDeHCs=;
 b=ECdMR7nsipHVwpuR1tty9HburkoT+7g1MO15MFZjZnEJZmdzoLMuz4qU32PXk398ag
 dQXE/W/Ky1zTaiZvfsHfrtHdez1m4Jn1hXKc+Z43+YdH/+3HToRbQCYVTj+kT4hRt0X2
 Q/qiHEfPhbDBevTUyrBjoTziUZ39wS6hvPfkA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6lwM3RQ6rY++wgw7yn5WUFBlppvdw3r+F1ViBjDeHCs=;
 b=kPjuTlCU/q9Vh8twIKNxp8K/OuSVWLfEmOgv3IJRxCF2zRfsp2XnKWHPTqV118EvBB
 DbztVlSvI7Exun66BPVMYOsahRvPHUVn64RzrRs697dx+crsJHmWmlJyYmGyjZ8FqSU3
 vC/9HnKOp08d6tyhr3CRKEDB4sjFvXjDlRqeNI9//8EVoX9rq5GIKEuewQ2CSZ2sozrU
 3a9Nso9PUpf+EdDt5pxChoobC4kx+yfsPFkM5YWvJEsh1U0QpMzCVaVPjnZzLJxpY0H1
 rV9mb/sZ4OmuSmRXn0NPgh5vuDzFJ8d5eU6/EvvZk8vWcd/VrkyNMQ8sqkjUm78S+qFD
 31BA==
X-Gm-Message-State: APjAAAVlm4polucUEAQ0mfgzDi6iWcDWQUWvUpHd3TQIBLZrL5tGwUiQ
 B8SZlpRKxVxL9wZ5ffcVGbujCw==
X-Google-Smtp-Source: APXvYqwrSEcwAiyWJov4mOAq0qxt+AHhKCRfAadeR4vw9EKNHl7WARJKCDYcPqUSKwH+A1yGV7auMQ==
X-Received: by 2002:a17:902:6a88:: with SMTP id
 n8mr83133009plk.266.1560452055157; 
 Thu, 13 Jun 2019 11:54:15 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id p43sm946314pjp.4.2019.06.13.11.54.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 11:54:14 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>
Subject: [PATCH 6/9] dt-bindings: sun6i-dsi: Add R40 MIPI-DSI compatible (w/
 A64 fallback)
Date: Fri, 14 Jun 2019 00:22:38 +0530
Message-Id: <20190613185241.22800-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190613185241.22800-1-jagan@amarulasolutions.com>
References: <20190613185241.22800-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_115416_334174_729ECE63 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The MIPI DSI controller on Allwinner R40 is similar on
the one on A64 like doesn't associate any DSI_SCLK gating.

So, add R40 compatible and append A64 compatible as fallback.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt b/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
index d0ce51fea103..438f1f999aeb 100644
--- a/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
+++ b/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
@@ -13,6 +13,7 @@ Required properties:
   - compatible: value must be one of:
     * allwinner,sun6i-a31-mipi-dsi
     * allwinner,sun50i-a64-mipi-dsi
+    * allwinner,sun8i-r40-mipi-dsi, allwinner,sun50i-a64-mipi-dsi
   - reg: base address and size of memory-mapped region
   - interrupts: interrupt associated to this IP
   - clocks: phandles to the clocks feeding the DSI encoder
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
