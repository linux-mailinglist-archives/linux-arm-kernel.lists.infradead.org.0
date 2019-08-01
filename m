Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D747D6B0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 09:55:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3Sgqlz6aPYyGEcJpYIBLDp/zW4QG53w3ZLIPLoeHgn8=; b=jLk9Bu13H/hbBl
	hLqNBbMrXA2dKf655hhqfwA/5h1KFoOoAqPpUWoe8svCHYtd1Z37LcozVHPk7aGwE+O6k73MWSoVJ
	XK2AwAteaoXQ4QvnGtrp4oSGpFmUyw+tXrI17ngktVW2J2pSFjkZkTp4BdjF6Dn4KJnehuR5xhIOG
	0oh6FkPNDutMc1CZYeb8DAvPVIGEQOGYE0isZ2BGp+ybxcySWCQD/g5zSBbaQXvORRm9gNV6Tyy6G
	MMgRUmwR3Gci7bAD0Nqomeu4X66mmHkJemD88HdFozLYk8g5aHokQnYCtqpaMp4cEooyomLQh7sUd
	lsKXgB/N3eX3d4s6IqcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht5vd-0001uT-Ql; Thu, 01 Aug 2019 07:55:13 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht5vS-0000x4-5T
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 07:55:04 +0000
Received: by mail-wm1-x343.google.com with SMTP id p74so63516637wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 00:55:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DCllPmBw4lut+Uqi6OBcOMhCVblvrSC3X451qg4jFyI=;
 b=1jyb7sI9h2Uu/fkFZ5BhBBVZzi57jo75CTaozgehdA86w5n7mdgbzo60jiiZVdMxE6
 pU9AtBQsVZQWlm3Fj86Y/7/Guo6t5FrrkQTNpzN1jnFbIPJxcn2uLdrBjAQiIB45ETGJ
 J9TgoQgHrrAtw2229GrQF+4d8T/JvLYVBTUb4XHiKyi39GxSMmrRHylwfXm10gJ9R5Br
 0TOn0DO9J7iG7Nf18SBjlN5QL59+5/Kw2mEDuX16FEcZc+Tghy0Pp2JccwIvZ9bJSxTe
 qBygl1LSw4Rk33E5JtmMmvOhd2R26tZZH7kmUCnLwzxgd4wcqbMN+ZWyjQ1jWXxE55Ko
 lwtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DCllPmBw4lut+Uqi6OBcOMhCVblvrSC3X451qg4jFyI=;
 b=lpU2LVVyVWyOX/670w5ItOXMgWoxmAsZ44HXn8FWerWyb0OKOBRJJHieuWVQnBinjQ
 mrEY2LobcOnIyBDkSqAbBpXx9k1qlnoUHUsV7X64uoXZqmRAI2i4R72C4hzM6i64o+Db
 N1Hhd8wdHs0A+5N8Mz5dWn3VMWj//ybBDfZ+OwfepNpRWZ6yz4HG2Y5JpI1UVaR2awfd
 5/jU62jCdTHv89oSU8pcnyoz7nkfQPbsNzmhR9TXoI+Sz3i2zePnilbwjvVQPVqRQtg6
 BNcvnzfviIsiM/j+2AWZJ+pKDsSd4jCa67ZZYTUmTwtmZo18dhHtWdNEfFy+aYD1PN87
 eBAQ==
X-Gm-Message-State: APjAAAXCklFIOFxVqUWg4jrbfiyCT0wgls/3xwOPl85sUNfmxUxsdEW9
 gynRS9nwQXLdgP/WT7a2c3qaWw==
X-Google-Smtp-Source: APXvYqzlDJs+p7+lHmLvPaIqh7+AzhIFpJlRyvlJ/W3TVENURBpyKur7D9F3PzuD0Ye68XsD7jxAXw==
X-Received: by 2002:a1c:407:: with SMTP id 7mr120943986wme.113.1564646100198; 
 Thu, 01 Aug 2019 00:55:00 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id y12sm64199221wrm.79.2019.08.01.00.54.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 00:54:59 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: p.zabel@pengutronix.de
Subject: [PATCH 0/3] reset: meson: update with SPDX Licence identifier
Date: Thu,  1 Aug 2019 09:54:51 +0200
Message-Id: <20190801075454.23547-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_005502_265868_B1AACC8B 
X-CRM114-Status: UNSURE (   7.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This serie updates the Amlogic Reset driver and bindings.

Neil Armstrong (3):
  reset: reset-meson: update with SPDX Licence identifier
  dt-bindings: reset: amlogic,meson-gxbb-reset: update with SPDX Licence
    identifier
  dt-bindings: reset: amlogic,meson8b-reset: update with SPDX Licence
    identifier

 drivers/reset/reset-meson.c                   | 51 +------------------
 .../reset/amlogic,meson-gxbb-reset.h          | 51 +------------------
 .../dt-bindings/reset/amlogic,meson8b-reset.h | 51 +------------------
 3 files changed, 3 insertions(+), 150 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
