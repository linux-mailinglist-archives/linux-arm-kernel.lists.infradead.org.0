Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36DB3CED81
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 22:32:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bgLntdl7i+stnk6gwDu9/Yl2zF6x8/IxK/AyudNXhe4=; b=hCVfgccnujEsVc
	wfEDnFYSbWDNiLbV9HB6+w4jCetC1JtcEFkmLqaNGN9bDJxCZZRyF2V8qN0M0CgvAVkZ8oxomC/l2
	EmGR4dq6RKRQwUMqlNC74QSz2frSbBCF9x5aoDZqTIxZF+TdN/yZNj6DppxWPN6IWEiCslB34N1BO
	UUg3sd/zMgA/P0ctOLtLl4N4peSoVrSPrdb4at/hWnDl3hVuhtPFhZZ3rMbQdS+WxK7nxPBfsnVaP
	QGiPf6h0AVXUIauhhZOjLwZgVxb4kCZyta3oBNsGksSLNZcf845vb7644l8fXgU3LfEBLAYj/sD5L
	zYS9oZELPzOJVus2E7Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHZgL-00062w-Ag; Mon, 07 Oct 2019 20:32:37 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHZft-0005pL-TP
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 20:32:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1570480327; bh=bc7QpEyDlGvpiVxiz/5velrN3mxOhwlvsZHJx3BTmiA=;
 h=From:To:Cc:Subject:Date:From;
 b=Qa/eySJqBG5qucKIh31HlYSo2vDu+NzWyou2O+no6F39oMNlAk9UDSeFd3m8f32c6
 /GYFk0dOTFXv0d3knAXMyUFWPOGQLbI5/CEJGuTlWCR2QitCbru+BXb1RF6EKokYzt
 grQoCFJ1mKdR0hJAd676Z4ZMLUuxF0hpsPy7WjCM=
From: megous@megous.com
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [RESEND PATCH 0/2] Add bluetooth support for Orange Pi 3
Date: Mon,  7 Oct 2019 22:31:50 +0200
Message-Id: <20191007203152.3889947-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_133210_300898_413461A7 
X-CRM114-Status: UNSURE (   5.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ondrej Jirman <megous@megous.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ondrej Jirman <megous@megous.com>

(Re-send for Maxime, with already applied patches dropped. Nothing new.)

This series implements bluetooth support for Xunlong Orange Pi 3 board.

The board uses AP6256 WiFi/BT 5.0 chip.

Summary of changes:

- add more delay to let initialize the chip
- let the kernel detect firmware file path
- add new compatible and update dt-bindings
- update Orange Pi 3 / H6 DTS

Please take a look.

thank you and regards,
  Ondrej Jirman

Ondrej Jirman (2):
  arm64: dts: allwinner: h6: Add pin configs for uart1
  arm64: dts: allwinner: orange-pi-3: Enable UART1 / Bluetooth

 .../dts/allwinner/sun50i-h6-orangepi-3.dts    | 19 +++++++++++++++++++
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  | 10 ++++++++++

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
