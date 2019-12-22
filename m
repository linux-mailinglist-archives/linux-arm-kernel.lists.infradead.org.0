Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 069E3128E3C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 14:31:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MpNLgwrcUWVMYEe8PcJLWKsWHQBz28rQK4Y9K+MWPO4=; b=bHXce8QQ8emnWq
	MV9FxbyZjKpyhglwv6N3kZqT6BKI/ItxJQJ4LKVWJFqa9awFuwyGmxozNdI6E24TmcHv5qcq2/qJu
	kkiAeuN6iF1FUDx3bGAhSwvtQBbMHbQQ8vLXPANiZeTvwBjn2FFZGi+AJ8qNY5ptI8IGkVo2qr+/4
	bp9U+Ul0KbrhbZkPvG4Ui7o5dDM26xGcjg1v06mR3A566X2DmNBM+pEjwK3F7HXqkS3GdJG67rXod
	ePgUbruWUYNfgz7F+IsiNHx24cOFu6riZ0k9j3zfJRMPaGRTST6nS6/HwKsw5vjl5eaMVqL/iEPU4
	lsfnQpzXZ+AOqKDChLpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij1K2-0005iO-6S; Sun, 22 Dec 2019 13:31:02 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij1It-0003fL-C1
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 13:29:52 +0000
Received: by mail-pl1-x642.google.com with SMTP id az3so6101619plb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Dec 2019 05:29:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZXOcwXSpTDZpb+/TcTbfTiplV6hYObjzRW1vf2xFZRA=;
 b=I3PQ33U14EAolLLj8jlrmUJ/O9DIkC6SXNrRVAoW9isHRRLbh0z685MsUAAtjr60en
 UzggneMmXWh6Sdorq0YMf2qD+5Zi4RnYC350HCHCRJPy4evKsI1sZcsdE2rXY2dTYvT7
 1PQ9gScLj5oAiJ/wwt8CJTwOu416Ss5/Im9YE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZXOcwXSpTDZpb+/TcTbfTiplV6hYObjzRW1vf2xFZRA=;
 b=TqMjqXPfb72mAtvYLp4zmhSbyzQDnIuVSrwkGBjiqS4EdYjCQX+G9q578kDR5z59wF
 NNkujZbB9N8RyTXuhga405iuwIJSlm4nh5TfPKTH+SLyNqZdu8oJsQb7eDmJfAkCP7cN
 yUw8ujM5fchseCqE8FZ2t5wBysnVgaUvgJJ6jOhvocPPtpowDlGqKZQPwMLn4hQ7GYNi
 4kKmF+JnpXS4M/FbMp8NL3EZ6qDcCU7dTS9gEc8S/Ip45TNypPTgXdXBoFnhEcMIweg+
 kZLiVFCmB8WXPjStYOFIga0fxTj/OeWHJm+7aHMCuRcjiedcLokBf7Amy0vhl9+siHJN
 wOjg==
X-Gm-Message-State: APjAAAWc/c6XCruWsNiJQYlB+eHsqeHxxblmYCfsWpL9ZXNO6YQHjqPB
 hH5fT27TSWrRrYmPzCA9keCNUw==
X-Google-Smtp-Source: APXvYqyIL1psXc/olK/QSRgQqBxtxjvsmTJrG5PZsaaCso/VKkCbYbl+cm8ubF+spBhD1JmKttrayw==
X-Received: by 2002:a17:902:48:: with SMTP id
 66mr25655198pla.182.1577021390160; 
 Sun, 22 Dec 2019 05:29:50 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.16])
 by smtp.gmail.com with ESMTPSA id o2sm12073058pjo.26.2019.12.22.05.29.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Dec 2019 05:29:49 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v14 5/7] drm/sun4i: dsi: Add Allwinner A64 MIPI DSI support
Date: Sun, 22 Dec 2019 18:52:27 +0530
Message-Id: <20191222132229.30276-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191222132229.30276-1-jagan@amarulasolutions.com>
References: <20191222132229.30276-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_052951_416139_81C20CF2 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>, michael@amarulasolutions.com,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The MIPI DSI controller in Allwinner A64 is similar to A33.

But unlike A33, A64 doesn't have DSI_SCLK gating so add compatible
for Allwinner A64 with uninitialized has_mod_clk driver.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Tested-by: Merlijn Wajer <merlijn@wizzup.org>
---
Changes for v14:
- none

 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index 2577b237d06a..4a024951aa11 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -1256,6 +1256,7 @@ static const struct dev_pm_ops sun6i_dsi_pm_ops = {
 
 static const struct of_device_id sun6i_dsi_of_table[] = {
 	{ .compatible = "allwinner,sun6i-a31-mipi-dsi" },
+	{ .compatible = "allwinner,sun50i-a64-mipi-dsi" },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, sun6i_dsi_of_table);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
