Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F7438DD1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 16:48:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YqaDPJIZ2rj+38QfCdKR4e6Yng7yu6z1108CGRMgVj4=; b=jorOqoi639O6mK
	4i0gwRBXiywacN1hMnaLScLYgsZhciAmllgvtI9Tya5R/YIp6n1AsGbM/Zf++rkYJCTRAPwp0e0ym
	5OPskwEjtH0O3zT5X3LxJNuEGQsHYAbwXcWEZ82sgPxIPFUaZFkPtWnO9UIi5e3zGVZC40gGiLJoD
	4Cy2xw7ysXxiTYhHDNPPQwAFJOYgNOA+E0fwfoDsLIqr7bHdPhOWe60uv0nzzp0lGavdiW14sTPt2
	tLAnK1bxn6TJ6z/J1Xj8xpKmNQrRzJHwgiyJLc26LqhcAJGm5jYR6fR8u/Ri0+5SKhROoCS0EeTVl
	OZpQpCtVdIb3SIPqGWrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZGAR-0001bB-II; Fri, 07 Jun 2019 14:48:31 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZG9d-0001Ac-F2
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 14:47:43 +0000
Received: by mail-wr1-x42c.google.com with SMTP id r18so2437529wrm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 07:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9nsYofuMppnRqgCVGCzspZVxlbsz2i2O0oowpiPhknA=;
 b=VESsgNY2BTLGAyx5Z9sLoiBllQ5A227565yEWm/niFWezYzsGjx0pAUVikjIctPDs3
 SRqUAkaM3McZicYSYQ+Klm+EO7Pn0AphEHFsx0AkBp95bMUYQCtsja8Jv5kHoQQ5hxPa
 g7y6XJBZ5Gd7wE9W3Y0n5W2TaE5j4zctKr+VGEkx2GwaXY6DjldCWUL5O3jXIJZSLE3t
 OFhWuKfRIoB4m83VpaVfk3U05gzQ/rRVZgk/GujbQSEuClfiXNZlWgiLL759C3goWVIN
 oydwAq8oaWTQlPmb/jx8X0RVZn+FWbILTVw5zg+iZssRSVLPauFbyXGtxBELAhy2kEgI
 IUHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9nsYofuMppnRqgCVGCzspZVxlbsz2i2O0oowpiPhknA=;
 b=J35Azta98R1LiMvVFhzFxfdqEZM9/hUrARtHT5mtI/3GSc5LV80/JUmaN0VGt1Uk5Y
 ZrCVtZOtzdsccNjfGXAWvOs35QyW2m6a3YytXYchfL5CCl3+4xkhxKY7Yfqt5P9sw6h/
 cJiXQ86l2A82tScgiIwVtN/rfBvN+UwYlqfygpWZHqf584ZiHmJ5qNhl4AynG+VzaoGP
 PzgWbm5fOJBH75DidGA4DgVaWyLEdNQURm3XOZyxwzOuHo0PNpRjzoNpwwUOrwm9Z22T
 8p7HzXLfXNBSsjiLJh42SE/J5pqxQxzZGR8N67uK88wmQcZmPdcWxt7RGNoEMdpMbQEt
 wPgQ==
X-Gm-Message-State: APjAAAX+pMK43u2rrnNOFie4mduUkxfj/LbW589L58UHEmjdIppeGgeL
 ZqGk7igm42kQ3GZOVj3ulCfjHw==
X-Google-Smtp-Source: APXvYqwTyBPojSgywsCHuUgsnr7aG7OXbTgjaTxNtEuvLKYqrVAsh21/mqKVoLEOHuxUCGZQwtNW/Q==
X-Received: by 2002:a05:6000:1c6:: with SMTP id
 t6mr3086900wrx.236.1559918859367; 
 Fri, 07 Jun 2019 07:47:39 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id q20sm5184516wra.36.2019.06.07.07.47.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 07 Jun 2019 07:47:38 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v2 0/3] arm64: dts: meson-g12a: mmc updates
Date: Fri,  7 Jun 2019 16:47:32 +0200
Message-Id: <20190607144735.3829-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_074741_674471_DBF1B104 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42c listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset :
- adds the SDIO controller node using the dram-access-quirk
- adds SDCard, eMMC & SDIO support to X96
- Add SDIO support to SEI510

Changes since v1:
- removed already applied SDIO patch
- added missing clock input from pwm
- added reviewed-by tags

Guillaume La Roque (1):
  arm64: dts: meson-g12a-x96-max: add support for sdcard and emmc

Neil Armstrong (2):
  arm64: dts: meson-g12a-x96-max: Enable Wifi SDIO Module
  arm64: dts: meson-g12a-sei510: Enable Wifi SDIO module

 .../boot/dts/amlogic/meson-g12a-sei510.dts    | 50 +++++++++++
 .../boot/dts/amlogic/meson-g12a-x96-max.dts   | 90 +++++++++++++++++++
 2 files changed, 140 insertions(+)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
