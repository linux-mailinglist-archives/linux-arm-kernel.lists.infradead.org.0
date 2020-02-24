Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5708B16A26B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:36:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=41K/FUy6kEU3jvt9ERyZAA9HuXk1DlrisZDG/mHE3Rk=; b=rIESKchkkDPjWw
	zkezSU6x+HT67qY2gV6QFJS9gokXYORdrWjmx+1z7RW1SvCMQ5d/O1pWhSLTXzW5u0oS131jzf/Lm
	PKoA41coOxiWvuPG1CFqO2laQq67v0D8j4LfP1TXTh6W346yjRl5MduM9KGcB0u/eH0UzrT7Ujrn8
	5nKt2txlKfwUO8gV0ZjorHHLhNP4RMtkHtzTAmPTypH/sNo/w3mcsLYCS6NsNynLKxT1mQd9gRe/2
	ueEJOfhdsnyaXfzmHnXXh4U3bIdEbxBAMl+xX8SutOjsW1n/kfPRre1r7Rq853xfWbG15+sPdsXak
	uzjqlZgH3BbYUbASKKBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6A9p-0005If-FY; Mon, 24 Feb 2020 09:36:09 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69lG-0003oa-Lr; Mon, 24 Feb 2020 09:10:49 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 156F764C;
 Mon, 24 Feb 2020 04:10:45 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:10:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=TZklbGGeK2hTN
 XOoqhD10H1/cStRanvaulcZu3jl1j0=; b=AXQjbmoLUAAEuNDwzkcD4rFFSflK0
 8RWEZB4ydCZyU1RLOMHPzWmj3lhfLpeIdqyacGVPA+8iLiS3VRkQraQ5KJlQSAZH
 zdMDwnL/xpebs/jQuQlMi6+BVwW69Finh9TqbRMwbZzfuZZrB6kg9a1o+ARCCQqn
 SItvnIr89CuKdFpPCHjDOTHeC5GNxVUWkwHdXvSzm0pXj4pZpttB5+rsF8DAjxGb
 fy6mVSXQmbE581czkvZbIQMDKBM4SKKw5aQWz9CUwqsJ6YTRAHUyVySd2r1OlqQb
 sg5qnLDJlSBaApx/gJiSkVOilrK+YOXx+n0aAa5ZpZH4of7yzYnBlqe1g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=TZklbGGeK2hTNXOoqhD10H1/cStRanvaulcZu3jl1j0=; b=Ds3Cz93y
 +hDt2r+1GA1QXUwmYWxqUZtT5VpMzk//VHJfijGhB9COt3tpAaCz+OqNer6J2+x2
 VzrPHh5wMb+W2acv2F1XzhfklKkin6/3fSBIV+F2NnHuYeG5I49g8M9xkMLZbdY3
 vUNcJ/UMg3KCFKA416EFgXWw5Yini3UTLwi0PD+0+TOrQaQUp6hRVS+Qf5KYaVFY
 kVnhQVLeZsbS0jndVo+AuAPWdh6dtw+0FwL7TBqYgjzDBlWuqZmKjahn6mqeSZmF
 4NlhYk1qFQokWSvgwPAyj93+PNL5T6HWAY342YYxJekDNG8bkMl01KYxghl+5ze9
 vgSvZuwfDFPt1A==
X-ME-Sender: <xms:FJNTXm74FIfx11qNwGsxc1nw3JfSwYZu397qvbcEtMH-yk_UdmK43A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepudeknecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:FJNTXmCFvVDbCLMOqzGvz59XhNkkBG-oJjcVOekeBS4JMB2_Xj9bVA>
 <xmx:FJNTXoJaYdXzIuH17qItKvD3dw460fhbqywrkeRFzXj-cWWAdG9q6g>
 <xmx:FJNTXg9k982Z6EbIR3b5ViuzrC1ieiD6TmJJRDYacCiL9D8khCtSRA>
 <xmx:FJNTXiMFrDSQecpFBjXAzb7R3EvNoM_OP1M8gwGuOPUJ6GvR09F5VKPqR4g>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5BA153280063;
 Mon, 24 Feb 2020 04:10:44 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 80/89] drm/vc4: hdmi: Deal with multiple debugfs files
Date: Mon, 24 Feb 2020 10:07:22 +0100
Message-Id: <2f8c4a2b3c3ddb109036489d20ccc1f7f743a44c.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_011046_868757_4ADDF7DA 
X-CRM114-Status: GOOD (  10.13  )
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

The HDMI driver was registering a single debugfs file so far with the name
hdmi_regs.

Obviously, this is not going to work anymore when will have multiple HDMI
controllers since we will end up trying to register two files with the same
name.

Let's use the ID to avoid that name conflict.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index fffd1ce7cf90..25fbe2fb72fb 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -1365,7 +1365,10 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 	if (ret)
 		goto err_destroy_encoder;
 
-	vc4_debugfs_add_file(drm, "hdmi_regs", vc4_hdmi_debugfs_regs, vc4_hdmi);
+	vc4_debugfs_add_file(drm,
+			     variant->id ? "hdmi1_regs" : "hdmi_regs",
+			     vc4_hdmi_debugfs_regs,
+			     vc4_hdmi);
 
 	return 0;
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
