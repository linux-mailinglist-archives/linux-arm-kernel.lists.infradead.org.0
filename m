Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38AFC152394
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 00:51:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lhfV2+rRn5LPYHccLTguHyLWtxu8uz1AgoxeGT+zX6Y=; b=eAoJVsayISUJaK3mSenTWdGne1
	h12gIiHkXYC/AP6ywFfsiRT98A/+kuttwKZSmW7vHe1KlcUtFpHBr6eoTojDQ0NYz21KzIzFSzCkS
	GJl+c9JAdeoHoIudQPv6+jjVwi91QeE9/I22OJDo9rhaCu5rxMpo+AEWhbhgJra0sKEQw5psKnhTP
	0EbTo08mXJ42Ci/SglMJ+HcWor3Q/T5g0Th2VaGEHRvY3lob6QOctyhFGGIsShzEYnT15mEEBCzuP
	ovwtslHAA7WCfDFhIk1Wyi+uGYDHMdb5HERUTcfrueBQp1bWjbzqJEW1ytcL+jp/RwZFjlG2S1EXA
	+D77gvlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz7yM-00073X-Ok; Tue, 04 Feb 2020 23:51:14 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz7x0-0004Yc-6r
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 23:49:51 +0000
Received: by mail-pl1-x642.google.com with SMTP id y1so66981plp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Feb 2020 15:49:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=h5BHRotCYsy0a67S2KVH1ySLbRo1QXYTOC5G0a45OSw=;
 b=N6krExxw+iDOgtznqR14UzAobO+11LQwTqSIFnq01ZN+/cRryxOKZiPH6j258N7gnB
 XksOmfuX4/M+r1Ju1OKEH2S4W9cd5roKe4PJNDc5alJYXDpC9qE2xA4J38T135DvnfXl
 mmHfMcfbwroPCc5Lbd/vDm3uVA6hNtr4ZPTOOy8MhbKLeN/FcWNVvVktChc3ohX2InZ3
 sSOOFVcIHGII58Flo8fj2sVSutv4X2heuk3jRs7L3k/wyMHyrFSHcFGqc1HSSqEuLJ+3
 trYC8ZZpAuwpjNkWf31EakOElMLkmv6dZuI9Ly2ya1nNwOSMj40SKlBPa8lzkymc+aQD
 M+wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=h5BHRotCYsy0a67S2KVH1ySLbRo1QXYTOC5G0a45OSw=;
 b=O/U1kbi0MORYwy+iBOVKvnlTqFROBsl12KtYXDr17tbuNl+8V8reYQygMdGAd0//kV
 CDkQFHT4mBWoRXf0WIen3FbTita+sPj4DuxFTMtReXp87gcyaycpQjwShuMmkxRr1q4l
 cWLF9JkwuZXnMjLolEqpsmk4iVfR0Le+Kk2ZPYUxyO93e2iOSBLLfSHxwLx3v27LyXL+
 +JIEtdSkjL2uDu92MTL36louNvVtYzcnVOwTmnGFHt3E1nlvY9ZIMWAVjPNCYczNSf3d
 CGNfxkVgQ36AZ+DaCeFESdf6J36/d0621G5+KCpC1XINYBfYmgOplel2IIkrd3q26HOX
 AE8g==
X-Gm-Message-State: APjAAAXEu0R55ELgTQ5RbG24QEYHpKSqPLdAujCvjEZ/j2fx9vHyiW1M
 Vql5TkoZ8KYIf1ObBEtKs64=
X-Google-Smtp-Source: APXvYqysNJ3RiWVPT9jFpzVjeZWRqmiw1QVTywJOVhIiqMr4BgmIi5yBgbIXD7yptVHG0IAPw4XeBA==
X-Received: by 2002:a17:90a:c301:: with SMTP id
 g1mr2085955pjt.88.1580860189106; 
 Tue, 04 Feb 2020 15:49:49 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id u2sm24607929pgj.7.2020.02.04.15.49.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 15:49:48 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org, Rui Miguel Silva <rmfrfs@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v3 09/17] media: imx7-mipi-csis: Create media links in bound
 notifier
Date: Tue,  4 Feb 2020 15:49:10 -0800
Message-Id: <20200204234918.20425-10-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200204234918.20425-1-slongerbeam@gmail.com>
References: <20200204234918.20425-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_154950_302798_53BC9FAC 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [slongerbeam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Fabio Estevam <festevam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Implement a notifier bound op to register media links from the remote
sub-device's source pad(s) to the mipi csi-2 receiver sink pad.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
Changes in v3:
- call a local imx-media utility imx_media_create_fwnode_pad_link().
Changes in v2:
- Move notifier_to_csis_state() next to mipi_sd_to_csis_state(), remove
  unnecessary inline, and rename to mipi_notifier_to_csis_state().
  Suggested by Rui Silva.
---
 drivers/staging/media/imx/imx7-mipi-csis.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
index 4c54456318ea..d3a83577efed 100644
--- a/drivers/staging/media/imx/imx7-mipi-csis.c
+++ b/drivers/staging/media/imx/imx7-mipi-csis.c
@@ -317,6 +317,12 @@ static int mipi_csis_dump_regs(struct csi_state *state)
 	return 0;
 }
 
+static struct csi_state *
+mipi_notifier_to_csis_state(struct v4l2_async_notifier *n)
+{
+	return container_of(n, struct csi_state, notifier);
+}
+
 static struct csi_state *mipi_sd_to_csis_state(struct v4l2_subdev *sdev)
 {
 	return container_of(sdev, struct csi_state, mipi_sd);
@@ -848,6 +854,20 @@ static int mipi_csis_parse_endpoint(struct device *dev,
 	return 0;
 }
 
+static int mipi_csis_notify_bound(struct v4l2_async_notifier *notifier,
+				  struct v4l2_subdev *sd,
+				  struct v4l2_async_subdev *asd)
+{
+	struct csi_state *state = mipi_notifier_to_csis_state(notifier);
+	struct media_pad *sink = &state->mipi_sd.entity.pads[CSIS_PAD_SINK];
+
+	return imx_media_create_fwnode_pad_link(sd, sink);
+}
+
+static const struct v4l2_async_notifier_operations mipi_csis_notify_ops = {
+	.bound = mipi_csis_notify_bound,
+};
+
 static int mipi_csis_subdev_init(struct v4l2_subdev *mipi_sd,
 				 struct platform_device *pdev,
 				 const struct v4l2_subdev_ops *ops)
@@ -886,6 +906,8 @@ static int mipi_csis_subdev_init(struct v4l2_subdev *mipi_sd,
 
 	v4l2_async_notifier_init(&state->notifier);
 
+	state->notifier.ops = &mipi_csis_notify_ops;
+
 	ret = v4l2_async_register_fwnode_subdev(mipi_sd, &state->notifier,
 						sizeof(struct v4l2_async_subdev),
 						&sink_port, 1,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
