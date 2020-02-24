Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C59D16A273
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:38:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HXECLPZ9CTRL7qzCE1tVUHWNn5fhavmLKZOnBiHcNG8=; b=iBZ0X3Zg9h9nx2
	RuYd1nFbHeq0Fa+0bEQ7VQ2pTLgmaXS3q8gkfJZ5YdcdqEwhV8h1tp1oO+e7gm5B3nYCgQke51YxB
	X/yNcr+ViuqEsltj4KdTU+q/zTRFMrWKv1cmNexy5myQGM03M3ZL8ZNLv479rezFjRavv+wPuhtv0
	XOrSr5cPZj8CHxRf6tkPJyXT0urq9Ey7p1xQI7ziKL0MxcV4JwQlCibpYaf082G2J5I+ZEFDj4I/a
	khdrFi+0u2nXPf91ZgQ5o13KI3gntauccCaptUArvmre5yVvW4SbUU6ZI9ceFi8EhR/tQYr4N/CcY
	PgWkaNz0lnnGPz96tJpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ABX-0006gq-8a; Mon, 24 Feb 2020 09:37:55 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69lN-0003tB-IE; Mon, 24 Feb 2020 09:10:55 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id C55F0647;
 Mon, 24 Feb 2020 04:10:50 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:10:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=2fIkfY5nUkZIR
 qQtgh0SSi7eUztpIu/nJGe44ypJz6g=; b=d0BLb0ouXXmUM+WD9WAJIQRjiH1UF
 7Eu7oAJdPEP9LzPovr4VVVyLCHxdnAb+B97wtDQKp86K6x9axFpZxR4mnIEDslyv
 CbWmQ8lob/ljcoyUQ2Iw9gwwBBPV5w1NzFL2h+KZTPtK8mdwbS7uJgSPi6kJFdxi
 mcPq/bDx11YvLHEikKFx9I4nNxBq42WNYfQ83BbUCAfd+19Da+KQ/HZfdvoafMCO
 AsKhUGFU9gqI73OjyvzG3uf+dRQMnlY49kFQxBg1e7dhBnifWIi8hA3pAlYNuAh3
 qUgT4/HSgx6Tf9b0RBOFwH2ofEIHS+i0yFKBJ7yW3JGROVHHZpjXORD+w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=2fIkfY5nUkZIRqQtgh0SSi7eUztpIu/nJGe44ypJz6g=; b=qV/Fy4nY
 TXKbE/dM8iqVFsceTTI+Illnfw8CXYuZ8qfr60faLiEog8z5wMqXoxCIiJM7qDdr
 a8swyO2o4Rx+qHqafljPgVmmK/gvYzFajotR3MbMLvN8MfXE45wp9VAKgEmjjnyT
 DJ6KVPs68BoSfK14GAtkJQOmhqSJjGJ0yGgXG2SIJfDShjbKJvzUSQrRlXwF4QuG
 ijHVvHU/ybpTEvloD6LDLP0QV95I6GHJwzfmamVaryl3OO2HhUAv7MwqWlqV0Gti
 hj6svxdbqjY6s+44evv0hQhTSNUQ//AOD40pykE1LKEtgb9NJv2urymy+ulQw7MV
 C09/8REOAfEi9A==
X-ME-Sender: <xms:GpNTXhKujlOv74uPEMTBfHTxQCHSjzTzmLXBpvj1tBcC19YpZQSWgw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepvdefnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:GpNTXhY_4XmIOfiJ1ZtmWsedmUg9z8WSCDjJ7fkoGjEgAvDhWjYlYw>
 <xmx:GpNTXkuNiEHorzz-rJ1XCGogn7RrAAscO1hiic62o3K1jYAxJVGXZA>
 <xmx:GpNTXmuUOPBSH7xvLKWa320T6e2g4cSi4vg6iWqQvT1sL_9_yK-Rkg>
 <xmx:GpNTXoVV0lwPzHjtumqbaG2BXZzRbKSG5iTm-gqmY9t8FKEMfMShhw50fzk>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 12401328005E;
 Mon, 24 Feb 2020 04:10:49 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 84/89] drm/vc4: hdmi: Remove unused CEC_CLOCK_DIV define
Date: Mon, 24 Feb 2020 10:07:26 +0100
Message-Id: <7050dab4e8d23a36ee1f7238b32a5a8f92c38e3c.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_011053_772453_F20BE01C 
X-CRM114-Status: UNSURE (   7.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.17 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
index 1762484bd97a..9b06352da377 100644
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
