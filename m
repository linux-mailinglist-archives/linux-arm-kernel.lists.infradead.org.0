Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1503D12DF83
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Jan 2020 17:32:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CJW88kGWpcxqfgfLIevtLyyayQOGY2DMfvoHazscjAU=; b=KvD
	iguxqh4xYMWBO24CDWAVCeElpi16UZOXe2tiLdKAnDcMituTDoZ+BKqOzU5HOKUbOp9bmrwl/dkHv
	A9AsnoKtCsH7rB5fyHFPAxypjRQk7Y6ZKQGlM28CrGBKqAyZGokoMrdMDx1POUCvJrcK1Qox315Ke
	8VOiiFs1DYBvUJp62nQ1rjTPfABoW2ghKTL1DFIcOkQXcEG29CFM42z/+frbvMGwP0D3fqtQb+w/p
	W3vtQaWXRHPv1jSWx4sWVI2E1NUMSOyprxJrf84BEcLygdRPGUbTpse3b/HH+OlTV+8g+0at70UYY
	DScrTAd9fIFuG+SGyy/UH9fbIdigxAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imguS-0001zg-Ut; Wed, 01 Jan 2020 16:31:48 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imguM-0001yZ-2u
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Jan 2020 16:31:44 +0000
Received: by mail-wm1-x342.google.com with SMTP id d139so3497886wmd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 Jan 2020 08:31:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=iN3ER8YBL77cDQ+F7+peYqBn5NYdW4aIpShdgc/0S5s=;
 b=HWdlEBR3JniTqw/OkazjCGEkoQHRuIWTuBNfMBi7WDC8TversAkpXSvCpZgoGVkh5Y
 gk9v/VSKQ5z4o6ZUWJDW1R5hsLbNlFsEDhg6bxMBFocVxprC2d3T2uhP1VjMp7g9u+RE
 S1akPddbRjKMeyIIqdhWOLR6OBdwUt6CTZuXM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=iN3ER8YBL77cDQ+F7+peYqBn5NYdW4aIpShdgc/0S5s=;
 b=CfSNt50RwLMGYCThMP+BcS6XIkD1oQxu4Ce5cxxUtJqmBRRT90qyHCV+EwPn6+mMIh
 E4lnuLKowVlJlI5JWFjC/5tCWA52dl4fuRO+8wILkcm16dkQ+jPjMUxIhLGdyyMIs4CN
 F5Dx7p37vTjqnKEPBreLHysI8bFWcx+uM2/hPvlPV/XL4Ebe9XyzyngCC7lUI47VodED
 wJKV/ruf3aUnJ35u4R+VT9+BFogXUH4Ivm2ROh92BmF+4+Vw+cmjBStlq8xP1/Rt2xsn
 TdIAa2d1gMPLrLHynSDeYzvt0qwwIbRGL2SO/D5lLfmKupudWRgRg4k/PrLCsB6CxOY1
 FLKA==
X-Gm-Message-State: APjAAAXvJwLDmM+3Dk4V4pRcg3bsv+VVwlM2YtSETUPvgKSJ++4c3cc8
 qeQW8oCBwOyKgH4Xr5xod/2DhLvk3vA=
X-Google-Smtp-Source: APXvYqyghfuMJFR6V3A8pWQdPhOIC3GGm41k/h7MWdufo7KjaCPPTc0Pw+IdDBc6OVBOulRnsXNLNA==
X-Received: by 2002:a1c:5945:: with SMTP id n66mr9505080wmb.98.1577896298391; 
 Wed, 01 Jan 2020 08:31:38 -0800 (PST)
Received: from panicking.lan (93-46-124-24.ip107.fastwebnet.it. [93.46.124.24])
 by smtp.gmail.com with ESMTPSA id u13sm6108580wmd.36.2020.01.01.08.31.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jan 2020 08:31:37 -0800 (PST)
From: Michael Trimarchi <michael@amarulasolutions.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 0/3] Add initial support for iMX8MM power domain
Date: Wed,  1 Jan 2020 17:31:33 +0100
Message-Id: <20200101163136.1586-1-michael@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_083142_277911_CCB87200 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-amarula@amarulasolutions.com,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add some minimal support for imx8mm power domain. This let my usb otg2
to properly work in host mode. The patches and the description are
quite similar to iMX8MQ. I follow the same logic.

Michael Trimarchi (3):
  soc: imx: gpcv2: add support for i.MX8MM SoC
  irqchip/irq-imx-gpcv2: Add IRQCHIP_DECLARE for i.MX8MM compatible
  arm64: dts: imx8mm: properly describe IRQ hierarchy

 .../bindings/power/fsl,imx-gpcv2.txt          |   4 +-
 arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  31 ++++-
 drivers/irqchip/irq-imx-gpcv2.c               |   2 +
 drivers/soc/imx/gpcv2.c                       | 110 ++++++++++++++++++
 4 files changed, 145 insertions(+), 2 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
