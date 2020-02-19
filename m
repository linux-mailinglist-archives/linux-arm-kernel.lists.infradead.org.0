Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB907163FA8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 09:50:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wlK4VeMR5jZ09C0xVhUv8FqITNZBeLA/ejK6JWV5VWc=; b=krKWFyCpQfjJ4r
	dwKIGPSKmTKPrpjbuIAYsCwFVJCmA4fyR7kOIbXyNvhs1wcBHqpqdjre+UsFObTKBl6Yev6EyQL4W
	2tCpmVBZz/QuiChz31DofO356jxBvPFvdXap/9vNsIf/s80KDhRTNJY31kMJHTtpsUaSB9Ueow7gR
	WLf55ugfJk5IucV6O56bgXX/znTGnKJ4LUGXF6wXVKZVH6xoZNjBCBsa+4jTnVKgx6xXcxrGdbfvK
	BBdJX7alG8dsMs+JBoIr62zcirW4Q7pRRgQ/1/1XJ4OV27MqasTQ9eh4MYv51a/Lp+MOF1E3mrxFG
	VXwy8+SiLSp1uIUYcOPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4L3K-0003ra-5P; Wed, 19 Feb 2020 08:49:54 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4L34-0003oO-A2
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 08:49:40 +0000
Received: by mail-wm1-x341.google.com with SMTP id t23so5522244wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 00:49:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+OjifpqqKo8DYjh9Op+2jQZP+EdT+EofXUxP9wt2jCM=;
 b=cL0AUTWKkL3rtprOF9RpLDm5fmboSeErTyBaUrZyTXIVwyjd2UZbhz7UXzd41KXKSu
 GtzArdjwHOOlaTPmYly86hCsUAO6Kiuo4+qkiRbTbhiXW6L98n3m+KB4Ov2b8ZZ/W00t
 tS1+dbs8cLorG4nJKCTUZE9NB6Zfv79l+EmzFTRSeO4gHTa8YaF2vuKVRwTtMvXZQGXw
 NnbXs9vgvD9UcuqO+woNRCzj9Axf6ce7Qm1Ezd60IqfbNXGky78jEKUE0CkOiIcodjuk
 yjSpSbGXIh8/W2H31lwVaVjGWQ+ABciWuEJJ7JWtBu1yIuE9wd+gbzEAjgIja/YR0Cl+
 t+WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+OjifpqqKo8DYjh9Op+2jQZP+EdT+EofXUxP9wt2jCM=;
 b=klqG5m6VNV0HEnC2BQ0jasTOjyG4R9cu7c6ZJsiqJxar7HA3aBC80ER322xg6m9mWF
 Gj/ejyhuJXrRemskyphLFJmN0+2QQugKCYm1USWNLbLmLH7NmGj5CKB+YVd5+Fq79xdb
 xe2RQot7j45AEjMg8U/eOUOS/Qla4bCHRCrPCGF798Etytymzjf0GsfPOstdw+3fR4pD
 7RNbuu/DFKzh6SQgbp1JNbZJtaMCItVKtOpOKumAkzaxKzCxHV5UR1ljX8Zj87KV05Vn
 lvGmg6A0+o5mRXvzjapkpVkNljOnoabhS2i3Qv6x2zaAv2Jjw8q7u5Ps+bipFhkuYKzl
 4VEQ==
X-Gm-Message-State: APjAAAXBgKUsSgNd+i/Z1C7p5YUJ41lstWxDn7cPLFC4mQ6k+Qz3+J65
 qWi/14N0k92ma9kL60/kypYBFA==
X-Google-Smtp-Source: APXvYqyL5YkCPYRHLJKYfuh+lPCFN7xEaXE4fRNEWpjsiEPxFXo/1CgZlKkY9CP7IToKY/NzXjDeCQ==
X-Received: by 2002:a1c:dc85:: with SMTP id t127mr9278562wmg.16.1582102176198; 
 Wed, 19 Feb 2020 00:49:36 -0800 (PST)
Received: from bender.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id t13sm2021673wrw.19.2020.02.19.00.49.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 00:49:35 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com
Subject: [PATCH 0/2] clk: meson: g12a: add support for the SPICC SCLK Source
 clocks
Date: Wed, 19 Feb 2020 09:49:26 +0100
Message-Id: <20200219084928.28707-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_004938_349023_F17E3A99 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Like on the AXG SoCs, the SPICC controllers can make use of an external clock
source instead of it's internal divider over xtal to provide a better SCLK
clock frequency.

This serie adds the new clock IDs and the associated clocks in the g12a driver.

Neil Armstrong (2):
  dt-bindings: clk: g12a-clkc: add SPICC SCLK Source clock IDs
  clk: meson: g12a: add support for the SPICC SCLK Source clocks

 drivers/clk/meson/g12a.c              | 129 ++++++++++++++++++++++++++
 drivers/clk/meson/g12a.h              |   6 +-
 include/dt-bindings/clock/g12a-clkc.h |   2 +
 3 files changed, 136 insertions(+), 1 deletion(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
