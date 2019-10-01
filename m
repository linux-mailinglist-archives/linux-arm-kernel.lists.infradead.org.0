Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F57CC2EDC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 10:30:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lyEpb6z3NiXHG+dNud5vJpsEK6szG8GoR+2wceZwEqo=; b=NsyRdaai2MNGde
	9WwEnxVzl6g/GkMVQLqqqXFt5g/bsTeu1+A/Yku1PGXZVoOaarnuYMh41PlnKqTZuZFjd06HcpLCx
	fXQt6He8034OprY+yB/9g9zJPo4rwXvHhnHSJ2cB1JWBsQEWNtSmO6Vf1cbN+l8eKcoDmbZYW+BtO
	AdpA4yHTdPXNMYFOSxnNWx8zpVtMxX43WsGV/xlcjGziAv8tIEk5yeYptkuxGeh6EPTrK2wDY4NwD
	7nxgiI3Fjjl35djbBkRCa0lPHWePlcMeilg7jLBwwnqi7FPbY8DhHLE8Infqatm3zjUhzq1NiYGds
	mx/tiwBLDIi/XYTFZE3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFDYO-0008Qq-Di; Tue, 01 Oct 2019 08:30:40 +0000
Received: from balrog.mythic-beasts.com ([2a00:1098:0:82:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFDYG-0008QS-Ci
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 08:30:33 +0000
Received: from [199.195.250.187] (port=42539 helo=hermes.aosc.io)
 by balrog.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92.3)
 (envelope-from <icenowy@aosc.io>)
 id 1iFDYC-0000gq-1B; Tue, 01 Oct 2019 09:30:28 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id F21C082889;
 Tue,  1 Oct 2019 08:30:15 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: "David S . Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH 0/3] Pine64+ specific hacks for RTL8211E Ethernet PHY
Date: Tue,  1 Oct 2019 16:29:09 +0800
Message-Id: <20191001082912.12905-1-icenowy@aosc.io>
MIME-Version: 1.0
X-BlackCat-Spam-Score: 65
X-Spam-Status: No, score=6.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_013032_426447_F2DF00B5 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:82:1000:0:2:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There're some Pine64+ boards known to have broken RTL8211E chips, and
a hack is given by Pine64+, which is said to be from Realtek.

This patchset adds the hack.

The hack is taken from U-Boot, and it contains magic numbers without
any document.

Icenowy Zheng (3):
  dt-bindings: add binding for RTL8211E Ethernet PHY
  net: phy: realtek: add config hack for broken RTL8211E on Pine64+
    boards
  arm64: allwinner: a64: dts: apply hack for RTL8211E on Pine64+

 .../bindings/net/realtek,rtl8211e.yaml        | 23 +++++++++++++++++++
 .../dts/allwinner/sun50i-a64-pine64-plus.dts  |  1 +
 drivers/net/phy/realtek.c                     | 14 +++++++++++
 3 files changed, 38 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/realtek,rtl8211e.yaml

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
