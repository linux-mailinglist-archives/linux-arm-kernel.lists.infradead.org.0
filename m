Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B83D3B472
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 14:16:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qScIvuru6hSB9wdjSnAKFKTsAUvYxksvl1eOgv1Ao/I=; b=PK+
	mFggnZdCTUehDBmwjDz7zU0jcWvXKrZWxL4nGpDqaN777YHhwYWylm/ufilrX1n2svresllZV+pFg
	agoFPPi/ev+MSP1837ZnozLxraN5eOavjt2uFJPmQcZTFdj1WDA5U9VDpHvjzO21x7wzq/K6ouVqM
	Ov42IWonJwBrBXCRJYYrOPL6Fws7Z1xC3NVKOYVUhO43LfVakZ1X1vjE70g7vjQfiV9yD+z6fsCLU
	fS6aPrb8iwowTOLqxdKyAF6H5HEc5c4Ksdocz57nMny+Mn3zDcqwEQfgXdNY4ckLhy9Gtua3FgeFj
	sT220tuO+ZuXoCvtE7L8vrg6Qjan4bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haJDh-0004MB-C4; Mon, 10 Jun 2019 12:16:13 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haJDL-0004I7-8M
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 12:15:53 +0000
Received: by mail-wm1-x344.google.com with SMTP id 22so7939608wmg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 05:15:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=G/jDmCEBdW+KnNnzIkI5FBxnykVJAEM3IcCO6wGYvxQ=;
 b=VjIypT6jxNeDcP3wUSkxn+P8CxxAUuMUNzeZgTuyvcKeoibelkyyRwRwXo7aPfSjUQ
 Q3v7OyN788mNnJacP6rY+JqmUhSABKuQjwGSKgdSIgNdHLdpPQiG4rtmNU1t7N7IHcmK
 nKHcw+Tloj67CNuGvh8/mUeuS7GEic2+TdmmDjK8bjZkORCIZAYC6801bb8F1Mu/UT5F
 F6yBHxWkYxGdneJVZ1cb6xAm5yVDez2tj2BC1zOA4h+/f03ff6iaj0CskD8DSNOOZsL1
 I3zmkYmnRzyJg4TYipAau0Rqvbd2Mqn7JFZV+cg2TLmfJTOFkMY0MD4oDMOswXtX9aOg
 ZL4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=G/jDmCEBdW+KnNnzIkI5FBxnykVJAEM3IcCO6wGYvxQ=;
 b=GNSSN+qpmb4niT8HhU/irnKUbdQOArlKrPeCnymZlFGcG9LtOcUSMwNYlYjMuqc554
 SPUp5EsoZvjhb96rdLtPa7EJh7C/bR5yjEPQlZ+wyYZpwe3cFWnl90kGhrlbww4mpcZD
 nWWw/z+cr+y9I0LjgCPfZ6LuhU2CxNslVnZjH/d0p26hkDzh+y/IUn9nYfLFBFfWV+Jo
 PLi5fvWdih4HiWHXrtNUqbY6eB1OZVDTDT9olKcOwQVH3oAbEbfF47A176Uhryj08/rv
 uVivijrW10atTltSkJ6MAT96gpL5Z351b1iO9oB/aSlOUa44oDhMPL/LsJWPkX0mQd2U
 3FAQ==
X-Gm-Message-State: APjAAAVq+WgnN+zE3Zlvbw47cmWsjKTmIwY9GE3UBnHnnCSd3LBvSqoj
 H3YAiKC7QcYRt1aHg0NZtAs=
X-Google-Smtp-Source: APXvYqxAzpVPFjmvXHC7Dyyt0DOCvzn4V9dg6udoS70h922GjJQFGyHYQYvnE4PoiIh4fnOVv7NBJw==
X-Received: by 2002:a05:600c:228f:: with SMTP id
 15mr14125457wmf.31.1560168949128; 
 Mon, 10 Jun 2019 05:15:49 -0700 (PDT)
Received: from ryzen.lan (5-12-114-167.residential.rdsnet.ro. [5.12.114.167])
 by smtp.gmail.com with ESMTPSA id
 f21sm10385574wmb.2.2019.06.10.05.15.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 10 Jun 2019 05:15:48 -0700 (PDT)
From: Abel Vesa <abelvesa@gmail.com>
X-Google-Original-From: Abel Vesa <abel.vesa@nxp.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Marc Zyngier <marc.zyngier@arm.com>, Lucas Stach <l.stach@pengutronix.de>,
 Bai Ping <ping.bai@nxp.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [RFC 0/2] Add workaround for core wake-up on IPI for i.MX8MQ
Date: Mon, 10 Jun 2019 15:13:44 +0300
Message-Id: <20190610121346.15779-1-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.17.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_051551_646613_87A9B675 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (abelvesa[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Carlo Caione <ccaione@baylibre.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is another alternative for the RFC:
https://lkml.org/lkml/2019/3/27/545

This new workaround proposal is a little bit more hacky but more contained
since everything is done within the irq-imx-gpcv2 driver.

Basically, it 'hijacks' the registered gic_raise_softirq __smp_cross_call
handler and registers instead a wrapper which calls in the 'hijacked' 
handler, after that calling into EL3 which will take care of the actual
wake up. This time, instead of expanding the PSCI ABI, we use a new vendor SIP.

I also have the patches ready for TF-A but I'll hold on to them until I see if
this has a chance of getting in.

Abel Vesa (2):
  irqchip: irq-imx-gpcv2: Add workaround for i.MX8MQ ERR11171
  arm64: dts: imx8mq: Add idle states and gpcv2 wake_request broken
    property

 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 20 +++++++++++++++
 drivers/irqchip/irq-imx-gpcv2.c           | 42 +++++++++++++++++++++++++++++++
 2 files changed, 62 insertions(+)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
