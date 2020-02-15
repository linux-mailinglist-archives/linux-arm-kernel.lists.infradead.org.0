Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD2B15FD35
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 08:00:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uOq1ZDS+tECJaPhXwys4n1iLEH2OdxUVeDMK2oC/9Pw=; b=XtTv4aC3+EcOMP
	rsA+cdwDXCOsFRthOS25B0UwzN9xp6aFF0ylBPh6dU5cr3c8UBEdyKWSojD3/dzpjuGM3V4cI0wan
	QTplgE+aIJy3txTRV7k8n4gDMQtVkwcCDGL+JlpYon7d4acYLUkshLBq+5dsmZnkRVq3NFz69GYb3
	7Px+EWOUeBeSdPv+5+oeROWCwbJbTk7FddbPnvLDW5DqTVoUjkZZz/pEiCWTDYYAMVMrO3FHOFgQp
	GT13e8wv9Ee5IpY1ZInVTwEoQFusa7ZQ3A0/2bBeAyajZpesjigv29P9UWicpHLLO9pP/h6L08Q4S
	U4XNOrBGQVpe3OqSr0ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2rQn-0004h1-6Y; Sat, 15 Feb 2020 07:00:01 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2rQQ-0004V3-26; Sat, 15 Feb 2020 06:59:39 +0000
Received: by mail-pj1-x1042.google.com with SMTP id m13so4951368pjb.2;
 Fri, 14 Feb 2020 22:59:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bLLoa1HE206JYtCQvu5wW2ZAWORsgXQDP7itOiiFk7I=;
 b=SDH1bF64VdhdHfMBJeZZF2KeRu67V3un9Y24oomrsY7BCJ66wjhBTvayBI5io5knT1
 dIU+e3CrfiMkkjEFag0kSyghEEuV0Mtg9nfskdBEIuO4tdY3Qc5MiLlwkwI/EInzRpXK
 OqzldDxuTvQ7eqt092ZzD87fE5fQKr7usgd+E75erNDpZ8a8YCbgX5a7nwmy2ooLyc95
 GpssJGEWFuFqAwLIiohG1pDuovCwIGth3j2eBNpo+zKxzPbRt0q0+kK1oZR/sVeEYLkH
 b9Nsge6yiyAGrzZMNHrzL1d8nYib8SFl+EBPHgDFR7GWWa60J4PVidKXeve1jvPoBLHx
 q7Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bLLoa1HE206JYtCQvu5wW2ZAWORsgXQDP7itOiiFk7I=;
 b=qjK3nvsi13VDBey10bq9o0NXvik9tffROeIZwiJG0uIheMHM39bu1+YZ4OtELThg9Q
 4u6QubDhIGgm5satEAfQT+TeMybjIR5kyOyMNCicSAs2cr96l+b0xF9CXmvCy/aDNA08
 YnznPlGjb6CXG84yGNbSwjsqvvcwmRZi1EUt8cqTa2+LDX4pYYWE+6J+ln1ZC2h9IQYe
 boBKEQ35N8nQqewFus9XD9sWR6usDUP/vhA3f5Hv0Cen18Ksss9KCOe9KT89F57YOrma
 e6z/5n8KI99lEiz2w5S/zQhoRvwohmyPdsVZA30l/KsVAbHEjxy507hRdpBSaet2KlhJ
 lIlA==
X-Gm-Message-State: APjAAAVE6WIImcS2ZByoX6D9zrBLKJi7p4mDpGhBlc2DxCyzJR7uP44d
 DVBxW+SMbexMSPU5i0wahtWjAF38E0Vbe0v2
X-Google-Smtp-Source: APXvYqyOQOi37sMJScGrWpAIv/XpidYqqZcMorxgbOrmVjYGMGTvBNoQrHg6tbqiIiYO/ZeaH4iSjg==
X-Received: by 2002:a17:90a:3a86:: with SMTP id
 b6mr8063542pjc.96.1581749976239; 
 Fri, 14 Feb 2020 22:59:36 -0800 (PST)
Received: from localhost.localdomain ([240e:379:95a:e780::fa3])
 by smtp.gmail.com with ESMTPSA id c15sm8918140pfo.137.2020.02.14.22.59.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Feb 2020 22:59:35 -0800 (PST)
From: Chuanhong Guo <gch981213@gmail.com>
To: linux-mediatek@lists.infradead.org, linux-spi@vger.kernel.org,
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 0/2] rewrite mtk-quadspi spi-nor driver with spi-mem
Date: Sat, 15 Feb 2020 14:58:24 +0800
Message-Id: <20200215065826.739102-1-gch981213@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_225938_130946_ACE0B79F 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Richard Weinberger <richard@nod.at>, Mark Brown <broonie@kernel.org>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Chuanhong Guo <gch981213@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset adds a spi-mem driver for Mediatek SPI-NOR controller,
which already has limited support by mtk-quadspi. For benefits of
this replacement, please check commit message of the 1st patch.

To keep patchset small for easier reviewing, there will be 3 patchsets
including this one.
1. add the new driver, which is this patchset.
2. update existing dts for the new driver:
   spi-max-frequency is missing in current mtk-quadspi binding. Old
   driver parses child node manually so it doesn't need this, but
   new spi-mem driver is probed via spi subsystem which requires the
   presence of spi-max-frequency. Since this doesn't break old driver
   support, I'll send this separately as a standalone patch.
3. removing the old driver. I'll create this commit after 1 and 2 are
   applied to avoid possible rebasing due to any changes in the old
   driver.

Chuanhong Guo (2):
  spi: add support for mediatek spi-nor controller
  dt-bindings: convert mtk-quadspi binding doc for spi-mtk-nor

 .../mtk-quadspi.txt => spi/spi-mtk-nor.txt}   |  34 +-
 drivers/spi/Kconfig                           |  10 +
 drivers/spi/Makefile                          |   1 +
 drivers/spi/spi-mtk-nor.c                     | 689 ++++++++++++++++++
 4 files changed, 715 insertions(+), 19 deletions(-)
 rename Documentation/devicetree/bindings/{mtd/mtk-quadspi.txt => spi/spi-mtk-nor.txt} (62%)
 create mode 100644 drivers/spi/spi-mtk-nor.c

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
