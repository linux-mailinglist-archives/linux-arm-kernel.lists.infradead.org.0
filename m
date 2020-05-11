Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C50B1CDE48
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 17:09:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xVtqHxRgphgKmhems7mArdA6PBQNGonXBe8eGaKk564=; b=TflUq7ZDQS93qU
	fJQx/jFnrIasnzDNC8HCpc2ejz4jcmrfkwWgIz/QaTjbVdfBujzAMkRbrXOjowEa3b/F3xSid/2+a
	7yBtrMtKbPafmZVSfMSPZ+Smz/cpb4dknG8JF2zEb15ofUtDX7asiojqjCfvouHJqfHf/gmVeNvFP
	oefRV/kvYADRyrROPzCigB/DLmEX5fY8fj0xDnF6HU6ZLdaJvv+6Gkvuj32NR/plVfj2PGobTe83K
	+A8qWXtaErCVpH46VOThCtSs3LfCA2w1Q8O3syBuIsQgHrEJmJUASN8vucgwZuBnYVEJK7+JOrhxB
	wvoqN7zyX+CR3sreYyPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYA3k-0003MT-BM; Mon, 11 May 2020 15:09:36 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYA2b-0002MC-8h
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 15:08:26 +0000
Received: by mail-wr1-x443.google.com with SMTP id j5so11432673wrq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 08:08:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hGk6SHkwZ0/IFFGnE1iOAP01F59WjRCQF/3H+v3exE4=;
 b=BnhSIlLGUOMFfC52MRwFwUpau+oL5+IxT7j73mv3XA1jTJZIJIQz2A/+dUwdH20AGh
 coCnf65IfW/UjA0wdDtQEthrmM8Ua/pXygXmqI4yi88+KH4Uab82HS2/hHcO4784GWdB
 0iqX/pvaP0IKonT6d12xExIGCNHih0ZfZQU8HVvdvGkTTHUxUKAb8glPwIZ6XV94TsaT
 dxCnvPFTg9k8b7kDnf62Wlr7b6Ux+/TCMYSL3XMCogB5LHqGBfCnPXkFZHH0b7TeHnja
 qCqPTnXSnlMojw3lCfew9QmkzTsHB8hA3NlY5bQ7vBpf0MxDJz4DQ4jVFgerZnnu2hS4
 r0qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hGk6SHkwZ0/IFFGnE1iOAP01F59WjRCQF/3H+v3exE4=;
 b=Xlo4LZSD5P3i7nZQjMnE0Q7gbIn6Ubge57dfFH13YHQc1Uw9xLvS4/cn4Yj69YJOGI
 WNC0qKa011bQdyBB8tjC/o0W36zuEgz+HiB67tVG4tsjkJ5iqHRDDc4qfeQfwtvQ9r7p
 sSACTpaG3VNR0gbONY8vvtMSbzjOean8i+hm/YksV/UN8Ibb1fOzNhtKhCaLanUGItZ6
 Bfw7uyTA8Gk9B96uZZYqxlU1o48yc1G6LTv2x8akUbpH7IMC4tUHBj0Btxwfmls3wc58
 juzQqriR+lbq/7S/P6T9ZNtp8njb34KlckUAFF5A0jgWQQmygUAUkby1DowONfyrMR0t
 6Zgg==
X-Gm-Message-State: AGi0PuaiOySZbXoy2IddY60426vdJK2ITQ9wVnvHmJ9tE2dDJDViFdVP
 oMRScMmUEEjulaIPm/cPOA72xA==
X-Google-Smtp-Source: APiQypLau2nbF8LlznCAI/x+Zn88CGRz70T0Uof7qjtAsaEtaADMu0aaeRnM9pZ/buyq3Tlceyfynw==
X-Received: by 2002:adf:a1c8:: with SMTP id v8mr19191837wrv.79.1589209704001; 
 Mon, 11 May 2020 08:08:24 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id 94sm3514792wrf.74.2020.05.11.08.08.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 08:08:23 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v2 03/14] net: ethernet: mediatek: rename Kconfig prompt
Date: Mon, 11 May 2020 17:07:48 +0200
Message-Id: <20200511150759.18766-4-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200511150759.18766-1-brgl@bgdev.pl>
References: <20200511150759.18766-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_080825_322792_E3C066F7 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

We'll soon by adding a second MediaTek Ethernet driver so modify the
Kconfig prompt.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/net/ethernet/mediatek/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/mediatek/Kconfig b/drivers/net/ethernet/mediatek/Kconfig
index 4968352ba188..5079b8090f16 100644
--- a/drivers/net/ethernet/mediatek/Kconfig
+++ b/drivers/net/ethernet/mediatek/Kconfig
@@ -1,6 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config NET_VENDOR_MEDIATEK
-	bool "MediaTek ethernet driver"
+	bool "MediaTek devices"
 	depends on ARCH_MEDIATEK || SOC_MT7621 || SOC_MT7620
 	---help---
 	  If you have a Mediatek SoC with ethernet, say Y.
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
