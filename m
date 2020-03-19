Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BFE18B33A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 13:20:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=t2RdWeQn+6cfv6Bo0HzGHAHvaIQe/b/CPG/daqY/L4U=; b=L14
	cep+cWPHJCyxDHuSg3AADjFdADbUz/gl5hew59LIZ3NktX5NF5M+uc249GjrYa9r9csWAnLi6yOSz
	qGzuPpD0TsQ9/2ysJQ7YCIN9HNU6DKWfiZxmlyrkGtUmIHG0W3LIJW6AdxGf/IY0nJCm7pXfzbKYD
	kKiTiLeXnFzLefNXE2ymxXfamKcnco9NX6HQVtCJg7lk6Q+jY41jl3gJwlNXuJskX4IzOYzBuV+Fu
	ElnyfFMMemWdwGCCi1PsizmWy43cVYVsxH60Ln2LFeTyTBZWMGBOQOxpEWzXWLBBX3d7Agog4Lhxi
	OKtMZjnpIPpVF7Aq66uysq0L449UQUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEu9o-0001MF-7n; Thu, 19 Mar 2020 12:20:16 +0000
Received: from relmlor1.renesas.com ([210.160.252.171]
 helo=relmlie5.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEu9P-0001Bp-3X
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 12:19:52 +0000
X-IronPort-AV: E=Sophos;i="5.70,571,1574089200"; d="scan'208";a="42339692"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
 by relmlie5.idc.renesas.com with ESMTP; 19 Mar 2020 21:19:45 +0900
Received: from localhost.localdomain (unknown [10.226.36.204])
 by relmlir6.idc.renesas.com (Postfix) with ESMTP id 8488342BCBC0;
 Thu, 19 Mar 2020 21:19:41 +0900 (JST)
From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
Subject: [PATCH v4 0/5] ov5645: Deprecate usage of the clock-frequency
Date: Thu, 19 Mar 2020 12:19:18 +0000
Message-Id: <1584620363-2255-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_051951_262747_FDB62CDF 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.160.252.171 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-kernel@vger.kernel.org, Lad Prabhakar <prabhakar.csengg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi All,

This patch series does the following:
1: Deprecate usage of the clock-frequency property.
2: Increases tolerance level to 5% for external clock frequency
3: Converts bindings to json-schema

Thanks,
Prabhakar

Changes for v4:
* Addressed to comments from Laurent updated patch description for
  patch 1/5, 4/5.
* Included Reviewed-by tags from Laurent.
* Increased tolerance level to 5% for external clock frequency.
* Patch 5/5 is new patch which converts bindings to json-schema.

Changed for v3:
* Dropped reading assigned-clock-rates
* Increased the maximum clock frequency to 24480000

Changes for v2:
* Instead of completely dropping clock-frequency property marked it as
  deprecated.
* Split up imx6qdl-wandboard.dtsi changes as separate patch.

Lad Prabhakar (5):
  media: dt-bindings: media: i2c: Deprecate usage of the clock-frequency
    property
  media: i2c: ov5645: Switch to assigned-clock-rates
  media: i2c: ov5645: Increase tolerance of external clock frequency
  ARM: dts: imx6qdl-wandboard: Switch to assigned-clock-rates for ov5645
    node
  media: dt-bindings: media: i2c: convert ov5645 bindings to json-schema

 .../devicetree/bindings/media/i2c/ov5645.txt  |  54 -------
 .../devicetree/bindings/media/i2c/ov5645.yaml | 140 ++++++++++++++++++
 arch/arm/boot/dts/imx6qdl-wandboard.dtsi      |   3 +-
 drivers/media/i2c/ov5645.c                    |  30 ++--
 4 files changed, 156 insertions(+), 71 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/media/i2c/ov5645.txt
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ov5645.yaml

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
