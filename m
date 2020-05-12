Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 483DC1D0040
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 23:11:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h4ZRrkoueSpIA2g04cDSafCs5amA+AMZzfdz5BvjY2Q=; b=UtiBmyQ+613o25
	pQ9ky8EfdFNrfwYM3z88niVA1KxSnRXfEIcqwX8l1DezfgAgV+CRwzgHlZV1kBRLOBC4cu6V16X85
	RonyUbeZtWGqvw+wg/iNNpePTU/LV1JT80affc/MiaBuKheD8VuLVixmbDaHdPibMuPXxxd5Is1qm
	66ytczZTHbf61v4nkO/vqpbuziiNosH/T3HSnkf+XByB3QIhxrDwMXODVbwk/fwjeU+Soj7dzrNDl
	cDzMr6FHKmXg98Rr/xkpziyk/uXV22JexjngVUF01PeKnkzRemBgtBnKLyiQF12W054diJRpxoTd6
	zAirVUAe1SxyHAcS476Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYcBY-0004rn-GE; Tue, 12 May 2020 21:11:32 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYcBK-0004pY-96; Tue, 12 May 2020 21:11:20 +0000
Received: by mail-wr1-x444.google.com with SMTP id j5so17727621wrq.2;
 Tue, 12 May 2020 14:11:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HUo/x8U4+0mYzSmYS/9FaeLoX4GWLY2yc9psegkmkLk=;
 b=UvQF7HB3rdUXi4f4A35IeSasJbDNhF+T3r4ovNcEYIzgzrTmkwgqlDcbxexvs4dk1t
 jKLSUW2kj6LvcWoISqQxBCKqiiLGUBSC7aE66nCussXrdrU9Z8mO1/6XGk1D2P6R6pkG
 s/l92Dc06Jqkn4t69RBMD71ZL+NZceikTD9cBB0gwq3P92DbBEOt2qXFOzYds77KqtU5
 5LZMEOMdG6xXeLZYV3zXSI2Ur1I/eFNhdjN4l3PIkHC6RGhzI7CPgV4mu2xcOh6r29s1
 OySJRT1q8swp6ez0Ofupv5R8jrqmtychKMWzi7B0eH8vcISvwAN+IiO2l0vXqU19Xpsk
 5LAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HUo/x8U4+0mYzSmYS/9FaeLoX4GWLY2yc9psegkmkLk=;
 b=tub+DSVaSj2ZohbfakGbpsqb1tjMWCt79Rm0Gsi3iEBzFRvfmbQIiGQWMyxHaSUWJ3
 iKU4D0Wpw4nEKAUZYa4tCX+ZiyeylWXx4cVVQaXgNTA4CP+QhFak+01xeRylEg4AkAds
 XsgyebzlwLtmTwG2nd3TjoHeqS+q20FFaYDpSY8x/aH09lToqUgB/WLRznaVFSfrXiqJ
 fEtLVMGGOVHGxYlRQoWxxr24KA4klpNIlFo4vpD6rIDVe+L6pFKJ1ROAjF7JWGx44iCj
 yp0hpY3Iur2pwrX6Us6Xy0n0LyUmUJS5+u/xDJAkZjNTRov61p05Uo6Wtn4QBVZ6/n+S
 Q48w==
X-Gm-Message-State: AGi0PuawWMjXHw8FKF4MhyqJdGBRXZJoeUXlAKp+Fy9pbwRb4Nmfcv2+
 0CGpXcvcIu93tUOiO/xSsCQ=
X-Google-Smtp-Source: APiQypICeedar9LlrtciOb0WCCyUvBbEPvqZ7/kBdZ7nmKmgKGrJtVXh3i4qBkJ6K+EYzRC+5Sb6sQ==
X-Received: by 2002:a5d:5710:: with SMTP id a16mr17949293wrv.209.1589317876680; 
 Tue, 12 May 2020 14:11:16 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137132E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3713:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id r3sm9724228wmh.48.2020.05.12.14.11.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 14:11:16 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: robh+dt@kernel.org, andrew@lunn.ch, f.fainelli@gmail.com,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v3 0/8] dwmac-meson8b Ethernet RX delay configuration
