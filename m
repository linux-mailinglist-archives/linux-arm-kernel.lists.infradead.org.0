Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B782B909
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 18:23:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FCAj8QGC3+vjRGcv8PUbKlcWHUtTU29srE19nz6jY2M=; b=TwmA1UQsHmlWZi
	fNycc6OhRsA3PN5RMptILEEVeBiF9EVvgMFZhvinXeCT3ZQ72k/X4v4Qs8jjQmAFj+k0V9kWeXwkD
	I5GeiuTARRYkztwS5PRmBdKoUBv5JmzzUYZzTCOLjEVI5N+P2VJ6yJdZtzY+M8j08f8xs8edvKncv
	S7+LJ8HH4D/Rc7Tve4LOswOzWCQ2jutPqfMBQdgjBBc05t7uKTgzitkbTXQh/EFhmPge0l9pwux2s
	fhPLCgsbPEbSmzS3Z8gw/UL14tg6kLnUrH6iYzuYpQZCDAFeMgxu0pGcvny4VyLaSwTe300YIuRXM
	w/gk6byjQc/7gGphe8fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVIPZ-0002zG-8H; Mon, 27 May 2019 16:23:45 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVIOY-00029u-Mz
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 16:22:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1558974161; bh=YFp7iMAT2SUi48E3lCp5Rb+wby06G1ktJEOG3j6izbk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FluKZoslmbV6VPUu+72aK+19fDYd4Lw3Y3aT0IKC59c+s0gsEFj72A5C9Uql8Nfjo
 IbJJHD+6xuYTrKdi27OB0fzwlGz551U0tuhMmhLqIzhshGP2QFvloiSWuJ3f+ttTLh
 lLzj4VinGAH2Cv/Cr10TAj9B5HnpTAqKOyhZl5/Q=
From: megous@megous.com
To: linux-sunxi@googlegroups.com, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v6 4/6] dt-bindings: display: hdmi-connector: Support DDC bus
 enable
Date: Mon, 27 May 2019 18:22:35 +0200
Message-Id: <20190527162237.18495-5-megous@megous.com>
In-Reply-To: <20190527162237.18495-1-megous@megous.com>
References: <20190527162237.18495-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_092242_997878_E9482A45 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ondrej Jirman <megous@megous.com>, Mark Rutland <mark.rutland@arm.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com, Jose Abreu <joabreu@synopsys.com>,
 linux-arm-kernel@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ondrej Jirman <megous@megous.com>

Some Allwinner SoC using boards (Orange Pi 3 for example) need to enable
on-board voltage shifting logic for the DDC bus using a gpio to be able
to access DDC bus. Use ddc-en-gpios property on the hdmi-connector to
model this.

Add binding documentation for optional ddc-en-gpios property.

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 .../devicetree/bindings/display/connector/hdmi-connector.txt     | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/connector/hdmi-connector.txt b/Documentation/devicetree/bindings/display/connector/hdmi-connector.txt
index 508aee461e0d..aeb07c4bd703 100644
--- a/Documentation/devicetree/bindings/display/connector/hdmi-connector.txt
+++ b/Documentation/devicetree/bindings/display/connector/hdmi-connector.txt
@@ -9,6 +9,7 @@ Optional properties:
 - label: a symbolic name for the connector
 - hpd-gpios: HPD GPIO number
 - ddc-i2c-bus: phandle link to the I2C controller used for DDC EDID probing
+- ddc-en-gpios: signal to enable DDC bus
 
 Required nodes:
 - Video port for HDMI input
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
