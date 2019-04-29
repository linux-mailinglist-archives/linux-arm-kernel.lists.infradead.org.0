Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4018DAC0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 05:26:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6oYTrfC+yLaGQE7ErdDbfqOdP6DQvv8u/rMS4GLRroU=; b=uN7VnmbLaqe5tD
	LPqNe7wYrLbVtAMJZ9R5PULaJ3Wft52w6jaubQF82JmFOXD8eQbRVX5bVatIdxb5js/oPnIsjbJCO
	2Kjr8q2Dq/y+LXfeUFr1bGNi7IuZqi81s+FPvHvtV3VdNw+TFI7fQLUAE/uywj0hTt20rUAU3CG3R
	e3A11IjgGa5V1yXW7mWb58yV95q3Pp0KJSkyNR/2KMwCYNsCEP3aytEUWZFr7NeO7yuPWUcoKO+lk
	3lCybQb+g9pcoVjN0lctI+5F/NbVg8OI/b/bXdkgTJz7YBYVCl4PXp6EoDDZcQcpnCHF2LFvTaWVb
	Y0CtCt5Tjia0hvIuk6fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKwvn-0004n8-VO; Mon, 29 Apr 2019 03:26:15 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKwvf-0004m3-To
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 03:26:09 +0000
Received: by mail-pl1-x641.google.com with SMTP id z8so4402365pln.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 20:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VfaUjavgU7FLcbQRnhsJ2vG6fwuvzcfeYnH0eMo2lew=;
 b=ZIO9fcp3UVgcrIpro2HhbPWDhopkv0jrc/1NOivlvUpXqUNgaAWC3mq2KSfBJcfro6
 FnUyZrktLKoHzUugRUgUO1fD0EBf6bACTP64AxQFAlOpDPq31IP1E0S/bAmcVJXu/mAx
 CW/Fu5r6XzT83MF0MjYDhG2nocDhko8GyAYAY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VfaUjavgU7FLcbQRnhsJ2vG6fwuvzcfeYnH0eMo2lew=;
 b=ko4KdjdQxTnmQOTRMWKA0PMBA6tfb0ZQdeoc6LxaNVTLozL08RDcjAc5PgZCzuSp10
 Z+CYZOLWHdf5C1K7G13NN8NRhFGLO7RzfDFfA18BuoQNoDVvQzXWqcgBtJaDK53CqNNr
 Y09RLSbm1uUenMzWRNcWd8p0Vn3+5DuRX5bCGacu3dn6P49xDwW5vfur6lM6S6X6LG69
 xkDpOFHLRfu8uLH+J1wMXCoBgiggodJgrLyeyZowTCbDVfT8PssFVKHKTDsJiU0x7eFl
 r19PaXQnsv6EBU+9lp4y6/T2jqmpIbwrfB7pGlEiUjfIlw0XYdCU7jhvicw2uV89Pvte
 +/uQ==
X-Gm-Message-State: APjAAAVVId3OwKtBzaDrHZ4d3is7MpJ37QR1H+R/JLd0G4CXDcqd3bGr
 CbNIMu15JPLdcECysjwawwMrN6TxaRs=
X-Google-Smtp-Source: APXvYqx3ji95ro+Qgz/gh/2nu0EmODc2XcZ6cLoCoVh777KZZC76LVFq9Evhuk0WPUubiVGpIc4D9g==
X-Received: by 2002:a17:902:b089:: with SMTP id
 p9mr59602794plr.185.1556508366781; 
 Sun, 28 Apr 2019 20:26:06 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id a10sm41364938pfc.21.2019.04.28.20.26.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 20:26:05 -0700 (PDT)
From: Nicolas Boichat <drinkcat@chromium.org>
To: linux-mediatek@lists.infradead.org
Subject: [PATCH 0/2] pinctrl: mediatek: mt8183: Add support for wake sources
Date: Mon, 29 Apr 2019 11:25:49 +0800
Message-Id: <20190429032551.65975-1-drinkcat@chromium.org>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_202607_989212_3ACB01AC 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Chuanjia Liu <Chuanjia.Liu@mediatek.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang <sean.wang@kernel.org>,
 linux-kernel@vger.kernel.org, evgreen@chromium.org, swboyd@chromium.org,
 linux-gpio@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds support for wake sources in pinctrl-mtk-common-v2, and
pinctrl-mt8183. Without this patch, all interrupts that are left
enabled on suspend act as wake sources (and wake sources without
interrupt enabled do not).

Nicolas Boichat (2):
  pinctrl: mediatek: Add mtk_eint_pm_ops to common-v2
  pinctrl: mediatek: mt8183: Add mtk_eint_pm_ops

 drivers/pinctrl/mediatek/pinctrl-mt8183.c     |  1 +
 .../pinctrl/mediatek/pinctrl-mtk-common-v2.c  | 19 +++++++++++++++++++
 .../pinctrl/mediatek/pinctrl-mtk-common-v2.h  |  1 +
 3 files changed, 21 insertions(+)

-- 
2.21.0.593.g511ec345e18-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
