Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F253F1B7B0A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 18:03:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kKK50YlTfdZNw4LLSfvifmornc8bBoiQqV/InumM/a0=; b=OMtIIznOxbtdxH
	AS4At6hznPe8dn8A0AMmik2E/U/7FWGU1jW+7YsMP3z7DCKbGFq+V1RaRQN9nILTiW0YWLWlvlnbz
	QXK9w0eqDc6LyydFV/dvt/eNMqg1lVgnKt09lUFCwf2pldLXPRMgWs0FcJ+5d89dDETYN73EJav5q
	nWh194/ee0lURfNdznhfylaDxjnlqDZMEDc5qFdizKWBc73j3KFi/qYHtkTqCVNCnBGPS3jS5ywiZ
	mSHr4v2E4ytjFAvVf40PNc8Sf//ERvTno5nbei5ah5jMUY2oM1+kc/4+Tu1CFefcxxgZ6UjIcHvfJ
	FnxfFSr4QJp9No3LUy+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0nl-0001v8-72; Fri, 24 Apr 2020 16:03:41 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0OF-0000S8-4S; Fri, 24 Apr 2020 15:37:24 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 5359B11F1;
 Fri, 24 Apr 2020 11:37:17 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:37:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=yBSySeAZPxbSW
 /2B2VlVvClbPmm7sNacu8s8+ecmGOc=; b=nVgZ3BmHUJ/SAPkWYxAatjpK5sbaL
 CiuReG5xJtySJYbOcmEmtNl81JFo2TMF+o3ryrpaZRPwt9uyRim7ylazyQ4OzP05
 p6sbEQBza0RJhuJ4SYUR7K4a68rz9YqLTfLIZdoj2OEQ0d5FOaiYPsgYqINXlhci
 yOZFq9OQUmXmhLR9jVetTddR5GYWgc246/IadaHIfp9EiDNr6EaNaadLq5wwn30U
 JiNU7FYmAxF5hGvyNoo4x57UrQqQZXUK+t5Wtv67XhKgyIS7yg10s6Lgxe1GVLMi
 46wELmnOfEfPew7qbtvTtX9sVlkncBXQ8Cg9ZeLhZXeN9dj/XfakqS6eg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=yBSySeAZPxbSW/2B2VlVvClbPmm7sNacu8s8+ecmGOc=; b=kkXLQ0tH
 OPlHxST4wEtDiLAxHh15oEZ1DEuCOqKHmBRSddpiWY3o3bvHVf/g49beyyr9IL+0
 ulaPSGp8Xcs5H8819TDtkzBo9z4tMOR8GutbZvjEDCOQAnLneFyiZOV88SwgFJ7J
 AZmusZj7ExFp8am3TFya2FmxLe2xuo2mwfF6SYUF2DzL62Mk96+TD6HvHlG6sPvu
 ZUCNeW8YEt02rNlQvv/z/ilSidKMRqy7eCTtBy24SMN+54ohDJhom3Ir0jFsoESi
 WqxqwfbfX+aiQQ1kIgl6+Sa3Lm39Qe42wNIZStuAeSlAScepybgCTIltrblNhKx7
 Or1dTdZqRgD9Qg==
X-ME-Sender: <xms:rAejXmScVu0kHwNxDAm7F-tnzpZJDg-RwH-rhMklG6lAubEPjyXNIw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeejgeenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:rAejXpVK1q1yPn3mdI37FqMKSobLI2UpAj2PrjRahTAngil72tQHDw>
 <xmx:rAejXqQNSxE3iodkTiPKjWV2bPnlQ6d-S0SUKGwR-Nv4UqKeQddTDA>
 <xmx:rAejXjn7Gt7ZgoD6kEkTelKYoD9f_r_DooGZssxMLWAJZXLpj-MxEQ>
 <xmx:rAejXj9XdYOyo4D5NJQ82MnqCgVXlz34gA3ikyWdQUQ7m6YKRxDaGuiKSgI>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9064C328005E;
 Fri, 24 Apr 2020 11:37:16 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 82/91] drm/vc4: hdmi: Remove unused CEC_CLOCK_DIV define
Date: Fri, 24 Apr 2020 17:35:03 +0200
Message-Id: <0a61007b3a91a8f70257fb3a3d417eb424860491.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083719_262627_393198F3 
X-CRM114-Status: UNSURE (   6.88  )
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
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The CEC_CLOCK_DIV define is not used anywhere in the driver, let's remove
it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index 20b6af98abad..360743187f95 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -54,7 +54,6 @@
 
 #define HSM_CLOCK_FREQ 163682864
 #define CEC_CLOCK_FREQ 40000
-#define CEC_CLOCK_DIV  (HSM_CLOCK_FREQ / CEC_CLOCK_FREQ)
 
 static int vc4_hdmi_debugfs_regs(struct seq_file *m, void *unused)
 {
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
