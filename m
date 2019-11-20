Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6E8103E67
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 16:28:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+wNu77vk+Y9qaryBoQyk7BgwvfPtmJP/9t82ZvCHWpg=; b=hKRf2yB97RTJUz
	m1K1ZR2F5N423jxHD56o5URMl/NCDRT7Vaf2khBiJbpj93v4xaVahKGXbVJoX2d7mCX/AUa6sfktE
	N6uUnhF09AjXuwyr00Usmr0Yh2dQyjZk38zPl8pKeyRjlmf4aJcaAYNzcx+SopDKTZ05BTMjAOfGc
	vZAE7RUexqmxYL7EbFPrfbX8dwDs/ovHm/FEiNyqywd0qAOov7NFMY6wJRTqWQJwyqGuH3lt04eY6
	YXGRC5bz26IRyXjZqC0DN9uLaKiLr+wYParuE0Yjk+jDNwWHpH/2HTzRB+FNmFf4xETT4G4GYT/pc
	D9U7pHl5/AI1puKPuFZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXRuY-0000IN-9r; Wed, 20 Nov 2019 15:28:54 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXRuJ-0000HN-2o
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 15:28:40 +0000
Received: by mail-wr1-x442.google.com with SMTP id a15so249676wrf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 07:28:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DtyaiQZ8irKf16rmVxB3fmQ2TpmbrTyyFiQO6JUw5+o=;
 b=J+PYXrifIbFmzJD2YaGWqKDy4QL5/H44uzIhHRoNCHjqbjqh8+KI7fQQcDn0/3ZWXe
 TQuEkk4zRoznzfRwwFfViPXBbetRmVRz/+29JbND54mJIsTdrngr5SJ5QNNlaodGMcbb
 JtGzynOWqr3F+mKJ2N3gF/8N4ycKu91eJFb7DKHiKBHn/qrdHoTnl9NUbzhG+S9vaMSC
 QzoH7so7+Ybb67t/54HeLgepoPTfEiXMHFz/dZNWIWsUMcxQHGOT46jk1fO1EcrCQnxx
 hCut8hHXAhqcdHlaodE63ousJtSYac17WkrdLxGPQxjDYe2m6BiaQ50FStIokPE2Ggym
 tYsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DtyaiQZ8irKf16rmVxB3fmQ2TpmbrTyyFiQO6JUw5+o=;
 b=M3mGyN/+H/X4A+jMSUS8h1hMCnBGmHVq/i1sHZuAuETYciF1i/ziyZV+SmH+dRXCQv
 OkhL/x36yVjS4l41ZNz0v5W6ScIf/l810Z1eX6DpAdNbq9FPs2Zk21kqrdAm8Sb8VL+5
 /bH83pdmkXzzK5BjjRq31sJLm4w9XYhi++pXxBcWZbsZCfL6vC9jtH15bm6PU5LNwy7X
 fi89IIrZbXhTubVY+sJWlX5GTpBTgUG/RSFoKnCVRsM804yVe5NI5dFaMMes0kQMxt4b
 V9g0ROV5bmpsR8i0A0LYOoLQkrbrKnycONQWXcDh9r70DSkMQZerQzWeMWHjeH00TCus
 cfUw==
X-Gm-Message-State: APjAAAWZDriVOmcv/ugJ3Q8B79IioTNOftlmZwDs2vltptPylfB4S3GW
 o/0Y+PrJ5DStr8PtY4G3bm8=
X-Google-Smtp-Source: APXvYqy8eB9w+wZZJo55+z14tlTOn1lf95zCLE3trwsy02lQ5kbg9t7377ZRZ81/CbuOutHBkGCqTA==
X-Received: by 2002:adf:a119:: with SMTP id o25mr4361024wro.74.1574263717216; 
 Wed, 20 Nov 2019 07:28:37 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id w4sm31797881wrs.1.2019.11.20.07.28.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 07:28:36 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mark.rutland@arm.com,
 mripard@kernel.org, robh+dt@kernel.org, wens@csie.org
Subject: [PATCH v2 0/3] crypto: sun4i-ss: fix SHA1 on A33 SecuritySystem
Date: Wed, 20 Nov 2019 16:28:30 +0100
Message-Id: <20191120152833.20443-1-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_072839_146550_24B49057 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks to Igor Pecovnik, I have now in my kernelCI lab, a sun8i-a33-olinuxino.
Strange behavour, crypto selftests was failling but only for SHA1 on
this A33 SoC.

This is due to the A33 SS having a difference with all other SS, it give SHA1 digest directly in BE.
This serie handle this difference.

Changes since v1:
- removed compatible fallback

Corentin Labbe (3):
  dt-bindings: crypto: add new compatible for A33 SS
  ARM: dts: sun8i: a33: add the new SS compatible
  crypto: sun4i-ss: add the A33 variant of SS

 .../crypto/allwinner,sun4i-a10-crypto.yaml    |  2 ++
 arch/arm/boot/dts/sun8i-a33.dtsi              |  2 +-
 .../crypto/allwinner/sun4i-ss/sun4i-ss-core.c | 22 ++++++++++++++++++-
 .../crypto/allwinner/sun4i-ss/sun4i-ss-hash.c |  5 ++++-
 drivers/crypto/allwinner/sun4i-ss/sun4i-ss.h  |  9 ++++++++
 5 files changed, 37 insertions(+), 3 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