Date: Tue, 12 May 2020 23:10:55 +0200
Message-Id: <20200512211103.530674-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_141118_347955_0EDFA470 
X-CRM114-Status: GOOD (  18.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: jianxin.pan@amlogic.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Ethernet TX performance has been historically bad on Meson8b and
Meson8m2 SoCs because high packet loss was seen. I found out that this
was related (yet again) to the RGMII TX delay configuration.
In the process of discussing the big picture (and not just a single
patch) [0] with Andrew I discovered that the IP block behind the
dwmac-meson8b driver actually seems to support the configuration of the
RGMII RX delay (at least on the Meson8b SoC generation).

Since I sent the first RFC I got additional documentation from Jianxin
(many thanks!). Also I have discovered some more interesting details:
- Meson8b Odroid-C1 requires an RX delay (by either the PHY or the MAC)
  Based on the vendor u-boot code (not upstream) I assume that it will
  be the same for all Meson8b and Meson8m2 boards
- Khadas VIM2 seems to have the RX delay built into the PCB trace
  length. When I enable the RX delay on the PHY or MAC I can't get any
  data through. I expect that we will have the same situation on all
  GXBB, GXM, AXG, G12A, G12B and SM1 boards. Further clarification is
  needed here though (since I can't visually see these lengthened
  traces on the PCB). This will be done before sending patches for
  these boards.


Dependencies for this series:
There is a soft dependency for patch #2 on commit f22531438ff42c
"dt-bindings: net: dwmac: increase 'maxItems' for 'clocks',
'clock-names' properties" which is currently in Rob's -next tree.
That commit is needed to make the dt-bindings schema validation
pass for patch #2. That patch has been for ~4 weeks in Robs tree,
so I assume that is not going to be dropped.


Changes since RFC v2 at [2]:
- dropped $ref: /schemas/types.yaml#definitions/uint32 from the
  "amlogic,rx-delay-ns" in patch #1 ("Don't need to define the
  type when in standard units." says Rob - thanks, I learned
  something new). Also use "default: 0" for for this property
  instead of explaining it in the description text.
- added a note to the cover-letter about a hidden dependency for
  dt-binding schema validation in patch #2
- Added Andrew's Reviewed-by to patches 1-7. Thank you again for
  the quick and detailed reviews, I appreciate this!
- error out if the (optional) timing-adjustment clock is missing
  but we're asked to enable the RGMII RX delay. The MAC won't
  work in this specific case and either the RX delay has to be
  provided by the PHY or the timing-adjustment clock has to be
  added.
- dropped the dts patches (#9-11) which were only added to give
  an overview how this is going to be used. those will be sent
  separately
- dropped the RFC prefix

Changes since RFC v1 at [1]:
- add support for the timing adjustment clock input (dt-bindings and
  in the driver) thanks to the input from the unnamed Ethernet engineer
  at Amlogic. This is the missing link between the fclk_div2 clock and
  the Ethernet controller on Meson8b (no traffic would flow if that
  clock was disabled)
- add support fot the amlogic,rx-delay-ns property. The only supported
  values so far are 0ns and 2ns. The registers seem to allow more
  precise timing adjustments, but I could not make that work so far.
- add more register documentation (for the new RX delay bits) and
  unified the placement of existing register documentation. Again,
  thanks to Jianxin and the unnamed Ethernet engineer at Amlogic
- DO NOT MERGE: .dts patches to show the conversion of the Meson8b
  and Meson8m2 boards to "rgmii-id". I didn't have time for all arm64
  patches yet, but these will switch to phy-mode = "rgmii-txid" with
  amlogic,rx-delay-ns = <0> (because the delay seems to be provided by
  the PCB trace length).


[0] https://patchwork.kernel.org/patch/11309891/
[1] https://patchwork.kernel.org/cover/11310719/
[2] https://patchwork.kernel.org/cover/11518257/


Martin Blumenstingl (8):
  dt-bindings: net: meson-dwmac: Add the amlogic,rx-delay-ns property
  dt-bindings: net: dwmac-meson: Document the "timing-adjustment" clock
  net: stmmac: dwmac-meson8b: use FIELD_PREP instead of open-coding it
  net: stmmac: dwmac-meson8b: Move the documentation for the TX delay
  net: stmmac: dwmac-meson8b: Add the PRG_ETH0_ADJ_* bits
  net: stmmac: dwmac-meson8b: Fetch the "timing-adjustment" clock
  net: stmmac: dwmac-meson8b: Make the clock enabling code re-usable
  net: stmmac: dwmac-meson8b: add support for the RX delay configuration

 .../bindings/net/amlogic,meson-dwmac.yaml     |  23 ++-
 .../ethernet/stmicro/stmmac/dwmac-meson8b.c   | 146 ++++++++++++++----
 2 files changed, 134 insertions(+), 35 deletions(-)

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
