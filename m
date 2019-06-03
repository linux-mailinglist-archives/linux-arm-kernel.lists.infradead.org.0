Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68EDF32D6C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 12:04:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7oZ4RAc+onomJkbH9KSpkS1IJrGd/7Yqh76WBV+kXdo=; b=qN7HnN2KK8r220
	2/fQu2gaEgpWTYnhT2M6K0tkjBP16T4ycaaiGHryA+nJKdtFNhIUBoPBYyKQ8HUKLF6+bUiXny8ig
	Bsy0Obk9ueEmraeZGHPwdjuTwlN0aaXqodm9aHCFeYEXZSQyklgKktHvjXCEkpoxfuDS7q7ElLVWG
	Fq5yPlkyhl0z/MEDwiMqjAAqtU7O4HniSUibWoZlSVWpQjG8hanzvAA4f2eniIXj1JviS2oGXm7m3
	EGNjCRYSufdeUo0IMEsUfSikPPmDfVgQCTRFR6X5nABV3vXi0/QvFBqQidiMcZUYxs2/LlPD1lNfY
	h87uYSQGl7PLqbMiNBaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXjp7-0006YP-Hk; Mon, 03 Jun 2019 10:04:13 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXjou-0006Sy-Jy
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 10:04:02 +0000
Received: by mail-wr1-x442.google.com with SMTP id d9so11400963wrx.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 03:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lz9OcKEPelvnCTb/4HXbu+GQFwOtM8R/fqmIrzaf034=;
 b=rPw9psU0swuxQ2q59Mun4xuZGqhb6XWh+KB/ARBwpCrMc6WEKYooJQtgv+frptln59
 Pj2CNCp5FMqHvmnUoaWb8uNQGwu1NcyISOH72PTAY+8u31iMcrBvTsxQ75y/xj3sXO9r
 gpBomJX9dOdqQI8rgkf2OFUUzEjRv71LOh+2Y41ZOST6g98PnhT9ijtBswPTzDi9+dnw
 qYpuGTq+EHW6yxXBeFaOckcTJAP6sIqTJrK7uKWI8hTTmaAz0XFhnZHhXdj4euRrtMFJ
 h8gdXxlKXW59NgQxO9nZF9eYYSzVExNizaRWWJeG+vc9MwOaWnkRsWbGg9tWwLEis+aP
 w2TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lz9OcKEPelvnCTb/4HXbu+GQFwOtM8R/fqmIrzaf034=;
 b=E4ACrI+fxUnrH0uBpMylnmFmGyYzciJqa3Xv3zIuc18/Y//4kfX/SzPLGQ1R6SDfxs
 Ndx5kXaSZxDW955RC+N+6Hjxa8XkwRicNp3DEvK9+4o2qlL03z+6AhCQHtTyKaf7qOen
 gvpFSYAX2uaVQrVbppcO4/QidmbYc/0US6RT7BQ6pXWWkMeXJWVNbNJ0vsOBhKw4LjF3
 G5Vr3L4hygsBGW4Do3dN/CrAVOC6YXhgFtJVpUFLrpitl6M2Hn19SwcnN2LeSWYlinVU
 +pggoM88V/jocWM0a2gQd38xbNECYWS3stCxUm4chODz4peXugkqa7yxqWCeVsV0Mrld
 5X5A==
X-Gm-Message-State: APjAAAVrH/yLJuOi/aoah4YBhGMjoaducIF3R1xSxD0e7ybS5bsdSsOX
 cqH58ufgH9OWNSgWqt/LXqg3jw==
X-Google-Smtp-Source: APXvYqys8eAbHlKxvZAv6SoAZtOgdOJvJkrgQOulcdQqFHoUWUcyiOOCeYEecwvO+6qn0qRh85UPYQ==
X-Received: by 2002:adf:eb45:: with SMTP id u5mr1827103wrn.38.1559556239004;
 Mon, 03 Jun 2019 03:03:59 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o3sm11282098wrv.94.2019.06.03.03.03.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 03 Jun 2019 03:03:58 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 0/4] arm64: dts: meson-g12a: mmc updates
Date: Mon,  3 Jun 2019 12:03:53 +0200
Message-Id: <20190603100357.16799-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_030400_806025_96D55923 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Guillaume La Roque (1):
  arm64: dts: meson-g12a-x96-max: add support for sdcard and emmc

Jerome Brunet (1):
  arm64: dts: meson: g12a: add SDIO controller

Neil Armstrong (2):
  arm64: dts: meson-g12a-x96-max: Enable Wifi SDIO Module
  arm64: dts: meson-g12a-sei510: Enable Wifi SDIO module

 .../boot/dts/amlogic/meson-g12a-sei510.dts    | 48 ++++++++++
 .../boot/dts/amlogic/meson-g12a-x96-max.dts   | 88 +++++++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi   | 37 ++++++++
 3 files changed, 173 insertions(+)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
