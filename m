Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94EF315D759
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 13:25:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XM7K0MLTItrWYjsFCA6F3pzSYDV5977TJLHYo1TZhiY=; b=cyoAn0IVVURoov
	COfZLfuR2DmfCVAsvjuCACe/lBo7YYmrT1Tr83aybcl24gKSd0J4WEpXG9VeLy6oEZfnvWVQXhBZM
	vacKqcUvkztc71iGXycyDf4L/vD8yK1QsUx6Y78Q7rZAqpJG03/2lrLT/qgYce9jqUxt7+O0tVsjT
	Btbe+QTx8Qw5cTG2rlmeFXqnaun/8g5M8cRVkeT/ZZ9aqe7Stval+XZVGDbarMbZHvlMBgkp/muL4
	FZYxvRaumqVeqoQgHXH+I+S4Xru+0+CbBfzCtZ2fwmsdQYLJMK/QK4q2O0S0liI0p279/ET6hwHqZ
	/lkpUD8fPzBxmw3u5cng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2a1x-0002tD-UB; Fri, 14 Feb 2020 12:25:13 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2a1W-0002o9-7H
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 12:24:47 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 6D7C7658F;
 Fri, 14 Feb 2020 07:24:44 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Fri, 14 Feb 2020 07:24:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=ZhpFMTxAvP211V94I/8x95p4Rm
 NgB+Qbb9b8PLTyTS0=; b=lUg4pktXWBgCKpmCPxD+3LRV3TYBSg4UwZjn5WpaUq
 eYxjYKZbqkXqFcKE562IO4s5Y6RX7gH8NJ2m/hP5kns/if5y892/I19Qu7c4xB82
 SeOOFYxNmrLdHnPJoUJ1L6tN8aozHRw0Up8K43CfbHg0O7aePBhvqi0qdXwVSGnn
 owB9ilt8WARZtFw3glZt+HgkpAWVKWOCG3K6bdZD/K8oBUTzt/YR1CugxOsfIlJm
 vkUfefLRrZFGOuB1GZYnC5SHe/KClTkZsmcf6Yeb9pX4SO1OuV9YgKpaxM2nlMD/
 zveQHIGi2uRSrEOqoIIZoPbq7opbiGv7MvLHKaPQV6fA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=ZhpFMTxAvP211V94I
 /8x95p4RmNgB+Qbb9b8PLTyTS0=; b=U0JiksRHtEKN5CnCLirFpDDst/0LHA1su
 pdOeCTWlPT8LPuDvJG9773v1iOetl6laLin51d3fv7IKbtvTsL/jAp+Ys2OjHSW/
 vjgfAfjlgJred5c2ctt15LNmxLMFtFSLmIPMA2KySuJk1D6D3BTu5KTQhoXrsb67
 rM1bRhm5C8stkKwomBgYNjyQjQjsVI9vWe0OZmYG2upyUyiwQooO1sRSIvXjjcC+
 gqpFwcBBzNS5KT16zJ714AaIIFM61/kaV7O8MtAZ+IrntxhAjy9GAN+qbxy+1EnN
 YB6fG02v2sR+TxqGCMsT3AdZYyZVXeQpGoSy0GYyeJ6BoIX0+I2vg==
X-ME-Sender: <xms:jJFGXnhm7BocfTuShg3MCtjv2TukZxhsq6uI9VRieRoGwKqSqIh0rQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjedtgdegtdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucft
 ihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrdekle
 drieekrdejieenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:jJFGXnw2uETb2ijqh82xGbDlNUVcA2P3MnTe21RQA_5YT-mXla0n2g>
 <xmx:jJFGXv-m-mrTnN7rhDvftL0Q4tJSyELsKaiZrCJPbYrKSsiOkJbxDw>
 <xmx:jJFGXsabzQLiTxq-hz-9ZTg5wZW6bCQHeDBqW3Kt7UUPahxrCQ8a_Q>
 <xmx:jJFGXidoSszIPLXMfRP-DXVhx3xjRgkUr67hHdoJ043ARed_9IkNMA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0D90A30606E9;
 Fri, 14 Feb 2020 07:24:43 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 dri-devel@lists.freedesktop.org
Subject: [PATCH 0/4] drm/sun4i: Support clock and data polarities on LVDS
 output
Date: Fri, 14 Feb 2020 13:24:37 +0100
Message-Id: <cover.b12a054012ce067fa2094894147f953ab816d8d0.1581682983.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_042446_411581_BDDFF8F4 
X-CRM114-Status: UNSURE (   6.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 David Airlie <airlied@linux.ie>, Sam Ravnborg <sam@ravnborg.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 Maxime Ripard <maxime@cerno.tech>, Thierry Reding <thierry.reding@gmail.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

The Allwinner LVDS encoder allows to change the polarity of clocks and
data lanes, so let's add the needed bus flags to DRM, panel-lvds and
our encoder driver.

Let me know what you think,
Maxime

Maxime Ripard (4):
  drm/connector: Add data polarity flags
  dt-bindings: panel: lvds: Add properties for clock and data polarities
  drm/panel: lvds: Support data and clock polarity flags
  drm/sun4i: lvds: Support data and clock polarity flags

 Documentation/devicetree/bindings/display/panel/lvds.yaml | 10 +++-
 drivers/gpu/drm/panel/panel-lvds.c                        | 25 +++++++-
 drivers/gpu/drm/sun4i/sun4i_tcon.c                        | 16 ++++-
 include/drm/drm_connector.h                               |  4 +-
 4 files changed, 49 insertions(+), 6 deletions(-)

base-commit: bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
