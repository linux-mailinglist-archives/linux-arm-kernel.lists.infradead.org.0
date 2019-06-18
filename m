Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B3449FCF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 13:55:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V7irLwRwLUD2QN/QYGcXnPEkEV5Vh0Xbl6PHMWjhkBg=; b=lckIe3LH3vQ5rh
	ahK88wz6eUzd1XPYcbBB3OpCWXbJMd6gT0Tj6Z7KyzImMgOTpUKChWdTNcFpvQ9BjX2qtDb7bbhck
	xmlX+tvebWCztXyVlYONPOuhLjTVxe498gibb5vPydSQKHcOtanZ8xewgaWvJyJzzoHjudhISZTem
	5PCpG/5mmJoZLmjs2o4vwr2vEZUCDQQcLuCAspS6cVmTudQYYKFmaY1xq8UrpA97s0HgtFpcoSdTe
	4hYZg3fVBnNy2n6XbVy0WOSSrDpEwlNbbhDcUxbndnBwY7yt+wdgJL+eCid+EGq3AQNiorEmEQCuV
	vqNrBQeAgIoSXuMXTc2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdChj-00042Z-9X; Tue, 18 Jun 2019 11:55:11 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdChR-00041x-1V
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 11:54:54 +0000
Received: by mail-lf1-x142.google.com with SMTP id 136so9024347lfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 04:54:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+dfjBSHgtV2+DqYW/2qohoqP6tQvX9lvmbwlN9p8xok=;
 b=GpN5sTjv86uCDuTPWuHMOqFwziSbLRPXZRL+U9QzUSFvWALTXnq0efOqF63gANGgQw
 MaWtqZdL9LF5xjuPgOVXuR5WyFN0egV1FFRPlqhUkqqK6ytJfShboMrLgRShdXPkrA+p
 BXb8EWjOt2hf3CC1fhPokHWTYso+rdRmUzRHIRgkRtoYVVPUIleUUr9e0c/HFAq5ARGk
 HVAINiGpgs8BwU7R8hfTfxkvetZYVG1PDPNNLUr9AY8EMH7ARz42/G5HwfNZ8jM9iToO
 OgdMxvZljmTmSvoZfDqY0et5s5v5uhvTckUgCOqyNANon722ww4w6GPf5udX1HYNfu9P
 3sCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+dfjBSHgtV2+DqYW/2qohoqP6tQvX9lvmbwlN9p8xok=;
 b=iHPujo1sE03Cb/U4rUs1WPM9ouKY4eWt5iA2bLv8ms3XRtySoGmZGnoSfsJ1A9n33M
 nkonlr6ZoDEYe+IneDR4hTcYG/VyttetAP4roO/LxbuKQ6tVYgULyZuZX1PYDoOKOzxD
 zjYmEwVGkIZWeIRDRr75HD6vw+t5P8v2nc/PxXvP7is7QZPJW55vhNDt3L+aFeOcYvsE
 poBysnnKaQ+Rwe9DL0O+j3n3+79HjD/HC032v+I+I+FoRrK5l1+NR5smWTe8wOxtrYJ6
 gQpVsKGfY24Z4lH3jvdrulnlvSauVN63p50csWwHYWTOSgG5zSczqaapnGsz4pApmWKq
 WluQ==
X-Gm-Message-State: APjAAAWZNXfV+M/bTH94nLUJSUfS1AhuuoMc+b2VTG9jmjd0YyYgHLnm
 28/XygdIOS86y+g9Nokq1V+51sakGc4=
X-Google-Smtp-Source: APXvYqzr1s+nxUHm9Hwy9tpIJNXrqEqZXVEFefJr4F40Fm+Bmru01KGHk9xmftIyFj4BySbR0IgdPw==
X-Received: by 2002:ac2:46f9:: with SMTP id q25mr6053748lfo.181.1560858891114; 
 Tue, 18 Jun 2019 04:54:51 -0700 (PDT)
Received: from localhost.localdomain
 (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id v4sm2566603lji.103.2019.06.18.04.54.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 18 Jun 2019 04:54:50 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>
Subject: [PATCH v2] drm/mcde: Fix uninitialized variable
Date: Tue, 18 Jun 2019 13:52:45 +0200
Message-Id: <20190618115245.13915-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_045453_189876_F906D15A 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We need to handle the case when of_drm_find_bridge() returns
NULL.

Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v2:
- Account for both NULL and error pointers by two clauses.
---
 drivers/gpu/drm/mcde/mcde_drv.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mcde/mcde_drv.c b/drivers/gpu/drm/mcde/mcde_drv.c
index baf63fb6850a..a810568c76df 100644
--- a/drivers/gpu/drm/mcde/mcde_drv.c
+++ b/drivers/gpu/drm/mcde/mcde_drv.c
@@ -319,7 +319,7 @@ static int mcde_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct drm_device *drm;
 	struct mcde *mcde;
-	struct component_match *match;
+	struct component_match *match = NULL;
 	struct resource *res;
 	u32 pid;
 	u32 val;
@@ -485,6 +485,10 @@ static int mcde_probe(struct platform_device *pdev)
 		}
 		put_device(p);
 	}
+	if (!match) {
+		dev_err(dev, "no matching components\n");
+		return -ENODEV;
+	}
 	if (IS_ERR(match)) {
 		dev_err(dev, "could not create component match\n");
 		ret = PTR_ERR(match);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
