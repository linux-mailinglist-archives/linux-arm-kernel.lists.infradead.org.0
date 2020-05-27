Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A55E1E4A32
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:31:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+M4rcs6HKC2KtDO+dwVE05kol1x186DzyGk7DEiDkQ0=; b=fCfOvoVGICJO8y
	2cZqRwJDrHkQnThmAWeE+ylHYGHXvrk4z/MnQztRCrAvPFkRSzA7Z5YP778BK2sFu0ewFxpgCbkfk
	ajSdAM9PNHqDhPMWDFtn47UJlRon0BIchCv56bIZJIkcc9Xsszs0ezThc67cJVqy90STjp3bfgqOh
	DDtl3Y7GzYv/K5PamnMS2iWMH7gzNO3EffJ4FNwbFIzt0FR90/qQtZqUDOmbe8+sf45YgIVc2/2VK
	YOSjNfHFAcKaS9W8FVzaLDaSyG9uIPa9d0xW9PU5sultwSaB24n2Wr7wGj3q07D96IgJeRdYD0pU2
	crBGgwnAoab0LcXT/vrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyxN-00080W-2V; Wed, 27 May 2020 16:31:05 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyLC-0001kT-Dr; Wed, 27 May 2020 15:51:43 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 9139D581518;
 Wed, 27 May 2020 11:51:37 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:51:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=Hsd8JQOKXqqad
 N9HnqexX4egl8EjW+cY6nFdDegziVM=; b=dEs6sji+it2ZXHG8WYplk+ElCqypR
 7f6YbJHc52sSBDtdllmRFe4t1AftH69jcdN9BduIlV5SYH1Bn5nGk9VcOTItgENr
 psGkZ3nbXqK5MuwL+GMpDXtF/5uD7WENtwYVHxAms9LfpoRK16H/4ZwxXI2hYFEV
 TULzEC5aiLXNdNrFaxb7C4XVNhWO/olCEui1kf5++xYO4q+j1clJgbvCmjPxzRHG
 UKc+BzlfcszWm7D+UKCuvx6CEwEoh42jA+I+YZZu95SCV0qc5Cm5Dbnt0wlkXfqi
 fRdi8NbsGn3/OIrTThEnUtwRqc1vXIcV+pAwh0hm3CpHRefS7KDkyzSOA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=Hsd8JQOKXqqadN9HnqexX4egl8EjW+cY6nFdDegziVM=; b=fqP6XMUW
 y3gBzLXMEY5ZRdGOje4ECtWXxvIsqmqy+oZPl8bbK9U1svzXamIzZ+kvz4MVUX6t
 2Ml5WXFG5To9tfdn/SCBVc6W7MdibibSljuybpstJbtpxDHPXybW1Y1RWb19+ZQe
 /ZkP2eNOHPQkJKxWzi4pFvQGk5Dh+I985yD2DdC9mW2AnuKSElpuF10vw47vDmvJ
 abCCFkvc4Dwou6BN8qE8sxYDPkVJyUy7F11psaxiyVkH7s4WV5KZ29EPD03VS4mw
 b+ENhJ8XL1S3hGPyuDYpOsf2rs4OLZuApDLaEJJviuaVutztVtkEUSPnorse7UYt
 CFV/6mU+JBtoUg==
X-ME-Sender: <xms:iYzOXpyiBsTFpIJjAMF5o8VXHDcwv9Njoc00UmEaMgg3s0kA55l8eg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepieejne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:iYzOXpSAseRgG1ESpsNfuZGXxM9ygo2n9Npp-hxkKTSKYZQUvk3E6g>
 <xmx:iYzOXjUP6bBrfqf8doch-6KDGVZlsMmJTBpAbdpXZAxzGA8j7d0XKw>
 <xmx:iYzOXriDpPa8MKsCeAAP4ZFTuZPFaZHGx4y0CdTkoZW_KYo95bqXlg>
 <xmx:iYzOXtBXjCnzGm-rvyl4c6t0CYyB9VZa4w6KYmTZEhZI_EuOT40q-g>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 352773061CCB;
 Wed, 27 May 2020 11:51:37 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 089/105] drm/vc4: hdmi: Remove unused CEC_CLOCK_DIV define
Date: Wed, 27 May 2020 17:48:59 +0200
Message-Id: <45917004243e1d8a060a9932bd5348143718fb5b.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085139_216340_4C926CF1 
X-CRM114-Status: UNSURE (   7.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
index 27cfcf38edb4..f62b488c5bdb 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -55,7 +55,6 @@
 
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
