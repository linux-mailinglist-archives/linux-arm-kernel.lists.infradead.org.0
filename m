Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0521BE849
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 22:17:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d0aObYH9ptkbi9Na2aCDuRBJDuKuIPG2yPWuCuHTiAU=; b=IOH5ec71LsuNRm
	mxaqhklCB899DXGSzl8x3JgZcx3S70qrGlTcLDoJnFaXn1MOWNv3mzB4orfMRbhAFOcNtD2m5uYnI
	v4UBl+630sH/vKLrDIPn/4WeLUY+yC6fLc9iBgCMBL3D+TzEibG0Acpk7RqQ42RaMNaGvAD1AhDb2
	uZq47p9g0ykTSLio1ccBKAFSTO9GZvrOuc3Ts6W7JvudUN3F4101J9grrlYM1Gs8LjGMpPuhynMNC
	bL57Aq/EEtedRoCUfN2RgX3JXN7jFk55AS25MmRFWPJ41zsA114vdPRdH0y9fdSOkCs+ALeTXLZ/C
	X2sGg96jBXd6vn4t4fQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTt9A-0006wy-FP; Wed, 29 Apr 2020 20:17:32 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTt8r-0006uK-4e; Wed, 29 Apr 2020 20:17:14 +0000
Received: by mail-wr1-x443.google.com with SMTP id j1so4147989wrt.1;
 Wed, 29 Apr 2020 13:17:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2QFptVeNUiGucrPStRhcbu3GmH4ZZHPExUVqKC5KTNE=;
 b=TEUDwHugOlDARK5/PgrSs+m57fyUAKQ+ezjCjGVH9wSY5rquCGXEIqz78rbyvz3q+6
 dbfgrfpY1X99iqyx8jG2BgBjErs/kZwKXGi1PmUReZfUn4yFFyzxRdvYqUmueqbx3EDg
 5dmVGY1ReWiJNe6OWCrx3+dJXK0EWA+B76fZmMWa3ASR175qH3TLtUR5QAWDLrK47gz9
 8IXMI/bDfACX2CiY+CHHBvOxD4cv2RJd+Y0SBP61FcUtkvbIOMqYmk6BwthYuyRbHoaq
 vgyf+oG2wzF38C4tpPPlEfTaS99pIyNCdMPZcpyWQuAcbPDYK/O80pLda5dOio39tthB
 Dc1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2QFptVeNUiGucrPStRhcbu3GmH4ZZHPExUVqKC5KTNE=;
 b=PN0s6KmEhCmJzVpIeBqo3ykdR0G0mjHk9s99Xcj2Mh84fsaSS1iw+kNh5Gl0qyjSaz
 JP/YM6CcSgpl01vDq75yTgPs+sT+LtTm5UETZDZF+1/RhVN190AmsjND22OTl4ilDODl
 qyJqgZxfNjpoFUMxxpCOrJ3HPUAthEltaJuoxF48Rb+Wbcta0/lkqVtRDI4GWzRHYYcE
 F+AY6ZDtc9brIJ0k4eBh2oep23hITffaU8jEnQF4N7Poq8l4CqccGZ8MG51XTEfYYCzQ
 Zv1ZNCwRoj3mugxsLP4oMhuYPR+fW3anzZVxERc5Nb6as8y/wyU4STegKrCTNYvK9kXm
 wLrQ==
X-Gm-Message-State: AGi0PuaRBI8zZ6mCgFcsYRnPRu6Q14rBgR0VczAosxyncfgL+I2WhVpu
 nMVjnKN3gx17UO5SbdpTVwA=
X-Google-Smtp-Source: APiQypKmWbt8lj9u0K6Q8MSDHiXGVwacgaiLnfiCNuXjDcwsnRsHUXCWXg3gmbfoan5C/msPR1zi9g==
X-Received: by 2002:a5d:5304:: with SMTP id e4mr39007886wrv.87.1588191431421; 
 Wed, 29 Apr 2020 13:17:11 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137142E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3714:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id q143sm9923623wme.31.2020.04.29.13.17.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 13:17:10 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: robh+dt@kernel.org, andrew@lunn.ch, f.fainelli@gmail.com,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH RFC v2 00/11] dwmac-meson8b Ethernet RX delay configuration
Date: Wed, 29 Apr 2020 22:16:33 +0200
Message-Id: <20200429201644.1144546-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_131713_183526_36AD1F97 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
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

Since I sent the last RFC I got additional documentation from Jianxin
(many thanks!). Also I have discovered some more interesting details:
- Meson8b Odroid-C1 requires an RX delay (by either the PHY or the MAC)
  Based on the vendor u-boot code (not upstream) I assume that it will
  be the same for all Meson8b and Meson8m2 boards
- Khadas VIM2 seems to have the RX delay built into the PCB trace
  length. When I enable the RX delay on the PHY or MAC I can't get any
  data through. I expect that we will have the same situation on all
  GXBB, GXM, AXG, G12A, G12B and SM1 boards


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


Martin Blumenstingl (11):
  dt-bindings: net: meson-dwmac: Add the amlogic,rx-delay-ns property
  dt-bindings: net: dwmac-meson: Document the "timing-adjustment" clock
  net: stmmac: dwmac-meson8b: use FIELD_PREP instead of open-coding it
  net: stmmac: dwmac-meson8b: Move the documentation for the TX delay
  net: stmmac: dwmac-meson8b: Add the PRG_ETH0_ADJ_* bits
  net: stmmac: dwmac-meson8b: Fetch the "timing-adjustment" clock
  net: stmmac: dwmac-meson8b: Make the clock enabling code re-usable
  net: stmmac: dwmac-meson8b: add support for the RX delay configuration
  arm64: dts: amlogic: Add the Ethernet "timing-adjustment" clock
  ARM: dts: meson: Add the Ethernet "timing-adjustment" clock
  ARM: dts: meson: Switch existing boards with RGMII PHY to "rgmii-id"

 .../bindings/net/amlogic,meson-dwmac.yaml     |  23 ++-
 arch/arm/boot/dts/meson8b-odroidc1.dts        |   3 +-
 arch/arm/boot/dts/meson8b.dtsi                |   5 +-
 arch/arm/boot/dts/meson8m2-mxiii-plus.dts     |   4 +-
 arch/arm/boot/dts/meson8m2.dtsi               |   5 +-
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi    |   6 +-
 .../boot/dts/amlogic/meson-g12-common.dtsi    |   6 +-
 arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi   |   5 +-
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi    |   5 +-
 .../ethernet/stmicro/stmmac/dwmac-meson8b.c   | 140 ++++++++++++++----
 10 files changed, 150 insertions(+), 52 deletions(-)

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
