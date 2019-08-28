Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEBB6A0726
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 18:20:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8kXryzU7ql4L5/C6/yM08m+e0xglvmqZFTuNu9Lwa4M=; b=fTV
	KKWwgW/uTAvNwHWrwd5Db4JFoxWMVQm3XcbbT+/gU46vjMYz4vQflCGR0Bao/FTKy6engg1nRHOv+
	+E4zDtQwaMMETtDkEIYeXQaDNzbCsC5eJBRFmiYE+2LXr3uOsmx05LRCQbgNyOvb46Dpl2iWVXwsu
	P1jEMafEpkXJJiPuziaxbhYl7m1jPvwB09Zd1cYMsCN8bO91Ia8FlzJqyzehwQZm1I9HGeMZBzAfN
	SNMd/q/goLNE05R9B97ZwdK8hEhnQE5cOjxuOPXczzL/otPUZqNOBxtqkBJw/3PlU1AAToYZW9koR
	6fALRt9kqYmpahCbIJa6dOKmiqcIB0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i30gA-0005xm-TR; Wed, 28 Aug 2019 16:20:14 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i30fs-0005xL-4D
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 16:19:57 +0000
Received: by mail-wr1-x435.google.com with SMTP id g7so444092wrx.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 09:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=h2Qh+gscHnR7JdUJaSMgnvl1LJ0NCwpowKI5j/ZvmWU=;
 b=u8LX9/UQhL4+ai6U3VRZ6sQHe2IRUYsLsY5NEl2FgJnKQFzBAS6YPo9qKbpyulP7sp
 W/YrUlGY0QG3TVRC5MvrX/e8BG3bcN7/8IctAReoGh/nVeEFDL2cFoS0/hG+SITtqDMd
 RpG9hUyPtrjEdqxRi7llub8A29dAuleGXaB86PxXgFqnH2XW/nQEFCtPctFicKBVUkhh
 6rSH5Q7fDYi+vEdkb9HC3C92dkICqvfVwLsVatPTHCEDUM9Xsp4ogIkgD+xDyhD+t6z1
 CVg1EcDY7gSFfc/8KBCxS3WDfQi/DPSiWYtdMFcNNThgVUwNbU7ueFmxncbrk/izCO1o
 PHRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=h2Qh+gscHnR7JdUJaSMgnvl1LJ0NCwpowKI5j/ZvmWU=;
 b=H7+PJN4xi1lqEtcCbVXpBZS5NabRkes3tzOsMheMvAXHEgvQAxMva84A7IdeTAWAED
 cVxSXIMqy0417Qa+fIb3V2wcKeIXD/8fDXLCKlrbYu9ceonq7AbipITerk/ozRqda5X3
 LkBIo2oHkedpqfvypn6dmdADJgnkP9pdcnU6pbU/QYwc72mj+0TjpgbsNAg6Qdswtg8q
 4Yg1FI4C5bI11lxJG5gQnFyMtqcyPQC6yocGXgVOgTb9JPdy3nMP1AfSLfG4m4ySPY0V
 w3qH3dIc4qgrhqf5MInvcVB2obq/tXoi4L+NaN/rhYWqrikIj8ZdoIp/Yz56FrG4EsBB
 3l1Q==
X-Gm-Message-State: APjAAAWxdQE05m7aN/YurcLBHaxXKRss5qKbM9WHwn21fed9vrbnwxoF
 vw3Wz8mB2pGcw+jBplBLhMs=
X-Google-Smtp-Source: APXvYqzmHItt68j4CFSaYP1355hKziONiyL+VRfe/5ff4LpMcoPcSL6AqjJmEf4SwqIUWHYI1yJQdQ==
X-Received: by 2002:adf:ea51:: with SMTP id j17mr6186501wrn.184.1567009191817; 
 Wed, 28 Aug 2019 09:19:51 -0700 (PDT)
Received: from localhost ([31.16.217.87])
 by smtp.gmail.com with ESMTPSA id a141sm9494988wmd.0.2019.08.28.09.19.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 28 Aug 2019 09:19:50 -0700 (PDT)
From: Oliver Graute <oliver.graute@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCHv5 0/2] Variscite DART-6UL SoM support
Date: Wed, 28 Aug 2019 18:19:16 +0200
Message-Id: <1567009160-21965-1-git-send-email-oliver.graute@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_091956_194189_F4FC472A 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:435 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 narmstrong@baylibre.com, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, oliver.graute@gmail.com,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Need feedback to the following patches which adds support for a DART-6UL Board

Need feedback howto document propertys and compatible the right way

Need feedback why ethernet RX is deaf

Product Page: https://www.variscite.com/product/evaluation-kits/dart-6ul-kits

Oliver Graute (2):
  ARM: dts: imx6ul: Add Variscite DART-6UL SoM support
  ARM: dts: Add support for i.MX6 UltraLite DART Variscite Customboard

 arch/arm/boot/dts/Makefile                         |   1 +
 .../boot/dts/imx6ul-imx6ull-var-dart-common.dtsi   | 445 +++++++++++++++++++++
 arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts    | 196 +++++++++
 3 files changed, 642 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6ul-imx6ull-var-dart-common.dtsi
 create mode 100644 arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
