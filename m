Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 428C18FE69
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 10:44:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HScMd5Ig9POI6CyseUjuTXuIMFnG9BdcDEqIp4E2aGU=; b=efDey9xtB6OROp
	molS3KCN7w4FUE3OfuiYQsi83Zo9EJdB6iZjOtwU475BluZNoeiqFOjXoSoCOuXMVxIr/QLpxIq1p
	6r3CLerfj/dySnt47V5HazpQ/JF5DYTtmjzZuCGiGSOP6rkMWhOrq7HwslZ6u0eEuXuwReNmzWYPs
	YakiCzC+pxEiuOKKJbFTsZkTXCVuGExFdrbM5GnFDcSdh5x6uDIvryDqxx8feiA6tPqczxOeITm/P
	Ky+AwtyBsAGfzEDkgYbNTttoCarTMKgsq8i77muoK/OaZzhZjQPWKsEkZn+jI6ljh46DFmC14ReP7
	9h0YfUqISI7UnF4890aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyXqY-0001mo-Ht; Fri, 16 Aug 2019 08:44:30 +0000
Received: from letterbox.kde.org ([2001:41c9:1:41e::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyXqK-0001m4-Ji
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 08:44:17 +0000
Received: from archbox.localdomain (unknown [203.187.238.17])
 (Authenticated sender: bshah)
 by letterbox.kde.org (Postfix) with ESMTPSA id 135722873C2;
 Fri, 16 Aug 2019 09:44:13 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kde.org; s=users;
 t=1565945054; bh=ewDnjhgYrVht1tDGt3K86esExP8zOs/6xc86+GZUyAI=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=GC9FSLpB4f4Pulx8/ASeT6WvjRlu2JWpUzOH4ueIp9Bg5Oz+5BjAm7/Vvv44SlK+e
 sw/P4tKvDG0gYWESGv00oaPeitoTA7KxKEx1f0MiE2fJoFtdRs6LWL0hEB1vzHfu/o
 X1thd6jipFrOZazckkSP5MYA6E1w2e4qt5o5FeCGGjBtaVFfUknOeZpWYNbsWkQudL
 L9DvZDNWF772SY4dDtaAXsTBp8Xk8u80IA15SY+5kcP+9Y7TjUNVm179tc4FfyY2S+
 VSPWgpomKKmI9ZATxdUVKuhN7vrO2MoC51ABI0eo1uiZDhgX8WK1GZX78fNqD4Iyg/
 mqzphHeaIc74Q==
From: Bhushan Shah <bshah@kde.org>
To: Icenowy Zheng <icenowy@aosc.io>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Wolfram Sang <wsa@the-dreams.de>, Bhushan Shah <bshah@kde.org>,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/2] Enable the I2C nodes for Allwinner H6 CPU
Date: Fri, 16 Aug 2019 14:13:07 +0530
Message-Id: <20190816084309.27440-1-bshah@kde.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190816064710.18280-1-bshah@kde.org>
References: <20190816064710.18280-1-bshah@kde.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_014416_787937_9A5A381A 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:41c9:1:41e:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series adds device-tree nodes for i2c nodes in the H6 dtsi,
and enables it for the Pine H64.

Changes in v2:
  - Add the SoC specific compatible string instead of re-using a31 one.
  - Don't enable the i2c0 node in PineH64 by default

Changes in v3:
  - Fix compatible for i2c in sun50i-h6.dtsi
  - drop changes in the PineH64 dts completely

Bhushan Shah (2):
  dt-bindings: i2c: mv64xxx: Add compatible for the H6 i2c node.
  arm64: allwinner: h6: add I2C nodes

 .../bindings/i2c/marvell,mv64xxx-i2c.yaml     |  3 +
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  | 60 ++++++++++++++++++-
 2 files changed, 62 insertions(+), 1 deletion(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
