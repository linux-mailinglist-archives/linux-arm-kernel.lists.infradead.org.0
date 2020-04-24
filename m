Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 776FC1B79C8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:41:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7pxuHGfkU3jbF9Hv3QnnyM7VnMa2FEqz2wTS554zTb8=; b=I2MNqVOmswRono
	mLsWxzt/Qtsi61ggWxU+X5UEeblr0GOYRRb8wApoAuwqUFTYSsh8naBzdCpsfLgLj/HL5Pe9GSF9f
	WxEfuLeFu7dvlWRq3lQifpfMAx1degtzobDHZROJVyLQRLebBnylUilkynJ0Q2s5yblc3CRWb2AG0
	LWLMtT3GtltdQtyzWiU5K4K0VCIK8RgMKu5wc68K+QAAlZsmAxqmcInh/JKAxCwVrpob0aplE+sLv
	54T2sHGWCHZqpS4gInFaWv9J+gppujEzaHPzAhruFF5x1JBiJdezsP4IYJ3MR1yG18NJ1auZO6GJB
	75j8LRe8YjbYfhQbP6AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0S6-0005oD-7h; Fri, 24 Apr 2020 15:41:18 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0Mf-0007W8-I7; Fri, 24 Apr 2020 15:35:42 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id DA864EB7;
 Fri, 24 Apr 2020 11:35:39 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:35:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=lgLp0qWWRscbA
 ZPBFEBy9wSxXxrWVVMD/Dw+AAXxxz4=; b=kjkFPUtv+BsrrC7LNyrzdOEpThfTA
 ov5+EVfmj6tF24zR7hzUrEkvVPEsaKm3CCUn4VIwEidYbGeBqvMi6ht2tnc7Zgnf
 dXAyY5WRAnS8uquielvWkT+BCfrBVeyKMqkOBWQT6YW8I4VFBCtH1GqH8KapziWV
 8/3VA4ia4jH0ZZNuj6Skx4O2YkhxnjrMwrzgfOY2s2fv4Y1LCtPEHCO3NmnlWIoM
 ZVCWZDWcubCIUMNJ3pqvbZ85gMy1vmhIzUU2L3i+SwGVraJOaOUszsVsuV6LGGL6
 FrIIAzTJKa0XIPIEOZfW3oOi7sqcSBlDfJA9Y4WE/ZTqzvVsJbrvkfNsQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=lgLp0qWWRscbAZPBFEBy9wSxXxrWVVMD/Dw+AAXxxz4=; b=06f2Ne+l
 fsDrhicSiId4nb/KZ1YTsCUhB9S7OpbBA23AHXiUKuxvF4pwrUX+w+8dsAdSwK9L
 XkvPEolO9QzbfC0Wj7mUgSbBrBfCtX3sYEjpcaqGOqoy1hg3DXtp14xIrRCyta2/
 Gt0hORSH2A8iHMEhfpjuXZQJ/+dIXL4uRon3dM0Pms6VlDFmDJ/iX/HWsmnRq8a0
 BDEWSVVLzYUuko1IbGUh22uF+cIytKpA4rrk678PWtKB2xY9HwVdvUkSkOAVAk+j
 qKEhBqgSkLBc+csUrlzv0owBh6hQ2OiH2VIkmPbuVVMFkoFAW6dnKIu0wAU8JfBS
 kHcyqf8RRL796A==
X-ME-Sender: <xms:SwejXuSW-qd1WRNEkIt7ADT90j6iMa2MMHAZ7GrxOsW5scx8r1FYBQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeejnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:SwejXvZNlHipdz5UMUC0ndUwu4xi8ETPpPOmFq54UKgZjpZNGX5VJw>
 <xmx:SwejXmSs2mJAxZdnWlLvDvKmz5Pbh3oRWhGcLnDbaMaxkU4o8-5uXw>
 <xmx:SwejXn5XnJWSmiHd3OxKK-F3hhDgvdbguO3BA8z8hK5S_EUU4AasRQ>
 <xmx:SwejXonBV-lQITbqSloKXLyshcj0Mze12CD0mPxJFBzjPU1s5LJLxlMnLtU>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 312F4328005D;
 Fri, 24 Apr 2020 11:35:39 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 12/91] clk: bcm: rpi: Make sure the clkdev lookup is removed
Date: Fri, 24 Apr 2020 17:33:53 +0200
Message-Id: <12b4b665e18c34e5b81882ddd19bfce2ee50b78a.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083541_686938_C72CF9C9 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-clk@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The clkdev lookup created for the cpufreq device is never removed if
there's an issue later in probe or at module removal time.

Let's convert to the managed variant of the clk_hw_register_clkdev function
to make sure it happens.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: linux-clk@vger.kernel.org
Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 013706816895..eb5c4f5720e8 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -245,8 +245,9 @@ static int raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
 		return ret;
 	}
 
-	ret = clk_hw_register_clkdev(&raspberrypi_clk_pllb_arm.hw,
-				     NULL, "cpu0");
+	ret = devm_clk_hw_register_clkdev(rpi->dev,
+					  &raspberrypi_clk_pllb_arm.hw,
+					  NULL, "cpu0");
 	if (ret) {
 		dev_err(rpi->dev, "Failed to initialize clkdev\n");
 		return ret;
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
