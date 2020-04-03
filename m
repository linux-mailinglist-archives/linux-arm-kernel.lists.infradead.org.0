Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6411D19D8F1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 16:22:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h9BS8LLnYFgLVX7VtKsKhADjLRMb3yk20KK0kQv/XeQ=; b=P87mPDP0JzHl9y
	Ut/uKrwWkbnGISpFj8OH0Vx/yFYT/5gMVemLNzuuigtT1dROr25Qv7AltZX0RmoxP1SozezqPMp56
	SdJxS3HD9ofCq2ggur83NCPGoNtOejxAKGuExWsR0aiMX3dU8y8zNM3NmLV+VJnYi3IFskowl0buu
	KuSQ7fIzi+KuE7Gt8SMKXdouOKwXUOrMSSJMNJb6ABP4bKJgQhQHAH3aEwvxxGezyhcwN7vdH7mK1
	zGWo+QT25ip6K4+V7kEY8G2F7PoOygYIsZI1ZpMuAqqP/lrDwbF8GRsRsMIqD4E5uQxK3MaLpcfEY
	BBwxIs2v4vUq+F1xwywQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKNCp-0000wm-PX; Fri, 03 Apr 2020 14:21:59 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKNCh-0000ul-85; Fri, 03 Apr 2020 14:21:53 +0000
X-Originating-IP: 77.205.41.241
Received: from localhost.localdomain (241.41.205.77.rev.sfr.net
 [77.205.41.241])
 (Authenticated sender: maxime.chevallier@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 1D96C1BF22A;
 Fri,  3 Apr 2020 14:21:41 +0000 (UTC)
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hverkuil-cisco@xs4all.nl>
Subject: [PATCH 0/3] media: rockchip: Introduce driver for the camera
 interface on PX30
Date: Fri,  3 Apr 2020 16:21:19 +0200
Message-Id: <20200403142122.297283-1-maxime.chevallier@bootlin.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_072151_421917_1D8156E2 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello everyone,

Here's a series to add very basic support for the camera interface on
the Rockchip PX30 SoC.

This Camera Interface is also supported on other Rockchip SoC such as
the RK1808, RK3128, RK3288 and RK3288, but for now I've only been able to
test it on the PX30, using a PAL format.

This driver is mostly based on the driver found in Rockchip's BSP, that
has been trimmed down to support the set of features that I was able to test,
that is pretty much a very basic one-frame capture and video streaming
with GStreamer. 

This first draft only supports the Parallel interface, although the
controller has support for BT656 and CSI2.

Finally, this controller has an iommu that could be used in this driver,
but as of today I've not been able to get it to work.

Any review is welcome.

Thanks,

Maxime

Maxime Chevallier (3):
  media: dt-bindings: media: Document Rockchip CIF bindings
  media: rockchip: Introduce driver for Rockhip's camera interface
  arm64: dts: rockchip: Add the camera interface description of the PX30

 .../bindings/media/rockchip-cif.yaml          |   98 ++
 arch/arm64/boot/dts/rockchip/px30.dtsi        |   12 +
 drivers/media/platform/Kconfig                |   13 +
 drivers/media/platform/Makefile               |    1 +
 drivers/media/platform/rockchip/cif/Makefile  |    3 +
 drivers/media/platform/rockchip/cif/capture.c | 1170 +++++++++++++++++
 drivers/media/platform/rockchip/cif/dev.c     |  407 ++++++
 drivers/media/platform/rockchip/cif/dev.h     |  208 +++
 drivers/media/platform/rockchip/cif/regs.h    |  256 ++++
 9 files changed, 2168 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/rockchip-cif.yaml
 create mode 100644 drivers/media/platform/rockchip/cif/Makefile
 create mode 100644 drivers/media/platform/rockchip/cif/capture.c
 create mode 100644 drivers/media/platform/rockchip/cif/dev.c
 create mode 100644 drivers/media/platform/rockchip/cif/dev.h
 create mode 100644 drivers/media/platform/rockchip/cif/regs.h

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
