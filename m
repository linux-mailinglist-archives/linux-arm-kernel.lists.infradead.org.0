Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B52BF37A05
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 18:51:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YDxHoUoGUzbBFDKw7zQlTaVpYKYN2KLJjYul+ogvaz8=; b=PEF
	bjjB+drehijpjLCmuuggY1w6CngfmX6SQ7L5lhGUAFkRMzxPwyrzCqCueTeEz3bYPJiLAUM68nNLN
	7GxjnZkqPmj5TvfRqoaZZtXm6ZyJmM2Q/26wUnzWg2gWvEJvIKaCqZvtsCN33elrxQiwosdXSTuyt
	VyLEEkekJUquoqL3M6Hz1BZmsn5oRqCq6MQ4ZPfP7jVohrs7FJ9ewcsiEgt68oCPBvtVaQ2Axix4Q
	e5/YF0d935rb6onxntII3zYoeb1JuWHJDhk5W3ZetM6q8TsmQQ1PLBpOlKgpy3tAJgoW1wtWn48Yx
	ZlNFu4uPlQJvzCg5QJpbYRANvfV/itA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYvbd-0002WU-9C; Thu, 06 Jun 2019 16:51:13 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYvbV-0002VE-Lv
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 16:51:07 +0000
Received: by mail-ed1-x535.google.com with SMTP id f20so4268812edt.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 09:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=ncc57E0ICTOedQO6jvnV3SE09S/hfpxFEuUTqpJlJQM=;
 b=tkgJiig7/xy6iCceQujv8B2oWwcfxdGlFRMDFJIdTEFwXDdOJsVv7BqqBqSyriKt2G
 vFoO66hIpC4vKZYzfYhaH3MpqgSmaHHj9/mslJNPy43bVlguz29tbb8OKn3XEUcgZkqD
 dFmauda+f5XERIs1hcufBC1V11oZHVlbaEhLRztrUtuWF73zFWkik/+qDvhat7BY6auL
 SzxvuPlLP8/wgTiyn6dQeTeoHownxJjdjcTBYiZ/hJ2hanqzOFwqRXbi54FE7uRgay8p
 dWHTPrb4y3iXw753GmDyzXDKYibOZXey6ikHjiAnP9NzoNWOMKTjiKDZh9LcaEqnZCEt
 7Yzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ncc57E0ICTOedQO6jvnV3SE09S/hfpxFEuUTqpJlJQM=;
 b=dXo+daWDWgIiuUS17vCHjtTToTU2DUaCWd+o0zrsXJKLhyqaj+uYmigyqJdZ7JfGsn
 aZvCdIkLLX7LvQ5bjt3R7IYqn2EiKlGOIiR1NkNFeQ7lWMusnYt1Ly+Qtneb15N337H3
 nxlTd5uFHS4zl9QCp5u/cgaxuwjjr5nLj/PPB6NbQBPlx58w537QkSnPFUXTG5Yoi/Ii
 zCsrnNh7sh0usRWSxHf7rlybYrQ1GjXisl/hekQc/0BmReGfzGqiUppK0ftC7iydCdr9
 E5Io63Bqcd4k1pRkaN18dIzD+ma0DEV7xbxptNZ9SZH4rDwrJ18a5Z9AUsHgK18FZbdU
 Pumw==
X-Gm-Message-State: APjAAAUcQeMbp+/9H75aPThZzJyGP/+j0gOddENZZ0X4N/iptOg705jY
 oSPXe+laHsYePzupeoPba5+D1HRy97s=
X-Google-Smtp-Source: APXvYqxZlX8tua/YbrpZmEARCkpuaja15W9JBNIoF3Dlv3lOSHYB72QwP6DhY8Hm1QxGhjO+OOqyfQ==
X-Received: by 2002:a50:ac12:: with SMTP id v18mr26410474edc.232.1559839863109; 
 Thu, 06 Jun 2019 09:51:03 -0700 (PDT)
Received: from localhost (ip1f10d6e1.dynamic.kabel-deutschland.de.
 [31.16.214.225])
 by smtp.gmail.com with ESMTPSA id x30sm588568edc.53.2019.06.06.09.51.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Jun 2019 09:51:02 -0700 (PDT)
From: Oliver Graute <oliver.graute@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCHv3 0/2] Variscite DART-6UL SoM support
Date: Thu,  6 Jun 2019 18:47:00 +0200
Message-Id: <1559839624-12286-1-git-send-email-oliver.graute@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_095105_725192_6D18AD41 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:535 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 narmstrong@baylibre.com, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 oliver.graute@gmail.com, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Need feedback to the following patches which adds support for a DART-6UL Board

Product Page: https://www.variscite.com/product/evaluation-kits/dart-6ul-kits

Oliver Graute (2):
  ARM: dts: imx6ul: Add Variscite DART-6UL SoM support
  ARM: dts: Add support for i.MX6 UltraLite DART Variscite Customboard

 arch/arm/boot/dts/Makefile                         |   1 +
 .../boot/dts/imx6ul-imx6ull-var-dart-common.dtsi   | 458 +++++++++++++++++++++
 arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts    | 209 ++++++++++
 3 files changed, 668 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6ul-imx6ull-var-dart-common.dtsi
 create mode 100644 arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
