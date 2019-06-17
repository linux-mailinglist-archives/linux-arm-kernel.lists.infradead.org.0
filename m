Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0FF47F37
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 12:06:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2d/CMfdO2nmRQhE/em39dThhQuQI6/RBfrc3DegZZgs=; b=AVAgP02PLXfD6+
	R0oa7+AQsa9/d3DNI8aejywJIO4zK+VOPhyy1dZuVDesEYW9umkdUZ286cgU/flk7y5dIKcPeQ1g0
	rBDwoVRJtE2nt++JH1xDvmAFfpBe59ob1CfdZVsecxo4cvDTCpgJX2j8jTjnvh5MBYS8hEklzSCFH
	j3jA0fKlG0uD/C38uNzlKcwN/2Z8P0k/pT/YoScxtbKtSgdDbUjxSsKcPufBEE3uePxZM7ilaYixH
	o4KmuwqHW51MSc5jYpeNyhiH5CQYT+MH21lig1R0xeaEP4Cl5BTzFQUmdez0Hdp4ivj4tykLgz5x4
	Rq3vYN4hOPWMppA4rr/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcoWW-0005fK-AD; Mon, 17 Jun 2019 10:06:00 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcoVU-0003lf-Eg
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 10:04:59 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 5D8A3806A8;
 Mon, 17 Jun 2019 22:04:44 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1560765884;
 bh=9TpEGxHoVApXP2xLWWFd+WbRCiDRhmBeG+15sZtDkzI=;
 h=From:To:Cc:Subject:Date;
 b=egLGVkaJOy4SKnBeqUY9fYo6IV/6Ys5fal7z2qTJ/DlqBSCjr1hz6IJwJrNuY3EdE
 e9p7YxcLRCp9k1cKlcWJTo9QUUGejZrk5+GE5eyPtoDUJukOg19BVxUa6mLChv2tns
 LrATW1fxZWkBH7BVZ1NLuyIC4EKfxvaxHI9EgD0xgSjo0AmOe6UWC3Jz326GlOevjv
 iu/3fd3fyigLsNiaH6ius07s3i/bXxr7SvB6s5iQ/ZgKNiINH6Skq758URaQsF/w2A
 +psnuWVfbIo+gDvikFiuZZUl/Rgpb52CEHVB0MdnCEGICKpCrXeNgaatYGvG20X4+w
 1sQGPDKbgVIqA==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5d0765bc0000>; Mon, 17 Jun 2019 22:04:44 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
 by smtp (Postfix) with ESMTP id 4985E13EED3;
 Mon, 17 Jun 2019 22:04:45 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 1E69B1E04F0; Mon, 17 Jun 2019 22:04:44 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, linus.walleij@linaro.org, jason@lakedaemon.net,
 andrew@lunn.ch, gregory.clement@bootlin.com,
 sebastian.hesselbarth@gmail.com, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] Add support for Marvell 98DX1135
Date: Mon, 17 Jun 2019 22:04:28 +1200
Message-Id: <20190617100432.13037-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_030456_693038_DAF2C3F6 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Marvell 98DX1135 is a switch chip with an integrated ARMv5 CPU, it is
similar to the 98DX4122 with differences in clocking and pin control.

I haven't added a separate dts for the SoC since it would be so similar to
kirkwood-98dx4122.dtsi.

Chris Packham (4):
  dt-bindings: pinctrl: mvebu: Document bindings for 98DX1135
  dt-bindings: clock: mvebu: Add compatible string for 98dx1135 core
    clock
  pinctrl: mvebu: Add support for MV98DX1135
  clk: kirkwood: Add support for MV98DX1135

 .../bindings/clock/mvebu-core-clock.txt       |   1 +
 .../pinctrl/marvell,kirkwood-pinctrl.txt      |  44 +-
 drivers/clk/mvebu/kirkwood.c                  |  17 +
 drivers/pinctrl/mvebu/pinctrl-kirkwood.c      | 576 +++++++++---------
 4 files changed, 357 insertions(+), 281 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
